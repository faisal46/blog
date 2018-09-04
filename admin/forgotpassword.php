<?php 
include "../lib/Session.php";
 Session::checkLogin();
 ?>

 <?php
include "../config/config.php";
include "../lib/Database.php";
include "../helpers/Format.php";
?>

<?php
 $db = new Database(); 
 $fm = new Format(); 
 ?>	
<!DOCTYPE html>
<head>
<meta charset="utf-8">
<title>Login</title>
    <link rel="stylesheet" type="text/css" href="css/stylelogin.css" media="screen" />
</head>
<body>
<div class="container">
	<section id="content">
<?php
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
	$email = $fm->validation($_POST['email']);

	$email = mysqli_real_escape_string($db->link, $email);
	if(!filter_var($email, FILTER_VALIDATE_EMAIL)) {
	   	echo "<span style='font-size:18px; color:red;'>Invalid Email Address !</span>";
	   }else{
   $mailquery = "select * from tbl_user WHERE email = '$email' limit 1 ";
    $mailcheck = $db->select($mailquery); 
    if ($mailcheck != false) {
        while ( $value = $mailcheck->fetch_assoc()) {
        	$userid = $value['id'];
        	$username = $value['username'];
        }

        $text = substr($email, 0, 3);
        $rand = rand(10000, 99999);
        $newpass = "$text$rand";
        $password = md5($newpass);
         $updatequery = "UPDATE tbl_user 
                  SET 
                  password='$password'
                  WHERE id = '$userid' ";
          $updated_rows = $db->update($updatequery);
          $to      = "$email";
		  $form = "faisal@4axiz.com";
		  $subject = "New Password";
          $message = "Your Username is ".$username ."& Password is ".$newpass."please log in our website";
          $headers = 'From: faisal@4axiz.com' . "\r\n" .
               "MIME-Version: 1.0" . "\r\n" . 
               "Content-type: text/html; charset=UTF-8" . "\r\n"; 

    $sendmail = mail($to, $subject, $message, $headers);
    if ( $sendmail) {
    	 echo "<span style='font-size:18px; color:green;'>Please check your email for new password</span>";
    }else{
    	echo "<span style='font-size:18px; color:red;'>E-mail Not send, Please try again !!</span>";
    }
}

    else{
       echo "<span style='font-size:18px; color:red;'>E-mail Not Exist !!</span>";
    } 
}
}

?>		
		<form action="" method="post">
			<h1>Password Recovery</h1>
			<div>
				<input type="text" placeholder="Enter Your Valid Email" required="" name="email"/>
			</div>
			<div>
				<input type="submit" value="Send Mail" />
			</div>
		</form><!-- form -->
		<div class="button">
			<a href="login.php">Log in</a>
		</div>
		<div class="button">
			<a href="#">Prime University</a>
		</div><!-- button -->
	</section><!-- content -->
</div><!-- container -->
</body>
</html>
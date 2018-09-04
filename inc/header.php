<?php 
include "config/config.php";
include "lib/Database.php";
include "helpers/Format.php";

 $db = new Database(); 
 $fm = new Format(); 
 ?>	
<!DOCTYPE html>
<html>
<head>
    <?php include "script/meta.php"; ?>
	<?php include "script/css.php"; ?>
	<?php include "script/js.php"; ?>
</head>

<body>
	<div class="headersection templete clear">
		<a href="index.php">
<?php
$query = "select * from sloganlogo where id= 1";
     $headinfo = $db->select($query);
      if ($headinfo) {
        while ( $result = $headinfo->fetch_assoc()) {
?>			
			<div class="logo">
				<img src="admin/<?php echo $result['logo']; ?>" alt="Logo"/>
				<h2><?php echo $result['title']; ?></h2>
				<p><?php echo $result['description']; ?></p>
			</div>
<?php

} }
?>			
		</a>
		<div class="social clear">
			<div class="icon clear">
<?php
 $query = "select * from tbl_social where id= '1' ";
     $social_media = $db->select($query);
      if ($social_media) {
        while ( $result = $social_media->fetch_assoc()) {
?>  
				<a href="<?php echo $result['facebook']; ?>" target="_blank"><i class="fa fa-facebook"></i></a>
				<a href="<?php echo $result['twitter']; ?>" target="_blank"><i class="fa fa-twitter"></i></a>
				<a href="#<?php echo $result['linkedin']; ?> target="_blank"><i class="fa fa-linkedin"></i></a>
				<a href="<?php echo $result['googleplus']; ?>" target="_blank"><i class="fa fa-google-plus"></i></a>
<?php } } ?>				
			</div>
			<div class="searchbtn clear">
			<form action="search.php" method="GET">
				<input type="text" name="search" placeholder="Search keyword..."/>
				<input type="submit" name="submit" value="Search"/>
			</form>
			</div>
		</div>
	</div>
<div class="navsection templete">
	<ul>
<?php  $path  = $_SERVER['SCRIPT_FILENAME'];
        $currentpage = basename($path, '.php');
 ?>		
		<li><a <?php if ($currentpage == 'index') { echo 'id="active"'; } ?> href="index.php">Home</a></li>
		<?php
$query = "select * from pages";
     $headinfo = $db->select($query);
      if ($headinfo) {
        while ( $result = $headinfo->fetch_assoc()) {
?>                                  
                                <li><a

                                <?php 
                                if (isset($_GET['pageid']) && $_GET['pageid'] == $result['id'] ){
                                	echo 'id="active"';
                                }
                                 ?>
                                 href="page.php?pageid=<?php echo $result['id']; ?>"><?php echo $result['name']; ?></a></li>
 <?php

} }
?>  
<li><a <?php if ($currentpage == 'contact') { echo 'id="active"'; } ?> href="contact.php">Contact Us</a></li>
	</ul>
</div>

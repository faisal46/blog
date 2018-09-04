<?php include "inc/header.php"; ?>
<?php include "inc/sidebar.php"; ?>
        <div class="grid_10">
		
            <div class="box round first grid">
                <h2>Update Site Title, Description and Logo</h2>
                <div class="block sloginblock">  
<?php
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $title = $fm->validation($_POST['title']);
    $description = $fm->validation($_POST['description']);

    $title = mysqli_real_escape_string($db->link, $title);
    $description = mysqli_real_escape_string($db->link,  $description);
 

    $permited  = array('jpg', 'jpeg', 'png', 'gif');
    $file_name = $_FILES['logo']['name'];
    $file_size = $_FILES['logo']['size'];
    $file_temp = $_FILES['logo']['tmp_name'];

    $div = explode('.', $file_name);
    $file_ext = strtolower(end($div));
    $unique_image = substr(md5(time()), 0, 10).'.'.$file_ext;
    $uploaded_image = "upload/".$unique_image;

    if ( $title == "" || $description == "") {
         echo "<span class='error'>Field must not be empty... !!</span>";
    } else{ 


if (!empty($file_name)) {

    if ($file_size >1048567) {
     echo "<span class='error'>Image Size should be less then 1MB!
     </span>";

    } elseif (in_array($file_ext, $permited) === false) {
     echo "<span class='error'>You can upload only:-".implode(', ', $permited)."</span>";

    } else{
    move_uploaded_file($file_temp, $uploaded_image);
    $query = "UPDATE sloganlogo
              SET
              title = '$title',
              description = '$description',
              logo = '$uploaded_image'
              WHERE id = '1' ";
    $updated_rows = $db->update($query);
    if ($updated_rows) {
     echo "<span class='success'>Data Update Successfully.
     </span>";
    }else {
     echo "<span class='error'>Data Not Updated !</span>";
    }

  }
 } else{
     move_uploaded_file($file_temp, $uploaded_image);
    $query = "UPDATE sloganlogo
              SET
              title = '$title',
              description = '$description'
               WHERE id = '1' ";
    $updated_rows = $db->update($query);
    if ($updated_rows) {
     echo "<span class='success'>Data Update Successfully.
     </span>";
    }else {
     echo "<span class='error'>Data Not Updated !</span>";
    }
}
 }

    }
?>                
<!--Update site option system-->              
<?php
 $query = "select * from sloganlogo where id= 1";
     $headinfo = $db->select($query);
      if ($headinfo) {
        while ( $result = $headinfo->fetch_assoc()) {
?>             
                <form action="" method="post" enctype="multipart/form-data">
                    <table class="form">					
                        <tr>
                            <td>
                                <label>Website Title</label>
                            </td>
                            <td>
                                <input type="text" value="<?php echo $result['title']; ?>"  name="title" class="medium" />
                            </td>
                        </tr>
						 <tr>
                            <td>
                                <label>Website Slogan</label>
                            </td>
                            <td>
                                <input type="text" value="<?php echo $result['description']; ?>" name="description" class="medium" />
                            </td>
                        </tr>
						  <tr>
                            <td>
                                <label>Upload Logo</label>
                            </td>
                            <td>
                                <img src="<?php echo $result['logo']; ?>" name="logo" height="50px" width="100px" alt="logo"/><br>
                                <input type="file"  name="logo" />
                            </td>
                        </tr>
						
						 <tr>
                            <td>
                            </td>
                            <td>
                                <input type="submit" name="submit" Value="Update" />
                            </td>
                        </tr>
                    </table>
                    </form>
<?php } } ?>                    
                </div>
            </div>
        </div>
<?php include "inc/footer.php"; ?> 
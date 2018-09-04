<?php include "inc/header.php"; ?>
<?php include "inc/sidebar.php"; ?>
        <div class="grid_10">
		
            <div class="box round first grid">
                <h2>Update Social Media</h2>
<?php
if ($_SERVER['REQUEST_METHOD'] == 'POST') {

    $facebook = mysqli_real_escape_string($db->link, $_POST['facebook']);
    $twitter = mysqli_real_escape_string($db->link,  $_POST['twitter']);
    $linkedin = mysqli_real_escape_string($db->link, $_POST['linkedin']);
    $googleplus = mysqli_real_escape_string($db->link,  $_POST['googleplus']);
  if ($facebook == "" || $twitter == "" || $linkedin == "" || $googleplus == "" ) {
        echo "<span class='error'>Field must not be empty !</span>";
    }else{
 $query = "UPDATE tbl_social
              SET
              facebook = '$facebook',
              twitter = '$twitter',
              linkedin = '$linkedin',
              googleplus = '$googleplus'
               WHERE id = '1' ";
    $updated_social = $db->update($query);
    if ($updated_social) {
     echo "<span class='success'>Data Update Successfully.
     </span>";
    }else {
     echo "<span class='error'>Data Not Updated !</span>";
    }
   } 
}

?>                
                <div class="block">    

<?php
 $query = "select * from tbl_social where id= '1' ";
     $social_media = $db->select($query);
      if ($social_media) {
        while ( $result = $social_media->fetch_assoc()) {
?>                                
                 <form action ="" method ="post">
                    <table class="form">					
                        <tr>
                            <td>
                                <label>Facebook</label>
                            </td>
                            <td>
                                <input type="text" name="facebook" value="<?php echo $result['facebook']; ?>" class="medium" />
                            </td>
                        </tr>
						 <tr>
                            <td>
                                <label>Twitter</label>
                            </td>
                            <td>
                                <input type="text" name="twitter" value="<?php echo $result['twitter']; ?>" class="medium" />
                            </td>
                        </tr>
						
						 <tr>
                            <td>
                                <label>LinkedIn</label>
                            </td>
                            <td>
                                <input type="text" name="linkedin" value="<?php echo $result['linkedin']; ?>" class="medium" />
                            </td>
                        </tr>
						
						 <tr>
                            <td>
                                <label>Google Plus</label>
                            </td>
                            <td>
                                <input type="text" name="googleplus" value="<?php echo $result['googleplus']; ?>" class="medium" />
                            </td>
                        </tr>
						
						 <tr>
                            <td></td>
                            <td>
                                <input type="submit" name="submit" Value="Update" />
                            </td>
                        </tr>
                    </table>
                    </form>
<?php  } } ?>                    
                </div>
            </div>
        </div>
<?php include "inc/footer.php"; ?> 
<?php include "inc/header.php"; ?>
<?php include "inc/sidebar.php"; ?>
        <div class="grid_10">
		
            <div class="box round first grid">
                <h2>Update Copyright Text</h2>
<?php
if ($_SERVER['REQUEST_METHOD'] == 'POST') {

    $coppyright = mysqli_real_escape_string($db->link, $_POST['coppyright']);
  if ($coppyright == "" ) {
        echo "<span class='error'>Field must not be empty !</span>";
    }else{
 $query = "UPDATE tbl_footer
              SET
              coppyright = '$coppyright'
               WHERE id = '1' ";
    $updated_footer = $db->update($query);
    if ($updated_footer) {
     echo "<span class='success'>Data Update Successfully.
     </span>";
    }else {
     echo "<span class='error'>Data Not Updated !</span>";
    }
   } 
}

?>               
                <div class="block copyblock"> 
<?php
 $query = "select * from tbl_footer where id= '1' ";
     $coppyright = $db->select($query);
      if ($coppyright) {
        while ( $result = $coppyright->fetch_assoc()) {
?>                           
                 <form action="" method="post">
                    <table class="form">					
                        <tr>
                            <td>
                                <input type="text" value="<?php echo $result['coppyright']; ?>"  name="coppyright" class="large" />
                            </td>
                        </tr>
						
						 <tr> 
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
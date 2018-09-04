<?php include "inc/header.php"; ?>
<?php include "inc/sidebar.php"; ?>
        <div class="grid_10">       
            <div class="box round first grid">
                <h2>Update Page</h2> 
<?php
if (isset($_GET['delpageid'])) {
    $id = $_GET['delpageid'];
     $query = "DELETE FROM pages WHERE id = '$id' ";
         $pageDelete = $db->delete($query);
         if ($pageDelete) {
            echo "<span class='success'>Page Delete Successfully !!</span>";
         }else{
            echo "<span class='error'>Page Not Deleted !!</span>";
         }
}

?>  

<?php
if (!isset($_GET['pageid']) || $_GET['pageid'] == NULL) {
      //header("location: catlist.php");
  echo "<script>window.location = 'index.php';</script>";
}else{
    $id = $_GET['pageid'];
}

?>                  
<?php
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $name = mysqli_real_escape_string($db->link,  $_POST['name']);
    $body = mysqli_real_escape_string($db->link,  $_POST['body']);
    if ($name == "" || $body == "") {
        echo "<span class='error'>Field must not be empty !!</span>";
    }else{
         $query = "UPDATE pages 
                  SET 
                  name='$name',
                  body='$body'
                  WHERE id = '$id' ";

         $pageUpdate = $db->update($query);
         if ($pageUpdate) {
            echo "<span class='success'>Page Update Successfully !!</span>";
         }else{
            echo "<span class='error'>Page Not Updated !!</span>";
         }
    }
}

?>                                      
                <div class="block">  
 <?php
 $query = "select * from pages where id='$id' order by id desc";
  $pageselect = $db->select($query);
    if ($pageselect) {
        while ( $result = $pageselect->fetch_assoc()) {                           
 ?>                               
                 <form action="" method="post">
                    <table class="form">                      
                        <tr>
                            <td>
                                <label>Page Name</label>
                            </td>
                            <td>
                                <input type="text" name="name" value="<?php echo  $result['name']; ?>" class="medium" />
                            </td>
                        </tr>
                     
                                      
                      
                        <tr>
                            <td style="vertical-align: top; padding-top: 9px;">
                                <label>Content</label>
                            </td>
                            <td>
                                <textarea class="tinymce"  name="body" >
                                    <?php echo  $result['body']; ?>
                                </textarea>
                            </td>
                        </tr>
                        <tr>
                            <td></td>
                            <td>
                                <input type="submit" name="submit" Value="Update" />
                                <span>
                                 <a style="background: #DDDDDD;
    padding: 6px 10px;
    font-size: 15px; color:#444;" onclick="return confirm('Are sure to Delete !!');"href="?delpageid=<?php echo  $result['id']; ?>">Delete</a>
                             </span>
                            </td>
                        </tr>
                    </table>
                    </form>
 <?php }} ?>                    
                </div>
            </div>
        </div>      
<!-- Load TinyMCE -->
    <script src="js/tiny-mce/jquery.tinymce.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            setupTinyMCE();
            setDatePicker('date-picker');
            $('input[type="checkbox"]').fancybutton();
            $('input[type="radio"]').fancybutton();
        });
    </script>
 <!-- Load TinyMCE -->    
<?php include "inc/footer.php"; ?> 
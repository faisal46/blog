<?php include "inc/header.php"; ?>
<?php include "inc/sidebar.php"; ?>
        <div class="grid_10">
            <div class="box round first grid">
     
 <!--Post Delete system-->               <h2>Slider List</h2>
<?php
if (isset($_GET['delsliderid'])) {
            $delsliderid = $_GET['delsliderid'];

            $getquery = "select * from tbl_slider where id='$delsliderid'";
            $getpostImg = $db->select($getquery);
            if ($getpostImg) {
                while ($imgdata = $getpostImg->fetch_assoc()) {
                    $delimg = $imgdata['image'];
                    unlink($delimg);
                }
            }

            $query = "delete from tbl_slider where id='$delsliderid'";
            $delsliderImg = $db->delete($query);
            if ($delsliderImg) {
                echo "<span class='success'>Slider Deleted Successfully.
     </span>";
            } else {
                echo "<span class='error'>Slider Not Deleted !</span>";
            }
        }
?>   
<!--Post Delete system end-->
                <div class="block">  
                    <table class="data display datatable" id="example">
					<thead>
						<tr>
							<th>No.</th>
							<th>Slider Title</th>
							<th>Slider Image</th>
							<th>Action</th>
						</tr>
					</thead>
					<tbody>
<?php

$query = "select * from tbl_slider";

$slider = $db->select($query);
if ($slider) {
	$i = 0;
	while ($result = $slider->fetch_assoc()) {
		$i++;
	
?>
						<tr class="odd gradeX">
							<td><?php echo $i; ?></td>
						    <td><?php echo $result['title'];?></td>
							<td><img style="height: 28px;width: 85px;margin-bottom: -9px;" src="<?php echo $result['image']; ?>" alt="slider image" /></td>
							<td>

<?php if (Session::get('userRole') == '0') { ?>
								 <a href="editslider.php?editslidertid=<?php echo $result['id']; ?>">Edit</a>
								  || 
								<a onclick="return confirm('Are you sure to Delete !!');"href="?delsliderid=<?php echo  $result['id']; ?>">Delete</a>
<?php } ?>
								
							</td>
						</tr>
						
<?php } } ?>					
					</tbody>
				</table>
	
               </div>
            </div>
        </div>
<script type="text/javascript">
        $(document).ready(function () {
            setupLeftMenu();
            $('.datatable').dataTable();
            setSidebarHeight();
        });
</script> 
<?php include "inc/footer.php"; ?> 
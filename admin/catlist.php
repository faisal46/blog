﻿<?php include "inc/header.php"; ?>
<?php include "inc/sidebar.php"; ?>
        <div class="grid_10">
            <div class="box round first grid">
                <h2>Category List</h2>                 
<?php
if (isset($_GET['delid'])) {
    $id = $_GET['delid'];
     $query = "DELETE FROM tbl_category WHERE id = '$id' ";
         $catDelete = $db->delete($query);
         if ($catDelete) {
            echo "<span class='success'>Category Delete Successfully !!</span>";
         }else{
            echo "<span class='error'>Category Not Deleted !!</span>";
         }
}

?>   
            <div class="block"> 
                    <table class="data display datatable" id="example">
					<thead>
						<tr>
							<th>Serial No.</th>
							<th>Category Name</th>
							<th>Action</th>
						</tr>
					</thead>
					<tbody>
					<?php
                      $query = "select * from tbl_category order by id desc";
                      $category = $db->select($query);
                      if ($category) {
                      	$i = 0;
                         	while ( $result = $category->fetch_assoc()) {
                         		$i++;
                           
					?>
						<tr class="odd gradeX">
							<td><?php echo $i; ?></td>
							<td><?php echo  $result['name']; ?></td>
							<td><a href="editcat.php?catid=<?php echo  $result['id']; ?>">Edit</a> || <a onclick="return confirm('Are sure to Delete !!');"href="?delid=<?php echo  $result['id']; ?>">Delete</a></td>
						</tr>
	                <?php
                    	}
                         } 
	                ?>
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

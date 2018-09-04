<?php include "inc/header.php"; ?>
<?php include "inc/sidebar.php"; ?>
        <div class="grid_10">
            <div class="box round first grid">
                <h2>Inbox</h2>
<?php 
if (isset($_GET['seenid'])) {
	$seeId = $_GET['seenid'];
	 $query = "UPDATE tbl_contact 
                  SET 
                  status='1'
                  WHERE id = '$seeId' ";

         $catUpdate = $db->update($query);
         if ($catUpdate) {
            echo "<span class='success'>Message send in the Seen box !!</span>";
         }else{
            echo "<span class='error'>Message Not Send !!</span>";
         }
}
 ?>  
 <?php 
if (isset($_GET['unseenid'])) {
	$UnseeId = $_GET['unseenid'];
	 $query = "UPDATE tbl_contact 
                  SET 
                  status='0'
                  WHERE id = '$UnseeId' ";

         $catUpdate = $db->update($query);
         if ($catUpdate) {
            echo "<span class='success'>Message send in the Seen box !!</span>";
         }else{
            echo "<span class='error'>Message Not Send !!</span>";
         }
}
 ?>   
             

                <div class="block">        
                    <table class="data display datatable" id="example">
					<thead>
						<tr>
							<th width="5%">No.</th>
							<th width="10%">Name</th>
							<th width="15%">Email</th>
							<th width="30%">Message</th>
							<th width="20%">Date</th>
							<th width="20%">Action</th>
						</tr>
					</thead>
					<tbody>
<?php
  $query = "select * from tbl_contact where status = '0' order by id desc";
  $contact = $db->select($query);
  if ($contact) {
  	$i = 0;
     	while ( $result = $contact->fetch_assoc()) {
     		$i++;
                           
	?>
						<tr class="odd gradeX">
							<td><?php echo $i; ?></td>
							<td><?php echo $result['firstname']." ".$result['lastname']; ?></td>
							<td><?php echo $result['email']; ?></td>
							<td><?php echo $fm->textShorten($result['body'], 40); ?></td>
							<td><?php echo $fm->formatDate( $result['date']); ?></td>
							<td><a href="viewmsg.php?msgid=<?php echo $result['id']; ?>">View</a> || 
								<a href="replymsg.php?msgid=<?php echo $result['id']; ?>">Reply</a>||
								<a onclick="return confirm('Are you sure to Moved the Message !!');" href="?seenid=<?php echo $result['id']; ?>">Seen</a>
							</td>
						</tr>	
<?php } } ?>
					</tbody>
				</table>
               </div>
            </div>
         <div class="box round first grid">
                <h2>Seen Inbox</h2>
 <?php 
if (isset($_GET['deleteseenid'])) {
	$delId = $_GET['deleteseenid'];
	  $query = "delete from tbl_contact where id='$delId'";

         $catUpdate = $db->update($query);
         if ($catUpdate) {
            echo "<span class='success'>Message Deleted Successfully !!</span>";
         }else{
            echo "<span class='error'>Message Not Deleted !!</span>";
         }
}
 ?>                      
          <div class="block">        
                       <table class="data display datatable" id="example">
					<thead>
						<tr>
							<th width="5%">No.</th>
							<th width="10%">Name</th>
							<th width="15%">Email</th>
							<th width="30%">Message</th>
							<th width="20%">Date</th>
							<th width="20%">Action</th>
						</tr>
					</thead>
					<tbody>
<?php
  $query = "select * from tbl_contact where status = '1' order by id desc";
  $contact = $db->select($query);
  if ($contact) {
  	$i = 0;
     	while ( $result = $contact->fetch_assoc()) {
     		$i++;
                           
	?>
						<tr class="odd gradeX">
							<td><?php echo $i; ?></td>
							<td><?php echo $result['firstname']." ".$result['lastname']; ?></td>
							<td><?php echo $result['email']; ?></td>
							<td><?php echo $fm->textShorten($result['body'], 40); ?></td>
							<td><?php echo $fm->formatDate( $result['date']); ?></td>
							<td><a href="viewmsg.php?msgid=<?php echo $result['id']; ?>">View</a> || 
								<a onclick="return confirm('Are you sure to Moved the Message !!');" href="?unseenid=<?php echo $result['id']; ?>">UnSeen</a>||					
								<a onclick="return confirm('Are you sure to Delete !!');"href="?deleteseenid=<?php echo $result['id']; ?>">Delete</a>
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
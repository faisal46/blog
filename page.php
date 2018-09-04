<?php include "inc/header.php";?>
	<div class="contentsection contemplete clear">
		<div class="maincontent clear">
			<div class="about">
<?php
 $pageid = mysqli_real_escape_string($db->link, $_GET['pageid']);
  if(!isset($pageid) || $pageid == NULL){
  echo "<script>window.location = 'index.php';</script>";
}else{
    $id = $pageid;
}

 $query = "select * from pages where id='$id' order by id desc";
  $pageselect = $db->select($query);
    if ($pageselect) {
        while ( $result = $pageselect->fetch_assoc()) {                           
 ?>  				
				<h2><?php echo  $result['name']; ?></h2>
	
				  <?php echo  $result['body']; ?>
	 <?php } }else{
        header("location: 404.php");
	 } ?>    
	</div>

		</div>
		<?php include "inc/sidebar.php";?>
	    <?php include "inc/footer.php";?>
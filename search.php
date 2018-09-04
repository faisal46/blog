<?php include "inc/header.php";?>
<?php
  $searchid = mysqli_real_escape_string($db->link, $_GET['search']);
  if(!isset($searchid) || $searchid == NULL){
  	header("Location: 404.php");
  }else{
  	$search = $searchid;
  }
  	?>
	<div class="contentsection contemplete clear">
	  <div class="maincontent clear">
  <?php
            $query = "select * from tbl_post where title like '%$search%' or body like '%$search%'";
            $search = $db->select($query); 
           if($search){
           while($result = $search->fetch_assoc()){

        ?>
      <div class="samepost clear">
				<h2><a href="post.php?id=<?php echo $result['id']; ?>"><?php echo $result['title']; ?></a></h2>
				<h4><?php echo $fm->formatDate( $result['date']); ?>, Posted By -> <a href="#"><?php echo $result['author']; ?></a></h4>
				 <a href="#"><img src="admin/<?php echo $result['image']; ?>" alt="post image"/></a>
				<?php echo $fm->textShorten($result['body']); ?>
				<div class="readmore clear">
					<a href="post.php?id=<?php echo $result['id']; ?>">Read More</a>
				</div>
			</div>

  <?php } }else{ ?>

<p>Your Search Value Are Not Found, Please Try To Again Search...!</p>>
  <?php } ?>


</div>
<?php include "inc/sidebar.php";?>
<?php include "inc/footer.php";?>
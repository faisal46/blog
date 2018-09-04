<?php include "inc/header.php";?>
<?php
  $postid = mysqli_real_escape_string($db->link, $_GET['id']);
  if(!isset($postid) || $postid == NULL){
  	header("Location: 404.php");
  }else{
  	$id = $postid;
  }
  	?>
	<div class="contentsection contemplete clear">
		<div class="maincontent clear">
			<div class="about">
		<?PHP
  	        $query = "select * from tbl_post where id = '$id' ";
            $post = $db->select($query); 
           if($post){
           while($result = $post->fetch_assoc()){

        ?>
				<h2><?php echo $result['title']; ?></h2>
				<h4><?php echo $fm->formatDate( $result['date']); ?>, Posted By -> <a href="#"><?php echo $result['author']; ?></a></h4>
				<img src="admin/<?php echo $result['image']; ?>" alt="post image"/>
				<?php echo $result['body']; ?>
		
				<div class="relatedpost clear">
					<h2>Related articles</h2>
        <?php  
            $catid = $result['cat'];
             $querycat = "select * from tbl_post where cat = '$catid' order by rand() limit 6 ";
              $relatedcatpost = $db->select($querycat); 
               if($relatedcatpost){
           while($relatedresult = $relatedcatpost->fetch_assoc()){
         ?>
					<a href="post.php?id=<?php echo $relatedresult['id']; ?>">
                      <img src="admin/<?php echo $relatedresult['image']; ?>" alt="post image"/>
					</a>
        <?php  }}else{ echo "Related Post Not Available Here...!!";} ?>
				</div>
	        </div>
<?php } }else{ header("Location: 404.php"); } ?>

		</div>
		<?php include "inc/sidebar.php";?>
	  <?php include "inc/footer.php";?>
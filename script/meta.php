<?php 
  if (isset($_GET['pageid'])) {
  	$pagetitle = $_GET['pageid'];
  	$query = "select * from pages where id= '$pagetitle' ";
     $headinfo = $db->select($query);
      if ($headinfo) {
        while ( $result = $headinfo->fetch_assoc()) { ?>

<title><?php echo $result['name']; ?> | <?php echo TITLE; ?></title>
        <?php	} } }elseif (isset($_GET['id'])) {
  	$posttitle = $_GET['id'];
  	$query = "select * from tbl_post where id= '$posttitle' ";
     $headinfo = $db->select($query);
      if ($headinfo) {
        while ( $result = $headinfo->fetch_assoc()) { ?>

<title><?php echo $result['title']; ?> | <?php echo TITLE; ?></title>
        <?php	} } }  

        else{ ?>
        	<title><?php echo $fm->title(); ?> | <?php echo TITLE; ?></title>
         <?php	 }
 ?>	
	<meta name="language" content="English">
	<meta name="description" content="It is a website about education">
<?php  
if (isset($_GET['id'])) {
  	$key = $_GET['id'];
  	$query = "select * from tbl_post where id= '$key' ";
     $keywords = $db->select($query);
      if ($keywords) {
        while ( $result = $keywords->fetch_assoc()) { ?>
	<meta name="keywords" content="<?php echo $result['tags']; ?>">
        <?php	} } }else{ ?>
        		<meta name="keywords" content="<?php echo KEYWORDS; ?>">
         <?php	 } ?>	
	<meta name="author" content="Faisal">
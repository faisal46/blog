<div class="slidersection templete clear">
        <div id="slider">
        	<?php

$query = "select * from tbl_slider";

$slider = $db->select($query);
if ($slider) {
	$i = 0;
	while ($result = $slider->fetch_assoc()) {
		$i++;
	
?>
            <a href="index.php"><img src="admin/<?php echo $result['image']; ?>" alt="<?php echo $result['title'];?>" title="<?php echo $result['title'];?>" /></a>
           
         <!--<a href="#"><img src="images/slideshow/02.jpg" alt="nature 2" title="This is slider Two Title or Description" /></a>
            <a href="#"><img src="images/slideshow/03.jpg" alt="nature 3" title="This is slider three Title or Description" /></a>
            <a href="#"><img src="images/slideshow/04.jpg" alt="nature 4" title="This is slider four Title or Description" /></a>
           -->
<?php } } ?>	            
        </div>
        </div>

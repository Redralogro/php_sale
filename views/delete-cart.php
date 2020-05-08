<?php 
	if (isset($_GET['id'])) {
		$id = (int)$_GET['id'];
		unset($_SESSION['cart'][$id]);
	}
	header("Location: index.php?page=detail-order");

?>
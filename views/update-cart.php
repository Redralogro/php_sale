<?php  
	if (isset($_POST['submit_cart'])) {

		unset($_POST['submit_cart']);

		foreach ($_POST as $id => $qty) {
			if ($qty <= 0) {
				unset($_SESSION['cart'][$id]);
			}else{
				$_SESSION['cart'][$id]['qty'] = $qty;
			}
			header("Location: index.php?page=detail-order");
		}
	}
?>
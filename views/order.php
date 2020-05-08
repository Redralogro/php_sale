<?php 
	
	if (isset($_GET['id'])) {
		$id = (int)$_GET['id'];
		$pro = getPro_Id($id); // Lấy thông tin sản phẩm khách mua

		//$_SESSION['cart']; // $cart lưu toàn bộ thông tin sản phẩm khách hàng mua
		
		if ($pro) {
			if (!isset($_SESSION['cart']) && empty($_SESSION['cart'])) {
				$_SESSION['cart'][$id] = $pro;
				$_SESSION['cart'][$id]['qty'] = 1;
			}else{
				if (array_key_exists($id, $_SESSION['cart'])) {
					$_SESSION['cart'][$id]['qty'] += 1;
				}else{
					$_SESSION['cart'][$id] = $pro;
					$_SESSION['cart'][$id]['qty'] = 1;
				}
			}
			$_SESSION['noti_cart'] = 1;
		}else{
			
		}
	}else{
		
	}
	
	header("Location: index.php");
?>
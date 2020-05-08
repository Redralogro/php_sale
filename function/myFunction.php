<?php  
	// Lấy ra sản phẩm hot
	function getPro_Hot(){
		global $conn;

		$sql = "SELECT *FROM tbl_product WHERE stt = 2";
		$query = mysqli_query($conn, $sql);
		$result = array();

		while ($row = mysqli_fetch_array($query)) {
			$result[] = $row;
		}
		return $result;
	}

	// Lấy thông tin sản phẩm theo id, lấy thông tin sản phẩm khách hàng muốn mua
	function getPro_Id($id){
		global $conn;

		$sql = "SELECT *FROM tbl_product WHERE id = $id";
		$query = mysqli_query($conn, $sql);
		$result = array();
		$result = mysqli_fetch_array($query);

		return $result;
	}

?>
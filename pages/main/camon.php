<?php 

	// include('admincp/config/config.php');
	include('../../mail/sendmail.php');
	require('carbon/autoload.php');

	use Carbon\Carbon;
    use Carbon\CarbonInterval;
    
	$now = Carbon::now('Asia/Ho_Chi_Minh');

	if(isset($_GET['vnp_Amount'])){

		$vnp_Amount = $_GET['vnp_Amount'];
		$vnp_BankCode = $_GET['vnp_BankCode'];
		$vnp_BankTranNo = $_GET['vnp_BankTranNo'];
		$vnp_OrderInfo = $_GET['vnp_OrderInfo'];
		$vnp_PayDate = $_GET['vnp_PayDate'];
		$vnp_TmnCode = $_GET['vnp_TmnCode'];
		$vnp_TransactionNo = $_GET['vnp_TransactionNo'];
		$vnp_CardType = $_GET['vnp_CardType'];
		$code_cart = $_SESSION['code_cart'];
		
		//insert database vnpay
		$insert_vnpay = "INSERT INTO tbl_vnpay(vnp_amount,code_cart,vnp_bankcode,vnp_banktranno,vnp_cardtype,vnp_orderinfo,vnp_paydate,vnp_tmncode,vnp_transactionno) VALUE('".$vnp_Amount."','".$code_cart."','".$vnp_BankCode."','".$vnp_BankTranNo."','".$vnp_CardType."','".$vnp_OrderInfo."','".$vnp_PayDate."','".$vnp_TmnCode."','".$vnp_TransactionNo."')";
		$cart_query = mysqli_query($mysqli,$insert_vnpay);
		
		if($cart_query){
			//insert gio hàng
			echo '<h3>Giao dịch thanh toán bằng VNPAY thành công</h3>';
			echo '<p>Vui lòng vào trang <a target="_blank" href="index.php?quanly=lichsudonhang">lịch sử đơn hàng</a> để xem chi tiết đơn hàng của bạn</p>';
		}else{
			echo 'Giao dịch VNPAY thất bại';
		}
		//Momo
	}elseif(isset($_GET['partnerCode'])){
		$id_khachhang = $_SESSION['id_khachhang'];
		$code_order = rand(0,9999);
		$partnerCode = $_GET['partnerCode'];
		$orderId = $_GET['orderId'];
		$amount = $_GET['amount'];
		$orderInfo = $_GET['orderInfo'];
		$orderType = $_GET['orderType'];
		$transId = $_GET['transId'];
		$payType = $_GET['payType'];
		$cart_payment = 'momo';
		$tieude = "Đặt hàng website banhangcongnghe.net thành công!";
		$noidung = "<p>Cảm ơn quý khách đã đặt hàng của chúng tôi với mã đơn hàng : ".$code_order."</p>";
		$noidung.="<h4>Đơn hàng đặt bao gồm :</h4>";
		//lay id thong tin van chuyen
		$sql_get_vanchuyen = mysqli_query($mysqli,"SELECT * FROM tbl_shipping WHERE id_dangky='$id_khachhang' LIMIT 1");
		$row_get_vanchuyen = mysqli_fetch_array($sql_get_vanchuyen);
		$id_shipping = $row_get_vanchuyen['id_shipping'];
		//insert database momo
		$insert_momo = "INSERT INTO tbl_momo(partner_code,order_id,amount,order_info,order_type,trans_id,pay_type,code_cart) 
		VALUE('".$partnerCode."','".$orderId."','".$amount."','".$orderInfo."','".$orderType."','".$transId."','".$payType."','".$code_order."')";
		$cart_query = mysqli_query($mysqli,$insert_momo);
		
		if($cart_query){
			$insert_cart = "INSERT INTO tbl_cart(id_khachhang,code_cart,cart_status,cart_date,cart_payment,cart_shipping) VALUE('".$id_khachhang."','".$code_order."',1,'".$now."','".$cart_payment."','".$id_shipping."')";
			$cart_query = mysqli_query($mysqli,$insert_cart);
			//insert gio hàng
			//them don hàng chi tiet
			foreach($_SESSION['cart'] as $key => $value){
				$id_sanpham = $value['id'];
				$soluong = $value['soluong'];
				$insert_order_details = "INSERT INTO tbl_cart_details(id_sanpham,code_cart,soluongmua) VALUE('".$id_sanpham."','".$code_order."','".$soluong."')";
				mysqli_query($mysqli,$insert_order_details);
			}

			//insert gio hàng
			foreach($_SESSION['cart'] as $key => $val){
				$noidung.= "<ul style='border:1px solid blue;margin:10px;'>
					<li>".$val['tensanpham']."</li>
					<li>".$val['masp']."</li>
					<li>".number_format($val['giasp'],0,',','.')."đ</li>
					<li>".$val['soluong']."</li>
					</ul>";
			}
			$maildathang = $_SESSION['email'];
			$mail = new Mailer();
			$mail->dathangmail($tieude,$noidung,$maildathang);	
			echo '<h3>Giao dịch thanh toán bằng MOMO ATM thành công</h3>';
			echo '<p>Vui lòng vào trang <a target="_blank" href="index.php?quanly=lichsudonhang">lịch sử đơn hàng</a> để xem chi tiết đơn hàng của bạn</p>';
			unset($_SESSION['cart']);
		}else{
			echo 'Giao dịch MOMO thất bại';
		}

	}elseif(isset($_GET['vpc_AccessCode'])){
		$id_khachhang = $_SESSION['id_khachhang'];
		$code_order = rand(0,9999);
		$vpc_AccessCode = $_GET['vpc_AccessCode'];//
		$vpc_MerchTxnRef = $_GET['vpc_MerchTxnRef'];//thay cho orderId
		$vpc_Amount = $_GET['vpc_Amount'];//
		$vpc_OrderInfo = $_GET['vpc_OrderInfo'];//Thay cho orderinfo
		$vpc_Command = $_GET['vpc_Command'];//Thay cho orderType
		$vpc_Locale = $_GET['vpc_Locale'];//
		$vpc_Version = $_GET['vpc_Version'];//
		$vpc_Currency = $_GET['vpc_Currency'];//
		$cart_payment = 'ONEPAY';
		$tieude = "Đặt hàng website banhangcongnghe.net thành công!";
		$noidung = "<p>Cảm ơn quý khách đã đặt hàng của chúng tôi với mã đơn hàng : ".$code_order."</p>";
		$noidung.="<h4>Đơn hàng đặt bao gồm :</h4>";
		//lay id thong tin van chuyen
		$sql_get_vanchuyen = mysqli_query($mysqli,"SELECT * FROM tbl_shipping WHERE id_dangky='$id_khachhang' LIMIT 1");
		$row_get_vanchuyen = mysqli_fetch_array($sql_get_vanchuyen);
		$id_shipping = $row_get_vanchuyen['id_shipping'];
		//insert database onepay
		$insert_onepay = "INSERT INTO tbl_onepay(vpc_AccessCode,order_id,vpc_Amount,vpc_OrderInfo,vpc_Command,vpc_Locale,vpc_Version,vpc_Currency,code_cart)
		 VALUE('".$vpc_AccessCode."','".$vpc_MerchTxnRef."','".$vpc_Amount."','".$vpc_OrderInfo."','".$vpc_Command."','".$vpc_Locale."','".$vpc_Version."','".$vpc_Currency."','".$code_order."')";
		$cart_query = mysqli_query($mysqli,$insert_onepay);
		
		if($cart_query){
			$insert_cart = "INSERT INTO tbl_cart(id_khachhang,code_cart,cart_status,cart_date,cart_payment,cart_shipping) VALUE('".$id_khachhang."','".$code_order."',1,'".$now."','".$cart_payment."','".$id_shipping."')";
			$cart_query = mysqli_query($mysqli,$insert_cart);
			//insert gio hàng
			//them don hàng chi tiet
			foreach($_SESSION['cart'] as $key => $value){
				$id_sanpham = $value['id'];
				$soluong = $value['soluong'];
				$insert_order_details = "INSERT INTO tbl_cart_details(id_sanpham,code_cart,soluongmua) VALUE('".$id_sanpham."','".$code_order."','".$soluong."')";
				mysqli_query($mysqli,$insert_order_details);
			}

			//insert gio hàng
			foreach($_SESSION['cart'] as $key => $val){
				$noidung.= "<ul style='border:1px solid blue;margin:10px;'>
					<li>".$val['tensanpham']."</li>
					<li>".$val['masp']."</li>
					<li>".number_format($val['giasp'],0,',','.')."đ</li>
					<li>".$val['soluong']."</li>
					</ul>";
			}
			$maildathang = $_SESSION['email'];
			$mail = new Mailer();
			$mail->dathangmail($tieude,$noidung,$maildathang);	
			echo '<h3>Giao dịch thanh toán bằng ONEPAY ATM thành công</h3>';
			echo '<p>Vui lòng vào trang <a target="_blank" href="index.php?quanly=lichsudonhang">lịch sử đơn hàng</a> để xem chi tiết đơn hàng của bạn</p>';
			unset($_SESSION['cart']);
		}else{
			echo 'Giao dịch ONEPAY thất bại';
		}
	}else{
		if(isset($_GET['thanhtoan'])=='paypal'){

			$code_order = rand(0,9999);
			$tieude = "Đặt hàng website banhangcongnghe.net thành công!";
			$noidung = "<p>Cảm ơn quý khách đã đặt hàng của chúng tôi với mã đơn hàng : ".$code_order."</p>";
			$noidung.="<h4>Đơn hàng đặt bao gồm :</h4>";
			$cart_payment = 'paypal';
			$id_khachhang = $_SESSION['id_khachhang'];
			//lay id thong tin van chuyen
			$sql_get_vanchuyen = mysqli_query($mysqli,"SELECT * FROM tbl_shipping WHERE id_dangky='$id_khachhang' LIMIT 1");
			$row_get_vanchuyen = mysqli_fetch_array($sql_get_vanchuyen);
			$id_shipping = $row_get_vanchuyen['id_shipping'];
			//insert vào đơn hàng
			$insert_cart = "INSERT INTO tbl_cart(id_khachhang,code_cart,cart_status,cart_date,cart_payment,cart_shipping) VALUE('".$id_khachhang."','".$code_order."',1,'".$now."','".$cart_payment."','".$id_shipping."')";

			$cart_query = mysqli_query($mysqli,$insert_cart);
			if($cart_query){
			//them don hàng chi tiet
				foreach($_SESSION['cart'] as $key => $value){
						$id_sanpham = $value['id'];
						$soluong = $value['soluong'];
						$insert_order_details = "INSERT INTO tbl_cart_details(id_sanpham,code_cart,soluongmua) VALUE('".$id_sanpham."','".$code_order."','".$soluong."')";
						mysqli_query($mysqli,$insert_order_details);
				}
			
				//insert gio hàng
				foreach($_SESSION['cart'] as $key => $val){
					$noidung.= "<ul style='border:1px solid blue;margin:10px;'>
						<li>".$val['tensanpham']."</li>
						<li>".$val['masp']."</li>
						<li>".number_format($val['giasp'],0,',','.')."đ</li>
						<li>".$val['soluong']."</li>
						</ul>";
				}
				$maildathang = $_SESSION['email'];
				$mail = new Mailer();
				$mail->dathangmail($tieude,$noidung,$maildathang);	
			
				echo '<h3>Giao dịch thanh toán bằng Paypal thành công</h3>';
				echo '<p>Vui lòng vào trang <a target="_blank" href="index.php?quanly=lichsudonhang">lịch sử đơn hàng</a> để xem chi tiết đơn hàng của bạn</p>';
				unset($_SESSION['cart']);
			}else{
				echo 'Giao dịch PAYPAL thất bại';
			}	
		
		}
		
	}
?>
<p>Cám ơn bạn đã mua hàng ,chúng tôi sẽ liên hệ bạn trong thời gian sớm nhất</p>
<?php 
include"PHPMailer/src/PHPMailer.php";
include"PHPMailer/src/Exception.php";
include"PHPMailer/src/OAuth.php";
include"PHPMailer/src/POP3.php";
include"PHPMailer/src/SMTP.php";
 
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;
class Mailer{
	public function dathangmail($tieude,$noidung,$maildathang){
	// print_r($mail);
		$mail = new PHPMailer(true);
		$mail->CharSet = 'UTF-8';
		try {
		    //Server settings
		    $mail->SMTPDebug = 0;                                 // Enable verbose debug output
			$mail->SMTPDebug = 2;                                 // Bật thông báo lỗi nếu như bị sai cấu hình
            $mail->isSMTP();                                      // Sử dụng SMTP để gửi mail
            $mail->Host = 'smtp.gmail.com';                   // Server SMTP của mình
            $mail->SMTPAuth = true;                               // Bật xác thực SMTP
            $mail->Username = 'dangquangminhdn76@gmail.com';                 // Tài khoản email
            $mail->Password = 'fmqpkybfgjyizivs';                           // Mật khẩu email
            // $mail->SMTPSecure = 'none';                            // Tắt SSL /TLS
            $mail->SMTPAutoTLS = false;
            $mail->SMTPSecure = "tls";
            $mail->Port = "587";                              // TCP port to connect to
		 
		    //Recipients
			$mail->setFrom('dangquangminhdn76@gmail.com', 'Tao Minh'); 
		    
			$mail->addAddress($maildathang, 'Bố thó');     // Địa chỉ người nhận
            // $mail->addAddress('ellen@example.com');               // Name is optional
            //$mail->addReplyTo('dangquangminhdn86@gmail.com', 'Information');
            $mail->addCC('dangquangminhdn76@gmail.com');
            //$mail->addBCC('bcc@example.com');
		 
		    //Attachments
		    // $mail->addAttachment('/var/tmp/file.tar.gz');         // Add attachments
		    // $mail->addAttachment('/tmp/image.jpg', 'new.jpg');    // Optional name
		 
		    //Content
		    $mail->isHTML(true);                                  // Set email format to HTML
		    $mail->Subject = $tieude;
		    $mail->Body    = $noidung;
		    // $mail->AltBody = 'This is the body in plain text for non-HTML mail clients';
		 
		    $mail->send();
		    echo 'Message has been sent';

		} catch (Exception $e) {

		    echo 'Message could not be sent. Mailer Error: ', $mail->ErrorInfo;
		}
	}
}
?>
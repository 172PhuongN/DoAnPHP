<?php

require_once __DIR__ . '/PHPMailer-master/src/Exception.php';
require_once __DIR__ . '/PHPMailer-master/src/PHPMailer.php';
require_once __DIR__ . '/PHPMailer-master/src/SMTP.php';

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

function sendMailAfterSubmit($toEmail, $userName, $tenBaiThi) {
    $mail = new PHPMailer(true);

    try {
        $mail->isSMTP();
        $mail->Host       = 'smtp.gmail.com';
        $mail->SMTPAuth   = true;
        $mail->Username   = 'phuong0909tt@gmail.com';
        $mail->Password   = 'usox vpki ignp kpbl';
        $mail->SMTPSecure = 'tls';
        $mail->Port       = 587;

                // Cấu hình charset và encoding trước khi thiết lập nội dung
        $mail->CharSet = 'UTF-8'; // Quan trọng: Thiết lập charset UTF-8
        $mail->Encoding = 'base64'; // Encoding cho nội dung email

        $mail->setFrom('phuong0909tt@gmail.com', 'Trắc nghiệm Online');
        $mail->addAddress($toEmail, $userName);
        $mail->isHTML(true);

        // Thiết lập tiêu đề email (không cần encode thủ công)
        $mail->Subject = 'Thông báo nộp bài thành công - ' . $tenBaiThi;

        // Nội dung HTML với đầy đủ thẻ meta charset
        $mail->Body = '
        <!DOCTYPE html>
        <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        </head>
        <body>
            Xin chào <b>' . htmlspecialchars($userName) . '</b>,<br><br>
            Bạn đã nộp bài <i>' . htmlspecialchars($tenBaiThi) . '</i> thành công!
        </body>
        </html>';

        // Nội dung text thuần (không HTML)
        $mail->AltBody = "Xin chào $userName,\n\nBạn đã nộp bài $tenBaiThi thành công!";

        try {
            $mail->send();
            echo 'Email đã được gửi thành công!';
        } catch (Exception $e) {
            echo "Không thể gửi email. Lỗi: {$mail->ErrorInfo}";
        }

    } catch (Exception $e) {
        // Có thể log lỗi nếu muốn
        error_log("Không thể gửi mail: " . $mail->ErrorInfo);
    }
}

<?php
    if (session_status() == PHP_SESSION_NONE) {
        session_start();
    }
    
    if (!isset($_SESSION['role']) || $_SESSION['role'] !== 'Admin') {
        die("Bạn không có quyền truy cập trang này!");
    }
    $title = "Create Chi tiết bài thi và câu hỏi";
    $content = './View/Content/BaithiCauhoi/create.php';  
    include './View/Layout/layout.php';
?>
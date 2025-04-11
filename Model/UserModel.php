<?php
Class UserModel{
    private $conn;
    private $table_name = "user";
    public function __construct($db){
        $this->conn = $db;
    }
    public function getAllUsers() {
        $query = "SELECT u.userName, u.passWord, u.isDeleted, r.roleName 
        FROM ".$this->table_name." u 
        JOIN role r ON u.roleId = r.roleId";
    
        $stmt = $this->conn->prepare($query);
        $stmt->execute();
    
        return $stmt->fetchAll(PDO::FETCH_OBJ); 
    }

    public function updateUser($userName, $password, $roleId, $isDeleted, $email, $image, $originalUserName) {
        // Kiểm tra xem userName mới có trùng với userName khác không
        if ($userName !== $originalUserName) {
            $checkQuery = "SELECT COUNT(*) FROM user WHERE userName = :userName";
            $checkStmt = $this->conn->prepare($checkQuery);
            $checkStmt->bindParam(":userName", $userName, PDO::PARAM_STR);
            $checkStmt->execute();
            $count = $checkStmt->fetchColumn();
    
            if ($count > 0) {
                // userName mới đã tồn tại
                return false;
            }
    
            // Cập nhật userName
            $updateUserNameQuery = "UPDATE user SET userName = :newUserName WHERE userName = :originalUserName";
            $updateStmt = $this->conn->prepare($updateUserNameQuery);
            $updateStmt->bindParam(":newUserName", $userName, PDO::PARAM_STR);
            $updateStmt->bindParam(":originalUserName", $originalUserName, PDO::PARAM_STR);
            if (!$updateStmt->execute()) {
                return false;
            }
        }
    
        // Cập nhật các cột còn lại
        if (empty($password)) {
            // Nếu password rỗng, không cập nhật password
            $query = "UPDATE user SET roleId = :roleId, isDeleted = :isDeleted, email = :email, image = :image WHERE userName = :userName";
            $stmt = $this->conn->prepare($query);
        } else {
            // Nếu có nhập password, cập nhật luôn password
            $query = "UPDATE user SET password = :password, roleId = :roleId, isDeleted = :isDeleted, email = :email, image = :image WHERE userName = :userName";
            $stmt = $this->conn->prepare($query);
            $stmt->bindParam(":password", $password, PDO::PARAM_STR);
        }
    
        $stmt->bindParam(":roleId", $roleId, PDO::PARAM_INT);
        $stmt->bindParam(":isDeleted", $isDeleted, PDO::PARAM_INT);
        $stmt->bindParam(":userName", $userName, PDO::PARAM_STR);
        $stmt->bindParam(":email", $email, PDO::PARAM_STR);
        $stmt->bindParam(":image", $image, PDO::PARAM_STR);
    
        return $stmt->execute();
    }
    
    public function checkUserExists($taikhoan) {
        $sql = "SELECT * FROM User WHERE userName = :taikhoan";
        $stmt = $this->conn->prepare($sql);
        $stmt->bindValue(":taikhoan", $taikhoan, PDO::PARAM_STR);
        $stmt->execute();
        return $stmt->rowCount() > 0; // PDO không có num_rows, dùng rowCount()
    }

    public function registerUser($userName, $passWord, $roleId) {
        $stmt = $this->conn->prepare("INSERT INTO user (userName, passWord, roleId) VALUES (:userName, :password, :roleId)");
        $stmt->bindValue(":userName", $userName, PDO::PARAM_STR);
        $stmt->bindValue(":password", $passWord, PDO::PARAM_STR);
        $stmt->bindValue(":roleId", $roleId, PDO::PARAM_INT);
    
        // Thực thi câu lệnh & kiểm tra kết quả
        return $stmt->execute(); 
    }
    
    
    
    public function softDeleteUser($userName) {
        $query = "UPDATE user SET isDeleted = 1 WHERE userName = :userName";
        $stmt = $this->conn->prepare($query);
        $stmt->bindParam(":userName", $userName, PDO::PARAM_STR);
        
        return $stmt->execute(); // Trả về true nếu cập nhật thành công
    }
    
    public function getUserAverageScore($userName) {
        $query = "SELECT AVG(subject_avg.average_score) AS average_score
                  FROM (
                      SELECT m.name_monhoc, AVG(b.diem) AS average_score
                      FROM baithi_user b
                      JOIN baithitracnghiem bt ON b.id_baithi = bt.id_baithi
                      JOIN ct_baithi_monhoc ct ON bt.id_baithi = ct.id_baithi
                      JOIN monhoc m ON ct.id_monhoc = m.id_monhoc
                      WHERE b.userName = :userName
                      GROUP BY m.name_monhoc
                  ) AS subject_avg";
    
        $stmt = $this->conn->prepare($query);
        $stmt->bindParam(":userName", $userName, PDO::PARAM_STR);
        $stmt->execute();
        
        $result = $stmt->fetch(PDO::FETCH_OBJ);
        return $result->average_score ?? 0; // Trả về 0 nếu không có điểm
    }
    public function getUserbyuserName($userName) {
        $query = "SELECT u.*, r.roleName
                  FROM ".$this->table_name." u
                  JOIN role r ON u.roleId = r.roleId
                  WHERE u.userName = :userName
                  GROUP BY u.userName";
    
        $stmt = $this->conn->prepare($query);
        $stmt->bindParam(":userName", $userName, PDO::PARAM_STR);
        $stmt->execute();
        return $stmt->fetch(PDO::FETCH_OBJ);
    }
    public function getUserAverageScoreBySubject($userName) {
        $query = "
           SELECT 
            btu.*, 
            btt.ten_baithi, 
            MIN(mh.name_monhoc) AS name_monhoc
        FROM baithi_user btu
        JOIN baithitracnghiem btt ON btu.id_baithi = btt.id_baithi
        JOIN ct_baithi_monhoc ct ON btt.id_baithi = ct.id_baithi
        JOIN monhoc mh ON ct.id_monhoc = mh.id_monhoc
        WHERE btu.userName = :userName
        GROUP BY btu.id_baithi

        ";
    
        $stmt = $this->conn->prepare($query);
        $stmt->bindParam(":userName", $userName, PDO::PARAM_STR);
        $stmt->execute();
    
        return $stmt->fetchAll(PDO::FETCH_OBJ);
    }
    public function getTotalUsers() {
        $sql = "SELECT COUNT(*) AS total FROM user";
        $stmt = $this->conn->prepare($sql);
        $stmt->execute();
        $result = $stmt->fetch(PDO::FETCH_ASSOC);
        return $result['total'] ?? 0;
    }

    public function getTotalExams() {
        $sql = "SELECT COUNT(*) AS total FROM baithi_user";
        $stmt = $this->conn->prepare($sql);
        $stmt->execute();
        $result = $stmt->fetch(PDO::FETCH_ASSOC);
        return $result['total'] ?? 0;
    }

    public function getTotalQuestions() {
        $sql = "SELECT COUNT(*) AS total FROM cauhoi";
        $stmt = $this->conn->prepare($sql);
        $stmt->execute();
        $result = $stmt->fetch(PDO::FETCH_ASSOC);
        return $result['total'] ?? 0;
    }

    public function getTotalCompletedExams() {
        $sql = "SELECT COUNT(*) AS total FROM baithi_user";
        $stmt = $this->conn->prepare($sql);
        $stmt->execute();
        $result = $stmt->fetch(PDO::FETCH_ASSOC);
        return $result['total'] ?? 0;
    }
    public function getUnattemptedExams($userName) {
        $query = "SELECT b.id_baithi, b.ten_baithi, m.name_monhoc
                  FROM baithitracnghiem b
                  JOIN ct_baithi_monhoc ct ON b.id_baithi = ct.id_baithi
                  JOIN monhoc m ON ct.id_monhoc = m.id_monhoc
                  LEFT JOIN baithi_user bu ON b.id_baithi = bu.id_baithi AND bu.userName = :userName
                  WHERE bu.id_baithi IS NULL"; // Chỉ lấy bài thi chưa làm
    
        $stmt = $this->conn->prepare($query);
        $stmt->bindParam(":userName", $userName, PDO::PARAM_STR);
        $stmt->execute();
        
        return $stmt->fetchAll(PDO::FETCH_OBJ); // Lấy tất cả bài thi chưa làm
    }
    
}
?>
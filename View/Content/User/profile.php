<div class="container mt-5">
    <h2 class="text-center" style="color: rgb(45, 178, 198);">Thông tin cá nhân</h2>

    <div class="d-flex justify-content-center">
        <div class="card shadow-sm" style="width: 100%; max-width: 500px;">
            <div class="card-body">
                <h4 class="mb-3">Chi tiết cá nhân</h4>
                <p class="mb-2"><strong>Họ tên:</strong> <?php echo htmlspecialchars($user->userName); ?></p>
                <p class="mb-2"><strong>Vai trò:</strong> <?php echo htmlspecialchars($user->roleName); ?></p>
                <p class="mb-2"><strong>Email:</strong> <?php echo htmlspecialchars($user->email); ?></p>
                <p class="mb-2"><strong>Hình ảnh:</strong></p>
                <div class="text-center mb-3">
                    <?php if (!empty($user->image)): ?>
                        <img src="<?php echo htmlspecialchars($user->image); ?>" alt="Hình ảnh cá nhân" style="max-width: 150px; max-height: 150px; border-radius: 50%;">
                    <?php else: ?>
                        <p>Chưa có hình ảnh.</p>
                    <?php endif; ?>
                </div>
                <h4 class="mt-4">Điểm trung bình tổng:</h4>
                <div class="text-center mb-4"> <!-- Thêm div với lớp text-center -->
                    <p class="lead badge bg-secondary rounded-pill"><?php echo number_format($averageScore, 2); ?> điểm</p>
                </div>
                <h4 class="mt-4">Điểm trung bình theo môn:</h4>
                <ul>
                    <?php if (!empty($subjectScores)): ?>
                        <?php foreach ($subjectScores as $test): ?>
                            <li>
                                Bài thi: <?= htmlspecialchars($test->ten_baithi) ?> <br>
                                Môn học: <?= htmlspecialchars($test->name_monhoc) ?> <br>
                                Điểm: <?= htmlspecialchars($test->diem ?? 'Chưa có') ?>
                            </li>
                        <?php endforeach; ?>
                    <?php else: ?>
                        <li>Chưa làm bài thi nào.</li>
                    <?php endif; ?>
                </ul>

                <div class="text-center">
                    <a href="index.php?controller=user&action=editProfile" class="btn" style="background-color: rgb(45, 178, 198); color: white;">
                        Chỉnh sửa thông tin
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>
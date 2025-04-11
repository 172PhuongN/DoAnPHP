<div class="container mt-5">
    <h2 class="text-center" style="color: rgb(45, 178, 198);">Chỉnh sửa thông tin cá nhân</h2>

    <div class="d-flex justify-content-center">
        <div class="card shadow-sm" style="width: 100%; max-width: 500px;">
            <div class="card-body">
                <?php if (isset($errorMessage)): ?>
                    <div class="alert alert-danger"><?php echo htmlspecialchars($errorMessage); ?></div>
                <?php endif; ?>

                <form method="POST" action="index.php?controller=user&action=updateProfile" enctype="multipart/form-data">
                    <div class="mb-3">
                        <label for="userName" class="form-label"><strong>Họ tên:</strong></label>
                        <input type="text" class="form-control" id="userName" name="userName" value="<?php echo htmlspecialchars($user->userName); ?>" required>
                    </div>

                    <div class="mb-3">
                        <label for="password" class="form-label"><strong>Mật khẩu mới (để trống nếu không đổi):</strong></label>
                        <input type="password" class="form-control" id="password" name="password" placeholder="Nhập mật khẩu mới">
                    </div>

                    <div class="mb-3">
                        <label for="email" class="form-label"><strong>Email:</strong></label>
                        <input type="email" class="form-control" id="email" name="email" value="<?php echo htmlspecialchars($user->email); ?>" required>
                    </div>

                    <div class="mb-3">
                        <label for="image" class="form-label"><strong>Hình ảnh:</strong></label>
                        <input type="file" class="form-control" id="image" name="image" accept="image/*">
                        <?php if (!empty($user->image)): ?>
                            <div class="mt-2">
                                <img src="<?php echo htmlspecialchars($user->image); ?>" alt="Hình ảnh hiện tại" style="max-width: 100px; max-height: 100px;">
                            </div>
                        <?php endif; ?>
                    </div>

                    <div class="text-center">
                        <button type="submit" name="updateProfile" class="btn" style="background-color: rgb(45, 178, 198); color: white;">Cập nhật</button>
                        <a href="index.php?controller=user&action=profile" class="btn btn-secondary">Hủy</a>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

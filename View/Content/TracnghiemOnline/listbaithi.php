<div class="page-header">
    <div class="container">
        <div class="d-flex align-items-center justify-content-between">
            <h2 class="page-title">Danh sách bài thi</h2>
            <span class="badge bg-white text-primary px-3 py-2 rounded-pill">
                <i class="bi bi-book-half me-1"></i> Học tập
            </span>
        </div>
    </div>
</div>

<div class="container pb-5">
    <?php if (!empty($listbaithi)): ?>
        <div class="row row-cols-1 row-cols-md-2 row-cols-lg-3 g-4">
            <?php foreach ($listbaithi as $baithi): ?>
                <div class="col">
                    <div class="card h-100">
                        <div class="card-header">
                            <div class="d-flex align-items-center">
                                <div class="subject-icon">
                                    <i class="bi bi-journal-text"></i>
                                </div>
                                <div>
                                    <h6 class="text-black-50 mb-1">Bài thi</h6>
                                    <h5 class="card-title fw-bold text-truncate mb-0" title="<?= htmlspecialchars($baithi->ten_baithi) ?>">
                                        <?= htmlspecialchars($baithi->ten_baithi) ?>
                                    </h5>
                                </div>
                            </div>
                        </div>
                        <div class="card-body p-4">
                            <div class="d-flex justify-content-between align-items-center mb-4">
                                <span class="exam-badge bg-info bg-opacity-10 text-info" title="ID: <?= $baithi->id_baithi ?>">
                                    <i class="bi bi-hash me-1"></i>Mã: <?= $baithi->id_baithi ?>
                                </span>
                            </div>
                            <div class="d-flex align-items-center mb-2">
                                <div class="d-flex align-items-center">
                                    <i class="bi bi-mortarboard-fill me-2 text-primary"></i>
                                    <h6 class="mb-0">Môn học:</h6>
                                    
                                </div>
                            </div>
                            <div class="ps-4 mb-3">
                                <span class="fw-semibold"><?= htmlspecialchars($baithi->name_monhoc) ?></span>
                            </div>
                            <div class="ms-2">
                                    <p class="card-text">Thời gian: <strong><?= $baithi->time ?> phút</strong></p>
                                </div>
                            <hr class="my-3 opacity-10">
                            <div class="d-grid">
                                <?php if ($baithi->daLam): ?>
                                    <button class="btn btn-secondary text-white" disabled>
                                        <i class="bi bi-check-circle-fill me-2"></i>Đã làm bài
                                    </button>
                                <?php else: ?>
                                    <a href="index.php?controller=TracNghiemOnline&action=baithibymonhoc&id_baithi=<?= $baithi->id_baithi ?>&id_monhoc=<?= $id_monhoc ?>" 
                                       class="btn btn-take-exam text-white">
                                        <i class="bi bi-pencil-square me-2"></i>Bắt đầu làm bài
                                    </a>
                                <?php endif; ?>
                            </div>
                        </div>
                    </div>
                </div>
            <?php endforeach; ?>
        </div>
    <?php else: ?>
        <div class="empty-state">
            <i class="bi bi-search empty-icon"></i>
            <h4 class="fw-bold text-secondary mb-3">Không tìm thấy bài thi</h4>
            <p class="text-muted mb-4">Không có bài thi nào cho môn học này!</p>
        </div>
    <?php endif; ?>
</div>
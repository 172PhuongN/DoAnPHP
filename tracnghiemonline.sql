-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 11, 2025 at 06:46 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tracnghiemonline`
--

-- --------------------------------------------------------

--
-- Table structure for table `baithitracnghiem`
--

CREATE TABLE `baithitracnghiem` (
  `id_baithi` int(11) NOT NULL,
  `ten_baithi` varchar(255) NOT NULL,
  `mota_baithi` text NOT NULL,
  `ngaytaobaithi` date NOT NULL,
  `isDeleted` tinyint(1) NOT NULL,
  `time` varchar(250) NOT NULL,
  `heso` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `baithitracnghiem`
--

INSERT INTO `baithitracnghiem` (`id_baithi`, `ten_baithi`, `mota_baithi`, `ngaytaobaithi`, `isDeleted`, `time`, `heso`) VALUES
(2, 'Bài thi giữa kì', 'Bài thi điểm hệ số 3', '2025-04-11', 0, '45', '1'),
(3, 'Bài thi cuối kì', 'Bài thi điểm hệ số 2', '2025-03-18', 0, '60', '2'),
(5, 'Bài thi lại', 'Bài thi dành cho học sinh thi lại', '2025-03-18', 0, '60', '1'),
(6, 'Bài 15p', '15p', '2025-04-11', 1, '15', '1');

-- --------------------------------------------------------

--
-- Table structure for table `baithi_user`
--

CREATE TABLE `baithi_user` (
  `id_lambai` int(11) NOT NULL,
  `userName` varchar(50) NOT NULL,
  `id_baithi` int(11) NOT NULL,
  `thoigianlambai` varchar(8) DEFAULT NULL,
  `diem` float NOT NULL,
  `id_monhoc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `baithi_user`
--

INSERT INTO `baithi_user` (`id_lambai`, `userName`, `id_baithi`, `thoigianlambai`, `diem`, `id_monhoc`) VALUES
(86, 'anhem231311', 2, '20', 8, 1),
(87, 'anhem231311', 3, '55', 7, 1),
(88, 'anhem231311', 5, '104', 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cauhoi`
--

CREATE TABLE `cauhoi` (
  `id_cauhoi` int(11) NOT NULL,
  `name_cauhoi` text NOT NULL,
  `id_monhoc` int(11) NOT NULL,
  `isDeleted` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cauhoi`
--

INSERT INTO `cauhoi` (`id_cauhoi`, `name_cauhoi`, `id_monhoc`, `isDeleted`) VALUES
(8, 'Đâu là công thức đúng khi tính số mol:', 1, 0),
(9, 'Đâu là phương trình bật 2', 2, 0),
(10, '2^3 + 3^2', 2, 0),
(12, 'x^2 − 5x+ 6 = 0', 2, 0),
(13, 'Một tam giác có độ dài ba cạnh lần lượt là 3 cm, 4 cm, 5 cm. Đây là loại tam giác gì?', 2, 0),
(14, 'Giá trị của 1 /2 + 1 /3​ là bao nhiêu?', 2, 0),
(15, 'Số nguyên tố nhỏ nhất là số nào?', 2, 0),
(16, 'Tổng các góc trong của một tứ giác bằng bao nhiêu độ?', 2, 0),
(17, 'Cho phương trình 2x + 3 = 7 . Giá trị của x là bao nhiêu?', 2, 0),
(18, 'Nếu diện tích hình tròn là 25π, thì bán kính của hình tròn là bao nhiêu?', 2, 0),
(19, 'Tập nghiệm của bất phương trình x−3>5 là gì?', 2, 0),
(20, 'Trung bình cộng của 4 số: 10, 15, 20, 25 là bao nhiêu?', 2, 0),
(21, 'Bác Hồ Sinh Năm Mấy', 4, 0),
(22, 'Bác Hồ ra đi tìm đường cứu nước năm nào', 4, 0),
(23, 'Ai là người sáng lập ra nhà nước phong kiến tập quyền đầu tiên ở Việt Nam?', 4, 0),
(24, 'Chiến thắng Bạch Đằng năm 938 do ai lãnh đạo?', 4, 0),
(25, 'Năm 1945, sự kiện lịch sử nào xảy ra ở Việt Nam?', 4, 0),
(26, 'Chiến dịch Điện Biên Phủ diễn ra vào năm nào?', 1, 1),
(27, 'Ai là chủ tịch đầu tiên của nước Việt Nam Dân chủ Cộng hòa?', 4, 0),
(28, 'Sự kiện nào đánh dấu sự kết thúc chiến tranh Việt Nam?', 4, 0),
(29, ' Lý Thường Kiệt nổi tiếng với bài thơ nào?', 4, 0),
(30, 'Ai là người lãnh đạo nghĩa quân Lam Sơn?', 4, 0),
(31, 'Nhà Trần nổi tiếng với chiến thắng nào?', 4, 0),
(32, 'Năm nào Bác Hồ đọc Tuyên ngôn độc lập tại quảng trường Ba Đình?', 4, 0),
(33, 'Quốc hiệu đầu tiên của nước ta là gì?', 4, 0),
(34, 'Ai là vị vua thứ hai của nhà Nguyễn?', 4, 0),
(35, 'Quang Trung đánh bại quân Thanh trong trận nào?', 4, 0),
(36, 'Ai là người lãnh đạo cuộc khởi nghĩa Hai Bà Trưng?', 4, 0),
(37, 'Đảng Cộng sản Việt Nam ra đời vào năm nào?', 4, 0),
(38, 'Nhà Trần sử dụng chính sách nào để củng cố quân đội?', 4, 0),
(39, 'Chiến tranh thế giới thứ nhất bắt đầu vào năm nào?', 4, 0),
(40, 'Trận Trân Châu Cảng xảy ra năm nào?', 4, 0),
(41, 'Hitler là lãnh đạo của nước nào?', 4, 0),
(42, 'Liên Hợp Quốc được thành lập vào năm nào?', 4, 0),
(43, 'Nguyên tử của nguyên tố nào có 1 proton?', 1, 0),
(44, 'Kí hiệu hóa học của Natri là gì?', 1, 0),
(45, 'Phản ứng nào sau đây là phản ứng oxi hóa – khử?', 1, 0),
(46, 'Chất nào sau đây là hợp chất?', 1, 0),
(47, ' Dung dịch nào làm quỳ tím hóa đỏ?', 1, 0),
(48, 'Chất nào sau đây là bazơ?', 1, 0),
(49, 'Phản ứng trung hòa là phản ứng giữa:', 1, 0),
(50, 'Sản phẩm của phản ứng H₂ + O₂ là gì?', 1, 0),
(51, 'Số nguyên tử trong phân tử H₂SO₄ là bao nhiêu?', 1, 0),
(52, 'Kim loại nào dẫn điện tốt nhất?', 1, 0),
(53, 'Hợp chất nào có tính axit mạnh?', 1, 0),
(54, 'Kim loại nào phản ứng mạnh với nước ở nhiệt độ thường?', 1, 0),
(55, ' Công thức hóa học của axit sunfuric là:', 1, 0),
(56, 'Tên gọi của Ca(OH)₂ là gì?', 1, 0),
(57, 'Chất nào sau đây là muối?', 1, 0),
(58, 'Hợp chất hữu cơ nào sau đây là ankan?', 1, 0),
(59, 'Chất nào làm mất màu dung dịch brom?', 1, 0),
(60, 'Sản phẩm của phản ứng giữa axit và kim loại là:', 1, 0),
(61, ' Dãy kim loại nào phản ứng với HCl tạo khí H₂?', 1, 0),
(62, 'Hợp chất nào không chứa liên kết cộng hóa trị?', 1, 0),
(63, 'Tập xác định của hàm số y = √(x - 3) là:', 2, 0),
(64, 'Phương trình log₂(x - 1) = 3 có nghiệm là:', 2, 0),
(65, 'Hàm số y = x³ + 3x² - 9x + 1 đồng biến trên khoảng nào?', 2, 0),
(66, 'Tích phân ∫(x²)dx từ 0 đến 2 bằng:', 2, 0),
(67, 'Phương trình sinx = √2/2 có nghiệm x là:', 2, 0),
(68, 'Giá trị lớn nhất của hàm số y = sinx trên đoạn [0; 2π] là:', 2, 0),
(69, 'Số phức z = 3 + 4i có mô-đun là:', 2, 0),
(70, 'Tập nghiệm của bất phương trình (x − 1)(x + 2) < 0 là:', 2, 0),
(71, 'Đạo hàm của hàm số y = cosx là:', 2, 0),
(72, 'Phương trình bậc hai x² − 4x + 5 = 0 có:', 2, 0),
(73, 'Chu vi của elip có bán trục a, b là:', 2, 0),
(74, 'Đạo hàm của hàm số y = ln(x²) là:', 2, 0),
(75, 'Tích vô hướng của 2 vectơ vuông góc bằng:', 2, 0),
(76, 'Cấp số cộng có công sai d = 3, u₁ = 2. Tổng 10 số đầu là:', 2, 0),
(77, 'Nghiệm của phương trình e^x = 1 là:', 2, 0),
(78, 'Giá trị của lim(x→0) sinx/x là:', 2, 0),
(79, 'Tâm và bán kính của đường tròn: (x − 3)² + (y + 2)² = 16 là:', 2, 0),
(80, 'Nghiệm của phương trình tanx = 1 là:', 2, 0),
(81, 'Số nghiệm thực của phương trình |x² − 1| = x − 1 là:', 2, 0),
(82, 'Một hàm số có đạo hàm tại mọi điểm là hàm số:', 2, 0),
(83, 'Hình nào có tất cả các cạnh bằng nhau và góc bằng nhau?', 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `chitiet_traloi`
--

CREATE TABLE `chitiet_traloi` (
  `id_traloi` int(11) NOT NULL,
  `id_lambai` int(11) NOT NULL,
  `id_cauhoi` int(11) NOT NULL,
  `id_dapan` int(11) NOT NULL,
  `dung_sai` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `chitiet_traloi`
--

INSERT INTO `chitiet_traloi` (`id_traloi`, `id_lambai`, `id_cauhoi`, `id_dapan`, `dung_sai`) VALUES
(273, 86, 8, 17, 1),
(274, 86, 43, 159, 1),
(275, 86, 44, 164, 1),
(276, 86, 45, 169, 0),
(277, 86, 46, 172, 1),
(278, 86, 47, 177, 0),
(279, 86, 49, 184, 1),
(280, 86, 50, 189, 1),
(281, 86, 51, 191, 1),
(282, 86, 53, 198, 1),
(283, 87, 8, 17, 1),
(284, 87, 43, 159, 1),
(285, 87, 45, 166, 0),
(286, 87, 47, 175, 1),
(287, 87, 48, 179, 1),
(288, 87, 50, 189, 1),
(289, 87, 52, 197, 1),
(290, 87, 55, 208, 1),
(291, 87, 60, 227, 0),
(292, 87, 62, 235, 0),
(293, 88, 8, 17, 1),
(294, 88, 43, 159, 1),
(295, 88, 46, 172, 1),
(296, 88, 52, 197, 1),
(297, 88, 53, 198, 1),
(298, 88, 56, 212, 1),
(299, 88, 57, 216, 1),
(300, 88, 58, 219, 0),
(301, 88, 59, 222, 0),
(302, 88, 62, 234, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ct_baithi_cauhoi`
--

CREATE TABLE `ct_baithi_cauhoi` (
  `id_baithi` int(11) NOT NULL,
  `id_cauhoi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ct_baithi_cauhoi`
--

INSERT INTO `ct_baithi_cauhoi` (`id_baithi`, `id_cauhoi`) VALUES
(2, 8),
(2, 9),
(2, 10),
(2, 12),
(2, 13),
(2, 14),
(2, 15),
(2, 16),
(2, 17),
(2, 18),
(2, 19),
(2, 20),
(2, 21),
(2, 22),
(2, 23),
(2, 25),
(2, 30),
(2, 31),
(2, 32),
(2, 35),
(2, 36),
(2, 39),
(2, 43),
(2, 44),
(2, 45),
(2, 46),
(2, 47),
(2, 49),
(2, 50),
(2, 51),
(2, 53),
(2, 63),
(2, 64),
(2, 66),
(2, 67),
(2, 68),
(2, 74),
(3, 8),
(3, 10),
(3, 14),
(3, 16),
(3, 23),
(3, 24),
(3, 29),
(3, 32),
(3, 33),
(3, 34),
(3, 37),
(3, 38),
(3, 40),
(3, 41),
(3, 43),
(3, 45),
(3, 47),
(3, 48),
(3, 50),
(3, 52),
(3, 55),
(3, 60),
(3, 62),
(3, 73),
(3, 76),
(3, 77),
(3, 78),
(3, 79),
(3, 82),
(5, 8),
(5, 9),
(5, 10),
(5, 22),
(5, 23),
(5, 25),
(5, 29),
(5, 31),
(5, 32),
(5, 34),
(5, 35),
(5, 36),
(5, 40),
(5, 43),
(5, 46),
(5, 52),
(5, 53),
(5, 56),
(5, 57),
(5, 58),
(5, 59),
(5, 62),
(5, 67),
(5, 69),
(5, 72),
(5, 74),
(5, 76),
(5, 78),
(5, 79),
(5, 80);

-- --------------------------------------------------------

--
-- Table structure for table `ct_baithi_monhoc`
--

CREATE TABLE `ct_baithi_monhoc` (
  `id_baithi` int(11) NOT NULL,
  `id_monhoc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ct_baithi_monhoc`
--

INSERT INTO `ct_baithi_monhoc` (`id_baithi`, `id_monhoc`) VALUES
(2, 1),
(2, 2),
(2, 3),
(2, 4),
(2, 5),
(3, 1),
(3, 2),
(3, 4),
(5, 1),
(5, 2),
(5, 3);

-- --------------------------------------------------------

--
-- Table structure for table `dapan`
--

CREATE TABLE `dapan` (
  `id_dapan` int(11) NOT NULL,
  `id_cauhoi` int(11) NOT NULL,
  `name_dapan` text NOT NULL,
  `dapan` tinyint(1) NOT NULL,
  `isDeleted` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dapan`
--

INSERT INTO `dapan` (`id_dapan`, `id_cauhoi`, `name_dapan`, `dapan`, `isDeleted`) VALUES
(14, 8, 'A. n = a.b', 0, 0),
(15, 8, 'B. n = b.c', 0, 0),
(16, 8, 'C. n = c.d', 0, 0),
(17, 8, 'D. n = V/22.4', 1, 0),
(30, 10, 'A. 17', 1, 0),
(31, 10, 'B. 13', 0, 0),
(32, 10, 'C. 11', 0, 0),
(33, 10, 'D. 19', 0, 0),
(34, 12, 'A. x=2,x=3', 1, 0),
(35, 12, 'B. x=−2,x=−3', 0, 0),
(36, 12, 'C. x=1,x=6', 0, 0),
(37, 12, 'D. x=0,x=5', 0, 0),
(38, 13, 'A. Tam giác vuông', 1, 0),
(39, 13, 'B. Tam giác cân', 0, 0),
(40, 13, 'C. Tam giác đều', 0, 0),
(41, 13, 'D. Tam giác tù', 0, 0),
(42, 14, 'A. 2/5', 0, 0),
(43, 14, 'B. 5/6', 1, 0),
(44, 14, 'C. 1/5', 0, 0),
(45, 14, 'D. 1/6', 0, 0),
(46, 15, 'A. 0', 0, 0),
(47, 15, 'B. 1', 0, 0),
(48, 15, 'C. 2', 1, 0),
(49, 15, 'D. 3', 0, 0),
(50, 16, 'A. 360°', 1, 0),
(51, 16, 'B. 270°', 0, 0),
(52, 16, 'C. 180°', 0, 0),
(53, 16, 'D. 90°', 0, 0),
(54, 17, 'A. 1', 0, 0),
(55, 17, 'B. 2', 1, 0),
(56, 17, 'C. 3', 0, 0),
(57, 17, 'D. 4', 0, 0),
(58, 18, 'A. 3', 0, 0),
(59, 18, 'B. 4', 0, 0),
(60, 18, 'C. 5', 1, 0),
(61, 18, 'D. 6', 0, 0),
(62, 19, 'A.  x>2', 0, 0),
(63, 19, 'B. x>5', 0, 0),
(64, 19, 'C. x>8', 1, 0),
(65, 19, 'D. x>−2', 0, 0),
(66, 20, 'A. 15', 0, 0),
(67, 20, 'B. 17.5', 1, 0),
(68, 20, 'C. 20', 0, 0),
(69, 20, 'D. 22.5', 0, 0),
(70, 21, 'A. 1890', 1, 0),
(71, 21, 'B. 1891', 0, 0),
(72, 21, 'C. 1899', 0, 0),
(73, 21, 'D. 1895', 0, 0),
(74, 22, 'A. 1900', 0, 0),
(75, 22, 'B. 1911', 1, 0),
(76, 22, 'C. 1909', 0, 0),
(77, 22, 'D. 1908', 0, 0),
(78, 23, 'A. Lê Lợi', 0, 0),
(79, 23, 'B. Ngô Quyền', 0, 0),
(80, 23, 'C. Đinh Bộ Lĩnh', 1, 0),
(81, 23, 'D. Lý Thường Kiệt', 0, 0),
(82, 24, 'A. Trần Quốc Tuấn', 0, 0),
(83, 24, 'B. Lê Hoàn', 0, 0),
(84, 24, 'C. Ngô Quyền', 1, 0),
(85, 24, 'D. Lý Thường Kiệt', 0, 0),
(86, 25, 'A. Chiến thắng Điện Biên Phủ', 0, 0),
(87, 25, 'B. Cách mạng Tháng Tám thành công', 1, 0),
(88, 25, 'C. Chiến tranh Đông Dương kết thúc', 0, 0),
(89, 25, 'D. Thành lập Đảng Cộng Sản Việt Nam', 0, 0),
(90, 26, 'A. 1954', 1, 0),
(91, 26, 'B. 1945', 0, 0),
(92, 26, 'C. 1968', 0, 0),
(93, 26, 'D. 1975', 0, 0),
(94, 27, 'A. Võ Nguyên Giáp', 0, 0),
(95, 27, 'B. Phạm Văn Đồng', 0, 0),
(96, 27, 'C. Trường Chinh', 0, 0),
(97, 27, 'D. Hồ Chí Minh', 1, 0),
(98, 28, 'A. Hiệp định Genève', 0, 0),
(99, 28, 'B. Tổng tiến công Tết Mậu Thân', 0, 0),
(100, 28, 'C. Chiến thắng Điện Biên Phủ', 0, 0),
(101, 28, 'D. Giải phóng miền Nam 30/4/1975', 1, 0),
(102, 29, 'A. Bình Ngô đại cáo', 0, 0),
(103, 29, 'B. Nam quốc sơn hà', 1, 0),
(104, 29, 'C. Hịch tướng sĩ', 0, 0),
(105, 29, 'D. Tuyên ngôn độc lập', 0, 0),
(106, 30, 'A.  Trần Hưng Đạo', 0, 0),
(107, 30, 'B. Lê Lợi', 1, 0),
(108, 30, 'C. Quang Trung', 0, 0),
(109, 30, 'D. Nguyễn Trãi', 0, 0),
(110, 31, 'A. Chiến thắng Rạch Gầm – Xoài Mút', 0, 0),
(111, 31, 'B. Chiến thắng Bạch Đằng năm 938', 0, 0),
(112, 31, 'C. Chiến thắng chống Nguyên - Mông', 1, 0),
(113, 31, 'D. Chiến thắng Điện Biên Phủ', 0, 0),
(114, 32, 'A. 1930', 0, 0),
(115, 32, 'B. 1935', 0, 0),
(116, 32, 'C. 1940', 0, 0),
(117, 32, 'D. 1945', 1, 0),
(118, 33, 'A. Đại Việt', 0, 0),
(119, 33, 'B. Văn Lang', 1, 0),
(120, 33, 'C. Âu Lạc', 0, 0),
(121, 33, 'D. Đại Ngu', 0, 0),
(122, 34, 'A. Minh Mạng', 1, 0),
(123, 34, 'B. Gia Long', 0, 0),
(124, 34, 'C. Tự Đức', 0, 0),
(125, 34, 'D. Thiệu Trị', 0, 0),
(126, 35, 'A. Xích Bích', 0, 0),
(127, 35, 'B. Bình Nguyên Vô Tận', 0, 0),
(128, 35, 'C. Trận Đống Đa', 1, 0),
(129, 35, 'D. Trận Bạch Đằng', 0, 0),
(130, 36, 'A. Triệu Tư Tư', 0, 0),
(131, 36, 'B. Bùi Thị Xuân', 0, 0),
(132, 36, 'C. Trưng Trắc và Trưng Nhị', 1, 0),
(133, 36, 'D. Liễu Như Yên', 0, 0),
(134, 37, 'A. 1930', 1, 0),
(135, 37, 'B. 1900', 0, 0),
(136, 37, 'C. 1920', 0, 0),
(137, 37, 'D. 1910', 0, 0),
(138, 38, 'A. Quân đội chuyên nghiệp', 0, 0),
(139, 38, 'B. Ngụ binh ư nông', 1, 0),
(140, 38, 'C. Chiêu mộ dân binh', 0, 0),
(141, 38, 'D. Sử dụng lính đánh thuê', 0, 0),
(142, 39, 'A. 1814', 0, 0),
(143, 39, 'B. 1817', 0, 0),
(144, 39, 'C. 1914', 1, 0),
(145, 39, 'D. 1917', 0, 0),
(146, 40, 'A. 1941', 1, 0),
(147, 40, 'B. 1942', 0, 0),
(148, 40, 'C. 1943', 0, 0),
(149, 40, 'D. 1944', 0, 0),
(150, 41, 'A. Liên Xô', 0, 0),
(151, 41, 'B. Nhật Bản', 0, 0),
(152, 41, 'C. Đức', 1, 0),
(153, 41, 'D. Italia', 0, 0),
(154, 42, 'A. 1678', 0, 0),
(155, 42, 'B. 1789', 0, 0),
(156, 42, 'C. 1945', 1, 0),
(157, 42, 'D. 1567', 0, 0),
(158, 43, 'A. Oxy', 0, 0),
(159, 43, 'B. Hydro', 1, 0),
(160, 43, 'C. Nito', 0, 0),
(161, 43, 'D. Helium', 0, 0),
(162, 44, 'A. N', 0, 0),
(163, 44, 'B. NA', 0, 0),
(164, 44, 'C. Na', 1, 0),
(165, 44, 'D. S', 0, 0),
(166, 45, 'A. NaOH + HCl → NaCl + H₂O', 0, 0),
(167, 45, 'B. Fe + CuSO₄ → FeSO₄ + Cu', 1, 0),
(168, 45, 'C. AgNO₃ + NaCl → AgCl + NaNO₃', 0, 0),
(169, 45, 'D. BaCl₂ + H₂SO₄ → BaSO₄ + 2HCl', 0, 0),
(170, 46, 'A. O₂', 0, 0),
(171, 46, 'B. H₂', 0, 0),
(172, 46, 'C. CO₂', 1, 0),
(173, 46, 'D. He', 0, 0),
(174, 47, 'A. NaOH', 0, 0),
(175, 47, 'B. HCL', 1, 0),
(176, 47, 'C. KOH', 0, 0),
(177, 47, 'D. Ca(OH)₂', 0, 0),
(178, 48, 'A. HCL', 0, 0),
(179, 48, 'B. NaOH', 1, 0),
(180, 48, 'C. H₂SO₄', 0, 0),
(181, 48, 'D. CO₂', 0, 0),
(182, 49, 'A. Bazơ và muối', 0, 0),
(183, 49, 'B. Axit và muối', 0, 0),
(184, 49, 'C. Axit và bazơ', 1, 0),
(185, 49, 'D. Axit và kim loại', 0, 0),
(186, 50, 'A. H₂O₂', 0, 0),
(187, 50, 'B. O₃', 0, 0),
(188, 50, 'C. HOHO', 0, 0),
(189, 50, 'D.  H₂O', 1, 0),
(190, 51, 'A. 5', 0, 0),
(191, 51, 'B. 6', 1, 0),
(192, 51, 'C. 7', 0, 0),
(193, 51, 'D. 8', 0, 0),
(194, 52, 'A. Vàng', 0, 0),
(195, 52, 'B. Đồng', 0, 0),
(196, 52, 'C. Sắt', 0, 0),
(197, 52, 'D. Bạc', 1, 0),
(198, 53, 'A. HCL', 1, 0),
(199, 53, 'B. NACL', 0, 0),
(200, 53, 'C. CaCO₃', 0, 0),
(201, 53, 'D. CH₄', 0, 0),
(202, 54, 'A. Sắt', 0, 0),
(203, 54, 'B. Đồng', 0, 0),
(204, 54, 'C. Natri', 1, 0),
(205, 54, 'D. Bạc', 0, 0),
(206, 55, 'A. HCL', 0, 0),
(207, 55, 'B. HNO₃', 0, 0),
(208, 55, 'C. H₂SO₄', 1, 0),
(209, 55, 'D. H₂CO₃', 0, 0),
(210, 56, 'A. Canxi oxit', 0, 0),
(211, 56, 'B. Canxi Clorua', 0, 0),
(212, 56, 'C. Canxi hiđroxit', 1, 0),
(213, 56, 'D. Canxi cacbonat', 0, 0),
(214, 57, 'A. NaOH', 0, 0),
(215, 57, 'B. H₂SO₄', 0, 0),
(216, 57, 'C. NaCl', 1, 0),
(217, 57, 'D. H₂O', 0, 0),
(218, 58, 'A. CH₄', 1, 0),
(219, 58, 'B. C₂H₄', 0, 0),
(220, 58, 'C. C₂H₆', 0, 0),
(221, 58, 'D. C₆H₁₂O₆', 0, 0),
(222, 59, 'A. C₂H₆', 0, 0),
(223, 59, 'B. C₂H₄', 1, 0),
(224, 59, 'C. CH₄', 0, 0),
(225, 59, 'D. C₆H₁₂O₆', 0, 0),
(226, 60, 'A. Muối + Nước', 0, 0),
(227, 60, 'B. Bazơ + Nước', 0, 0),
(228, 60, 'C. Muối + Hidro', 1, 0),
(229, 60, 'D. Oxi + Nước', 0, 0),
(230, 61, 'A. Cu, Ag, Au', 0, 0),
(231, 61, 'B.  Fe, Zn, Mg', 1, 0),
(232, 61, 'C. Pb, Hg, Pt', 0, 0),
(233, 61, 'D. Al, Cu, Sn', 0, 0),
(234, 62, 'A. CO₂', 0, 0),
(235, 62, 'B. H₂O', 0, 0),
(236, 62, 'C. NaCl', 1, 0),
(237, 62, 'D. SO₂', 0, 0),
(238, 63, 'A.  x ≥ 3', 1, 0),
(239, 63, 'B. x ≤ 3', 0, 0),
(240, 63, 'C. x > 0', 0, 0),
(241, 63, 'D. x ≠ 3', 0, 0),
(242, 64, 'A. x = 7', 0, 0),
(243, 64, 'B. x = 8', 0, 0),
(244, 64, 'C. x = 9', 1, 0),
(245, 64, 'D. x = 1', 0, 0),
(246, 65, 'A. (−∞; −1)', 0, 0),
(247, 65, 'B.  (−1; 3)', 0, 0),
(248, 65, 'C. (3; +∞)', 1, 0),
(249, 65, 'D. (−∞; +∞)', 0, 0),
(250, 66, 'A. 4', 0, 0),
(251, 66, 'B. 6', 1, 0),
(252, 66, 'C. 8', 0, 0),
(253, 66, 'D. 10', 0, 0),
(254, 67, 'A. x = π/4 + kπ', 0, 0),
(255, 67, 'B. x = ±π/4 + k2π', 1, 0),
(256, 67, 'C. x = π/6 + kπ', 0, 0),
(257, 67, 'D. x = π/2 + kπ', 0, 0),
(258, 68, 'A. 0', 0, 0),
(259, 68, 'B. -1', 0, 0),
(260, 68, 'C. 1', 1, 0),
(261, 68, 'D. 2', 0, 0),
(262, 69, 'A. 5', 1, 0),
(263, 69, 'B. 7', 0, 0),
(264, 69, 'C. 9', 0, 0),
(265, 69, 'D. 3', 0, 0),
(266, 70, 'A. x < −2 hoặc x > 1', 0, 0),
(267, 70, 'B. x ∈ (−2; 1)', 1, 0),
(268, 70, 'C.  x ∈ (1; +∞)', 0, 0),
(269, 70, 'D. x ∈ (−∞; −2)', 0, 0),
(270, 71, 'A. sinx', 0, 0),
(271, 71, 'B. cosx', 0, 0),
(272, 71, 'C. −sinx', 1, 0),
(273, 71, 'D. −cosx', 0, 0),
(274, 72, 'A. 2 nghiệm phân biệt', 0, 0),
(275, 72, 'B. 1 nghiệm kép', 0, 0),
(276, 72, 'C. 2 nghiệm phức', 1, 0),
(277, 72, 'D. vô nghiệm', 0, 0),
(278, 73, 'A. 2π√(a² + b²)', 0, 0),
(279, 73, 'B. 2πab', 0, 0),
(280, 73, 'C. xấp xỉ π(a + b)', 0, 0),
(281, 73, 'D. Gần đúng: π[3(a + b) − √((3a + b)(a + 3b))] ', 1, 0),
(282, 74, 'A. 2x', 0, 0),
(283, 74, 'B. 2/2x', 0, 0),
(284, 74, 'C.  2x/x²', 0, 0),
(285, 74, 'D.  2/x ', 1, 0),
(286, 75, 'A. 1', 0, 0),
(287, 75, 'B. 0', 1, 0),
(288, 75, 'C. -1', 0, 0),
(289, 75, 'D. 2', 0, 0),
(290, 76, 'A. 123', 0, 0),
(291, 76, 'B. 124', 0, 0),
(292, 76, 'C. 125', 1, 0),
(293, 76, 'D. 126', 0, 0),
(294, 77, 'A. x = 0', 1, 0),
(295, 77, 'B. x = 1', 0, 0),
(296, 77, 'C. x = 2', 0, 0),
(297, 77, 'D.  x = ln2', 0, 0),
(298, 78, 'A. 0', 0, 0),
(299, 78, 'B. 1', 1, 0),
(300, 78, 'C. Không xác định', 0, 0),
(301, 78, 'D. ∞', 0, 0),
(302, 79, 'A. Tâm (−3; 2), bán kính 16', 0, 0),
(303, 79, 'B. Tâm (3; −2), bán kính 4', 1, 0),
(304, 79, 'C. Tâm (3; 2), bán kính 4', 0, 0),
(305, 79, 'D. Tâm (−3; −2), bán kính 16', 0, 0),
(306, 80, 'A. x = π/4 + k2π', 0, 0),
(307, 80, 'B. x = π/4 + kπ', 1, 0),
(308, 80, 'C. x = π/2 + kπ', 0, 0),
(309, 80, 'D. x = 3π/4 + kπ', 0, 0),
(310, 81, 'A. 0', 0, 0),
(311, 81, 'B. 1', 0, 0),
(312, 81, 'C. 2', 1, 0),
(313, 81, 'D. 3', 0, 0),
(314, 82, 'A. Không liên tục', 0, 0),
(315, 82, 'B. Liên tục', 1, 0),
(316, 82, 'C. Không xác định', 0, 0),
(317, 82, 'D. Vô định', 0, 0),
(318, 83, 'A. Hình tròn', 0, 0),
(319, 83, 'B. Hình vuông', 1, 0),
(320, 83, 'C. Hình thang', 0, 0),
(321, 83, 'D. Hình tam giác', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `monhoc`
--

CREATE TABLE `monhoc` (
  `id_monhoc` int(11) NOT NULL,
  `name_monhoc` varchar(255) NOT NULL,
  `isDeleted` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `monhoc`
--

INSERT INTO `monhoc` (`id_monhoc`, `name_monhoc`, `isDeleted`) VALUES
(1, 'Hóa', 0),
(2, 'Toán', 0),
(3, 'Lí', 0),
(4, 'Sử', 0),
(5, 'Địa', 0);

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `roleId` int(11) NOT NULL,
  `roleName` varchar(20) NOT NULL,
  `isDeleted` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`roleId`, `roleName`, `isDeleted`) VALUES
(1, 'Admin', 0),
(2, 'Customer', 0),
(3, 'Adminnnn', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userName` varchar(50) NOT NULL,
  `passWord` varchar(255) NOT NULL,
  `roleId` int(11) NOT NULL,
  `isDeleted` tinyint(1) NOT NULL,
  `image` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userName`, `passWord`, `roleId`, `isDeleted`, `image`, `email`) VALUES
('anhem231', '$2y$10$MURA8bOyz/Y0VAD3hUU0ROpb2pyTmjUJvUpSf5g600.us2g8Prvta', 2, 0, '', ''),
('anhem23111', '$2y$10$3DjKvSuF3h.XW2CJV8LDeOjJRMIZgxeD5LgZqYChoLihMtmJ08Ip.', 2, 0, '', ''),
('anhem231123', '$2y$10$eTqL03LfwVdE9Np1UB0jaeTnSJCzwiHlTMstPxLKK7JlPEdHSRum6', 2, 0, '', ''),
('anhem231311', '$2y$10$Hn68GYwk0O97WhRClWs1aOO9Xqbvf637WApS1R.O0iU7B546beSPi', 2, 0, 'images/users/6673402.jpg', 'duy@gmail.com'),
('diolajavol@gmail.com', '$2y$10$2HvvmpXSd06vgJcWMKc/i.PnlvnsBtIzru9xFDjECXB02YgrEPPAO', 2, 0, '', ''),
('duyphuong1779@gmail.com', '$2y$10$tfkKsjcdumpTIBRbduCJ5uxD1gSw5DuAK0qU49vwPcxOggQ5vLgCq', 2, 0, '', ''),
('hahaha', '$2y$10$5ikhna.xwHLL4aLpbjBV4uvfQ9GZpL/BfGEbx9FIn5KgjLLZZ5vxW', 2, 0, '', ''),
('haingu', '$2y$10$zZUKbm8LFVyePsNvLIErX.1ivJwQBiYZAs1f9.g0p4Q6f.Pm8/KbG', 2, 0, '', ''),
('haingu1', '$2y$10$TlF/Iz79azCf.xB9gQkLmO/FvjlelGa.D9.W4j16Bd5CtEVwZvo1G', 1, 0, '', ''),
('hehe', '$2y$10$QucxDiSUnq2FQt1ssKD1TeVn0NzmNuzRGIM83r0yzJLxzeSquZub6', 2, 0, '', ''),
('NgDPhuong', '$2y$10$DJASmFSx.Pk8ItMOkwaxuOXQwiiAZ60IdikvIouTwzTFzxH.1tpne', 2, 0, '', ''),
('phuongadmin', '$2y$10$xUEgUZ6KCbGRcEa.ZOqFBedU9OKQm26v69ADaFYalQICrqHs8tTNa', 1, 0, '', ''),
('phuongcustomer', '$2y$10$gr621f3zpn9Kp95vWIRRL.t68pB0JGAbab7qthTLD10hbyxI7RJAe', 2, 0, '', ''),
('phuongne', '$2y$10$1VFW8uJjlzF9Ok7iCVbx6O5YJLO.ORG1gaG4MACPaBvKYfwAz4TTC', 1, 0, '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `baithitracnghiem`
--
ALTER TABLE `baithitracnghiem`
  ADD PRIMARY KEY (`id_baithi`);

--
-- Indexes for table `baithi_user`
--
ALTER TABLE `baithi_user`
  ADD PRIMARY KEY (`id_lambai`),
  ADD KEY `id_baithi` (`id_baithi`),
  ADD KEY `userName` (`userName`),
  ADD KEY `id_monhoc` (`id_monhoc`);

--
-- Indexes for table `cauhoi`
--
ALTER TABLE `cauhoi`
  ADD PRIMARY KEY (`id_cauhoi`),
  ADD KEY `id_monhoc` (`id_monhoc`);

--
-- Indexes for table `chitiet_traloi`
--
ALTER TABLE `chitiet_traloi`
  ADD PRIMARY KEY (`id_traloi`),
  ADD KEY `id_lambai` (`id_lambai`),
  ADD KEY `id_cauhoi` (`id_cauhoi`),
  ADD KEY `id_dapan` (`id_dapan`);

--
-- Indexes for table `ct_baithi_cauhoi`
--
ALTER TABLE `ct_baithi_cauhoi`
  ADD PRIMARY KEY (`id_baithi`,`id_cauhoi`),
  ADD KEY `id_cauhoi` (`id_cauhoi`);

--
-- Indexes for table `ct_baithi_monhoc`
--
ALTER TABLE `ct_baithi_monhoc`
  ADD PRIMARY KEY (`id_baithi`,`id_monhoc`),
  ADD KEY `id_monhoc` (`id_monhoc`);

--
-- Indexes for table `dapan`
--
ALTER TABLE `dapan`
  ADD PRIMARY KEY (`id_dapan`),
  ADD KEY `id_cauhoi` (`id_cauhoi`);

--
-- Indexes for table `monhoc`
--
ALTER TABLE `monhoc`
  ADD PRIMARY KEY (`id_monhoc`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`roleId`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userName`),
  ADD KEY `roleId` (`roleId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `baithitracnghiem`
--
ALTER TABLE `baithitracnghiem`
  MODIFY `id_baithi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `baithi_user`
--
ALTER TABLE `baithi_user`
  MODIFY `id_lambai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `cauhoi`
--
ALTER TABLE `cauhoi`
  MODIFY `id_cauhoi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `chitiet_traloi`
--
ALTER TABLE `chitiet_traloi`
  MODIFY `id_traloi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=303;

--
-- AUTO_INCREMENT for table `dapan`
--
ALTER TABLE `dapan`
  MODIFY `id_dapan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=322;

--
-- AUTO_INCREMENT for table `monhoc`
--
ALTER TABLE `monhoc`
  MODIFY `id_monhoc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `roleId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `baithi_user`
--
ALTER TABLE `baithi_user`
  ADD CONSTRAINT `baithi_user_ibfk_1` FOREIGN KEY (`id_baithi`) REFERENCES `baithitracnghiem` (`id_baithi`),
  ADD CONSTRAINT `baithi_user_ibfk_2` FOREIGN KEY (`userName`) REFERENCES `user` (`userName`),
  ADD CONSTRAINT `id_monhoc` FOREIGN KEY (`id_monhoc`) REFERENCES `monhoc` (`id_monhoc`);

--
-- Constraints for table `cauhoi`
--
ALTER TABLE `cauhoi`
  ADD CONSTRAINT `cauhoi_ibfk_1` FOREIGN KEY (`id_monhoc`) REFERENCES `monhoc` (`id_monhoc`);

--
-- Constraints for table `chitiet_traloi`
--
ALTER TABLE `chitiet_traloi`
  ADD CONSTRAINT `chitiet_traloi_ibfk_1` FOREIGN KEY (`id_lambai`) REFERENCES `baithi_user` (`id_lambai`),
  ADD CONSTRAINT `chitiet_traloi_ibfk_2` FOREIGN KEY (`id_cauhoi`) REFERENCES `cauhoi` (`id_cauhoi`),
  ADD CONSTRAINT `chitiet_traloi_ibfk_3` FOREIGN KEY (`id_dapan`) REFERENCES `dapan` (`id_dapan`);

--
-- Constraints for table `ct_baithi_cauhoi`
--
ALTER TABLE `ct_baithi_cauhoi`
  ADD CONSTRAINT `ct_baithi_cauhoi_ibfk_1` FOREIGN KEY (`id_baithi`) REFERENCES `baithitracnghiem` (`id_baithi`),
  ADD CONSTRAINT `ct_baithi_cauhoi_ibfk_2` FOREIGN KEY (`id_cauhoi`) REFERENCES `cauhoi` (`id_cauhoi`);

--
-- Constraints for table `ct_baithi_monhoc`
--
ALTER TABLE `ct_baithi_monhoc`
  ADD CONSTRAINT `ct_baithi_monhoc_ibfk_1` FOREIGN KEY (`id_monhoc`) REFERENCES `monhoc` (`id_monhoc`),
  ADD CONSTRAINT `ct_baithi_monhoc_ibfk_3` FOREIGN KEY (`id_baithi`) REFERENCES `baithitracnghiem` (`id_baithi`);

--
-- Constraints for table `dapan`
--
ALTER TABLE `dapan`
  ADD CONSTRAINT `dapan_ibfk_1` FOREIGN KEY (`id_cauhoi`) REFERENCES `cauhoi` (`id_cauhoi`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`roleId`) REFERENCES `role` (`roleId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

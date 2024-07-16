-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 08, 2023 at 02:13 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `duan1`
--

-- --------------------------------------------------------

--
-- Table structure for table `binhluan`
--

CREATE TABLE `binhluan` (
  `id` int(11) NOT NULL,
  `noidung` varchar(255) NOT NULL,
  `iduser` int(11) NOT NULL,
  `idpro` int(11) NOT NULL,
  `ngaybinhluan` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `binhluan`
--

INSERT INTO `binhluan` (`id`, `noidung`, `iduser`, `idpro`, `ngaybinhluan`) VALUES
(1, 'sản phẩm rất tốt', 1, 60, '2023-12-01'),
(2, '', 3, 58, '2005-12-23'),
(3, '', 3, 58, '2005-12-23'),
(4, '', 3, 58, '2005-12-23'),
(5, '', 3, 58, '2005-12-23');

-- --------------------------------------------------------

--
-- Table structure for table `chitietdonhang`
--

CREATE TABLE `chitietdonhang` (
  `id` int(11) NOT NULL,
  `donhang_id` int(11) DEFAULT NULL,
  `sanpham_id` int(11) DEFAULT NULL,
  `soluong` int(11) NOT NULL,
  `gia_ban` double(10,2) NOT NULL,
  `img` varchar(255) NOT NULL,
  `name_sp` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chitietdonhang`
--

INSERT INTO `chitietdonhang` (`id`, `donhang_id`, `sanpham_id`, `soluong`, `gia_ban`, `img`, `name_sp`) VALUES
(53, 138, 48, 1, 1850000.00, '17.webp', 'Sữa rửa mặt Patricks FW1 Face Wash'),
(54, 138, 54, 1, 292000.00, '24.jpg', 'Nước Hoa Hồng Some By Mi AHA-BHA-PHA 30 Days Miracle Toner '),
(55, 138, 18, 1, 450000.00, '4.webp', 'Sáp Vuốt Tóc Lockhart’s Groon Grease Heavy Hold 96g'),
(56, 139, 55, 1, 1085000.00, '25.jpg', 'Kem Chống Nắng Fit Sun Protect Serum'),
(57, 140, 27, 1, 925000.00, '13png.png', 'Dưỡng ẩm The Groomed Man Co. Smooth Operator Face Moisturiser'),
(58, 140, 43, 1, 1700000.00, '13.jpg', 'Serum ngăn ngừa rụng tóc Kérastase Cure Anti-Chute'),
(59, 141, 58, 1, 479000.00, '3.jpg', 'Sữa Rửa Mặt MdoC Blackhead Perfect Scrub Foam'),
(60, 142, 57, 1, 540000.00, '2.jpg', 'Dầu Xả Phục Hồi Hư Tổn Olaplex No.5 Conditioner'),
(61, 143, 58, 1, 479000.00, '3.jpg', 'Sữa Rửa Mặt MdoC Blackhead Perfect Scrub Foam'),
(62, 144, 58, 1, 479000.00, '3.jpg', 'Sữa Rửa Mặt MdoC Blackhead Perfect Scrub Foam'),
(63, 145, 57, 1, 540000.00, '2.jpg', 'Dầu Xả Phục Hồi Hư Tổn Olaplex No.5 Conditioner'),
(64, 146, 57, 1, 540000.00, '2.jpg', 'Dầu Xả Phục Hồi Hư Tổn Olaplex No.5 Conditioner'),
(65, 147, 59, 1, 35000.00, '4.webp', 'Khăn làm mát Duke Cannon Cold Shower Cooling Field Towel'),
(66, 147, 28, 4, 1000000.00, '13.webp', 'Kem dưỡng da ngừa mụn Jack Black Overnight Repair Moisturizer '),
(67, 147, 26, 1, 430000.00, '12.webp', 'Kem chống nắng Dear Klairs All-day Airy Sunscreen SPF50+'),
(68, 148, 58, 1, 440000.00, '3.jpg', 'Sữa Rửa Mặt MdoC Blackhead Perfect Scrub Foam'),
(69, 149, 57, 1, 500000.00, '2.jpg', 'Dầu Xả Phục Hồi Hư Tổn Olaplex No.5 Conditioner'),
(70, 150, 61, 1, 750000.00, 'combo-moroccanoil-air-moisture-768x768.png', 'Bộ dầu gội xả Moroccanoil Air Moisture'),
(71, 150, 27, 1, 880000.00, '13png.png', 'Dưỡng ẩm The Groomed Man Co. Smooth Operator Face Moisturiser'),
(72, 150, 53, 1, 855000.00, '23.jpg', 'Xịt Mọc Tóc Kevin Murphy Body.Mass '),
(73, 150, 59, 1, 30000.00, '4.webp', 'Khăn làm mát Duke Cannon Cold Shower Cooling Field Towel'),
(74, 151, 59, 4, 30000.00, '4.webp', 'Khăn làm mát Duke Cannon Cold Shower Cooling Field Towel');

-- --------------------------------------------------------

--
-- Table structure for table `danhmuc`
--

CREATE TABLE `danhmuc` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `danhmuc`
--

INSERT INTO `danhmuc` (`id`, `name`) VALUES
(4, 'Tóc'),
(5, 'Da Mặt'),
(6, 'Cơ Thể');

-- --------------------------------------------------------

--
-- Table structure for table `donhang`
--

CREATE TABLE `donhang` (
  `id` int(11) NOT NULL,
  `idtk` int(11) DEFAULT NULL,
  `tennguoinhan` varchar(50) NOT NULL,
  `emailnguoinhan` varchar(255) DEFAULT NULL,
  `sdtnguoinhan` int(13) NOT NULL,
  `diachinguoinhan` varchar(255) NOT NULL,
  `pttt` varchar(50) NOT NULL,
  `tongtien` int(11) NOT NULL,
  `ngaydat` datetime DEFAULT NULL,
  `ghichu` varchar(255) DEFAULT NULL,
  `id_trangthai` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `donhang`
--

INSERT INTO `donhang` (`id`, `idtk`, `tennguoinhan`, `emailnguoinhan`, `sdtnguoinhan`, `diachinguoinhan`, `pttt`, `tongtien`, `ngaydat`, `ghichu`, `id_trangthai`) VALUES
(138, 1, 'kieuquyet', 'kieuvanquyet30122003@gmail.com', 357625490, '31 van canh hoai duc Ha Noi', 'on', 2612000, '2023-12-01 23:19:19', '', 4),
(139, 1, 'kieuquyet', 'kieuvanquyet30122003@gmail.com', 357625490, '31 van canh hoai duc Ha Noi', 'on', 1105000, '2023-10-28 23:19:37', '', 2),
(140, 1, 'kieuquyet', 'kieuvanquyet30122003@gmail.com', 357625490, '31 van canh hoai duc Ha Noi', 'on', 2645000, '2023-11-22 23:19:56', '', 3),
(141, 1, 'kieuquyet', 'kieuvanquyet30122003@gmail.com', 357625490, '31 van canh hoai duc Ha Noi', 'on', 499000, '2023-12-02 09:12:08', '', 1),
(142, 1, 'kieuquyet', 'kieuvanquyet30122003@gmail.com', 357625490, '31 van canh hoai duc Ha Noi', 'on', 560000, '2023-12-02 10:18:24', '', 4),
(143, 1, 'kieuquyet', 'kieuvanquyet30122003@gmail.com', 357625490, '31 van canh hoai duc Ha Noi', 'on', 499000, '2023-12-02 14:25:48', '', 1),
(144, 1, 'kieuquyet', 'kieuvanquyet30122003@gmail.com', 357625490, '31 van canh hoai duc Ha Noi', 'on', 499000, '2023-12-02 14:45:11', '', 4),
(145, 1, 'kieuquyet', 'kieuvanquyet30122003@gmail.com', 357625490, '31 van canh hoai duc Ha Noi', 'on', 560000, '2023-12-02 14:45:25', '', 2),
(146, 1, 'kieuquyet', 'kieuvanquyet30122003@gmail.com', 357625490, '31 van canh hoai duc Ha Noi', 'on', 560000, '2023-12-02 14:59:12', '', 3),
(147, 3, 'Duy', 'hoangduy071134@gmail.com', 0, '', 'on', 4485000, '2023-12-04 23:14:19', '', 1),
(148, 1, 'kieuquyet', 'kieuvanquyet30122003@gmail.com', 357625490, '31 van canh hoai duc Ha Noi', 'Thanh toán bằng tiền mặt', 460000, '2023-12-05 12:52:39', '', 1),
(149, 1, 'kieuquyet', 'kieuvanquyet30122003@gmail.com', 357625490, '31 van canh hoai duc Ha Noi', 'Thanh toán bằng tiền mặt', 520000, '2023-12-05 13:09:26', '', 4),
(150, 1, 'kieuquyet', 'kieuvanquyet30122003@gmail.com', 357625490, '31 van canh hoai duc Ha Noi', 'Thanh toán bằng tiền mặt', 2535000, '2023-12-05 14:40:25', '', 3),
(151, 1, 'kieuquyet', 'quyetkv20@gmail.com', 961116903, 'ha n', 'Thanh toán bằng tiền mặt', 140000, '2023-12-08 17:20:42', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `giohang`
--

CREATE TABLE `giohang` (
  `id` int(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `iduser` int(11) NOT NULL,
  `idsp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `giohang`
--

INSERT INTO `giohang` (`id`, `soluong`, `iduser`, `idsp`) VALUES
(75, 1, 3, 58),
(76, 1, 3, 59);

-- --------------------------------------------------------

--
-- Table structure for table `nguoidung`
--

CREATE TABLE `nguoidung` (
  `id` int(11) NOT NULL,
  `user` varchar(50) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `tel` varchar(10) NOT NULL,
  `role` enum('nguoidung','admin') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nguoidung`
--

INSERT INTO `nguoidung` (`id`, `user`, `pass`, `email`, `address`, `tel`, `role`) VALUES
(1, 'kieuquyet', '123', 'quyetkv20@gmail.com', 'ha n', '0961116903', 'admin'),
(2, 'quyet', '123', 'kieuvanquyet30122003@gmail.com', '', '0337587246', 'nguoidung'),
(3, 'huong', '123', 'huong@gmail.com', NULL, '0872717234', 'nguoidung'),
(4, 'quyet', '123', 'quyetkvph36176@fpt.edu.vn', NULL, '0412442697', 'nguoidung');

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `mota` text DEFAULT NULL,
  `price` double(10,2) NOT NULL,
  `newprice` double(10,2) NOT NULL,
  `hinh` varchar(255) DEFAULT NULL,
  `xuatxu` varchar(255) NOT NULL,
  `soluong` int(10) NOT NULL,
  `iddm` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`id`, `name`, `mota`, `price`, `newprice`, `hinh`, `xuatxu`, `soluong`, `iddm`) VALUES
(15, 'Sáp Vuốt Tóc Lockhart’s 10 Year Aanniversary Oil Based Groon Grease', 'Lockhart’s 10 Year Aanniversary Oil Based Groon Grease phiên bản đặc biệt kỷ niệm 10 năm của Lockhart’s là một công thức giữ nếp mạnh mẽ với độ giữ nếp mạnh mẽ và độ bóng tuyệt vời! Hoàn hảo cho kiểu tóc pompadour, jelly roll, slick back và mọi kiểu tóc khác! Giữ nếp mạnh mẽ nhưng thoa lên nhẹ nhàng như độ giữ nếp nhẹ, mang hương thơm sảng khoái của nước hoa chanh tươi mát với gợi ý của chanh và dưa leo.\r\nThông tin chi tiết:\r\nThương hiệu: Lockhart’s\r\nĐộ giữ nếp : Heavy/Firm\r\nĐộ bóng: High Shine\r\nKết cấu: Firm\r\nMùi hương: Citrus Cologne\r\nTrọng lượng : 96g\r\nCách sử dụng:\r\nBước 1: Chuẩn bị tóc trước khi áp dụng pomade, hãy đảm bảo tóc của bạn đã được gội sạch và khô hoàn toàn. Nếu tóc vẫn còn ẩm, pomade sẽ không thể phân bố đều và giảm độ giữ nếp.\r\nBước 2: Lấy một lượng pomade nhỏ ra lòng bàn tay. Số lượng này có thể tăng hoặc giảm tùy theo độ dày và chiều dài tóc của bạn. Bắt đầu với một lượng nhỏ và sau đó tăng dần nếu cần.\r\nBước 3: Xoa đều pomade trên lòng bàn tay, xoa đều lòng bàn tay vào nhau. Điều này giúp pomade trở nên mềm mại và dễ dàng phân phối đều trên tóc.\r\nBước 4: Áp dụng pomade lên tóc. Chạm nhẹ các ngón tay của bạn vào tóc và xoa đều pomade lên tóc từ gốc đến ngọn. Đảm bảo phân phối đều pomade trên mỗi sợi tóc để có kết quả tốt nhất.\r\nBước 5: Tạo kiểu. Sử dụng ngón tay hoặc lược để tạo kiểu tóc theo ý muốn. Pomade sẽ giữ cho tóc của bạn có độ giữ nếp, kiểm soát và sáng bóng.\r\nXuất xứ: Homebrew Mỹ', 480000.00, 400000.00, '1.jpeg', 'Homebrew Mỹ', 122, 4),
(16, 'Sáp Vuốt Tóc Lockhart’s Anti-Gravity Matte Paste Custom', 'Lockhart’s Anti-Gravity là một công thức độc đáo kết hợp giữa Matte Paste/Clay/Fiber/Cream. Nó có độ đặc như Light Fiber, thoa như kem, giữ nếp như paste và mang đến độ bồng và khối lượng như clay.\r\n\r\nThông tin chi tiết:\r\nThương hiệu: Lockhart’s\r\nĐộ giữ nếp: Firm/High (giữ nếp cao)\r\nĐộ bóng: mờ\r\nChất sáp dạng Cream, nên chất sáp cực kì nhẹ. Đúng với cái tên là Anti Gravity (Vô trọng lực)\r\nHỗ trợ tặng Volume (độ phồng) cực kì mạnh, vì chất sáp khá nhẹ nên không hề gây nặng tóc và sập tóc\r\nTexture: Maximum\r\nHương thơm: Fortuna thơm ngát, gần giống mùi nước hoa.\r\nĐầu : Bergamot, Elemi, Sichuan Pepper, Lemon Verbena\r\nGiữa : Pink Pepper, Vetiver, Violet leaf, Green notes\r\nCuối : Patchouli, Ambroxan, Sandalwood, Ambergris\r\nTrọng lượng: 104 gram / 3.7 Oz\r\nCách sử dụng:\r\n\r\nBước 1: Chuẩn bị tóc trước khi áp dụng pomade, hãy đảm bảo tóc của bạn đã được gội sạch và khô hoàn toàn. Nếu tóc vẫn còn ẩm, pomade sẽ không thể phân bố đều và giảm độ giữ nếp.\r\nBước 2: Lấy một lượng pomade nhỏ ra lòng bàn tay. Số lượng này có thể tăng hoặc giảm tùy theo độ dày và chiều dài tóc của bạn. Bắt đầu với một lượng nhỏ và sau đó tăng dần nếu cần.\r\nBước 3: Xoa đều pomade trên lòng bàn tay, xoa đều lòng bàn tay vào nhau. Điều này giúp pomade trở nên mềm mại và dễ dàng phân phối đều trên tóc.\r\nBước 4: Áp dụng pomade lên tóc. Chạm nhẹ các ngón tay của bạn vào tóc và xoa đều pomade lên tóc từ gốc đến ngọn. Đảm bảo phân phối đều pomade trên mỗi sợi tóc để có kết quả tốt nhất.', 480000.00, 440000.00, '2x.jpeg', 'Pháp', 210, 4),
(17, 'Dưỡng tóc nam của Moroccanoil', 'Lockhart’s Anti-Gravity là một công thức độc đáo kết hợp giữa Matte Paste/Clay/Fiber/Cream. Nó có độ đặc như Light Fiber, thoa như kem, giữ nếp như paste và mang đến độ bồng và khối lượng như clay.\r\n\r\nThông tin chi tiết:\r\nThương hiệu: Lockhart’s\r\nĐộ giữ nếp: Firm/High (giữ nếp cao)\r\nĐộ bóng: mờ\r\nChất sáp dạng Cream, nên chất sáp cực kì nhẹ. Đúng với cái tên là Anti Gravity (Vô trọng lực)\r\nHỗ trợ tặng Volume (độ phồng) cực kì mạnh, vì chất sáp khá nhẹ nên không hề gây nặng tóc và sập tóc\r\nTexture: Maximum\r\nHương thơm: Fortuna thơm ngát, gần giống mùi nước hoa.\r\nĐầu : Bergamot, Elemi, Sichuan Pepper, Lemon Verbena\r\nGiữa : Pink Pepper, Vetiver, Violet leaf, Green notes\r\nCuối : Patchouli, Ambroxan, Sandalwood, Ambergris\r\nTrọng lượng: 104 gram / 3.7 Oz\r\nCách sử dụng:\r\n\r\nBước 1: Chuẩn bị tóc trước khi áp dụng pomade, hãy đảm bảo tóc của bạn đã được gội sạch và khô hoàn toàn. Nếu tóc vẫn còn ẩm, pomade sẽ không thể phân bố đều và giảm độ giữ nếp.\r\nBước 2: Lấy một lượng pomade nhỏ ra lòng bàn tay. Số lượng này có thể tăng hoặc giảm tùy theo độ dày và chiều dài tóc của bạn. Bắt đầu với một lượng nhỏ và sau đó tăng dần nếu cần.\r\nBước 3: Xoa đều pomade trên lòng bàn tay, xoa đều lòng bàn tay vào nhau. Điều này giúp pomade trở nên mềm mại và dễ dàng phân phối đều trên tóc.\r\nBước 4: Áp dụng pomade lên tóc. Chạm nhẹ các ngón tay của bạn vào tóc và xoa đều pomade lên tóc từ gốc đến ngọn. Đảm bảo phân phối đều pomade trên mỗi sợi tóc để có kết quả tốt nhất.', 520000.00, 500000.00, '3.jpg', 'Pháp', 30, 4),
(18, 'Sáp Vuốt Tóc Lockhart’s Groon Grease Heavy Hold 96g', 'Lockhart’s Groon Grease Heavy Hold đem đến độ giữ nếp mạnh mẽ cùng độ bóng cao. Hoàn hảo cho kiểu tóc pompadour, jelly roll, slick back và mọi kiểu tóc khác! Độ giữ nếp mạnh mẽ nhưng thoa lên như độ giữ nếp nhẹ, mang hương thơm thanh mát với gợi ý của quả chanh và dưa leo.\r\n\r\nThông tin chi tiết:\r\nThương hiệu: Lockhart’s\r\nĐộ giữ nếp : Heavy/Firm\r\nĐộ bóng: High Shine\r\nKết cấu: Firm\r\nMùi hương: Citrus Cologne\r\nTrọng lượng : 96g\r\nXuất xứ: Homebrew Mỹ\r\nCách sử dụng:\r\nBước 1: Chuẩn bị tóc trước khi áp dụng pomade, hãy đảm bảo tóc của bạn đã được gội sạch và khô hoàn toàn. Nếu tóc vẫn còn ẩm, pomade sẽ không thể phân bố đều và giảm độ giữ nếp.\r\nBước 2: Lấy một lượng pomade nhỏ ra lòng bàn tay. Số lượng này có thể tăng hoặc giảm tùy theo độ dày và chiều dài tóc của bạn. Bắt đầu với một lượng nhỏ và sau đó tăng dần nếu cần.\r\nBước 3: Xoa đều pomade trên lòng bàn tay, xoa đều lòng bàn tay vào nhau. Điều này giúp pomade trở nên mềm mại và dễ dàng phân phối đều trên tóc.\r\nBước 4: Áp dụng pomade lên tóc. Chạm nhẹ các ngón tay của bạn vào tóc và xoa đều pomade lên tóc từ gốc đến ngọn. Đảm bảo phân phối đều pomade trên mỗi sợi tóc để có kết quả tốt nhất.\r\nBước 5: Tạo kiểu. Sử dụng ngón tay hoặc lược để tạo kiểu tóc theo ý muốn. Pomade sẽ giữ cho tóc của bạn có độ giữ nếp, kiểm soát và sáng bóng.', 450000.00, 410000.00, '4.webp', 'Homebrew Mỹ', 50, 4),
(19, 'Sáp Vuốt Tóc Lockhart’s Groon Grease Water Based ', 'Lockhart’s Groon Grease đem đến độ giữ nếp mạnh mẽ với độ bóng cao cùng khả năng gội rửa dễ dàng. Phù hợp với các kiểu tóc cổ điển, chỉn chu.\r\n\r\nThông tin chi tiết:\r\nThương hiệu: Lockhart’s\r\nĐộ giữ nếp : Heavy/Firm\r\nĐộ bóng: High Shine\r\nKết cấu: Firm\r\nMùi hương: Citrus Cucumber Cologne\r\nTrọng lượng : 105g\r\nXuất xứ: Homebrew Mỹ\r\nCách sử dụng:\r\nBước 1: Chuẩn bị tóc trước khi áp dụng pomade, hãy đảm bảo tóc của bạn đã được gội sạch và khô hoàn toàn. Nếu tóc vẫn còn ẩm, pomade sẽ không thể phân bố đều và giảm độ giữ nếp.\r\nBước 2: Lấy một lượng pomade nhỏ ra lòng bàn tay. Số lượng này có thể tăng hoặc giảm tùy theo độ dày và chiều dài tóc của bạn. Bắt đầu với một lượng nhỏ và sau đó tăng dần nếu cần.\r\nBước 3: Xoa đều pomade trên lòng bàn tay, xoa đều lòng bàn tay vào nhau. Điều này giúp pomade trở nên mềm mại và dễ dàng phân phối đều trên tóc.\r\nBước 4: Áp dụng pomade lên tóc. Chạm nhẹ các ngón tay của bạn vào tóc và xoa đều pomade lên tóc từ gốc đến ngọn. Đảm bảo phân phối đều pomade trên mỗi sợi tóc để có kết quả tốt nhất.\r\nBước 5: Tạo kiểu. Sử dụng ngón tay hoặc lược để tạo kiểu tóc theo ý muốn. Pomade sẽ giữ cho tóc của bạn có độ giữ nếp, kiểm soát và sáng bóng.\r\n', 440000.00, 410000.00, '5.webp', 'Homebrew Mỹ', 200, 4),
(20, 'Bộ dầu gội xả chăm sóc tóc nhuộm Moroccanoil Color Care', 'Bộ dầu gội xả chăm sóc tóc nhuộm Moroccanoil Color Care nâng cao tuổi thọ màu sắc của tóc trong khi cải thiện độ chắc khỏe và tăng cường độ bóng. Dầu gội không chứa sulfate, có độ cân bằng pH, nhẹ nhàng làm sạch và giảm thiểu sự hấp thụ các chất tương tác với màu sắc, được trang bị công nghệ độc quyền để duy trì màu sắc hiệu quả hơn.\r\n\r\nArganID™ giúp sửa chữa và bảo vệ lớp biểu bì để giữ màu sắc, trong khi Environmental Protection Blend kết hợp với chiết xuất lựu và một chất bảo vệ chống nắng giúp bảo vệ khỏi mất màu và hỏng hóc do tác động của ánh nắng mặt trời và môi trường. 90% người dùng nhận thấy độ bóng khỏe mạnh chỉ sau một lần sử dụng.\r\n\r\nDầu gội chăm sóc tóc nhuộm Moroccanoil Color Care \r\nMoroccanoil Color Care tăng cường độ bóng, bảo vệ màu tóc nhuộm\r\nThông tin chi tiết:\r\nDòng dầu gội xả chăm sóc tóc nhuộm\r\nTăng cường độ bóng và màu sắc cho tóc\r\nBảo vệ và duy trì màu sắc\r\nDầu gội cân bằng độ pH\r\nCách sử dụng:\r\nBước 1: Xả tóc với nước sạch\r\nBước 2: Lấy một lượng dầu gội Moroccanoil Color Care vừa đủ vào lòng bàn tay, xoa đều và mát-xa đều trên tóc ướt và da đầu, sau đó rửa sạch. Nếu cần, bạn có thể lặp lại bước này.\r\nBước 3: Sau khi gội đầu, nhẹ nhàng vắt bớt nước thừa trên tóc và thoa thêm dầu xả Moroccanoil Color Care từ giữa thân tóc đến ngọn. Để trong 1–2 phút. Rửa sạch.', 1350000.00, 985000.00, '6.jpg', 'Anh Quốc', 110, 5),
(21, 'Sữa rửa mặt FIT Cleanser ', 'FIT CLEANSER –  Làm Sạch, Thanh Lọc và làm mềm mịn da \r\nSữa rửa mặt FIT Cleanser với chất gel (kem) mềm, trắng sữa với công thức tương tự như môi trường làn da, đảm bảo làm sạch nhẹ nhàng nhưng triệt để, không sử dụng cồn, acid hoặc các chất hoạt động mạnh trên bề mặt.\r\n\r\nCông dụng của sữa rửa mặt\r\nChứa hoạt chất giúp làm sạch da mịn màng, dịu nhẹ.\r\nLàm thông thoáng lỗ chân lông, loại bỏ các bụi bẩn và chất ô nhiễm trong khí quyển.\r\nDễ dàng hòa tan lớp trang điểm, tẩy trang hiệu quả.\r\nChứa công thức hoạt tính Blue Oleoactif bảo vệ tế bào da khỏi ánh sáng xanh từ màn hình điện thoại, máy tính, ô nhiễm đô thị: khói bụi, nắng gió, hóa chất…\r\nTăng cường sửa chữa, phục hồi tế bào.\r\nGiúp da được làm sạch sâu, mịn màng, được bảo vệ và ngậm đủ nước.\r\nSữa Rửa Mặt FIT Cleanser – 200ml\r\nSữa Rửa Mặt FIT Cleanser – 200ml\r\nThông tin hoạt tính chính Blue Oleoactif và cơ chế hoạt động\r\nChiết xuất từ mầm đậu nành và mầm gạo, chứa 3 hoạt tính độc ​​đáo từ ba loại gạo tổng hợp từ vùng Camargue phía Nam nước Pháp, được thu nhận bằng công nghệ độc đáo của Pháp – được sử dụng lần đầu tiên trong một ứng dụng mỹ phẩm, mang lại cho làn da sức mạnh BẢO VỆ và PHỤC HỒI.\r\nSản phẩm mô phỏng sinh học (dựa trên hoạt động sinh học tự nhiên của làn da)\r\nGiúp làm chậm lão hóa và bảo vệ da khỏi các tác động xấu từ bên ngoài hàng ngày (tia UV, ô nhiễm, căng thẳng…)\r\nCó nguồn gốc từ thực vật / dựa trên thực vật\r\nLoại bỏ các gốc tự do gây oxy hóa, lão hóa da\r\nĐã được thử nghiệm trên phạm vi tế bào.\r\nHướng Dẫn Sử Dụng\r\nBơm một lượng vừa đủ FIT Cleanser vào lòng bàn tay.\r\n\r\nDùng cả hai tay thoa đều kem gel lên khắp mặt. Bắt đầu từ cằm và di chuyển theo chiều từ trong ra ngoài, lan dần đến cuối hàm, từ gốc mũi đến thái dương, dọc sống mũi, lên trên sống mũi, giữa hai lông mày và ngang trán.\r\n\r\nThoa thêm sữa rửa mặt và bắt đầu từ giữa trán, thoa nhẹ quanh mắt đến thái dương và trở lại giữa trán.\r\n\r\nLoại bỏ phần Fit cleanser bị nhiễm bẩn bằng miếng lót mỹ phẩm, khăn ẩm ấm (flannel) hoặc rửa sạch bằng nước ấm. Luôn nhớ vỗ và thấm nhẹ lên mặt cho khô – không chà xát da.\r\n\r\nSử dụng mỗi sáng & tối.', 700000.00, 650000.00, '7.2.webp', 'Pháp', 92, 5),
(22, 'Kem Tẩy Da Chết Sukin For Men Facial Scrub', 'Kem Tẩy Tế Bào Chết Sukin For Men Facial Scrub gồm các chiết xuất từ thiên nhiên giúp nhẹ nhàng loại bỏ tế bào chết đồng thời với sự kết hợp của tinh chất lô hội, dầu dừa và dầu jojoba giúp bổ sung độ ẩm cho da. Mang lại cho bạn làn da mềm mại, sáng khoẻ, sạch mụn, giúp da không còn bị ngạt thở và trở lên tươi mát, không bóng nhờn và thông thoáng cả ngày.\r\n\r\nTHÀNH PHẦN VÀ CÔNG DỤNG\r\nKem Tẩy Tế Bào Chết Sukin Dành Cho Nam For Men Facial Scrub với thành phần chính các chiết xuất thiên nhiên, thân thiện với làn da và sức khỏe bạn.\r\nTẩy sạch các tế bào chết trên da\r\nLàm sạch sâu lỗ chân lông, hút bã nhờn hiệu quả\r\nCân bằng độ ẩm da\r\nCân bằng sắc tố da\r\nSe khít lỗ chân lông\r\nBảo vệ da & ngăn ngừa mụn tái phát trở lại\r\nCung cấp các chất chống ôxy hóa và vitamin cần thiết cho da\r\nKiểm soát lượng dầu thừa, giảm bóng nhờn trên da\r\nDa được cung cấp các dưỡng chất, góp phần làm trẻ hóa làn da, cho làn da tươi sáng rạng rỡ.\r\nNgoài ra kem tẩy tế bào chết da mặt hỗ trợ se khít lỗ chân lông và ngăn ngừa mụn. Không chỉ làm sạch mà còn bảo vệ da bạn khỏi sự xâm nhập của các loại khuẩn mụn.\r\nĐỐI TƯỢNG SỬ DỤNG\r\nKem Tẩy Tế Bào Chết Sukin Dành Cho Nam For Men Facial Scrub phù hợp cho mọi loại da.\r\nKem tẩy da chết sukin for men facial scrub\r\nHƯỚNG DẪN SỬ DỤNG\r\nLấy 1 lượng vừa phải Tẩy da chết thoa đều, nhẹ nhàng lên từng khu vực của khuôn mặt.\r\nLưu ý thoa xuôi theo chiều lỗ chân lông để chất bẩn dễ dàng bị quấn ra ngoài.\r\nRửa sạch mặt với nước.', 320000.00, 300000.00, '8.webp', 'Anh Quốc', 67, 5),
(23, 'Mặt Nạ Some By Mi Hyaluron Moisturizing Sheet Mask', 'Mặt Nạ Some By Mi Hyaluron Moisturizing Sheet Mask 25g\r\n\r\nMặt nạ được xem là bước bổ sung trong quá trình chăm sóc da. Việc sử dụng đều đặn mặt nạ giấy sẽ giúp phục hồi da nhanh chóng, đặc biệt với những làn da khô, bong tróc chỉ cần lựa chọn đúng mặt nạ, da bạn sẽ nhanh chóng căng bóng, ẩm mịn ngay sau khi sử dụng. Some By Mi Hyaluron Moisturizing Sheet Mask là sự lựa chọn lý tưởng để cung cấp độ ẩm và nhanh chóng lấy lại sinh khí cho làn da mệt mỏi.\r\n\r\nThành phần chính:\r\n\r\n– Hyaluronic Acid và nước biển sâu dưới đảo núi lửa JeJu sẽ cung cấp nước và lấy lại sinh khí cho da.\r\n\r\n– Công thức độc quyền (Aquaxyl) tăng cường khả năng giữ nước\r\n\r\n– Sử dụng 100% lõi gỗ, ôm sát gương mặt. Tối ưu hóa công dụng của túi mặt nạ bằng cách  thẩm thấu các dưỡng chất nhanh và sâu vào trong da không để rơi ra ngoài.\r\n\r\n– Thử nghiệm hoàn toàn không gây kích ứng trên da và xét nghiệm không chứa 20 thành phần nguy hiểm. Có thể sử dụng cho làn da nhạy cảm.', 35000.00, 32000.00, '9.jpg', 'Hàn Quốc', 180, 5),
(24, 'Nước hoa hồng Dear Klairs Supple Preparation Unscented Toner', 'Nước hoa hồng Dear Klairs Supple Preparation Unscented Toner\r\nNước hoa hồng Dear Klairs dưỡng ẩm và làm mềm da Supple Preparation Unscented Toner có chiết xuất từ thực vật, giúp cân bằng độ pH, tăng cường hiệu quả chăm sóc da Toner có dạng trong suốt, không màu, lỏng, nhẹ, hơi nhớt, thấm rất nhanh trên da. Sản phẩm giúp loại bỏ bụi bẩn và bã nhờn dư thừa trên da sau khi rửa mặt đồng thời cân bằng độ pH để các bước skincare tiếp theo đạt hiệu quả hơn.\r\n\r\nThành phần và công dụng nước hoa hồng Dear Klairs\r\nNước hoa hồng Klairs Supple Preparation Unscented 180ml cấp ẩm tức thì cho da, làm dịu làn da khô căng, kích ứng và cân bằng độ pH trên da, tăng hiệu quả của quá trình chăm sóc da hàng ngày.\r\nSodium Hyaluronate:Cấp nước vượt trội, giúp da được ẩm mượt và mềm mại.\r\nPhyto-Oligo: dưỡng ẩm, giúp da không bị khô.\r\nAxit Amin lúa mì: có công dụng chống viêm, giúp giảm viêm và cung cấp độ ẩm sâu.\r\nProperties: ngăn ngừa mụn viêm, giúp giảm tình trạng mẩn đỏ trên da và mụn trứng cá.\r\nKết cấu sản phẩm là dạng lỏng nhưng nó lại có một độ sánh nhất định, nên sau khi thoa lên da bạn sẽ cảm thấy da được cung cấp một lượng nước và độ ẩm rất lớn.\r\nNước hoa hồng Dear Klairs Supple Preparation Unscented Toner 180ml\r\nLoại da phù hợp\r\nMọi loại da đặc biệt là da siêu nhạy cảm.\r\nDa dễ bị kích ứng mẫn đỏ.\r\nHướng dẫn sử dụng nước hoa hồng không mùi Klairs\r\nDùng sau sữa rửa mặt để cân bằng lại độ pH cho da.\r\nThấm 3-4 giọt ra bông tẩy trang thoa đều lên mặt, hoặc đổ trực tiếp cho ra tay vỗ nhẹ để nước hoa hồng thấm đều vào da.', 399000.00, 300000.00, '10.jpeg', 'Pháp', 150, 5),
(25, 'Dưỡng Da Toàn Thân No.63 Men’s Lotion', 'Dưỡng Da Toàn Thân No.63 Men’s Lotion 240ml nằm trong bộ sưu tập No.63 Men’s Collection, có mùi hương là sự cân bằng hoàn hảo của hương thơm nước hoa ấm áp và cay trong tự nhiên. No.63 mang đậm chất nam tính, mở đầu bằng nhóm hương tươi mát của Cam, Quýt, mang lại sự khỏe khắn, mạnh mẽ. Tiếp đến là lớp hương trung tâm nổi bật bởi gỗ tuyết tùng ấm áp, kết hợp với một chút vị ngọt ngào từ quả mận chín đỏ và lá hoa tím (Violet Leaf). Cuối cùng là sự hòa trộn của mùi hương hổ phách ấm áp cùng một chút hoang dã của da thuộc và thuốc lá.\r\n\r\nDưỡng da toàn thân Np.63 không gây nhờn rít với công thức với glycerin, dầu hạt mỡ và lô hội giúp dưỡng ẩm toàn thân, làn da của bạn trông mịn màng, khỏe mạnh và mờ thâm. Công thức đặc biệt không gây nhờn, bóng hay dầu cho da. Bạn sẽ cảm thấy hoàn toàn tự nhiên, thoải mái.\r\n\r\nThông tin chi tiết:\r\nDưỡng ẩm toàn thân cho Nam giới\r\nChống lão hoá, làm mềm làn da thô ráp.\r\nDung tích: 240ml\r\nXuất xứ: Pháp\r\nMùi hương: nam tính, nồng nàn\r\nCách sử dụng: \r\nSau khi tắm sạch với sữa tắm. Hãy lau khô và thoa kem dưỡng ẩm toàn thân No.63 Men’s Lotion lên khắp cơ thể bạn, xoa bóp theo chuyển động hướng xuống để kem dưỡng ẩm hấp thụ nhanh chóng vào làn da.\r\n\r\n', 410000.00, 390000.00, '11.webp', 'Pháp', 120, 6),
(26, 'Kem chống nắng Dear Klairs All-day Airy Sunscreen SPF50+', 'Kem chống nắng Dear Klairs All-day Airy Sunscreen SPF50+ PA++++ giúp bảo vệ da trước tác hại của tia UVA, UVB. Bổ sung độ ẩm nhẹ cho da mềm mượt và hỗ trợ làm dịu da.\r\n\r\nLoại da phù hợp: Phù hợp với mọi loại da.\r\n\r\nCông dụng kem chống nắng Dear Klairs\r\nSPF50+ PA++++ là kem chống nắng hóa học với các màng lọc chống nắng hóa học như: Diethylamino Hydroxybenzoyl Hexyl Benzoate, Polysilicone-15, Ethylhexyl Triazone, Bis-Ethylhexyloxyphenol Methoxyphenyl Triazine.\r\nBảo vệ da trước tác hại của tia UVA, UVB.\r\nBổ sung độ ẩm nhẹ cho da mềm mượt. Hỗ trợ làm dịu da.\r\nTexture lỏng nhẹ, tạo cảm giác thoải mái trên da.\r\nĐã hoàn thành kiểm tra SPF tại 3 cơ sở kiểm nghiệm lâm sàng ở Hàn Quốc và Châu Âu.\r\nKem chống nắng Dear Klairs \r\nHướng dẫn sử dụng\r\nThoa một lượng kem vừa đủ ở bước cuối cùng trong chu trình chăm sóc da buổi sáng.\r\nBôi tối thiểu 15 phút trước khi ra nắng. Nên thoa lại sau mỗi 3 giờ để hiệu quả bảo vệ tốt nhất.\r\nThông số sản phẩm\r\nThương hiệu: Dear, Klairs\r\nXuất xứ: Hàn Quốc\r\nNơi sản xuất: Hàn Quốc\r\nKhối lượng: 50g\r\nHạn sử dụng: 3 năm kể từ ngày sản xuất.\r\nNgày sản xuất: Xem trên bao bì sản phẩm.', 430000.00, 360000.00, '12.webp', 'Hàn Quốc', 99, 6),
(27, 'Dưỡng ẩm The Groomed Man Co. Smooth Operator Face Moisturiser', 'Dưỡng ẩm The Groomed Man Co. Smooth Operator Face Moisturiser 100ml được thiết kế dành riêng cho lan da Nam giới, với các thành phần hoạt tính hiệu quả tốt. Giúp duy trì độ ẩm với độ bóng tối thiểu, tạo thành 1 lớp nền mờ mịn duy trì suốt 12 giờ.\r\n\r\nThông tin chi tiết: \r\nTên sản phẩm: Smooth Operator Face Moisturiser\r\nBảo vệ làn da khỏi các gốc tự do và các yếu tố bên ngoài tác động lên da\r\nHấp thụ và kiểm soát dầu\r\nPhù hợp cho làn da khô và nhạy cảm\r\nDuy trì độ ẩm suốt 12 giờ\r\nMùi hương: gỗ đàn hương Úc\r\nTrọng lượng: 100ml\r\nSản xuất: Úc\r\nThành phần chính: \r\nDầu Pracaxi: Dầu Pracaxi hấp thụ dễ dàng vào da mặt của bạn, không có bất kỳ dư lượng dầu nào, và nó chứa nhiều Axit Behenic, một chất béo bão hòa giúp làm dịu da và khóa ẩm. Rất tốt cho da khô hoặc da có vấn đề.\r\nChiết xuất trà đen: là thành phần chống lão hóa và chống oxy hóa mạnh mẽ. Nó chứa đầy polyphenol, có tác dụng làm chậm quá trình lão hóa và giải quyết các tổn thương do tia UV gây ra. Caffeine tự nhiên trong trà đen cũng làm căng và săn chắc làn da của bạn.\r\nThan hoạt tính:  Không giống như axit salicylic, than hoạt tính không làm tổn thương da nhạy cảm, làm thông thoáng lỗ chân lông của bạn mà không làm khô da. Nó cũng cắt giảm lượng dầu dư thừa và loại bỏ độc tố và vi khuẩn.\r\nCách sử dụng: Sử dụng sau khi rửa mặt sạch sẽ với sữa rửa mặt The Groomed Man Co. Face Fuel Cleanser 200ml. Xoa đều một lượng nhỏ kem dưỡng ẩm, massage theo chuyển động tròn trong 30 giây. Lúc này da mặt sẽ hấp thụ kem dưỡng và có một lớp nền mềm mịn.', 925000.00, 880000.00, '13png.png', 'Úc', 40, 6),
(28, 'Kem dưỡng da ngừa mụn Jack Black Overnight Repair Moisturizer ', 'Kem dưỡng da ngừa mụn Jack Black Overnight Repair Moisturizer không chứa dầu, giàu chất thích ứng giúp làm sạch và ngăn ngừa mụn khi bạn đi ngủ. Công thức độc quyền của Jack Black kết hợp các axit AHA, BHA và chất acid dựa trên thực vật giúp làm sạch tế bào chết, làm mịn da, cân bằng và cải thiện kết cấu da, đồng thời tăng độ sáng và độ mịn của da.\r\n\r\nThích hợp cho da mụn, da hỗn hợp, da dầu và da xỉn màu, công thức nhẹ nhàng này giúp làm lành và ngăn ngừa mụn và đốm đen. Hyaluronic Acid cung cấp độ ẩm nhanh chóng mà không gây tắc nghẽn lỗ chân lông.\r\n\r\nĐặc tính:\r\n\r\nKhông chứa dầu\r\nThuần chay\r\nKhông chứa Sulfate\r\nKhông chứa cồn\r\nKhông chứa Paraben\r\nKhông chứa chất tạo màu\r\nKhông chứa hương liệu\r\nBác sĩ da liễu đã thử nghiệm\r\nKhông độc hại\r\nBộ sản phẩm chăm sóc da mụn Jack Black Proseries\r\nBộ sản phẩm chăm sóc da mụn Jack Black Proseries\r\nThành phần chính\r\n1% Salicylic Acid: Loại bỏ mụn và đốm đen và giúp da phục hồi.\r\nAlpha Hydroxy Acids (AHAs): Làm sạch tế bào chết để thúc đẩy tái tạo tế bào mới. Giúp giảm nếp nhăn, vết thâm mụn và cân bằng màu da. Lột bỏ tế bào da chết để làm mịn và cải thiện kết cấu, độ sáng và độ trong suốt của da.\r\nTurmeric Root Extract: Sử dụng trong hơn 2.500 năm trong y học Trung Quốc và Ấn Độ, chất thích nghi mạnh mẽ này là một chất chống oxy hóa tự nhiên giúp da chống lại các tác nhân gây căng thẳng bên ngoài. Phương thuốc tự nhiên giúp làm sáng, dưỡng ẩm và cân bằng da một cách nhẹ nhàng.\r\nAstragalus: Thông thường được sử dụng trong y học cổ truyền Trung Quốc để cân bằng năng lượng sinh học. Với việc sử dụng liên tục, dạng đóng gói của loại chất thích nghi này đã được chứng minh là giúp cân bằng dầu tự nhiên trên da, giảm thiểu khuyết điểm và làm săn chắc và làm mịn da.\r\nHyaluronic Acid: Tự nhiên có mặt trong da để giữ ẩm, chất làm ẩm siêu việt này có thể giữ được đến 1.000 lần trọng lượng nước của nó. Cung cấp lợi ích bổ sung, dịu da, cấp ẩm và chống lão hóa cho da.\r\nAloe Vera: Là chất thích nghi dịu nhẹ giúp da đáp ứng với những căng thẳng có thể gây ra phản ứng viêm.\r\nBisabolol: Được biết đến là giúp chiến đấu chống lại vi khuẩn gây hại và giúp giảm thiểu vẻ đỏ da và làm dịu da.\r\nCách sử dụng\r\nLàm sạch da mặt với nước hoặc sữa rửa mặt Jack Black Balancing Foam Cleanser sau đó thoa kem dưỡng lên da vào ban đêm.\r\n\r\nKết hợp thêm Kem ngừa mụn nếu cần thiết', 1000000.00, 950000.00, '13.webp', 'Hàn Quốc', 135, 6),
(29, 'Xà Phòng Tắm Taylor of Old Bond Street Sandalwood Bath Soap', 'Xà Phòng Tắm Taylor of Old Bond Street Sandalwood Bath Soap 200g nằm trong bộ sưu tập Sandalwood với mùi hương gỗ đàn hương cổ điển kết hợp cùng sự tươi mát của cam quýt đem đến một mùi hương kéo dài đầy thoã mãn.\r\n\r\nThông tin chi tiết:\r\nThương hiệu: Taylor of Old Bond Street\r\nMùi hương:  gỗ đàn hương cổ điển\r\nLàm sạch cơ thể và dưỡng ẩm\r\nThành phần tự nhiên\r\nTrọng lượng: 200g\r\nSản xuất tại Anh quốc\r\nXà Phòng Tắm Taylor of Old Bond Street Sandalwood Bath Soap 200g\r\nCách sử dụng xà phòng tắm Taylor of Old Bond Street :\r\nLàm ướt cơ thể sau đó xoa thanh xà phòng Taylor of Old Bond Street Sandalwood Bath Soap nhẹ nhàng lên cơ thể theo chuyển động tròn, mát xa nhẹ nhàng rồi rửa sạch với nước để cơ thể có mùi hương tuyệt vời', 290000.00, 220000.00, '15.webp', 'Anh Quốc', 80, 6),
(31, 'Kem Chấm Mụn Some By Mi Super Miracle Spot All Kill Cream', 'Kem Chấm Mụn Some By Mi Super Mỉacle Spot All Kill Cream 30ml\r\n\r\nBạn vô cùng khó chịu khi sử dụng một số sản phẩm đặc trị cho nốt mụn, vì chúng để lại cảm giác khô căng, bong tróc, sau đó, bạn phải tốn khá nhiều thời gian để phục hồi lại vùng da ấy. Vậy Kem giảm và ngăn ngừa mụn Some By Mi Super Miracle Spot All Kill Cream là sự lựa chọn tốt nhất cho làn da bạn lúc này đấy. Sản phẩm sẽ giảm mụn, giúp phục hồi và tái tạo làn da tổn thương của bạn chỉ trong 14 ngày.\r\n\r\nThành phần chính:\r\n\r\nSome By Mi Super Miracle Spot All Kill Cream thuộc dòng sản phẩm cho da mụn đình đám của Some By Mi thì chắc chắn thành phần không thể thiếu chính là AHA – BHA – PHA. Bộ 3 acid có khả năng giảm mụn và ngăn ngừa các nguyên nhân hình thành mụn hiệu quả.\r\n\r\n– AHA là thành phần tẩy da chết, tan trong nước, hoạt động trên bề mặt da và phù hợp với da khô, kết cấu da sần sùi, da xỉn màu, nổi mụn và có khuyết điểm trên bề mặt.\r\n\r\n– BHA là một chất tẩy tế bào chết hòa tan trong chất béo làm tan chảy tế bào da chết và bã nhờn trong lỗ chân lông. Nó cải thiện hiệu quả các khuyết điểm trên da như mụn đầu trắng, mụn đầu đen, mụn trứng cá và lỗ chân lông to.\r\n\r\n– PHA là một chất tẩy tế bào chết hòa tan trong nước, hấp thụ các hạt lớn và chậm, làm cho nó ít gây kích ứng và giữ ẩm hơn AHA, hiệu quả cho việc chăm sóc da khô, nhạy cảm.\r\n\r\nVới công nghệ độc quyền, Some By Mi Super Miracle Spot All Kill Cream không chỉ chăm sóc từ bên trong mà còn nhẹ nhàng giúp phục hồi tái tạo da với Truecica™ (750.000PPM) và Panthenol (10.000PPM).\r\n\r\n– Truecica™ làm dịu da mụn đang bị kích ứng, có khả năng kháng khuẩn, giảm mụn, dưỡng ẩm, kiểm soát dầu thừa tuyệt vời nhất hiện nay. Phức hợp Truecica™ bao gồm các thành phần như Mugwort, Tea Tree Leaf Water, Pennywort Extract, TECA-Asiaticoside, Madecassic Acid, Asiaticoside, Madecassoside, an toàn cho mọi làn da.\r\n\r\n– Panthenol giúp phục hồi da tổn thương, làm lành vết thương, chống viêm và kích ứng.\r\n\r\nHướng Dẫn Sử Dụng:\r\nThoa một lớp mỏng lên vị trí có mụn của da mặt bằng đầu ngón tay hoặc tăm bông. Vỗ nhẹ nhàng bằng các đầu ngón tay sau khi thoa để hấp thụ tốt hơn.', 300000.00, 285000.00, '01.jpg', 'Hàn Quốc', 70, 5),
(32, 'Bột Tạo Phồng Shear Revival Gleodream Texture Powder', 'Bột Tạo Phồng Shear Revival Gleodream Texture Powder nhanh chóng hòa tan vào tóc chỉ trong vài giây và mang lại kết cấu từng lọn tóc rất chặt chẽ. Loại bột nhẹ này giúp tăng độ bám, phù hợp cho tóc ngắn – trung bình. Đặc biệt đạt hiệu quả cao trên nền tóc mỏng thưa, giúp bạn dễ dàng kiểm soát độ phồng và độ giữ nếp tóc.\r\n\r\nThông tin chi tiết:\r\n\r\nCông dụng: tạo phồng, tăng kết cấu, dầu gội khô\r\nTrọng lượng: 96g\r\nXuất xứ: Mỹ\r\nCách sử dụng bột tạo phồng Shear Revival Gleodream Texture Powder \r\nSau khi sấy tóc xong, sau đó rắc Gleodream Texture Powder vào chân tóc, rồi dùng tay xoa đều và tạo kiểu. Có thể kết hợp thêm sáp vuốt tóc để tăng độ giữ nếp.\r\n\r\nThành phần\r\nMARANTA ARUNDINACEA (ARROWROOT) ROOT POWDER, KAOLIN, BENTONITE, HORSETAIL (SHAVEGRASS) POWDER, SILICA, ALOE POWDER, CITRUS PARADISI (GRAPEFRUIT) OIL, LAVANDULA ANGUSTIFOLIA (LAVENDER) OIL, CITRUS AURANTIUM BERGAMIA (BERGAMOT) FRUIT OIL, EUCALYPTUS GLOBULUS LEAF OIL', 450000.00, 429000.00, '02.jpeg', 'Mỹ', 137, 4),
(33, 'Sữa tắm Hanz De Fuko Everything Wash', 'Sữa tắm Hanz De Fuko Everything Wash không cầu kỳ, sữa tắm tất cả trong một được tạo ra để làm sạch nhẹ nhàng, kỹ lưỡng. Rửa sạch bụi bẩn và các tạp chất khác khỏi da mà không làm da bị căng hay khô. Nó cũng là một loại dầu gội đầu, sẽ giúp tóc bạn mềm mại và được dưỡng ẩm. Dành cho da nhạy cảm.\r\n\r\nChỉ cần một lượng vừa đủ và tẩy sạch mọi bụi bẩn trên toàn bộ cơ thể từ đầu đến chân.\r\n\r\nSữa tắm Hanz De Fuko Everything Wash \r\nSữa tắm Hanz De Fuko Everything Wash với thành phần chứa 16 chiết xuất tự nhiên tốt cho da và tóc\r\nThông tin sản phẩm\r\nThương hiệu: Hanz De Fuko\r\nCông dụng: Sữa tắm đa năng, có thể dùng cho tóc, cơ thể, da mặt\r\nXuất xứ: Mỹ\r\nChứa 16+ chiết xuất thực vật tự nhiên\r\nKhông chứa Parapen và Sulfate\r\nMùi hương: Tươi mát, tự nhiên\r\nThành phần chính: Táo, Bạc hà, Cây tầm ma, Cây xô thơm, Lựu, Goldenseal, Acai, Rose Mallow, Cỏ ba lá, Quýt, Hoa xương rồng, Rooibos, Rễ ngưu bàng, Rong biển, Kim ngân hoa, Chanh.', 650000.00, 630000.00, '03.webp', 'Mỹ', 145, 6),
(34, 'Nước Hoa Hồng Some By Mi AHA-BHA-PHA 30 Days Miracle Toner', 'Nước Hoa Hồng Some By Mi AHA-BHA-PHA 30 Days Miracle Toner 150ml\r\n\r\nCông dụng\r\n\r\n– AHA: Loại bỏ chất bẩn và chất sừng tích tụ trên bề mặt da\r\n\r\n– BHA: Loại bỏ chất bẩn và bã nhờn sâu trong lỗ chân lông\r\n\r\n– PHA: Chống viêm, chống oxi hóa, khóa lại độ ẩm không gây khô da\r\n\r\nSản phẩm toner Some By Mi thích hợp cho các bạn:\r\n\r\n– Da dầu mụn, da nhạy cảm\r\n\r\n– Da nhiều mụn đầu đen\r\n\r\n– Da tối màu, lỗ chân lông to\r\n\r\nThành phần\r\n\r\n– Tràm trà giúp kháng khuẩn, kháng viêm, giảm mụn hiệu quả\r\n\r\n– Hạt cây phỉ có tác dụng kháng khuẩn, giảm tiết nhờn\r\n\r\n– Đu đủ làm mềm và dịu da\r\n\r\n– Tổ yến vàng giúp tái sinh tế bào giúp da đàn hồi và săn chắc\r\n\r\n– Hoa sen giúp thanh lọc, cân bằng độ ẩm\r\n\r\nHướng dẫn sử dụng\r\n\r\nSản phẩm được sử dụng theo các bước: Tẩy trang > Sữa rửa mặt > Toner\r\n\r\nCách 1: Cho 1 lượng vừa đủ lên bông tẩy trang => Thoa đều lên mặt\r\n\r\nCách 2: Thấm đẫm lên bông tẩy trang => Đắp lên vùng nhiều tế bào chết => sau 1-3 phút gỡ ra và lau đi', 300000.00, 292000.00, '04.jpg', 'Hàn Quốc', 123, 5),
(35, 'Dầu gội giúp mọc tóc Kérastase Densifique Bain Densite', 'Dầu gội Kérastase Densifique là dầu gội hàng ngày dành cho nữ giới giải quyết tình trạng tóc thưa, mỏng, rụng nhiều. Đồng thời, sản phẩm giúp làm sạch sâu, mang đến trải nghiệm làm mới cho da đầu, thúc đẩy quá trình mọc tóc, làm tóc trông dày và chắc khỏe hơn theo thời gian.\r\n\r\nTHÔNG TIN CHI TIẾT\r\nƯu điểm nổi bật:\r\n\r\n– Dầu gội làm sạch dịu nhẹ và hỗ trợ mọc tóc, giúp tóc dày và chắc khỏe hơn.\r\n\r\n– Hương thơm nước hoa, lưu hương 12-18 tiếng nhờ kết hợp với chuyên gia nước hoa, công thức 3 tầng hương nổi trội.\r\n\r\n– Thành phần lành tính, an toàn tuyệt đối, đã được kiểm nghiệm an toàn cho phụ nữ mang thai và cho con bú.\r\n\r\nCông dụng:\r\n\r\n– Giải quyết tình trạng tóc lưa thưa, tóc mỏng và rụng nhiều.\r\n\r\n– Cải thiện mật độ tóc, làm tóc trông dày lên, bồng bềnh và khỏe hơn.\r\n\r\n– Làm sạch dịu nhẹ và làm mới da đầu, mang đến cảm giác sảng khoái, sạch sâu.\r\n\r\n– Chăm sóc, nuôi dưỡng mái tóc mềm mại, chắc khỏe.\r\n\r\nThành phần chính:\r\n\r\n– Stemoxydine® kết hợp Vitamins B3, B5 & B6 giúp đánh thức nang tóc khỏi quá trình ngủ đông và kích thích hoạt động của chân tóc mạnh mẽ hơn.\r\n\r\n– Yang Complex® hỗ trợ tăng cường quá trình phát triển của tóc, củng cố lớp biểu bì tóc và độ dày thân tóc.\r\n\r\nLoại tóc:\r\n\r\n– Dầu gội dành cho tóc thưa mỏng, yếu, rụng nhiều.\r\n\r\nHƯỚNG DẪN SỬ DỤNG\r\n\r\n– Gội lần 1: Làm ướt tóc với nước. Lấy một lượng dầu gội từ 2-3ml. Cho sản phẩm trực tiếp lên da đầu, massage nhẹ nhàng (không cố gắng tạo bọt) từ 2-3 phút. Sau đó xả sạch lại với nước.\r\n\r\n– Gội lần 2: Lấy một lượng sản phẩm phù hợp với độ dài thân tóc từ 3-5ml, thoa đều lên thân và đuôi tóc, massage nhẹ nhàng 2-3 phút sau đó xả sạch lại với nước.\r\n\r\n(*) Hiệu quả hơn khi sử dụng kết hợp dầu gội và mặt nạ tóc/dầu xả Kérastase.\r\n\r\nHướng dẫn bảo quản:\r\n\r\nNơi khô ráo, thoáng mát. Tránh ánh nắng trực tiếp, nơi có nhiệt độ cao. Đậy nắp kín sau khi sử dụng.\r\n\r\nXuất xứ: Pháp\r\n\r\nNơi sản xuất: Tây Ban Nha\r\n\r\nNSX: Xem trên bao bì\r\n\r\nHSD: 03 năm kể từ NSX', 790000.00, 760000.00, '05.jpg', 'Pháp', 208, 4),
(36, 'Tẩy Tế Bào Chết Toàn Thân The Groomed Man Co. Activated Charcoal and Bamboo', 'Tẩy da chết toàn thân The Groomed Man Co. Activated Charcoal and Bamboo 170ml dòng tẩy da chết thuần chay, làm sạch bụi bẩn và dầu thừa, làm dịu làn da thô ráp của cơ thể. Lý tưởng để làm giảm mụn trứng cá, mụn lưng. Mùi hương dịu nhẹ, tạo cảm giác sảng khoái.\r\n\r\nThông tin sản phẩm: \r\nTên sản phẩm: Activated Charcoal and Bamboo Body Scrub 170ml\r\nPhù hợp cho mọi loại da\r\nLoại bỏ tạp chất và cân bằng độ PH toàn thân.\r\nKhông làm khô da\r\nMùi hương:  Gỗ đàn hương, tuyết tùng và cam ngọt\r\nDung tích: 170ml\r\nSản xuất: Úc\r\nThành phần chính:\r\nChiết xuất từ thân tre: sử dụng silica chiết xuất từ thân tre như một loại tẩy da chết tự nhiên. Nó củng cố hàng rào tự nhiên của da, chống lại dầu và bụi bẩn trong khi sửa chữa các mô da. Nó cũng chứa đầy axit amin, flavonoid và chất chống oxy hóa.\r\nGỗ đàn hương Úc: là một nguyên liệu cao cấp, ngoài tác dụng tạo mùi hương dầu gỗ đàn hương còn có đặc tính chống viêm và khử trùng, giúp làm dịu và cân bằng làn da của bạn.\r\nThan hoạt tính: không giống như axit salicylic, than hoạt tính không làm tổn thương da nhạy cảm, làm thông thoáng lỗ chân lông của bạn mà không làm khô da. Nó cũng cắt giảm lượng dầu dư thừa và loại bỏ độc tố và vi khuẩn.\r\nCách sử dụng: Dùng 2-3 tuần/ lần. Sử dụng sau khi cơ thể đã được làm ướt. Thoa một lượng vừa đủ tẩy da chết toàn thân Activated Charcoal and Bamboo Body Scrub lên khắp cơ thể, xoa bóp theo chuyển động tròn. Cảm nhận làn da được tẩy rửa sạch sẽ. Sau đó tắm sạch lại với nước.\r\n\r\nThành phần chính: Aqua (Purified Water), Polylactic Acid, Decyl Glucoside, Cocamidopropyl Betaine, Bambusa Arundinacea Stem Extract, Charcoal Powder, Allatoin, Simmondsia Chinensis Seed (Jojojba) Oil, Argania Spinosa (Argan) Oil, Santalum Spicata (Sandalwood) Wood Oil, Cedrus Atlantica Wood (Cedarwood) Oil, Citrus Sinensis (Sweet Orange) Peel Oil Expressed, Citrus Nobilis (Mandarin) Peel Oil Expressed, Acrylates/C10-30 Alkyl Acrylate Crosspolymer, Aminomethyl Propanol, Potassium Sorbate, Phenoxyethanol', 690000.00, 660000.00, '06.webp', 'Úc', 96, 5),
(37, 'Xịt Giữ Nếp Tóc Tigi Bed Head Hard Head ', 'Xịt Giữ Nếp Tóc Tigi Bed Head Hard Head 385ml giữ và kiểm soát nếp tóc – khô tức thời! Bạn càng dùng nhiều thì độ giữ nếp càng tăng.\r\nMùi Hương: Citrus berry\r\n\r\nĐộ giữ nếp: 5\r\nCố định bất cứ kiểu tóc\r\nCứng, linh hoạt và giữ nếp\r\nPhù hợp với bất kỳ độ dài và kết cấu tóc\r\nKhô tức thời\r\nDung tích:\r\nCách sử dung: Giữ khoảng cách từ 25-30cm với tóc. Xịt lên phần tóc đã tạo kiểu hoặc xịt thành các điểm tuỳ nhu cầu sử dụng. Chia tách các lớp để gôm Hard Head tăng cường độ giữ nếp.\r\n\r\nThành phần:\r\n\r\nAminomenthyl Propanol – Điều chỉnh độ pH của tóc\r\nQuatemium-52 – Dưỡng tóc\r\nPhenyl Trimenthicone – Tăng cường độ bóng\r\nTriethyl Citrate – Giữ nếp', 399000.00, 379000.00, '07.webp', 'Úc', 65, 4),
(38, 'Kem Chống Nắng Salt & Stone SPF 50 Sunscreen Lotion', 'Kem Chống Nắng Salt & Stone SPF 50 Sunscreen Lotion 88ml với công thức chống nước và mồ hôi. Không gây nhờn, dễ dàng thấm vào da mà không để lại cặn trắng. Axit hyaluronic giúp giữ ẩm và làm dịu làn da, Non-Nano Zinc Oxide ngăn chặn các tia UVA/ UVB có hại cho làn da.\r\n\r\nKhông sử dụng nước hoa tổng hợp.\r\n\r\nDung tích: 88ml\r\n\r\nXuất xứ: USA\r\n\r\nThành phần chính: Hyaluronic Acid, Rosehip Seed Oil, Avocado Oil.\r\n\r\nPhù hợp: cho cả nam / nữ\r\n\r\nCách sử dụng: Thoa đều lên vùng da cơ thể 15 phút trước khi ra nắng. Sử dụng lại sau ít nhất 2 giờ hoặc 80 phút sau khi bơi lội hoặc hoạt động ra nhiều mồ hôi.', 570000.00, 550000.00, '08.jpeg', 'USA', 163, 6),
(39, 'Bộ 10 Miếng Mặt Nạ Benew Natural Herb Mask Pack – Charcoal', 'Bộ 10 Miếng Mặt Na Benew Natural Herb Mask Pack Charcoal được làm từ tinh chất than hoạt tính có kết cấu rỗng giúp: Hút các chất độc, làm sạch độc tố tích tụ sâu bên dưới các lỗ chân lông đồng thời đẩy khoáng chất vào cho da; Hút đi lớp dầu nhờn dư thừa và tế bào chết trên da; Thanh lọc da khỏi các thành phần độc tố của mỹ phẩm.\r\n\r\nNgoài ra, than hoạt tính còn giúp ngăn chặn sự hình thành mụn cám, mụn đầu đen, làm se khít lỗ chân lông. Đắp mặt nạ CHARCOAL thích hợp với mọi loại da, hiệu quả với da làm việc trong môi trường ô nhiễm, khói bụi.\r\n\r\nXuất xứ: Hàn Quốc\r\n\r\nBộ: 10 miếng\r\n\r\nHướng dẫn sử dụng\r\nLàm sạch da mặt bằng sửa rửa mặt, có thể sử dụng thêm toner – nước hoa hồng. Lấy mặt nạ ra đắp trong 15-20 phút, vỗ nhẹ cho các tinh chất thấm vào da sau đó rửa sạch với nước.', 190000.00, 180000.00, '09.jpg', 'Hàn Quốc', 630, 5),
(40, 'Dưỡng Ẩm Toàn Thân Sake Bomb Body Moisturize', 'Dưỡng Ẩm Toàn Thân Sake Bomb Body Moisturizer 473ml: Sản phẩm đã đạt rất nhiều giải thưởng của các tạp chí làm đẹp uy tín trên toàn Thế Giới : 2017 ValetMag, Award Winner; 2012 Men’s Health Singapore, Award Winner; 2011 Real Beauty, Award Winner. Sake Bomb Body Moisturizer được chiết xuất từ các loại thực vật như hoa sữa, dầu dừa và các loại Vitamin; giúp cho làn da cơ thể trở nên săn chắc và mịn màng. Cung cấp độ ẩm không làm khô da.\r\n\r\nMùi hương: Nhẹ nhàng, thư giãn\r\n\r\nDung tích: 473ml\r\n\r\nThành phần: Water, Ethylhexyl Palmitate, Butylene Glycol, Behenyl Alcohol, Cetearyl Alcohol, Polysorbate 60, Dimethicone,Triethylhexanoin, Cocos Nucifera Oil, Gardenia Tahitensis Flower, Tocopherol, Caprylic/Capric Triglyceride, Teprenone, Yogurt Powder, Hydrogenated, Lecithin, Squalane, PPG-2 Myristyl Ether Propionate, Sodium Hydroxide, Acrylates/C10-30 Alkyl Acrylate Crosspolymer, Potassium Sorbate, Phenoxyethanol, Fragrance', 850000.00, 835000.00, '10.jpg', 'Pháp', 88, 6),
(41, 'Dầu xả dưỡng màu tóc nhuộm Mydentity Myconfidant', 'Dầu xả dưỡng màu tóc nhuộm Mydentity Myconfidant Conditioner 295ml chưa công nghệ VibraRiche™ tiên tiến làm tăng độ sống động và giúp màu nhuộm rực rỡ hơn, bóng gấp 2 lần. Được bào chế không có Parabens hoặc Sulfates.\r\n\r\nThông tin chi tiết:\r\nThương hiệu: Mydentity\r\nPhục hồi tóc giúp tóc suôn mượt, vào nếp.\r\nĐược thiết kế rất phù hợp để giữ màu, đặc biệt là màu thời trang, pastel.\r\nCông nghệ đột phá Mirustyle X-HP có khả năng bảo vệ tóc khỏi nhiệt lên đến 230 độ C. Giảm thiểu tối đa hư tổn do máy sấy, máy uốn duỗi tạo kiểu gây ra.\r\nCông nghệ Vibrariche TM tăng cường và giúp màu nhuộm rực rỡ hơn, bóng gấp 2 lần.\r\nBổ sung thành phần giúp tóc trở nên lấp lánh, tạo hiệu ứng phản chiếu cho màu nhuộm.\r\nKhông chứa Sulfate, Sodium Chloride, Paraben.\r\n\r\nHướng dẫn sử dụng:\r\nSau khi sử dụng dầu gội Mydentity Myconfidant Shamoo hãy sử dụng thêm dầu xả để làm mượt và bịt kín lớp biểu bì giúp tóc suôn mượt và bóng mượt. Xả sạch lại với nước.\r\n\r\n', 421000.00, 399000.00, '11.webp', 'Úc', 144, 4),
(42, 'Sữa Rửa Mặt Some By Mi AHA-BHA-PHA 30 Days Miracle Acne Clear Foam', 'Sữa Rửa Mặt Some By Mi AHA-BHA-PHA 30 Days Miracle Acne Clear Foam 100ml\r\n\r\nMụn luôn là một trong những kẻ khó ưa gây mất thẩm mỹ, bạn muốn nhanh nhanh loại bỏ chúng đi. Nhưng việc điều trị mụn cần bạn phải kiên nhẫn cùng một quy trình dưỡng da đúng và nên tìm ra một loại sữa rửa mặt dành riêng cho da mụn là rất quan trọng. Được phát triển với một công thức dịu nhẹ, Some By Mi AHA-BHA-PHA 30 days Miracle Acne Clear Foam bọt rửa mặt ‘thần kì’ giúp làm dịu da, loại bỏ tình trạng da mụn sưng đỏ, mang lại sự tươi mới cho làn da và ngăn ngừa các nguyên nhân gây mụn.\r\n\r\nĐặc biệt, thay vì sử dụng chất hoạt động bề mặt tổng hợp (SLS, SLES) nguyên nhân gây kích ứng da, không thân thiện với da. Some By Mi sử dụng chất hoạt động có nguồn gốc từ dừa (Natri Methylcocoyl Taurate, Kali Cocoyl Glycinate) giúp bạn loại bỏ các chất thải, và giữ cho làn da bạn luôn khỏe mạnh, ẩm mịn hơn rất nhiều.\r\n\r\nCách sử dụng:\r\n\r\n– Bước 1: Lấy lượng sữa rửa mặt vừa đủ cho ra bàn tay ướt.\r\n\r\n– Bước 2: Xoa cho đến khi bông bọt.\r\n\r\n– Bước 3: Trải đều bọt lên da và massage nhẹ nhàng để loại bỏ bụi bẩn.\r\n\r\n– Bước 4: Làm sạch lại với nước.', 249000.00, 231000.00, '12.jpg', 'Anh Quốc', 145, 5),
(43, 'Serum ngăn ngừa rụng tóc Kérastase Cure Anti-Chute', 'Serum ngăn ngừa rụng tóc Kérastase Cure Anti-Chute là tinh chất đặc biệt giúp giảm thiểu và ngăn ngừa rụng tóc dành cho da đầu. Công thức vượt trội làm ức chế tình trạng rụng tóc đồng thời bảo vệ chống lại oxy hóa. Mái tóc bóng mượt và bồng bềnh đầy sức sống.\r\n\r\nTHÔNG TIN CHI TIẾT\r\nƯu điểm nổi bật:\r\n\r\n– Tinh chất hỗ trợ giảm thiểu tình trạng rụng tóc.\r\n\r\n– Hương thơm nước hoa, lưu hương 12-18 tiếng nhờ kết hợp với chuyên gia nước hoa, 3 tầng hương.\r\n\r\n– Thành phần lành tính, an toàn tuyệt đối, đã được kiểm nghiệm an toàn cho phụ nữ mang thai và cho con bú.\r\n\r\nCông dụng:\r\n\r\n– Tăng cường khả năng chống chịu lực, giúp tóc ít gãy rụng trong quá trình tạo kiểu.\r\n\r\n– Làm dày tóc và giúp tóc bóng mượt, khỏe mạnh hơn.\r\n\r\n– Không gây bết dính và tiết bã nhờn ở gốc tóc.\r\n\r\n– Bảo vệ tóc trước tình trạng oxy hóa và giảm thiểu rụng tóc.\r\n\r\nThành phần chính:\r\n\r\n– Aminexil ® 15.000 PPM: Phục hồi cơ chế hoạt động của collagen.\r\n\r\n– Phức hợp AOX: Ngăn chặn và bảo vệ tóc khỏi tác nhân ô nhiễm.\r\n\r\n+ L-Carnosine: Chống lại sự xâm lược từ bên trong.\r\n\r\n+ Vitamin E: Củng cố cơ chế chống oxy hóa da đầu.\r\n\r\n+ Moringa: Làm trẻ hóa các tế bào dưới da.\r\n\r\n– Rhamnose: Kích thích quá trình tổng hợp sợi elastin và collagen, tác động sâu vào lớp dưới da. Làm trẻ hóa tế bào dưới da.\r\n\r\nLoại da đầu: Da đầu rụng tóc.\r\n\r\nHƯỚNG DẪN SỬ DỤNG\r\n– Lau tóc ráo nước với khăn khô trước khi thoa tinh chất.\r\n\r\n– Mở lọ tinh chất da đầu, lắp vòi tra tinh chất vào.\r\n\r\n– Nhẹ nhàng rẽ tóc và nhỏ giọt sản phẩm vào trực tiếp phần da đầu.\r\n\r\n– Massage nhẹ nhàng để sản phẩm thẩm thấu vào da đầu.\r\n\r\n– Sử dụng liên tục từ 1/2 đến 1 chai để đạt được hiệu quả mong muốn.\r\n\r\n(*) Lưu ý: Không xả lại với nước.\r\n\r\nHướng dẫn bảo quản:\r\n\r\nNơi khô ráo, thoáng mát. Tránh ánh nắng trực tiếp, nơi có nhiệt độ cao. Đậy nắp kín sau khi sử dụng.\r\n\r\nXuất xứ: Pháp\r\n\r\nNơi sản xuất: Tây Ban Nha\r\n\r\nNSX: Xem trên bao bì\r\n\r\nHSD: 03 năm kể từ NSX\r\n\r\n', 1700000.00, 1500000.00, '13.jpg', 'Pháp', 110, 4),
(44, 'Xà phòng Suavecito Body Soap – Charcoal', 'Xà phòng Suavecito Body Soap – Charcoal với mùi hương Suavecito Original sẽ làm bạn cảm thấy thư giãn, soãng khoái sau mỗi lần tắm.  Thành phần chứa than hoạt tính giúp loại bỏ bụi bẩn, dầu nhờn và khử mùi mồ hôi trên cơ thể, làm thông thoáng lỗ chân lông. Bạn sẽ cảm thấy làn da được tươi mới cùng hương thơm nam tính, tự tin.\r\n\r\nThông tin chi tiết:\r\nThương hiệu: Suavecito\r\nTác dụng: làm sạch cơ thể, khử mùi và dưỡng ẩm\r\nMùi hương: nam tính\r\nTrọng lượng: 170g\r\nXuất xứ: USA', 239000.00, 220000.00, '14.webp', 'USA', 146, 6),
(45, 'Kem Dưỡng Ẩm Dear Klairs Midnight Blue Calming Cream', 'Kem Dưỡng Ẩm Dear Klairs Midnight Blue Calming Cream là kem dưỡng dành cho da nhạy cảm với thành phần Guaiazulene được chiết xuất từ dầu hoa cúc tạo màu xanh dịu mát tự nhiên, giúp làm dịu da kích ứng vô cùng hiệu quả. Cộng với chiết xuất rau má cấp ẩm, làm dịu da và hỗ trợ phục hồi da mụn rất tốt.\r\n\r\nLoại da phù hợp\r\nPhù hợp với mọi làn da, đặc biệt là da nhạy cảm.\r\nDa bị kích ứng với yếu tố môi trường (tia UV, nguồn nước).\r\nDa tổn thương (nặn mụn, laser, dùng Treatment).\r\nDa thiếu ẩm, thiếu nước.\r\n\r\nCông dụng kem dưỡng ẩm Dear Klairs Midnight :\r\nButylene Glycol, Glycerin, Sodium Hyaluronate: Cung cấp và duy trì độ ẩm cần thiết cho làn da suốt ngày dài.\r\nCetyl Ethylhexanoate, Stearic Acid: Điều tiết lượng dầu, nhờn cho da.\r\nMorus Alba Root Extract: Thành phần có khả năng làm trắng da và giúp da đều màu hơn.\r\nGuaiazulene (chiết xuất hoa cúc La Mã): Cân bằng độ pH tự nhiên cho da và giúp phục hồi da sau các tổn thương.\r\nNiacinamide (hay được biết đến là một loại Vitamin B3): Làm tăng khả năng bảo vệ da tốt hơn nhờ “hàng rào” tự nhiên trên da.\r\nCeramide 3: Thành phần giúp tăng sức đề kháng, giúp da luôn khỏe mạnh, săn chắc.\r\nCentella Asiatica Extract (Chiết xuất Rau Má): Làm dịu da, giảm thâm, nám. Đồng thời còn giúp cồi mụn lên nhanh hơn, hỗ trợ quá trình trị mụn thêm hiệu quả hơn.\r\nHướng dẫn sử dụng\r\nSử dụng vào bước cuối của chu trình dưỡng da.\r\nCho một lượng nhỏ kem dưỡng và thoa lên những vùng da bị kích ứng hoặc nhạy cảm, vỗ nhẹ nhàng cho đến khi kem thẩm thấu hết vào da.\r\nLưu ý: Tác dụng có thể khác nhau tuỳ cơ địa của người dùng.\r\n\r\nThông số sản phẩm\r\nThương hiệu: Dear, Klairs\r\nXuất xứ: Hàn Quốc\r\nNơi sản xuất: Hàn Quốc\r\nDung tích: 60ml\r\nHạn sử dụng: 3 năm kể từ ngày sản xuất.\r\nNgày sản xuất: Xem trên bao bì sản phẩm.\r\nThành phần: Aqua (Water), Cetyl Ethylhexanoate, Glycerin, Butylene Glycol, Caprylic/Capric Triglyceride, Centella Asiatica Extract, Sorbitan Stearate, Cetyl Alcohol, Butyrospermum Parkii (Shea) Butter, Argania Spinosa Kernel Oil, Simmondsia Chinensis (Jojoba) Seed Oil, Sorbitan Sesquioleate, Glyceryl Stearate, Stearic Acid, Portulaca Oleracea Extract, Anthemis Nobilis Flower Extract, Candelilla Cera, Chlorphenesin, Polysorbate 60, 1,2-Hexanediol, Xanthan Gum, Tocopheryl Acetate, Hydrogenated Lecithin, Acrylates/C10-30 Alkyl Acrylate Crosspolymer, Tromethamine, Brassica Oleracea Italica (Broccoli) Extract, Morus Alba Root Extract, Guaiazulene, Ceramide NP, Sodium Hyaluronate, Arachidic Acid, Palmitic Acid, Oleic Acid, Lecithin, Acetyl Glutamine, Bacillus/Folic Acid/Soybean Ferment Extract, sh-Oligopeptide-1, sh-Oligopeptide-2, sh-Polypeptide-1, sh-Polypeptide-11, sh-Polypeptide-9, Caprylyl Glycol, Acetyl Hexapeptide-8.', 490000.00, 400000.00, '15.webp', 'Hàn Quốc', 187, 5),
(46, 'Xả Khô Nashi Instant Mask Styling', 'CÔNG DỤNG CỦA XẢ KHÔ NASHI INSTANT MASK STYLING\r\nXả khô Nashi Argan Instant được tạo nên với sự kết hợp của các thành phần tự nhiên và sinh học trong đó có dầu hạt lanh, dầu argan được chứng nhận cung cấp thêm độ ẩm. Dầu Argan được coi là “Gold of Morocco”, là một loại dầu tự nhiên được đánh giá cao trong nhiều thế kỷ. Loại dầu này ngày càng phổ biến, nó mang lại cho mái tóc sự mềm mại độc đáo, có tác dụng chống oxy hóa và cũng có thể ngăn ngừa tóc chẻ ngọn và gãy rụng. Xịt dưỡng ẩm Nashi này cũng chứa dầu hạt lanh, giúp tóc mềm mượt hơn, bảo vệ tóc chống lại nhiệt và các cuộc tấn công bên ngoài. Tất cả các bao bì của Nashi đều thân thiện với môi trường và có thể tái chế.\r\n\r\nĐối tượng sử dụng:\r\n\r\nTuyệt vời cho khách hàng có mái tóc xù rối, tóc mỏng và nhờn rất nhanh, thường xuyên sử dụng máy duỗi tóc mà không muốn sử dụng dầu xả ướt.\r\n\r\nHƯỚNG DẪN SỬ DỤNG XẢ KHÔ NASHI INSTANT MASK STYLING\r\nSau khi gội đầu và lau khô tóc, xịt sản phẩm lên toàn bộ phần tóc cần tạo kiểu, dùng lược chải đều hoặc dùng tay xoa nhẹ nhàng cho sản phẩm thấm đều vào tóc, tạo kiểu theo ý muốn.\r\n\r\nKhông rửa sạch, chỉ cần làm khô tóc.\r\n\r\nMẹo: xịt nhẹ lên tóc khô để khôi phục lại sự hoàn hảo của kiểu tóc vào buổi sáng.\r\n\r\nSử dụng kết hợp với dầu gội cặp nashi, dầu dưỡng tóc Nashi Argan Oil, và dầu hấp tóc Nashi Argan Deep Infusion để có hiệu quả tốt nhất\r\n\r\nHướng dẫn bảo quản:\r\n\r\n-Để sản phẩm ở nhiệt độ phòng,thoáng mát.\r\n\r\n-Đậy kín nắp sau khi sử dụng.\r\n\r\n-Tránh ánh sáng hoặc nơi gần nguồn điện,ẩm mốc.\r\n\r\n-Tránh xa tầm tay trẻ em.', 435000.00, 415000.00, '16.webp', 'Pháp', 160, 4),
(47, 'Xịt khử mùi và ngăn mùi Etiaxil Men', 'Xịt khử mùi và ngăn mùi Etiaxil Men 150ml: Công thức không chứa cồn, không để lại vệt ố vàng, đồng thời tăng cường thêm Bisabolol (tinh dầu hoa cúc Đức) dưỡng ẩm dịu nhẹ. Thiết kế đặc biệt cho nam, với mùi hương gỗ lịch lãm nam tính, có thể sử dụng hàng ngày.\r\n\r\nTHÔNG TIN CHI TIẾT\r\nThành phần nổi bật\r\n\r\nKhả năng thấm hút mồ hôi được củng cố nhờ Magie Trisilicate và phức hợp thực vật giúp điều tiết mồ hôi.\r\nKhông chứa cồn, được bổ sung thêm Bisabolol, Xô Thơm và Cỏ Tháp Bút làm dịu da. Được kiểm nghiệm da liễu an toàn cho mọi loại da, kể cả da nhạy cảm.\r\nCông dụng nổi bật\r\n\r\nSở hữu công thức độc quyền khử mùi và ngăn mồ hôi nhờ khả năng thấm hút khô thoáng và khử khuẩn mùi vượt trội.\r\nSức mạnh kép đã được chứng minh lâm sàng: khóa mùi khó chịu & hút ẩm khô thoáng suốt 48H\r\nTăng cường thêm hoạt chất làm dịu Bisabolol dưỡng ẩm & chống oxy hóa\r\nKhông để lại vệt ố vàng hay vệt mồ hôi ướt đẫm trên cánh tay áo.\r\nThiết kế dạng xịt tiện dụng và gọn gàng, xịt trải đều và êm trên da, có thể sử dụng hàng ngày.\r\nMùi hương gỗ mạnh mẽ nam tính tăng thêm nét lịch lãm, phong độ cho phái mạnh.\r\n', 231000.00, 200000.00, '18png.png', 'Đức', 136000, 6),
(48, 'Sữa rửa mặt Patricks FW1 Face Wash', 'Sữa rửa mặt Patricks FW1 | Cell Regenerating Foaming Cleanser giúp làm sạch sâu đồng thời duy trì sự cân bằng độ ẩm tự nhiên của da. Với công thức đột phá từ chiết xuất Backhousia Citriodora Leaf ngay lập tức giúp giảm bóng bã nhờn và sự kết hợp mạnh mẽ của tinh chất xương rồng, trà xanh và Dragocalm thúc đẩy tái tạo biểu bì, bảo vệ tế bào Da khỏi tác hại của các gốc tự do (chống Oxy hóa, lão hóa).\r\n\r\nPhù hợp nhất với: Mọi loại da.\r\n\r\nKhông chứa Sulfate, Paraben và Phthalate. Thân thiện với người ăn chay. Sản xuất tại Mỹ.\r\n\r\nThành phần chính\r\nNguyên liệu	Chức năng chính	Kết quả\r\nOilesscity	Cân bằng da + Dưỡng ẩm	Cân bằng lượng bã nhờn để tránh tình trạng bóng nhờn\r\nChiết xuất trà trắng	Chống lão hóa	Bảo vệ tế bào da khỏi các gốc tự do, có liên quan đến lão hóa sớm\r\nAHA (Axit xitric)	Tẩy tế bào chết	Nhẹ nhàng loại bỏ bụi bẩn và cặn bã nhờn để giảm mụn\r\nChiết xuất từ ​​quả lê gai	Hydrat hóa + Tái tạo tế bào	Làm sáng da và dưỡng ẩm sâu cho da\r\nDragocalm	Chất chống oxy hóa + Kháng histamine	Giảm mẩn đỏ và ngứa\r\nGlycerin	Dưỡng ẩm	Chất giữ ẩm hút ẩm vào da\r\nChiết xuất trà xanh	Chống viêm + chống oxy hóa	Phục hồi và bảo vệ làn da bị tổn thương do ánh nắng mặt trời\r\nChiết xuất từ ​​quả lựu	Chống nhăn + Làm dịu	Làm dịu da, giảm thiểu sự xuất hiện của các nếp nhăn\r\nPropanediol	Hấp thụ tích cực	Hỗ trợ hấp thụ thành phần hoạt tính vào da\r\nCách sử dụng sữa rửa mặt Patricks FW1\r\nLoại da	Hướng	\r\nDa Dầu	Sử dụng từ 2 đến 3 lần bơm và massage lên mặt và cổ, vào buổi sáng và buổi tối.	\r\nDa hỗn hợp	Sử dụng 2 lần bơm và massage vào mặt và cổ, sáng và tối.	\r\nBình thường	Sử dụng 2 lần bơm và massage vào mặt và cổ, chỉ vào buổi sáng.	\r\nDa Khô	Sử dụng 2 lần bơm và massage vào mặt và cổ, chỉ vào buổi sáng.	\r\nThành phần\r\nWATER / AQUA / EAU, GLYCERIN, PROPANEDIOL, COCAMIDOPROPYL BETAINE, CAPRYLYL / CAPRYL GLUCOSIDE, DISODIUM COCOYL GLUTAMATE, PHENOXYETHANOL, FRAGRANCE / PARFUM, CITRIC ACID, SODIUM COCOYATE SODIUM COCOYATE PHÂN LOẠI KÍNH CITRIC ACID , COCO-GLUCOSIDE, GLYCERYL OLEATE, CAMELLIA SINENSIS LEAF EXTRACT, AVENA SATIVA (OAT) KERNEL EXTRACT, SODIUM HYALURONATE, HELIANTHUS ANNUUS (SUNFLOWER) SEED OIL, OPUNTIA VULGARIS EXTRACTRACTENZENZON, PUNICA.\r\n\r\n', 1850000.00, 1650000.00, '17.webp', 'Mỹ', 89, 5);
INSERT INTO `sanpham` (`id`, `name`, `mota`, `price`, `newprice`, `hinh`, `xuatxu`, `soluong`, `iddm`) VALUES
(49, 'Gôm xịt tóc Kevin Murphy Session.Spray', 'Gôm Kevin Murphy Session.Spray là một dòng gôm cao cấp, mang trong mình những thành phần tự nhiên tốt nhất cho tóc, không để lại vẩy trắng trên tóc, không nặng tóc, giữ nếp tối đa cho tóc mà không làm mất đi vẻ tự nhiên, linh hoạt của tóc. Thành phần được thủy phân từ hạt protein lúa mì, hạt nhựa phong, tinh dầu hương tự nhiên và màng chống nắng để đảm bảo an toàn màu tóc. Sản phẩm không chứa paraben. VOC thấp\r\n\r\nXuất xứ: Chính hãng 100% từ Kevin Murphy ÚC\r\n\r\nDung tích: 337ml\r\n\r\nCác dùng gôm Kevin Murphy Session Spray: Xịt đều lên tóc sau khi tạo kiểu hoặc sử dụng các sản phẩm tạo kiểu.\r\n\r\nCó thể kết hợp với sáp Kevin Murphy Rough Rider để giữ nếp tốt nhất.', 699000.00, 650000.00, '19jpg.jpg', 'Úc', 161, 4),
(50, 'Dưỡng Da Toàn Thân ManCave Caffeine Body Lotion', 'Dưỡng Da Toàn Thân ManCave Caffeine Body Lotion mang lại làn da mềm mại, mịn màn với các thành phần tự nhiên Shea Butter và Aloe Vera. Caffeine có tác dụng hồi sinh làn da khô, xỉn màu, làm giảm quá trình lão hoá da. Không gây nhờn hay bết rít.\r\n\r\nCách sử dụng:\r\n\r\nThoa một lượng vừa đủ vào lòng bàn tay và xoa đều khắp cơ thể (trừ da mặt) sau khi tắm.\r\n\r\nThành phần: \r\n\r\nAqua (Water), Cetearyl Alcohol, Ethylhexyl Stearate, Glycerin, Caprylic/Capric Triglyceride, Helianthus Annuus (Sunflower) Seed Oil, Polyglyceryl-3 Methylglucose Distearate, Butyrospermum Parkii (Shea) Butter, Menthyl Lactate, Zea Mays (Corn) Starch, Cetearyl Glucoside, Cetyl Esters, Phenoxyethanol, Olea Europaea (Olive) Fruit Oil, Aloe Barbadensis Leaf Juice, Xanthan Gum, Parfum (Fragrance), Benzoic Acid, Arginine, Caffeine, Dehydroacetic Acid, Citric Acid, Tocopheryl Acetate (Vitamin E), Bulnesia Sarmientoi Wood Oil, Juniperus Virginiana Wood Oil, Pogostemon Cablin Leaf Oil, Potassium Sorbate', 290000.00, 265000.00, '20.jpg', 'Pháp', 106, 6),
(51, 'Tẩy Tế Bào Chết Bulldog Original Face Scrub', 'Tẩy tế bào chết Bulldog Original Face Scrub giúp làm loại bỏ bụi bẩn, tế bào chết trên da mặt. Với công thức chứa tinh dầu baobab, dầu lạc đà và trà xanh sẽ mang lại một làn da mịn màng, đầy sức sống và không gây dị ứng cho da.\r\n\r\nDùng tốt cho là da thường.\r\n\r\nThành phần:\r\n\r\nWater, Coco-glucoside, Stearic acid, Glycerin, Cetyl alcohol, Glyceryl stearate, Aloe barbadensis leaf juice, Cetearyl alcohol, Avena sativa (Oat) kernel meal, Butyrospermum parkii (Shea) butter, Olea europaea (Olive) seed powder, Prunus amygdalus dulcis (Sweet almond) shell powder, Phenoxyethanol, Acrylates/C10-30 alkyl acrylate crosspolymer, Benzoic acid, Fragrance*, Camelina sativa seed oil, Dehydroacetic acid, Camellia sinensis (Green tea) leaf extract, Potassium sorbate, Sodium benzoate, Citric acid, Sodium hydroxide, Tocopherol. *A blend of natural ingredients.\r\n\r\nCách dùng:\r\n\r\nRửa mặt với nước ấm và sửa rửa mặt Bulldog. Dùng một lượng nhỏ, xoa đều và massage lên da mặt. Sau đó rửa sạch lại với nước.', 290000.00, 275000.00, '21.jpg', 'Hàn Quốc', 124, 5),
(52, 'Xà Phòng 18.21 Man Made Grit Bar Soap', 'Xà phòng tẩy da chết 18.21 Man Made Grit Bar Soap đem đến làn da mịn màn, tươi mới cùng với hương thơm nam tính.\r\n\r\nCác hạt jojoba nhẹ nhàng loại bỏ lớp da chết sần sùi trên cơ thể, cung cấp độ ẩm làm dịu làn da. Để sử dụng, bạn chỉ cần massage lên da để tạo bọt và tẩy tế bào chết sau đó rửa sạch. Đặc biệt thích hợp với các bạn có làn da khô.\r\n\r\nThành phần chính:\r\n\r\nHạt Jojoba : giúp loại bỏ lớp da chết, khô và thô ráp, trả lại làn da mịn màn.\r\nGlycerin, quinoa, jojoba & dầu hạt macadamia: làm sạch sâu, cung cấp độ ẩm nuôi dưỡng làn da\r\nThông tin sản phẩm:\r\n\r\nTrọng lượng: 7oz / 198g\r\nMùi hương độc quyền Absolute Mahogany: lấy cảm hứng từ những ngọn cây bên bờ đại dương và những cơn mưa rào mùa xuân.\r\nPhù hợp với mọi loại da, đặc biệt da khô\r\nXuất xứ: USA\r\n ', 440000.00, 419000.00, '22.jpg', 'USA', 132, 6),
(53, 'Xịt Mọc Tóc Kevin Murphy Body.Mass ', 'Xịt kích thích mọc tóc Kevin Murphy Body.Mass với thành phần Citrus flovonoids, gừng, rễ, cây tầm ma và các chiết xuất từ mùi tây, giúp tóc chắc khoẻ, đồng thời làm dày tóc đem lại mái tóc bồng bềnh.\r\n\r\nCông thức chứa axit Oleanic giúp củng cố chân tóc, ngăn rụng tóc và kích thích mọc tóc.\r\n\r\nSản phẩm được các nhà tạo mẫu tóc khuyên dùng cho tóc ít, mỏng thưa, bị các vấn đề rụng tóc.\r\n\r\nSản phẩm không chứa parapen, hương liệu tạo mùi.\r\n\r\nDung tích: 100ml\r\n\r\nCách dùng:\r\n\r\nXịt lên tóc sau khi gội đầu và lau khô\r\n\r\nĐể tăng độ hiệu quả có thể kết hợp với bộ sản phẩm dầu gội Kevin Murphy Plumping.Wash và xả Kevin Murphy Plumping.Rinse\r\n\r\n', 880000.00, 855000.00, '23.jpg', 'Homebrew Mỹ', 125, 4),
(54, 'Nước Hoa Hồng Some By Mi AHA-BHA-PHA 30 Days Miracle Toner ', 'Nước Hoa Hồng Some By Mi AHA-BHA-PHA 30 Days Miracle Toner 150ml\r\n\r\nCông dụng\r\n\r\n– AHA: Loại bỏ chất bẩn và chất sừng tích tụ trên bề mặt da\r\n\r\n– BHA: Loại bỏ chất bẩn và bã nhờn sâu trong lỗ chân lông\r\n\r\n– PHA: Chống viêm, chống oxi hóa, khóa lại độ ẩm không gây khô da\r\n\r\nSản phẩm toner Some By Mi thích hợp cho các bạn:\r\n\r\n– Da dầu mụn, da nhạy cảm\r\n\r\n– Da nhiều mụn đầu đen\r\n\r\n– Da tối màu, lỗ chân lông to\r\n\r\nThành phần\r\n\r\n– Tràm trà giúp kháng khuẩn, kháng viêm, giảm mụn hiệu quả\r\n\r\n– Hạt cây phỉ có tác dụng kháng khuẩn, giảm tiết nhờn\r\n\r\n– Đu đủ làm mềm và dịu da\r\n\r\n– Tổ yến vàng giúp tái sinh tế bào giúp da đàn hồi và săn chắc\r\n\r\n– Hoa sen giúp thanh lọc, cân bằng độ ẩm\r\n\r\nHướng dẫn sử dụng\r\n\r\nSản phẩm được sử dụng theo các bước: Tẩy trang > Sữa rửa mặt > Toner\r\n\r\nCách 1: Cho 1 lượng vừa đủ lên bông tẩy trang => Thoa đều lên mặt\r\n\r\nCách 2: Thấm đẫm lên bông tẩy trang => Đắp lên vùng nhiều tế bào chết => sau 1-3 phút gỡ ra và lau đi.', 292000.00, 272000.00, '24.jpg', 'Úc', 66, 5),
(55, 'Kem Chống Nắng Fit Sun Protect Serum', 'Công dụng\r\n\r\nSerum chống nắng FIT là sự đột phá của sản phẩm kem chống nắng trên thị trường, với khả năng kháng nước, quảng phổ rộng, SPF 50 bảo vệ đồng thời tái tạo & giữ ẩm làn da.\r\n\r\n– Kháng nước/không gây hiện tượng trắng bệt khi sử dụng.\r\n\r\n– SPF 50 & bảo vệ tối ưu 5 sao.\r\n\r\n– Phủ lớp bảo vệ siêu mỏng giúp da có thể thở được dễ dàng.\r\n\r\n– Không gây cảm giác bóng nhờn, bết dính.\r\n\r\n– Cấp ẩm & bảo vệ da.\r\n\r\nThành phần hoạt tính\r\n\r\nTitanium Dioxide – Thẩm thấu tia UV, bảo vệ làn da khỏi bức xa UVA và UVB. Không gây kích ứng da.\r\n\r\nZinc Oxide –Phản chiếu tia UV, ngăn chặn tổn thương da\r\n\r\nVitamin E – Cung cấp lớp bảo vệ chống oxi hoá khỏi sự ô nhiễm.\r\n\r\nHyaluronic acid – Cấp ẩm liên tục cho da.\r\n\r\nOXY-FIT-10 – Liệu pháp cung cấp Oxygen, thúc đẩy tái tạo tế bào da.\r\n\r\nHDSD: Thoa lên da ít nhất 15 phút trước khi tiếp xúc với ánh nắng mặt trời. Cần thoa lại sau khi bơi. Thoa lại lên da ít nhất mỗi 2 giờ. Để có hiệu quả tốt nhất, hãy sử dụng kèm FIT Moisturising Ultra Serum trước.\r\n\r\nBảo quản: Để nơi khô ráo thoáng mát\r\n\r\nThể tích thực: 100ml\r\n\r\nHSD: 2 năm, sau khi mở nắp\r\n\r\nSố công bố: 110362/19/CBMP-QLD\r\n\r\nXuất xứ: Anh', 1085000.00, 1035000.00, '25.jpg', 'Anh', 134, 6),
(56, 'Dầu xả mềm mượt Davines Love Conditioner', 'Dầu xả mềm mượt Davines Love Conditioner là dầu xả kiểm soát tóc xù hoặc tóc xoăn. Công thức của dầu xả giúp dưỡng ẩm cho tóc và giúp tóc khôi phục lại độ đàn hồi, loại bỏ sự rối xù và làm tóc bóng mượt.\r\n\r\nCông dụng chính:\r\nKiểm soát tóc xù và thô cứng.\r\nLàm mượt, tăng độ đàn hồi và làm bóng tóc.\r\nLoại bỏ hiệu ứng bông xù của tóc.\r\nThành phần hoạt động tự nhiên.\r\n\r\nThông tin sản phẩm:\r\nXuất xứ: Ý\r\nDung tích: 250ml\r\nHạn sử dụng: 3 năm (xem trên vỏ hộp)\r\nĐược sản xuất với 100% năng lượng sạch. Bao bì vô hại, thiết yếu và có thể tái chế\r\nCách sử dụng:\r\nĐảm bảo tóc mới xả sạch dầu gội xong\r\nCho một lượng dầu xả bằng 1/4 vào lòng bàn tay\r\nDùng ngón tay chải đều các sợi tóc từ gốc đến ngọn\r\nĐể trong 1-3 phút\r\nXả sạch với nước nhé', 399000.00, 380000.00, '1.webp', 'Ý', 123, 4),
(57, 'Dầu Xả Phục Hồi Hư Tổn Olaplex No.5 Conditioner', 'Dầu Xả Phục Hồi Hư Tổn Olaplex No.5 Shampoo 250ml có tác dụng bảo vệ và sửa chữa tóc hư tổn, chẻ ngọn và xoăn bằng cách liên kết lại các liên kết bị hỏng. Đây là một loại dầu gội có khả năng dưỡng ẩm, phục hồi cao giúp tóc dễ quản lý, sáng bóng và khỏe mạnh hơn sau mỗi lần sử dụng.\r\n\r\nĐồng thời cung cấp dưỡng chất lấp đầy các lỗ rỗng trên sợi tóc, lưu giữ và tăng tính liên kết đồng nhất của sợi tóc, giúp mái tóc bạn trở nên chắc khỏe, mượt mà hơn.\r\n\r\nBảo vệ màu nhuộm. Cân bằng độ pH.\r\n\r\nKhông chứa paraben, sulphate, phosphate.\r\n\r\nSản phẩm thuần chay. Thân thiện với môi trường.\r\n\r\nXUẤT XỨ: USA\r\n\r\nTHÀNH PHẦN CHÍNH\r\n\r\nBis-Aminopropyl Diglycol Dimaleate: hoạt chất gắn liên kết lưu huỳnh, tiếp theo là Biotin, Panthenol và Protein thực vật, giúp mái tóc không bị giòn gãy hoặc bám dày lên.\r\n\r\nSilicone hoà tan trong nước tốt nhất đó là divinyldimethicone/dimethicone copolymer, giúp mái tóc trơn mượt hoàn hảo.\r\nChiết xuất từ hoa hướng dương, quả mận, lá hương thảo, chuối…\r\n\r\nCÁCH SỬ DỤNG\r\n\r\nĐầu tiên bạn nên gội sạch mái tóc bằng dầu gội Olaplex No.4  Bond Maintenance, bước này bạn nên xả tóc thật sạch bằng nước trước khi bôi dầu gội lên tóc giúp tăng hiệu quả của việc gội hơn.\r\n\r\nSau khi xả sạch dầu gội trên tóc, bạn để tóc hơi ẩm và thoa dầu xả Olaplex No.5 Bond Maintenance lên đều mái tóc, mát xa nhẹ nhàng tóc và vùng da đầu để kích thích tuần hoàn máu dưới da đầu, giúp đẩy nhanh quá trình phục hồi và phát triển của tóc và da đầu, cũng như giúp dầu xả thấm sâu và đều cả sợi tóc.\r\n\r\nGiữ dầu xả trong khoảng thời gian từ 3 đến 5 phút. Rồi bạn xả sạch lại bằng nước lạnh.', 540000.00, 500000.00, '2.jpg', 'USA', 98, 4),
(58, 'Sữa Rửa Mặt MdoC Blackhead Perfect Scrub Foam', 'Sữa Rửa Mặt MdoC Blackhead Perfect Scrub Foam 150g tạo bọt kết hợp tẩy tế bào chết, loại bỏ mụn đầu đen. Với 4 tác dụng kép sử dụng các hạt tẩy tế bào chết tự nhiên và bột than tre giúp làm sạch hiệu quả không chỉ lớp trang điểm mà còn giúp loại bỏ bụi mịn, tế bào chết và mụn đầu đen trong lỗ chân lông.\r\n\r\nCông dụng: \r\n\r\nLoại bỏ hiệu quả mụn đầu đen dưới lỗ chân lông.\r\nLàm sạch các tế bào chết, bụi mịn, lớp trang điểm: kem chống nắng, BB Cream\r\nCải thiện bề mặt da.\r\nTăng cường làn da mịn màng, bóng khỏe.\r\nCách sử dụng: \r\n\r\nSau khi làm ẩm mặt với nước, lấy một lượng sản phẩm thích hợp ra lòng bàn tay và tạo bọt. Sau khi tạo bọt đủ, massage nhẹ nhàng và rửa bằng nước ấm. Massage và làm sạch kỹ hơn khu vực quanh nơi loại bỏ bã nhờn để đảm bảo da sạch thông thoáng hơn.\r\n\r\nThành phần: Vỏ quả óc chó. Chiết xuất từ bưởi Chiết xuất rau sam Phức hợp Phytoncide', 479000.00, 440000.00, '3.jpg', 'Hàn Quốc', 110, 5),
(59, 'Khăn làm mát Duke Cannon Cold Shower Cooling Field Towel', 'Khăn làm mát Duke Cannon Cold Shower Cooling Field Towel dành cho mặt và cơ thể này được sản xuất bằng tinh dầu bạc hà, lô hội và jojoba để mang lại cảm giác mát lạnh tức thì và chúng giúp bạn làm sạch và bảo vệ da của bạn.\r\n\r\nCách hoàn hảo để hạ nhiệt và phục hồi sau các ca làm việc kéo dài 12 giờ.\r\n\r\nThông tin chi tiết\r\nMỗi gói sẽ có 1 chiếc khăn\r\nMỗi túi sẽ chứa 15 gói\r\nLàm mát tức thì khi khăn chạm vào da của bạn mà không cần phải dùng đến đá hay tủ đông ủ lạnh\r\nLàm sạch sâu trong da với các hạt nổi trên khăn\r\nChứa chiết xuất nha đam và dầu jojoba cấp ẩm cho da của bạn\r\n\r\nSử dụng khi nào\r\nDùng khi bạn vừa có một chuyến đi dài từ bên ngoài\r\nKhi gương mặt và cơ thể ẩm ướt mồ hôi\r\nBạn muốn lau sạch dầu hoặc bụi bẩn trên mặt của bạn\r\nThành phần\r\nWater, Glycerin, Propylene Glycol, Cyclopentasiloxane, Aloe Barbadensis Leaf Extract, Chamomilla Recutita (Matricaria) Flower Extract, Cucumis Sativus (Cucumber) Fruit Extract, Althaea Officinalis Root Extract, Avena Sativa (Oat) Kernel Extract, Menthol, Hydrolyzed Jojoba Esters, Sucrose Cocoate, Tocopheryl Acetate, Xanthan Gum, Lactic Acid, Tetrasodium Glutamate Diacetate, Caprylyl Glycol, Ethylhexylglycerin, Hexylene Glycol, Phenoxyethanol, Fragrance.\r\n\r\n ', 35000.00, 30000.00, '4.webp', 'Pháp', 137, 6),
(60, 'Xà phòng No 63 Shea Butter Enriched Soap', 'Xà phòng No 63 Shea Butter Enriched Soap với mùi hương cổ điển nam tính, cổ điển.\r\n\r\nNo 63 Shea Butter Enriched Soap có hương thơm ấm áp hoà quyền cùng hương cay nồng tự nhiên. Nằm trong bộ sưu tập Men’s No.63 Collection, sữa tắm có mùi hương nam tính cổ điển với lớp hương đầu của cam quýt cay nồng được kết hợp với gỗ tuyết tùng, mận ngon ngọt và lá violet kết thúc thành lớp hương cuối của da thuộc và thuốc lá.\r\n\r\nNo 63 Shea Butter Enriched Soap thanh xà phòng này đã được xay bốn lần hoặc xử lý bốn lần để tạo ra một thanh mịn, sử dụng lâu dài, không bị tan ra khi bạn tắm. Được tạo ra để dưỡng ẩm và hydrat hóa không có cặn, chỉ để lại hương thơm cay nồng.\r\n\r\nThông tin xà phòng No 63 Shea Butter Enriched Soap\r\nLàm sạch cơ thể\r\nKhông làm khô da hay gây bết nhờn\r\nTrọng lượng: 200g\r\nCó dây treo tiện dụng\r\nXuất xứ: Pháp\r\nMùi hương: nam tính, cổ điển\r\n\r\nCách sử dụng:\r\nLàm ướt cơ thể sau đó xoa thanh xà phòng no.63 nhẹ nhàng lên cơ thể theo chuyển động tròn, mát xa nhẹ nhàng rồi rửa sạch với nước để cơ thể có mùi hương tuyệt vời\r\n\r\nThành phần:\r\nSodium Palmate, Sodium Palm Kernelate, Aqua/Water, Parfum/Fragrance, Palm Kernel Acid, Glycerin, Butyrospermum Parkii (Shea) Butter*, Butyrospermum Parkii (Shea) Oil, Helianthus Annuus (Sunflower) Seed Oil, Rosmarinus Officinalis (Rosemary) Leaf Extract, Tetrasodium Edta, Tetrasodium Etidronate, Sodium Chloride, Ci 77891/Titanium Dioxide, Ci 47005/Yellow 10 Lake, Ci 77492/Iron Oxides, Ci 77711/Magnesium Oxide, Ci 77499/Iron Oxides, Ci 77491/Iron Oxides, Alumina, Benzyl Benzoate, Coumarin, Limonene, Linalool.', 280000.00, 265000.00, '5jpeg.jpeg', 'Pháp', 114, 6),
(61, 'Bộ dầu gội xả Moroccanoil Air Moisture', 'Bộ dầu gội xả Moroccanoil Air Moisture được nghiên cứu nhằm đáp ứng nhu cầu riêng biệt cho chất tóc người châu Á và thành phần có 3 loại axit hyaluronic giúp giữ độ ẩm, bảo vệ tóc và dưỡng ẩm cho da đầu với lớp nền mềm mượt, không trọng lượng.\r\nCông thức dưỡng ẩm với 3 loại axit hyaluronic:\r\n•	Axit hyaluronic hydro hóa: Với cấu trúc phân tử nhỏ nhất, có thể thâm nhập sâu vào cấu trúc bên trong sợi tóc, cung cấp dưỡng ẩm hiệu quả cho tâm xơ tóc.\r\n•	Natri axit hyaluronic: Với cấu trúc phân tử lớn hơn, có thể dưỡng ẩm lớp biểu bì tóc, giúp giữ nước cho tóc.\r\n•	Axit hyaluronic clorua hydroxypropyl trimethyl: Trong ba thành phần hợp chất này, có cấu trúc phân tử lớn nhất, giúp tạo lớp bảo vệ, duy trì độ mượt và dẻo dai cho tóc.\r\n', 1210000.00, 750000.00, 'combo-moroccanoil-air-moisture-768x768.png', 'Nhật bản', 235, 4);

-- --------------------------------------------------------

--
-- Table structure for table `trangthaidonhang`
--

CREATE TABLE `trangthaidonhang` (
  `id` tinyint(1) NOT NULL,
  `trangthai` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `trangthaidonhang`
--

INSERT INTO `trangthaidonhang` (`id`, `trangthai`) VALUES
(1, 'Chờ xử lý'),
(2, 'Đã xác nhận'),
(3, 'Đã hoàn thành'),
(4, 'Đã hủy');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `binhluan`
--
ALTER TABLE `binhluan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `iduser` (`iduser`),
  ADD KEY `idpro` (`idpro`);

--
-- Indexes for table `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `donhang_id` (`donhang_id`),
  ADD KEY `sanpham_id` (`sanpham_id`);

--
-- Indexes for table `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nguoidung_id` (`idtk`),
  ADD KEY `id_trangthai` (`id_trangthai`);

--
-- Indexes for table `giohang`
--
ALTER TABLE `giohang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idsp` (`idsp`),
  ADD KEY `iduser` (`iduser`);

--
-- Indexes for table `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id`),
  ADD KEY `danh_muc_id` (`iddm`);

--
-- Indexes for table `trangthaidonhang`
--
ALTER TABLE `trangthaidonhang`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `donhang`
--
ALTER TABLE `donhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;

--
-- AUTO_INCREMENT for table `giohang`
--
ALTER TABLE `giohang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `nguoidung`
--
ALTER TABLE `nguoidung`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `trangthaidonhang`
--
ALTER TABLE `trangthaidonhang`
  MODIFY `id` tinyint(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `binhluan`
--
ALTER TABLE `binhluan`
  ADD CONSTRAINT `binhluan_ibfk_1` FOREIGN KEY (`iduser`) REFERENCES `nguoidung` (`id`),
  ADD CONSTRAINT `binhluan_ibfk_2` FOREIGN KEY (`idpro`) REFERENCES `sanpham` (`id`);

--
-- Constraints for table `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD CONSTRAINT `chitietdonhang_ibfk_1` FOREIGN KEY (`donhang_id`) REFERENCES `donhang` (`id`),
  ADD CONSTRAINT `chitietdonhang_ibfk_2` FOREIGN KEY (`sanpham_id`) REFERENCES `sanpham` (`id`);

--
-- Constraints for table `donhang`
--
ALTER TABLE `donhang`
  ADD CONSTRAINT `donhang_ibfk_1` FOREIGN KEY (`idtk`) REFERENCES `nguoidung` (`id`),
  ADD CONSTRAINT `donhang_ibfk_2` FOREIGN KEY (`id_trangthai`) REFERENCES `trangthaidonhang` (`id`);

--
-- Constraints for table `giohang`
--
ALTER TABLE `giohang`
  ADD CONSTRAINT `giohang_ibfk_1` FOREIGN KEY (`idsp`) REFERENCES `sanpham` (`id`),
  ADD CONSTRAINT `giohang_ibfk_2` FOREIGN KEY (`iduser`) REFERENCES `nguoidung` (`id`);

--
-- Constraints for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_ibfk_1` FOREIGN KEY (`iddm`) REFERENCES `danhmuc` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

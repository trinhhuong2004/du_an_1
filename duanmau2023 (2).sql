-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 11, 2023 lúc 07:09 PM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `duanmau2023`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bill`
--

CREATE TABLE `bill` (
  `id` int(10) NOT NULL,
  `iduser` int(10) NOT NULL DEFAULT 0,
  `bill_name` varchar(255) NOT NULL,
  `bill_address` varchar(255) NOT NULL,
  `bill_tel` varchar(59) NOT NULL,
  `bill_email` varchar(100) NOT NULL,
  `bill_pttt` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1.Thanh toán trực tiếp\r\n2.Chuyển khoản\r\n3.Thanh toán online',
  `ngaydathang` varchar(50) NOT NULL,
  `total` int(10) NOT NULL DEFAULT 0,
  `bill_status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0.Đơn hàng mới\r\n1.Đang xử lý\r\n2.Đang giao hàng\r\n3.Đã giao hàng',
  `receive_name` varchar(255) DEFAULT NULL,
  `receive_address` varchar(255) DEFAULT NULL,
  `receive_tel` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `bill`
--

INSERT INTO `bill` (`id`, `iduser`, `bill_name`, `bill_address`, `bill_tel`, `bill_email`, `bill_pttt`, `ngaydathang`, `total`, `bill_status`, `receive_name`, `receive_address`, `receive_tel`) VALUES
(2, 0, 'Trịnh Bá Hướng', 'Thanh Hóa', '09874862', 'trinhhhuong2050@gmail.com', 1, '10:23:50am 08/10/2023', 169000, 0, NULL, NULL, NULL),
(3, 0, 'Trịnh Bá Hướng', 'Thanh Hóa', '0362166863', 'admin@fpt.edu.vn', 1, '10:27:35am 08/10/2023', 169000, 0, NULL, NULL, NULL),
(4, 0, 'Trịnh Bá Hướng', 'Thanh Hóa', '0362166863', 'admin@fpt.edu.vn', 1, '10:29:35am 08/10/2023', 169000, 0, NULL, NULL, NULL),
(5, 0, 'Trịnh Bá Hướng', 'Thanh Hóa', '0362166863', 'admin@fpt.edu.vn', 1, '10:30:08am 08/10/2023', 169000, 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `binhluan`
--

CREATE TABLE `binhluan` (
  `id` int(10) NOT NULL,
  `noidung` varchar(255) NOT NULL,
  `iduser` int(10) NOT NULL,
  `idpro` int(10) NOT NULL,
  `ngaybinhluan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `binhluan`
--

INSERT INTO `binhluan` (`id`, `noidung`, `iduser`, `idpro`, `ngaybinhluan`) VALUES
(9, 'San pham dep chat luong', 17, 74, '10:14:57am 11/10/2023'),
(10, 'Sản phẩm chất lượng', 17, 1, '10:29:44am 11/10/2023'),
(11, 'Sản phẩm quá đẹp tôi thích ok', 17, 1, '10:30:15am 11/10/2023'),
(15, 'Sản phẩm đẹp', 17, 74, '10:47:23am 11/10/2023'),
(16, 'Tôi thích sản phẩm này', 17, 74, '10:47:38am 11/10/2023'),
(19, 'nội dung bình luận ok', 17, 73, '10:53:31am 11/10/2023');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `id` int(10) NOT NULL,
  `iduser` int(10) NOT NULL,
  `idpro` int(10) NOT NULL,
  `img` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int(10) NOT NULL,
  `soluong` int(3) NOT NULL,
  `thanhtien` int(10) NOT NULL,
  `idbill` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `cart`
--

INSERT INTO `cart` (`id`, `iduser`, `idpro`, `img`, `name`, `price`, `soluong`, `thanhtien`, `idbill`) VALUES
(1, 0, 36, 'sg-11134201-22120-y6d6v0af3clvf0_tn.jfif', 'Quần âu  nam', 169000, 1, 169000, 2),
(2, 1, 36, 'sg-11134201-22120-y6d6v0af3clvf0_tn.jfif', 'Quần âu  nam', 169000, 1, 169000, 3),
(3, 1, 36, 'sg-11134201-22120-y6d6v0af3clvf0_tn.jfif', 'Quần âu  nam', 169000, 1, 169000, 4),
(4, 1, 36, 'sg-11134201-22120-y6d6v0af3clvf0_tn.jfif', 'Quần âu  nam', 169000, 1, 169000, 5),
(5, 1, 36, 'sg-11134201-22120-y6d6v0af3clvf0_tn.jfif', 'Quần âu  nam', 169000, 1, 169000, 6),
(6, 1, 38, '174892f21c2dd3f227273e7b53916662.jpg', 'Áo sơ mi nam', 139000, 1, 139000, 6),
(7, 1, 38, '174892f21c2dd3f227273e7b53916662.jpg', 'Áo sơ mi nam', 139000, 1, 139000, 6);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

CREATE TABLE `danhmuc` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`id`, `name`) VALUES
(1, 'Quần âu'),
(2, 'Quần short'),
(5, 'Áo blazer'),
(11, 'Áo sơ mi'),
(15, 'Quần jean nam'),
(16, 'Áo Polo Hàn ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` double(10,2) NOT NULL DEFAULT 0.00,
  `img` varchar(255) NOT NULL,
  `mota` text NOT NULL,
  `luotxem` int(11) NOT NULL DEFAULT 0,
  `iddm` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`id`, `name`, `price`, `img`, `mota`, `luotxem`, `iddm`) VALUES
(1, 'Quần âu nam hàn quốc', 169000.00, 'ha.jpg', 'Trịnh Bá Hướng', 17, 1),
(32, 'Áo Blazer Nam Hàn Quốc', 199000.00, 'anh5.png', 'Sản phẩm mang tính thẩm mĩ cao', 1, 5),
(66, 'Áo polo nam Hàn Quốc', 139000.00, 'vn-11134207-7qukw-lfwdre9r6inrd8.jfif', 'Áo polo nam hàn quốc đẹp ', 1, 16),
(67, 'Áo sơ mi Nam', 156000.00, 'anh6.png', 'Áo đẹp, chất vãi rộng rãi thoáng mát dễ chịu', 1, 11),
(68, 'Áo blaze nam Hàn Quốc', 200000.00, 'anh5.png', 'Áo blazer nam Hàn Quốc', 1, 5),
(69, 'Quần short nam', 129000.00, 'c27bf510aa3f9a86cbd808bfca1f710f_tn.jfif', 'Quần short trẻ trung năng động ', 3, 2),
(70, 'Quần jean nam', 189000.00, 'quanjean.jpg', 'Quần jean nam', 1, 15),
(71, 'Áo sơ mi đũi', 149000.00, 'anh1.jpg', 'Áo sơ mi đũi đẹp đơn giản', 1, 11),
(72, 'Áo polo Hàn Quốc ', 99000.00, 'anh9.png', 'Áo sơ mi kaki đẹp ', 8, 11),
(73, 'Áo sơ mi', 198000.00, '198cdeafb9cd6f7e2ebedcf83376d27d.jpg', 'Áo sơ mi của chúng tôi đẹp quá', 516, 11),
(74, 'Quần âu nam', 147000.00, 'sg-11134201-22120-2r84yenvpdlv5c_tn.jfif', 'Quần âu nam', 494, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `taikhoan`
--

CREATE TABLE `taikhoan` (
  `id` int(11) NOT NULL,
  `user` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `role` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `taikhoan`
--

INSERT INTO `taikhoan` (`id`, `user`, `pass`, `email`, `address`, `tel`, `role`) VALUES
(17, 'Ba Huong', '123123', 'trinhhhuong2050@gmail.com', NULL, NULL, 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lk_binhluan_user` (`iduser`);

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id`),
  ADD KEY `iddm` (`iddm`);

--
-- Chỉ mục cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `bill`
--
ALTER TABLE `bill`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD CONSTRAINT `lk_binhluan_user` FOREIGN KEY (`iduser`) REFERENCES `taikhoan` (`id`);

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_ibfk_1` FOREIGN KEY (`iddm`) REFERENCES `danhmuc` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

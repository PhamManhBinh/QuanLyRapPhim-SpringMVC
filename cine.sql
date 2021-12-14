-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 12, 2021 lúc 01:27 PM
-- Phiên bản máy phục vụ: 10.4.21-MariaDB
-- Phiên bản PHP: 7.4.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `cine`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banner`
--

CREATE TABLE `banner` (
  `id` int(6) UNSIGNED NOT NULL,
  `image` varchar(1000) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `link` varchar(1000) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `Xoa` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `banner`
--

INSERT INTO `banner` (`id`, `image`, `link`, `Xoa`, `created_at`, `updated_at`) VALUES
(1, 'dsdfs', 'dsds', 1, NULL, '2021-12-12 09:42:37'),
(2, NULL, 'fghfgh', 1, '2021-12-12 09:29:43', '2021-12-12 09:42:43'),
(3, NULL, 'fghfgh', 1, '2021-12-12 09:29:47', '2021-12-12 09:43:24'),
(4, NULL, '456', 0, '2021-12-12 09:30:37', '2021-12-12 09:30:37'),
(5, NULL, '789', 0, '2021-12-12 09:31:09', '2021-12-12 09:31:09'),
(6, 'adapter.png', 'bầu trời cao với muôn ánh sao', 0, NULL, '2021-12-12 09:43:20'),
(7, NULL, '789', 1, '2021-12-12 09:32:17', '2021-12-12 09:43:27'),
(8, NULL, 'u', 1, '2021-12-12 09:32:55', '2021-12-12 09:42:40'),
(9, 'adapter.png', 'dgdff', 0, '2021-12-12 09:36:48', '2021-12-12 09:36:48');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cumrap`
--

CREATE TABLE `cumrap` (
  `id` int(6) UNSIGNED NOT NULL,
  `tencum` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `diachi` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `maps` varchar(1000) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `Xoa` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `cumrap`
--

INSERT INTO `cumrap` (`id`, `tencum`, `diachi`, `maps`, `Xoa`, `created_at`, `updated_at`) VALUES
(11, 'starlight', 'Sai Gon', '11', 1, NULL, '2021-12-10 03:25:01'),
(12, 'hi', '12', '12', 1, NULL, '2021-12-10 03:25:07'),
(13, 'dit me', 'aa', 'v', 1, NULL, '2021-12-09 04:20:51'),
(14, 'duc phc', 'hihi', 'ad', 1, '2021-12-09 05:58:04', '2021-12-10 03:25:04'),
(15, 'cgv', 'g', 'ad', 1, '2021-12-10 03:25:17', '2021-12-10 03:25:24'),
(16, 'bÃÂÃÂ°ÃÂ¡ÃÂ»ÃÂc qua nhau', 'yÃªu', 'add ÃÂ¢', 0, NULL, '2021-12-12 07:48:52'),
(17, 'cgv', 'g', 'ad', 0, '2021-12-10 03:26:50', '2021-12-10 03:26:50'),
(18, 'em ÄÃ£', 'tÃ³c tiÃªn', '', 0, '2021-12-12 07:34:46', '2021-12-12 07:34:46');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `fastfood`
--

CREATE TABLE `fastfood` (
  `id` int(6) UNSIGNED NOT NULL,
  `tenmon` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `mota` varchar(500) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `gia` float NOT NULL,
  `image` varchar(1000) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `Xoa` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `fastfood`
--

INSERT INTO `fastfood` (`id`, `tenmon`, `mota`, `gia`, `image`, `Xoa`, `created_at`, `updated_at`) VALUES
(1, 'ds', 'dfs', 100000, 'dsfds', 1, NULL, '2021-12-12 10:03:42'),
(2, 'bún đậu mắm tôm nhé', 'dở lắm nha', 35000, 'image_3f703429d7.png', 1, NULL, '2021-12-12 10:19:06'),
(3, 'fdgdf', 'fđfg', 45000, 'adapter.png', 1, '2021-12-12 10:13:12', '2021-12-12 10:13:16');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ghe`
--

CREATE TABLE `ghe` (
  `id` int(6) UNSIGNED NOT NULL,
  `hang` varchar(1) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `soghe` int(11) NOT NULL,
  `rap_id` int(6) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `ghe`
--

INSERT INTO `ghe` (`id`, `hang`, `soghe`, `rap_id`, `created_at`, `updated_at`) VALUES
(1, 'A', 1, 7, '2021-11-26 08:48:45', '2021-11-26 08:48:45');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nguoidung`
--

CREATE TABLE `nguoidung` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `pass` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `phone` varchar(11) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `birthday` date NOT NULL,
  `permission` varchar(5) COLLATE utf8mb4_vietnamese_ci NOT NULL DEFAULT 'user',
  `xoa` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `nguoidung`
--

INSERT INTO `nguoidung` (`id`, `email`, `pass`, `name`, `phone`, `gender`, `birthday`, `permission`, `xoa`, `created_at`, `updated_at`) VALUES
(1, 'sfsdfs@gmail.com', 'dfgdfgfdgdf', 'dfgdfgdfg', '5645645', 'Nam', '2021-12-15', 'user', 1, NULL, '2021-12-12 10:51:48'),
(2, 'binh@gmail.com', '12345', 'Pháº¡m BÃ¬nh', '0123456789', 'Ná»¯', '2000-01-08', 'admin', 1, '2021-12-12 11:06:21', '2021-12-12 11:06:35'),
(3, 'binh@gmail.com', '123456', 'long loz', '0123456789', 'Nam', '2000-01-08', 'user', 1, NULL, '2021-12-12 11:16:07');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phim`
--

CREATE TABLE `phim` (
  `id` int(6) UNSIGNED NOT NULL,
  `ten` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `poster` varchar(255) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `trailer` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `thoiluong` int(11) NOT NULL,
  `daodien` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `dienvien` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `theloai` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `noidungphim` varchar(3000) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `ngaycongchieu` date DEFAULT NULL,
  `xoa` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `phim`
--

INSERT INTO `phim` (`id`, `ten`, `poster`, `trailer`, `thoiluong`, `daodien`, `dienvien`, `theloai`, `noidungphim`, `ngaycongchieu`, `xoa`, `created_at`, `updated_at`) VALUES
(27, 'bước qua nhau nhé', 'adapter.png', '555', 70, 'abc', 'abc', 'dfgd', 'sdf', '2021-12-15', 0, NULL, '2021-12-12 07:49:07');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rap`
--

CREATE TABLE `rap` (
  `id` int(6) UNSIGNED NOT NULL,
  `tenrap` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `loairap` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `ktngang` int(11) NOT NULL,
  `ktdoc` int(11) NOT NULL,
  `cumrap_id` int(6) UNSIGNED NOT NULL,
  `xoa` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `rap`
--

INSERT INTO `rap` (`id`, `tenrap`, `loairap`, `ktngang`, `ktdoc`, `cumrap_id`, `xoa`, `created_at`, `updated_at`) VALUES
(1, 'a1', 'hd', 5, 6, 13, 1, NULL, '2021-12-09 05:56:12'),
(2, 'aa', 'aa', 4, 5, 11, 1, '2021-12-09 05:44:08', '2021-12-09 05:48:42'),
(3, 'huong', 'binh', 1, 2, 12, 1, '2021-12-09 05:47:05', '2021-12-09 05:48:39'),
(4, 'huong', 'HD', 5, 11, 12, 1, NULL, '2021-12-09 05:56:12'),
(5, 'hihi', 'CGV', 10, 1, 11, 1, NULL, '2021-12-10 03:26:56'),
(6, 'em ÄÃ£ cÃ³ ngÆ°á»i má»i', 'aa', 4, 5, 17, 1, NULL, '2021-12-12 08:08:15'),
(7, 'huong', 'aa', 4, 5, 17, 0, '2021-12-12 08:25:41', '2021-12-12 08:25:41');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `suatchieu`
--

CREATE TABLE `suatchieu` (
  `id` int(6) UNSIGNED NOT NULL,
  `ngay` date NOT NULL,
  `thoidiembatdau` datetime NOT NULL,
  `thoidiemketthuc` datetime NOT NULL,
  `giave` int(11) NOT NULL,
  `phim_id` int(6) UNSIGNED NOT NULL,
  `rap_id` int(6) UNSIGNED NOT NULL,
  `xoa` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `suatchieu`
--

INSERT INTO `suatchieu` (`id`, `ngay`, `thoidiembatdau`, `thoidiemketthuc`, `giave`, `phim_id`, `rap_id`, `xoa`, `created_at`, `updated_at`) VALUES
(1, '2021-12-22', '2021-12-12 09:09:34', '2021-12-12 10:09:34', 45000, 27, 6, 0, NULL, '2021-12-12 08:35:27'),
(2, '2021-12-15', '1970-01-01 14:00:00', '1970-01-01 15:00:00', 45001, 27, 7, 0, '2021-12-12 08:35:59', '2021-12-12 08:55:19'),
(3, '2021-12-24', '1970-01-01 16:37:00', '1970-01-01 17:37:00', 45001, 27, 7, 0, '2021-12-12 08:37:45', '2021-12-12 08:39:27'),
(4, '2021-12-18', '1970-01-01 20:00:00', '1970-01-01 20:30:00', 100000, 27, 7, 0, NULL, '2021-12-12 08:57:18');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ve`
--

CREATE TABLE `ve` (
  `id` int(6) UNSIGNED NOT NULL,
  `suatchieu_id` int(6) UNSIGNED NOT NULL,
  `nguoidung_id` int(6) UNSIGNED NOT NULL,
  `ghe_id` int(6) UNSIGNED NOT NULL,
  `xoa` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `ve`
--

INSERT INTO `ve` (`id`, `suatchieu_id`, `nguoidung_id`, `ghe_id`, `xoa`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 1, 1, '2021-11-26 08:48:45', '2021-12-12 12:26:34');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ve_food`
--

CREATE TABLE `ve_food` (
  `id` int(6) UNSIGNED NOT NULL,
  `fastfood_id` int(6) UNSIGNED NOT NULL,
  `soluong` int(11) NOT NULL,
  `ve_id` int(6) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `ve_food`
--

INSERT INTO `ve_food` (`id`, `fastfood_id`, `soluong`, `ve_id`, `created_at`, `updated_at`) VALUES
(1, 2, 5, 1, '2021-11-26 08:48:45', NULL),
(2, 3, 3, 1, NULL, NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cumrap`
--
ALTER TABLE `cumrap`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `fastfood`
--
ALTER TABLE `fastfood`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `ghe`
--
ALTER TABLE `ghe`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rap_id` (`rap_id`);

--
-- Chỉ mục cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `phim`
--
ALTER TABLE `phim`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `rap`
--
ALTER TABLE `rap`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cumrap_id` (`cumrap_id`);

--
-- Chỉ mục cho bảng `suatchieu`
--
ALTER TABLE `suatchieu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `phim_id` (`phim_id`),
  ADD KEY `rap_id` (`rap_id`);

--
-- Chỉ mục cho bảng `ve`
--
ALTER TABLE `ve`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ghe_id` (`ghe_id`),
  ADD KEY `nguoidung_id` (`nguoidung_id`),
  ADD KEY `suatchieu_id` (`suatchieu_id`);

--
-- Chỉ mục cho bảng `ve_food`
--
ALTER TABLE `ve_food`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fastfood_id` (`fastfood_id`),
  ADD KEY `ve_id` (`ve_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `cumrap`
--
ALTER TABLE `cumrap`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `fastfood`
--
ALTER TABLE `fastfood`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `ghe`
--
ALTER TABLE `ghe`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `phim`
--
ALTER TABLE `phim`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `rap`
--
ALTER TABLE `rap`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `suatchieu`
--
ALTER TABLE `suatchieu`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `ve`
--
ALTER TABLE `ve`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `ve_food`
--
ALTER TABLE `ve_food`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `ghe`
--
ALTER TABLE `ghe`
  ADD CONSTRAINT `ghe_ibfk_1` FOREIGN KEY (`rap_id`) REFERENCES `rap` (`id`);

--
-- Các ràng buộc cho bảng `rap`
--
ALTER TABLE `rap`
  ADD CONSTRAINT `rap_ibfk_1` FOREIGN KEY (`cumrap_id`) REFERENCES `cumrap` (`id`);

--
-- Các ràng buộc cho bảng `suatchieu`
--
ALTER TABLE `suatchieu`
  ADD CONSTRAINT `suatchieu_ibfk_1` FOREIGN KEY (`phim_id`) REFERENCES `phim` (`id`),
  ADD CONSTRAINT `suatchieu_ibfk_2` FOREIGN KEY (`rap_id`) REFERENCES `rap` (`id`);

--
-- Các ràng buộc cho bảng `ve`
--
ALTER TABLE `ve`
  ADD CONSTRAINT `ve_ibfk_1` FOREIGN KEY (`ghe_id`) REFERENCES `ghe` (`id`),
  ADD CONSTRAINT `ve_ibfk_2` FOREIGN KEY (`nguoidung_id`) REFERENCES `nguoidung` (`id`),
  ADD CONSTRAINT `ve_ibfk_3` FOREIGN KEY (`suatchieu_id`) REFERENCES `suatchieu` (`id`);

--
-- Các ràng buộc cho bảng `ve_food`
--
ALTER TABLE `ve_food`
  ADD CONSTRAINT `ve_food_ibfk_1` FOREIGN KEY (`fastfood_id`) REFERENCES `fastfood` (`id`),
  ADD CONSTRAINT `ve_food_ibfk_2` FOREIGN KEY (`ve_id`) REFERENCES `ve` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 10, 2024 lúc 03:38 AM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `cuahang`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `id` int(50) NOT NULL,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(12) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`id`, `username`, `email`, `password`, `phone`) VALUES
(1, 'Chí Trung', 'trungkg2247@gmail.com', '123', '+84327669552'),
(2, 'hehe', 'trungper08@gmail.com', '123', '+84327669552');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `comment` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `comments`
--

INSERT INTO `comments` (`id`, `name`, `comment`) VALUES
(25, 'Per', 'Đồ ăn tươi lắm nha\r\n'),
(26, 'Per1', 'Đồ ăn tươi lắm nha\r\n'),
(27, 'sss', 'sss'),
(28, 'sss', 'sss'),
(29, 'têtt', 'ádds');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `image_labarari`
--

CREATE TABLE `image_labarari` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `path` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `image_labarari`
--

INSERT INTO `image_labarari` (`id`, `product_id`, `path`) VALUES
(1, 2, 'asset/image/product2.avif'),
(2, 2, 'asset/image/product1.avif');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `image_library`
--

CREATE TABLE `image_library` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `path` varchar(255) NOT NULL,
  `created_time` int(11) NOT NULL,
  `last_updated` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `image_library`
--

INSERT INTO `image_library` (`id`, `product_id`, `path`, `created_time`, `last_updated`) VALUES
(197, 53, 'uploads/09-03-2024/product-list-icon(1).jpg', 1709992611, 1709992611),
(198, 53, 'uploads/09-03-2024/raudiepca.jpg', 1709992611, 1709992611),
(199, 53, 'uploads/09-03-2024/raumuong.jpg', 1709992611, 1709992611),
(200, 53, 'uploads/09-03-2024/raungof.jpg', 1709992611, 1709992611),
(201, 53, 'uploads/09-03-2024/xalach.jpg', 1709992611, 1709992611),
(202, 53, 'uploads/09-03-2024/xalachson.jpg', 1709992611, 1709992611),
(203, 54, 'uploads/09-03-2024/raudiepca(1).jpg', 1709992679, 1709992679),
(204, 54, 'uploads/09-03-2024/raumuong(1).jpg', 1709992679, 1709992679),
(205, 54, 'uploads/09-03-2024/raungof(1).jpg', 1709992679, 1709992679),
(206, 54, 'uploads/09-03-2024/xalach(1).jpg', 1709992679, 1709992679),
(207, 54, 'uploads/09-03-2024/xalachson(1).jpg', 1709992679, 1709992679),
(208, 55, 'uploads/09-03-2024/banhkemtraicay.jpg', 1710000678, 1710000678),
(209, 55, 'uploads/09-03-2024/bido.jpg', 1710000678, 1710000678),
(210, 55, 'uploads/09-03-2024/bixanh.jpg', 1710000678, 1710000678),
(211, 55, 'uploads/09-03-2024/bongcaitrang.jpg', 1710000678, 1710000678),
(212, 55, 'uploads/09-03-2024/cachuabi.jpg', 1710000678, 1710000678),
(213, 55, 'uploads/09-03-2024/chuoi.jpg', 1710000678, 1710000678),
(214, 55, 'uploads/09-03-2024/dauxanhcovo.jpg', 1710000678, 1710000678),
(215, 55, 'uploads/09-03-2024/giá.jpg', 1710000678, 1710000678),
(216, 55, 'uploads/09-03-2024/hanhtay.jpg', 1710000678, 1710000678),
(217, 55, 'uploads/09-03-2024/hanhtay.png', 1710000678, 1710000678),
(218, 55, 'uploads/09-03-2024/hausua.jpg', 1710000678, 1710000678),
(219, 55, 'uploads/09-03-2024/logoga.jpg', 1710000678, 1710000678),
(220, 56, 'uploads/09-03-2024/suachua(1).jpg', 1710005190, 1710005190),
(221, 56, 'uploads/09-03-2024/suachua3.jpg', 1710005190, 1710005190),
(222, 56, 'uploads/09-03-2024/suadacngoisao.jpg', 1710005190, 1710005190),
(223, 56, 'uploads/09-03-2024/suadaunanh.jpg', 1710005190, 1710005190),
(224, 56, 'uploads/09-03-2024/suatuoi.jpg', 1710005190, 1710005190),
(225, 57, 'uploads/09-03-2024/product-list-icon(1).jpg', 1710005222, 1710005222),
(226, 57, 'uploads/09-03-2024/Raucaixanh.jpg', 1710005222, 1710005222),
(227, 57, 'uploads/09-03-2024/rauden(1).jpg', 1710005222, 1710005222),
(228, 57, 'uploads/09-03-2024/raudiepca(1).jpg', 1710005222, 1710005222),
(229, 57, 'uploads/09-03-2024/raumuong(1).jpg', 1710005222, 1710005222),
(230, 58, 'uploads/10-03-2024/canhga(1).jpg', 1710046766, 1710046766),
(231, 58, 'uploads/10-03-2024/duiga.jpg', 1710046766, 1710046766),
(232, 58, 'uploads/10-03-2024/duigadonglanh.jpg', 1710046766, 1710046766),
(233, 58, 'uploads/10-03-2024/thitbocau.jpg', 1710046766, 1710046766),
(234, 59, 'uploads/10-03-2024/pizzaga(1).jpg', 1710046802, 1710046802),
(235, 59, 'uploads/10-03-2024/pizzahaisan.jpg', 1710046802, 1710046802),
(236, 58, 'uploads/10-03-2024/hanhtay(1).jpg', 1710046848, 1710046848),
(237, 58, 'uploads/10-03-2024/hanhtay.png', 1710046848, 1710046848),
(238, 58, 'uploads/10-03-2024/raungof.jpg', 1710046848, 1710046848),
(239, 58, 'uploads/10-03-2024/taodo.jpg', 1710046848, 1710046848),
(240, 58, 'uploads/10-03-2024/xalach.jpg', 1710046848, 1710046848),
(241, 58, 'uploads/10-03-2024/xalachson.jpg', 1710046848, 1710046848),
(242, 59, 'uploads/10-03-2024/banhkemtraicay.jpg', 1710046943, 1710046943),
(243, 59, 'uploads/10-03-2024/bixanh.jpg', 1710046943, 1710046943),
(244, 59, 'uploads/10-03-2024/bongcaitrang(1).jpg', 1710046943, 1710046943),
(245, 59, 'uploads/10-03-2024/logoga.jpg', 1710046943, 1710046943),
(246, 60, 'uploads/10-03-2024/raudiepca(1).jpg', 1710046995, 1710046995),
(247, 60, 'uploads/10-03-2024/raumuong.jpg', 1710046995, 1710046995),
(248, 60, 'uploads/10-03-2024/raungof(1).jpg', 1710046995, 1710046995),
(249, 60, 'uploads/10-03-2024/xalachson(1).jpg', 1710046995, 1710046995),
(250, 61, 'uploads/10-03-2024/canhga(1).jpg', 1710047047, 1710047047),
(251, 61, 'uploads/10-03-2024/duiga(1).jpg', 1710047047, 1710047047),
(252, 61, 'uploads/10-03-2024/duigadonglanh(1).jpg', 1710047047, 1710047047),
(253, 61, 'uploads/10-03-2024/thitbocau(1).jpg', 1710047047, 1710047047),
(254, 62, 'uploads/10-03-2024/canhga(1).jpg', 1710047132, 1710047132),
(255, 62, 'uploads/10-03-2024/duiga(1).jpg', 1710047132, 1710047132),
(256, 62, 'uploads/10-03-2024/duigadonglanh(1).jpg', 1710047132, 1710047132),
(257, 62, 'uploads/10-03-2024/thitbocau(1).jpg', 1710047132, 1710047132),
(258, 64, 'uploads/10-03-2024/thitde(1).jpg', 1710047244, 1710047244),
(259, 65, 'uploads/14-03-2024/nuocmamca.jpg', 1710420638, 1710420638),
(260, 65, 'uploads/14-03-2024/nuocsuoiLavie_-_Copy.jpg', 1710420638, 1710420638),
(261, 65, 'uploads/14-03-2024/nuocsuoiLavie.jpg', 1710420638, 1710420638),
(262, 65, 'uploads/14-03-2024/nuoctuong.jpg', 1710420638, 1710420638),
(263, 65, 'uploads/14-03-2024/pepsi.jpg', 1710420638, 1710420638),
(264, 65, 'uploads/14-03-2024/suachua_-_Copy.jpg', 1710420638, 1710420638),
(265, 65, 'uploads/14-03-2024/suatuoi.jpg', 1710420638, 1710420638),
(266, 65, 'uploads/14-03-2024/suatuoi1.jpg', 1710420638, 1710420638),
(267, 65, 'uploads/14-03-2024/suatuoi2.jpg', 1710420638, 1710420638),
(268, 66, 'uploads/14-03-2024/suadacngoisao.jpg', 1710420651, 1710420651),
(269, 66, 'uploads/14-03-2024/suadaunanh.jpg', 1710420651, 1710420651),
(270, 66, 'uploads/14-03-2024/suatuoi(1).jpg', 1710420651, 1710420651),
(271, 66, 'uploads/14-03-2024/suatuoi1(1).jpg', 1710420651, 1710420651),
(272, 66, 'uploads/14-03-2024/suatuoi2(1).jpg', 1710420651, 1710420651),
(273, 67, 'uploads/14-03-2024/Raucaixanh.jpg', 1710420674, 1710420674),
(274, 67, 'uploads/14-03-2024/rauden.jpg', 1710420674, 1710420674),
(275, 67, 'uploads/14-03-2024/raudiepca(1).jpg', 1710420674, 1710420674),
(276, 67, 'uploads/14-03-2024/raumuong.jpg', 1710420674, 1710420674),
(277, 67, 'uploads/14-03-2024/raungof.jpg', 1710420674, 1710420674),
(278, 67, 'uploads/14-03-2024/taodo.jpg', 1710420674, 1710420674),
(279, 67, 'uploads/14-03-2024/xalach.jpg', 1710420674, 1710420674),
(280, 67, 'uploads/14-03-2024/xalachson.jpg', 1710420674, 1710420674),
(281, 69, 'uploads/14-03-2024/bido.jpg', 1710420705, 1710420705),
(282, 69, 'uploads/14-03-2024/bixanh.jpg', 1710420705, 1710420705),
(283, 69, 'uploads/14-03-2024/bongcaitrang.jpg', 1710420705, 1710420705),
(284, 69, 'uploads/14-03-2024/cachuabi.jpg', 1710420705, 1710420705),
(285, 69, 'uploads/14-03-2024/chuoi.jpg', 1710420705, 1710420705),
(286, 69, 'uploads/14-03-2024/dauxanhcovo.jpg', 1710420705, 1710420705),
(287, 69, 'uploads/14-03-2024/giá.jpg', 1710420705, 1710420705),
(288, 69, 'uploads/14-03-2024/Raucaixanh(1).jpg', 1710420705, 1710420705),
(289, 69, 'uploads/14-03-2024/rauden(1).jpg', 1710420705, 1710420705),
(290, 69, 'uploads/14-03-2024/raudiepca(1).jpg', 1710420705, 1710420705),
(291, 69, 'uploads/14-03-2024/raumuong(1).jpg', 1710420705, 1710420705),
(292, 69, 'uploads/14-03-2024/raungof(1).jpg', 1710420705, 1710420705),
(293, 69, 'uploads/14-03-2024/taodo(1).jpg', 1710420705, 1710420705),
(294, 69, 'uploads/14-03-2024/xalach(1).jpg', 1710420705, 1710420705),
(295, 75, 'uploads/14-03-2024/duigadonglanh.jpg', 1710420802, 1710420802),
(296, 75, 'uploads/14-03-2024/pizzaga(1).jpg', 1710420802, 1710420802),
(297, 75, 'uploads/14-03-2024/pizzahaisan.jpg', 1710420802, 1710420802),
(298, 75, 'uploads/14-03-2024/thitbobachi.jpg', 1710420802, 1710420802),
(299, 75, 'uploads/14-03-2024/thitbocau.jpg', 1710420802, 1710420802),
(300, 75, 'uploads/14-03-2024/thitbotaytang.jpg', 1710420802, 1710420802),
(301, 75, 'uploads/14-03-2024/thitde.jpg', 1710420802, 1710420802),
(302, 75, 'uploads/14-03-2024/thitnacheo.jpg', 1710420802, 1710420802),
(303, 76, 'uploads/14-03-2024/pizzaga(1).jpg', 1710420815, 1710420815),
(304, 76, 'uploads/14-03-2024/pizzahaisan(1).jpg', 1710420815, 1710420815),
(305, 76, 'uploads/14-03-2024/thitbobachi(1).jpg', 1710420815, 1710420815),
(306, 76, 'uploads/14-03-2024/thitbocau(1).jpg', 1710420815, 1710420815),
(307, 76, 'uploads/14-03-2024/thitbotaytang(1).jpg', 1710420815, 1710420815),
(308, 76, 'uploads/14-03-2024/thitde(1).jpg', 1710420815, 1710420815),
(309, 76, 'uploads/14-03-2024/thitnacheo(1).jpg', 1710420815, 1710420815),
(310, 77, 'uploads/14-03-2024/pizzahaisan(1).jpg', 1710420836, 1710420836),
(311, 77, 'uploads/14-03-2024/thitbobachi(1).jpg', 1710420836, 1710420836),
(312, 77, 'uploads/14-03-2024/thitbocau(1).jpg', 1710420836, 1710420836),
(313, 77, 'uploads/14-03-2024/thitbotaytang(1).jpg', 1710420836, 1710420836),
(314, 77, 'uploads/14-03-2024/thitde(1).jpg', 1710420836, 1710420836),
(315, 77, 'uploads/14-03-2024/thitnacheo(1).jpg', 1710420836, 1710420836),
(316, 77, 'uploads/14-03-2024/thittrau.jpg', 1710420836, 1710420836),
(317, 79, 'uploads/14-03-2024/pizzaga(1).jpg', 1710420883, 1710420883),
(318, 79, 'uploads/14-03-2024/pizzahaisan(1).jpg', 1710420883, 1710420883),
(319, 79, 'uploads/14-03-2024/thitbobachi(1).jpg', 1710420883, 1710420883),
(320, 79, 'uploads/14-03-2024/thitbocau(1).jpg', 1710420883, 1710420883),
(321, 79, 'uploads/14-03-2024/thitbotaytang(1).jpg', 1710420883, 1710420883),
(322, 79, 'uploads/14-03-2024/thitde(1).jpg', 1710420883, 1710420883),
(323, 79, 'uploads/14-03-2024/thitnacheo(1).jpg', 1710420883, 1710420883),
(324, 79, 'uploads/14-03-2024/thittrau(1).jpg', 1710420883, 1710420883),
(325, 80, 'uploads/14-03-2024/pizzaga(1).jpg', 1710420952, 1710420952),
(326, 80, 'uploads/14-03-2024/pizzahaisan(1).jpg', 1710420952, 1710420952),
(327, 80, 'uploads/14-03-2024/thitbobachi(1).jpg', 1710420952, 1710420952),
(328, 80, 'uploads/14-03-2024/thitbocau(1).jpg', 1710420952, 1710420952),
(329, 80, 'uploads/14-03-2024/thitbotaytang(1).jpg', 1710420952, 1710420952),
(330, 80, 'uploads/14-03-2024/thitde(1).jpg', 1710420952, 1710420952),
(331, 80, 'uploads/14-03-2024/thitnacheo(1).jpg', 1710420952, 1710420952),
(332, 80, 'uploads/14-03-2024/thittrau(1).jpg', 1710420952, 1710420952),
(333, 81, 'uploads/14-03-2024/duiga.jpg', 1710421007, 1710421007),
(334, 81, 'uploads/14-03-2024/duigadonglanh(1).jpg', 1710421007, 1710421007),
(335, 81, 'uploads/14-03-2024/pizzaga(1).jpg', 1710421007, 1710421007),
(336, 81, 'uploads/14-03-2024/pizzahaisan(1).jpg', 1710421007, 1710421007),
(337, 81, 'uploads/14-03-2024/thitbobachi(1).jpg', 1710421007, 1710421007),
(338, 81, 'uploads/14-03-2024/thitbocau(1).jpg', 1710421007, 1710421007),
(339, 81, 'uploads/14-03-2024/thitbotaytang(1).jpg', 1710421007, 1710421007),
(340, 81, 'uploads/14-03-2024/thitde(1).jpg', 1710421007, 1710421007),
(341, 81, 'uploads/14-03-2024/thitnacheo(1).jpg', 1710421007, 1710421007),
(342, 81, 'uploads/14-03-2024/thittrau(1).jpg', 1710421007, 1710421007),
(343, 82, 'uploads/14-03-2024/duigadonglanh(1).jpg', 1710421058, 1710421058),
(344, 82, 'uploads/14-03-2024/pizzaga(1).jpg', 1710421058, 1710421058),
(345, 82, 'uploads/14-03-2024/pizzahaisan(1).jpg', 1710421058, 1710421058),
(346, 82, 'uploads/14-03-2024/thitbobachi(1).jpg', 1710421058, 1710421058),
(347, 82, 'uploads/14-03-2024/thitbocau(1).jpg', 1710421058, 1710421058),
(348, 82, 'uploads/14-03-2024/thitbotaytang(1).jpg', 1710421058, 1710421058),
(349, 82, 'uploads/14-03-2024/thitde(1).jpg', 1710421058, 1710421058),
(350, 82, 'uploads/14-03-2024/thitnacheo(1).jpg', 1710421058, 1710421058),
(351, 82, 'uploads/14-03-2024/thittrau(1).jpg', 1710421058, 1710421058);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `magiamgia`
--

CREATE TABLE `magiamgia` (
  `id` int(11) NOT NULL,
  `noidung` varchar(200) NOT NULL,
  `maxsudung` int(11) NOT NULL,
  `money` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `magiamgia`
--

INSERT INTO `magiamgia` (`id`, `noidung`, `maxsudung`, `money`) VALUES
(1, 'NGANHOANG', 1000, '10000'),
(2, 'TRUNGPER', 983, '10000');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `member`
--

CREATE TABLE `member` (
  `id` int(11) NOT NULL,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_time` int(11) NOT NULL,
  `last_updated` int(12) NOT NULL,
  `phone` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `member`
--

INSERT INTO `member` (`id`, `username`, `email`, `password`, `created_time`, `last_updated`, `phone`) VALUES
(1, 'admin', 'admin@gmail.com', '123', 1753185532, 1753185532, '09288222'),
(6, 'hehe', 'aqwe@game', '123', 1699100940, 1699100940, ''),
(15, 'hehe1', '123', '123', 1699100940, 1699100940, ''),
(18, 'chitrung', 'trungkg2247@gmail.com', '123', 1699100940, 1699100940, '1697099779'),
(25, 'trungper08@gmail.com', 'trungper08@gmail.com', '123', 1699100940, 1699100940, '+84327669552'),
(28, 'floren@gmail.com', 'floren@gmail.com', '123', 1699100940, 1699100940, '0327669551'),
(29, 'trung@gmail.com', 'trung@gmail.com', '123', 1699100940, 1699100940, '+84327669552'),
(31, 'phpadmin6', 'phpadmin2@gmail.com', '123', 1699100940, 1699100940, '+84327669551'),
(32, 'AKIIA1', 'ywte@gahsn', '123', 1699503067, 1699503067, '123'),
(33, 'dha,sjdas1', 'asdas@vfsdfs', '123', 1699503081, 1699503081, '0928833'),
(34, 'nhom8', '2254810287@gmail.com', '123', 1699761037, 1699761037, '1699761037'),
(36, 'admi4', 'admi4@gmail.com', '123', 1699761457, 1699761457, '1699761457'),
(37, 'Nguyễn Trần Chí Trung', 'nguyentranchitrung@gmail.com', '123', 0, 0, '09738983332');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(100) NOT NULL,
  `link` varchar(255) NOT NULL,
  `position` int(11) NOT NULL,
  `created_time` int(11) NOT NULL,
  `last_updated` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `menu`
--

INSERT INTO `menu` (`id`, `parent_id`, `name`, `link`, `position`, `created_time`, `last_updated`) VALUES
(23, 23, 'Hehe', 'home2.php', 1, 1698247290, 1699103773);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(500) NOT NULL,
  `note` text NOT NULL,
  `total` int(11) NOT NULL,
  `created_time` int(11) NOT NULL,
  `last_updated` int(11) NOT NULL,
  `demand` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `abate` varchar(60) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `madonhang` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `name`, `phone`, `address`, `note`, `total`, `created_time`, `last_updated`, `demand`, `abate`, `email`, `madonhang`) VALUES
(136, 'Trung', '0327669552', 'Bình  Chánh', 'Không nhận hàng', 10000, 1710042784, 1710042784, 'Phương thức thanh to', 'Chuyển khoản ngân hàng', 'trungper08@gmail.com', 'T61LKM'),
(137, 'hihi', '0393733', 'dsfsd', 'ádasd', 10000, 1710043126, 1710043126, '', 'Chuyển khoản ngân hàng', 'trungkg2247@gmail.com', 'KSMAWW'),
(138, 'ưerrwer', '234234', 'fdfgd', 'ádgfsdf', 500600, 1710044109, 1710044109, '', 'Thanh toán khi nhận hàng', 'sdfgff@gamdld.ggg', '15VJ78'),
(139, 'Thức', '0938333', 'Tân phú', 'hhhhhhhhhh', 100, 1710073311, 1710073311, '', 'Chuyển khoản ngân hàng', 'trungkg2247@gmail.com', '9GFDMG'),
(140, 'Tèo Em', '0928272222', 'Bình Chánh', 'k nhận hàng', 1000000, 1710073761, 1710073761, '', 'Thanh toán khi nhận hàng', 'trungkg2247@gmail.com', 'IHQHLH'),
(141, 'dd', '32423', '23423', '', 10200, 1710083736, 1710083736, '', 'Thanh toán khi nhận hàng', 'trungk2247@gmail.com', '4I57KU'),
(142, '11', '1111', '1111', '', 10000, 1710083817, 1710083817, '', 'Thanh toán khi nhận hàng', 'trungkg2247@gmail.com', 'L5WFMY'),
(143, '11', '2321323', '233', '', 10000, 1710083908, 1710083908, '', 'Thanh toán khi nhận hàng', 'trungkg2247@gmail.com', 'LNEUSG'),
(144, 'trungdeptrainhatsaigon', '0327669552', 'Bình Tân', '', 150000, 1710083984, 1710083984, '', 'Thanh toán khi nhận hàng', 'trungkg2247@gmail.com', 'FQGV0E'),
(145, '111', '111', '111', '', 100, 1710084222, 1710084222, '', 'Chuyển khoản ngân hàng', '', '7HWQC5'),
(146, 'TRUNG', '111119999', '1111111345345', 'k nhận hàng', 150000, 1710084540, 1710084540, '', 'Thanh toán khi nhận hàng', 'trungkg2247@gmail.com', 'C9VPA7'),
(147, 'trung', '0000992', 'BÌNH CHÁNH', '', 100000, 1710084624, 1710084624, '', 'Chuyển khoản ngân hàng', 'trungkg2247@gmail.com', 'QN7SBB'),
(148, 'tr', '23423', 'sdf', 'ưdasd', 10000, 1710085626, 1710085626, '', 'Thanh toán khi nhận hàng', 'trungkg2247@gmail.com', '33F3CO'),
(149, 'tr', '039933', 'sdf', 'K NHAN', 100000, 1710085820, 1710085820, '', 'Chuyển khoản ngân hàng', 'trungkg2247@gmail.com', '2IHGVQ'),
(150, 'tr', '3223', 'sfd', '', 250000, 1710086334, 1710086334, '', 'Thanh toán khi nhận hàng', '', 'MXN99V'),
(151, 'ưer', '234', 'dsf', '', 150000, 1710086389, 1710086389, '', 'Thanh toán khi nhận hàng', 'trungk2247@gmail.com', 'OYM7I5'),
(152, 'tr', '23423', 'dfg', '', 290000, 1710086451, 1710086451, '', 'Thanh toán khi nhận hàng', 'trungkg2247@gmail.com', '0ROOX2'),
(153, 'TR', '53453', 'SDF', '', 150100, 1710086576, 1710086576, '', 'Thanh toán khi nhận hàng', 'trungkg2247@gmail.com', '91AEYQ'),
(154, 'tr', '345345', 'sdf', '', 150000, 1710086669, 1710086669, '', 'Thanh toán khi nhận hàng', 'trungkg2247@gmail.com', '1YD1OG'),
(155, 'tr', '23423', '67', '', 150000, 1710086723, 1710086723, '', 'Chuyển khoản ngân hàng', 'trungkg2247@gmail.com', 'BJLF0P'),
(156, 'tr', '2323', 'tre', '', 150000, 1710086822, 1710086822, '', 'Thanh toán khi nhận hàng', 'trungkg2247@gmail.com', 'WE4W27'),
(157, 'tr', '344', 'tẻ', '', 10000, 1710086948, 1710086948, '', 'Thanh toán khi nhận hàng', 'trungkg2247@gmail.com', 'RD0ATQ'),
(158, 'TR', '2332', 'FDG', '', 320000, 1710088096, 1710088096, '', 'Thanh toán khi nhận hàng', 'trungkg2247@gmail.com', 'STK5J7'),
(159, 'Ngân', '0393333', 'ttt', '', 600100, 1710092056, 1710092056, '', 'Thanh toán khi nhận hàng', 'nganhoanglebao@gmail.com', 'ELZ7VL'),
(160, 'trung', '0327669552', 'Bình Chánh', 'sasd', 165500, 1710135771, 1710135771, '', 'Thanh toán khi nhận hàng', 'trungkg2247@gmail.com', 'Q4UEJL'),
(161, 'tr', 'ử324234', '23ef', '', 290000, 1710135973, 1710135973, '', 'Thanh toán khi nhận hàng', 'trungkg2247@gmail.com', 'CC2JWA');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_detail`
--

CREATE TABLE `order_detail` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `created_time` int(11) NOT NULL,
  `last_updated` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `order_detail`
--

INSERT INTO `order_detail` (`id`, `order_id`, `product_id`, `quantity`, `price`, `created_time`, `last_updated`) VALUES
(138, 136, 55, 1, 10000, 1710042784, 1710042784),
(139, 137, 55, 1, 10000, 1710043126, 1710043126),
(140, 138, 54, 6, 100, 1710044109, 1710044109),
(141, 138, 57, 5, 100000, 1710044109, 1710044109),
(142, 139, 54, 1, 100, 1710073311, 1710073311),
(143, 140, 59, 10, 100000, 1710073761, 1710073761),
(144, 141, 54, 2, 100, 1710083736, 1710083736),
(145, 141, 55, 1, 10000, 1710083736, 1710083736),
(146, 142, 55, 1, 10000, 1710083817, 1710083817),
(147, 143, 55, 1, 10000, 1710083908, 1710083908),
(148, 144, 56, 1, 150000, 1710083984, 1710083984),
(149, 145, 54, 1, 100, 1710084222, 1710084222),
(150, 146, 56, 1, 150000, 1710084540, 1710084540),
(151, 147, 59, 1, 100000, 1710084624, 1710084624),
(152, 148, 55, 1, 10000, 1710085626, 1710085626),
(153, 149, 59, 1, 100000, 1710085820, 1710085820),
(154, 150, 56, 1, 150000, 1710086334, 1710086334),
(155, 150, 57, 1, 100000, 1710086334, 1710086334),
(156, 151, 56, 1, 150000, 1710086389, 1710086389),
(157, 152, 63, 1, 290000, 1710086451, 1710086451),
(158, 153, 54, 1, 100, 1710086576, 1710086576),
(159, 153, 56, 1, 150000, 1710086576, 1710086576),
(160, 154, 56, 1, 150000, 1710086669, 1710086669),
(161, 155, 56, 1, 150000, 1710086723, 1710086723),
(162, 156, 56, 1, 150000, 1710086822, 1710086822),
(163, 157, 55, 1, 10000, 1710086948, 1710086948),
(164, 158, 55, 2, 10000, 1710088096, 1710088096),
(165, 158, 56, 2, 150000, 1710088096, 1710088096),
(166, 159, 54, 1, 100, 1710092056, 1710092056),
(167, 159, 56, 4, 150000, 1710092056, 1710092056),
(168, 160, 54, 5, 100, 1710135771, 1710135771),
(169, 160, 56, 1, 150000, 1710135771, 1710135771),
(170, 160, 60, 1, 15000, 1710135771, 1710135771),
(171, 161, 64, 1, 290000, 1710135973, 1710135973);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `privilege`
--

CREATE TABLE `privilege` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `url_match` varchar(255) NOT NULL,
  `created_time` int(11) NOT NULL,
  `last_updated` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `privilege`
--

INSERT INTO `privilege` (`id`, `group_id`, `name`, `url_match`, `created_time`, `last_updated`) VALUES
(1, 1, 'Danh sách sản phẩm', 'product_listing\\.php$', 1698075641, 1698075641),
(2, 1, 'Xóa sản phẩm', 'product_delete\\.php\\?id=\\d+$', 1698075641, 1698075641),
(3, 1, 'Sửa sản phẩm', 'product_editing\\.php\\?id=\\d+$|product_editing\\.php\\?action=edit&id=\\d+$', 1698075641, 1698075641),
(4, 1, 'Thêm sản phẩm', 'product_editing\\.php$|product_editing\\.php\\?action=add$', 1698075641, 1698075641),
(5, 1, 'Copy sản phẩm', 'product_editing\\.php\\?id=\\d+&task=copy', 1698075641, 1698075641),
(6, 4, 'Danh sách danh mục', 'menu_listing\\.php$', 1698075641, 1698075641),
(7, 4, 'Xóa danh mục', 'menu_delete\\.php\\?id=\\d+$', 1698075641, 1698075641),
(8, 4, 'Sửa danh mục', 'menu_editing\\.php\\?id=\\d+$', 1698075641, 1698075641),
(9, 4, 'Thêm danh mục', 'menu_editing\\.php$', 1698075641, 1698075641),
(10, 4, 'Copy danh mục', 'menu_editing\\.php\\?id=\\d+&task=copy', 1698075641, 1698075641),
(11, 3, 'Danh sách đơn hàng', 'order_listing\\.php$', 1698075641, 1698075641),
(12, 5, 'Phân quyền nhân viên', 'user_privilege\\.php\\?id=\\d+$|user_privilege\\.php\\?action=save$', 1698075641, 1698075641),
(13, 2, 'Danh sách thành viên', 'member_listing\\.php$', 1698075641, 1698075641),
(14, 2, 'Xóa thành viên', 'member_delete\\.php\\?id=\\d+$', 1698075641, 1698075641),
(15, 2, 'Sửa thành viên', 'member_editing\\.php\\?id=\\d+$|member_editing\\.php\\?action=edit&id=\\d+$', 1698075641, 1698075641),
(16, 2, 'Thêm thành viên', 'member_editing\\.php$|member_editing\\.php\\?action=add$', 1698075641, 1698075641),
(17, 5, 'Danh sách nhân viên', 'user_listing\\.php$', 1698075641, 1698075641),
(18, 5, 'Xóa nhân viên', 'user_delete\\.php\\?id=\\d+$', 1698075641, 1698075641),
(19, 5, 'Sửa nhân viên', 'user_editing\\.php\\?id=\\d+$|user_editing\\.php\\?action=edit&id=\\d+$', 1698075641, 1698075641),
(20, 5, 'Thêm nhân viên', 'user_editing\\.php$|user_editing\\.php\\?action=add$', 1698075641, 1698075641),
(24, 7, 'Tổng doanh thu', 'sum\\.php', 1753185532, 1753185532);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `privilege_group`
--

CREATE TABLE `privilege_group` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `position` int(11) NOT NULL,
  `created_time` int(11) NOT NULL,
  `last_updated` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `privilege_group`
--

INSERT INTO `privilege_group` (`id`, `name`, `position`, `created_time`, `last_updated`) VALUES
(1, 'Sản phẩm', 2, 1698075641, 1698075641),
(2, 'Thành viên', 4, 1698075641, 1698075641),
(3, 'Đơn hàng', 3, 1698075641, 1698075641),
(4, 'Danh mục', 1, 1698075641, 1698075641),
(5, 'Nhân viên', 0, 1698075641, 1698075641),
(7, 'Tổng doanh thu', 7, 1753185532, 1753185532);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `price` float NOT NULL,
  `quantity` int(11) NOT NULL,
  `content` text NOT NULL,
  `created_time` int(11) NOT NULL,
  `last_updated` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `product`
--

INSERT INTO `product` (`id`, `name`, `image`, `price`, `quantity`, `content`, `created_time`, `last_updated`) VALUES
(53, 'Rau muốn', 'uploads/09-03-2024/product-list-icon.jpg', 10000, 100, '', 1709992611, 1709992611),
(54, 'Rau dền', 'uploads/09-03-2024/rauden.jpg', 100, 12, '', 1709992679, 1709992679),
(55, 'Sữa', 'uploads/09-03-2024/raudiepca(1).jpg', 10000, 100, '<p><strong>Sữa</strong><span style=\"color:rgb(32, 33, 34); font-family:sans-serif; font-size:14px\">&nbsp;l&agrave; một chất lỏng m&agrave;u trắng đục được tạo ra bởi&nbsp;</span><a href=\"https://vi.wikipedia.org/wiki/Gi%E1%BB%91ng_c%C3%A1i\" style=\"text-decoration-line: none; color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\" title=\"Giống cái\">giống c&aacute;i</a><span style=\"color:rgb(32, 33, 34); font-family:sans-serif; font-size:14px\">&nbsp;của&nbsp;</span><a href=\"https://vi.wikipedia.org/wiki/L%E1%BB%9Bp_Th%C3%BA\" style=\"text-decoration-line: none; color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\" title=\"Lớp Thú\">động vật c&oacute; v&uacute;</a><span style=\"color:rgb(32, 33, 34); font-family:sans-serif; font-size:14px\">&nbsp;(bao gồm cả&nbsp;</span><a href=\"https://vi.wikipedia.org/wiki/B%E1%BB%99_%C4%90%C6%A1n_huy%E1%BB%87t\" style=\"text-decoration-line: none; color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\" title=\"Bộ Đơn huyệt\">động vật đơn huyệt</a><span style=\"color:rgb(32, 33, 34); font-family:sans-serif; font-size:14px\">). Khả năng tạo ra sữa l&agrave; một trong những đặc điểm ph&acirc;n biệt&nbsp;</span><a class=\"new\" href=\"https://vi.wikipedia.org/w/index.php?title=L%E1%BB%9Bp_%C4%91%E1%BB%99ng_v%E1%BA%ADt_c%C3%B3_v%C3%BA&amp;action=edit&amp;redlink=1\" style=\"text-decoration-line: none; color: rgb(215, 51, 51); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\" title=\"Lớp động vật có vú (trang không tồn tại)\">lớp động vật c&oacute; v&uacute;</a><span style=\"color:rgb(32, 33, 34); font-family:sans-serif; font-size:14px\">&nbsp;với c&aacute;c lớp động vật kh&aacute;c. Sữa được tạo ra l&agrave;m nguồn dinh dưỡng ban đầu cho c&aacute;c con&nbsp;</span><a href=\"https://vi.wikipedia.org/wiki/S%C6%A1_sinh\" style=\"text-decoration-line: none; color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\" title=\"Sơ sinh\">sơ sinh</a><span style=\"color:rgb(32, 33, 34); font-family:sans-serif; font-size:14px\">&nbsp;trước khi ch&uacute;ng c&oacute; thể&nbsp;</span><a href=\"https://vi.wikipedia.org/wiki/Ti%C3%AAu_h%C3%B3a\" style=\"text-decoration-line: none; color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\" title=\"Tiêu hóa\">ti&ecirc;u h&oacute;a</a><span style=\"color:rgb(32, 33, 34); font-family:sans-serif; font-size:14px\">&nbsp;c&aacute;c loại thực phẩm kh&aacute;c.</span></p>\r\n', 1710000678, 1710042715),
(56, 'Sữa chua', 'uploads/09-03-2024/suachua.jpg', 150000, 10, '', 1710005190, 1710005190),
(57, 'Rau dền', 'uploads/09-03-2024/rauden(1).jpg', 100000, 100, '', 1710005222, 1710005222),
(58, 'Củ hành', 'uploads/10-03-2024/hanhtay.jpg', 10000, 101, '', 1710046766, 1710046924),
(59, 'Pizza', 'uploads/10-03-2024/bongcaitrang.jpg', 100000, 10, '<p><span style=\"color:rgb(77, 81, 86); font-family:arial,sans-serif; font-size:14px\">Pizza, Tiếng La tinh thường đọc l&agrave; Pi-da, l&agrave; một loại b&aacute;nh dẹt, tr&ograve;n được chế biến từ bột m&igrave;, nấm men, ... sau khi đ&atilde; được ủ bột để nghỉ &iacute;t nhất 24 tiếng đồng hồ v&agrave; nh&agrave;o nặn th&agrave;nh loại b&aacute;nh c&oacute; h&igrave;nh dạng tr&ograve;n v&agrave; dẹt, v&agrave; được cho v&agrave;o l&ograve; nướng ch&iacute;n trước khi ăn.</span></p>\r\n', 1710046802, 1710046943),
(60, 'Rau diếp cá', 'uploads/10-03-2024/raudiepca.jpg', 15000, 100, '<p><span style=\"color:rgb(77, 81, 86); font-family:arial,sans-serif; font-size:14px\">Diếp c&aacute; hay giấp c&aacute;, dấp c&aacute;, l&aacute; giấp, rau giấp, rau vẹn, ngư tinh thảo, tập th&aacute;i l&agrave; một lo&agrave;i thực vật thuộc họ Saururaceae.</span></p>\r\n', 1710046995, 1710046995),
(61, 'Cánh Gà', 'uploads/10-03-2024/canhga(1).jpg', 290000, 100, '<p><span style=\"color:#000000\"><strong>C&aacute;nh g&agrave; chi&ecirc;n</strong><span style=\"font-family:sans-serif; font-size:14px\">&nbsp;(Buffalo wing) hay c&ograve;n gọi l&agrave;&nbsp;</span><strong>c&aacute;nh g&agrave; r&aacute;n gi&ograve;n</strong><span style=\"font-family:sans-serif; font-size:14px\">&nbsp;l&agrave; một&nbsp;</span></span><a class=\"mw-redirect\" href=\"https://vi.wikipedia.org/wiki/M%C3%B3n_%C4%83n\" style=\"text-decoration-line: none; color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\" title=\"Món ăn\"><span style=\"color:#000000\">m&oacute;n ăn</span></a><span style=\"color:#000000\"><span style=\"font-family:sans-serif; font-size:14px\">&nbsp;c&oacute; nguồn gốc từ&nbsp;</span></span><a class=\"mw-redirect\" href=\"https://vi.wikipedia.org/wiki/%E1%BA%A8m_th%E1%BB%B1c_Hoa_K%E1%BB%B3\" style=\"text-decoration-line: none; color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\" title=\"Ẩm thực Hoa Kỳ\"><span style=\"color:#000000\">ẩm thực Hoa Kỳ</span></a><span style=\"color:#000000\"><span style=\"font-family:sans-serif; font-size:14px\">, m&oacute;n ăn n&agrave;y l&agrave; một phần&nbsp;</span></span><a class=\"new\" href=\"https://vi.wikipedia.org/w/index.php?title=C%C3%A1nh_g%C3%A0&amp;action=edit&amp;redlink=1\" style=\"text-decoration-line: none; color: rgb(215, 51, 51); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\" title=\"Cánh gà (trang không tồn tại)\"><span style=\"color:#000000\">c&aacute;nh g&agrave;</span></a><span style=\"color:#000000\"><span style=\"font-family:sans-serif; font-size:14px\">&nbsp;thường được&nbsp;</span></span><a class=\"new\" href=\"https://vi.wikipedia.org/w/index.php?title=Chi%C3%AAn_gi%C3%B2n&amp;action=edit&amp;redlink=1\" style=\"text-decoration-line: none; color: rgb(215, 51, 51); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\" title=\"Chiên giòn (trang không tồn tại)\"><span style=\"color:#000000\">chi&ecirc;n gi&ograve;n</span></a><span style=\"color:#000000\"><span style=\"font-family:sans-serif; font-size:14px\">&nbsp;(</span></span><a href=\"https://vi.wikipedia.org/wiki/Chi%C3%AAn_ng%E1%BA%ADp_d%E1%BA%A7u\" style=\"text-decoration-line: none; color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\" title=\"Chiên ngập dầu\"><span style=\"color:#000000\">chi&ecirc;n ngập dầu</span></a><span style=\"color:#000000\"><span style=\"font-family:sans-serif; font-size:14px\">) sau đ&oacute; phủ một loại&nbsp;</span></span><a class=\"mw-redirect\" href=\"https://vi.wikipedia.org/wiki/N%C6%B0%E1%BB%9Bc_s%E1%BB%91t\" style=\"text-decoration-line: none; color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\" title=\"Nước sốt\"><span style=\"color:#000000\">nước sốt</span></a><span style=\"color:#000000\"><span style=\"font-family:sans-serif; font-size:14px\">&nbsp;bao gồm&nbsp;</span></span><a class=\"new\" href=\"https://vi.wikipedia.org/w/index.php?title=N%C6%B0%E1%BB%9Bc_s%E1%BB%91t_%E1%BB%9Bt_cayenne_cay&amp;action=edit&amp;redlink=1\" style=\"text-decoration-line: none; color: rgb(215, 51, 51); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\" title=\"Nước sốt ớt cayenne cay (trang không tồn tại)\"><span style=\"color:#000000\">nước sốt ớt cayenne cay</span></a><span style=\"color:#000000\"><span style=\"font-family:sans-serif; font-size:14px\">&nbsp;v&agrave; bơ tan chảy trước khi ăn. C&aacute;nh chi&ecirc;n được ph&aacute;t minh v&agrave;o năm&nbsp;</span></span><a href=\"https://vi.wikipedia.org/wiki/1964\" style=\"text-decoration-line: none; color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\" title=\"1964\"><span style=\"color:#000000\">1964</span></a><span style=\"color:#000000\"><span style=\"font-family:sans-serif; font-size:14px\">&nbsp;tại&nbsp;</span></span><a class=\"new\" href=\"https://vi.wikipedia.org/w/index.php?title=Anchor_Bar&amp;action=edit&amp;redlink=1\" style=\"text-decoration-line: none; color: rgb(215, 51, 51); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\" title=\"Anchor Bar (trang không tồn tại)\"><span style=\"color:#000000\">Anchor Bar</span></a><span style=\"color:#000000\"><span style=\"font-family:sans-serif; font-size:14px\">&nbsp;ở Buffalo,&nbsp;</span></span><a class=\"mw-redirect mw-disambig\" href=\"https://vi.wikipedia.org/wiki/New_York\" style=\"text-decoration-line: none; color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\" title=\"New York\"><span style=\"color:#000000\">New York</span></a><span style=\"color:#000000\"><span style=\"font-family:sans-serif; font-size:14px\">&nbsp;bởi&nbsp;</span></span><a class=\"new\" href=\"https://vi.wikipedia.org/w/index.php?title=Teressa_Bellissimo&amp;action=edit&amp;redlink=1\" style=\"text-decoration-line: none; color: rgb(215, 51, 51); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\" title=\"Teressa Bellissimo (trang không tồn tại)\"><span style=\"color:#000000\">Teressa Bellissimo</span></a><span style=\"color:#000000\"><span style=\"font-family:sans-serif; font-size:14px\">. Ch&uacute;ng thường được phục vụ&nbsp;</span></span><a class=\"new\" href=\"https://vi.wikipedia.org/w/index.php?title=N%C3%B3ng&amp;action=edit&amp;redlink=1\" style=\"text-decoration-line: none; color: rgb(215, 51, 51); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\" title=\"Nóng (trang không tồn tại)\"><span style=\"color:#000000\">n&oacute;ng</span></a><span style=\"color:#000000\"><span style=\"font-family:sans-serif; font-size:14px\">&nbsp;gi&ograve;n, c&ugrave;ng với&nbsp;</span></span><a href=\"https://vi.wikipedia.org/wiki/C%E1%BA%A7n_t%C3%A2y\" style=\"text-decoration-line: none; color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\" title=\"Cần tây\"><span style=\"color:#000000\">cần t&acirc;y</span></a><span style=\"color:#000000\"><span style=\"font-family:sans-serif; font-size:14px\">&nbsp;gậy v&agrave; hoặc&nbsp;</span></span><a href=\"https://vi.wikipedia.org/wiki/C%C3%A0_r%E1%BB%91t\" style=\"text-decoration-line: none; color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\" title=\"Cà rốt\"><span style=\"color:#000000\">c&agrave; rốt</span></a><span style=\"color:#000000\"><span style=\"font-family:sans-serif; font-size:14px\">&nbsp;gậy với một trong hai loại ph&ocirc; mai xanh.</span></span></p>\r\n', 1710047047, 1710090018),
(62, 'Đùi gà', 'uploads/10-03-2024/duiga(1).jpg', 10000, 100, '<p><strong>Đ&ugrave;i g&agrave;&nbsp;</strong><span style=\"color:rgb(32, 33, 34); font-family:sans-serif; font-size:14px\">(Buffalo wing) hay c&ograve;n gọi l&agrave;&nbsp;</span><strong>c&aacute;nh g&agrave; r&aacute;n gi&ograve;n</strong><span style=\"color:rgb(32, 33, 34); font-family:sans-serif; font-size:14px\">&nbsp;l&agrave; một&nbsp;</span><a class=\"mw-redirect\" href=\"https://vi.wikipedia.org/wiki/M%C3%B3n_%C4%83n\" style=\"text-decoration-line: none; color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\" title=\"Món ăn\">m&oacute;n ăn</a><span style=\"color:rgb(32, 33, 34); font-family:sans-serif; font-size:14px\">&nbsp;c&oacute; nguồn gốc từ&nbsp;</span><a class=\"mw-redirect\" href=\"https://vi.wikipedia.org/wiki/%E1%BA%A8m_th%E1%BB%B1c_Hoa_K%E1%BB%B3\" style=\"text-decoration-line: none; color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\" title=\"Ẩm thực Hoa Kỳ\">ẩm thực Hoa Kỳ</a><span style=\"color:rgb(32, 33, 34); font-family:sans-serif; font-size:14px\">, m&oacute;n ăn n&agrave;y l&agrave; một phần&nbsp;</span><a class=\"new\" href=\"https://vi.wikipedia.org/w/index.php?title=C%C3%A1nh_g%C3%A0&amp;action=edit&amp;redlink=1\" style=\"text-decoration-line: none; color: rgb(215, 51, 51); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\" title=\"Cánh gà (trang không tồn tại)\">c&aacute;nh g&agrave;</a><span style=\"color:rgb(32, 33, 34); font-family:sans-serif; font-size:14px\">&nbsp;thường được&nbsp;</span><a class=\"new\" href=\"https://vi.wikipedia.org/w/index.php?title=Chi%C3%AAn_gi%C3%B2n&amp;action=edit&amp;redlink=1\" style=\"text-decoration-line: none; color: rgb(215, 51, 51); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\" title=\"Chiên giòn (trang không tồn tại)\">chi&ecirc;n gi&ograve;n</a><span style=\"color:rgb(32, 33, 34); font-family:sans-serif; font-size:14px\">&nbsp;(</span><a href=\"https://vi.wikipedia.org/wiki/Chi%C3%AAn_ng%E1%BA%ADp_d%E1%BA%A7u\" style=\"text-decoration-line: none; color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\" title=\"Chiên ngập dầu\">chi&ecirc;n ngập dầu</a><span style=\"color:rgb(32, 33, 34); font-family:sans-serif; font-size:14px\">) sau đ&oacute; phủ một loại&nbsp;</span><a class=\"mw-redirect\" href=\"https://vi.wikipedia.org/wiki/N%C6%B0%E1%BB%9Bc_s%E1%BB%91t\" style=\"text-decoration-line: none; color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\" title=\"Nước sốt\">nước sốt</a><span style=\"color:rgb(32, 33, 34); font-family:sans-serif; font-size:14px\">&nbsp;bao gồm&nbsp;</span><a class=\"new\" href=\"https://vi.wikipedia.org/w/index.php?title=N%C6%B0%E1%BB%9Bc_s%E1%BB%91t_%E1%BB%9Bt_cayenne_cay&amp;action=edit&amp;redlink=1\" style=\"text-decoration-line: none; color: rgb(215, 51, 51); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\" title=\"Nước sốt ớt cayenne cay (trang không tồn tại)\">nước sốt ớt cayenne cay</a><span style=\"color:rgb(32, 33, 34); font-family:sans-serif; font-size:14px\">&nbsp;v&agrave; bơ tan chảy trước khi ăn. C&aacute;nh chi&ecirc;n được ph&aacute;t minh v&agrave;o năm&nbsp;</span><a href=\"https://vi.wikipedia.org/wiki/1964\" style=\"text-decoration-line: none; color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\" title=\"1964\">1964</a><span style=\"color:rgb(32, 33, 34); font-family:sans-serif; font-size:14px\">&nbsp;tại&nbsp;</span><a class=\"new\" href=\"https://vi.wikipedia.org/w/index.php?title=Anchor_Bar&amp;action=edit&amp;redlink=1\" style=\"text-decoration-line: none; color: rgb(215, 51, 51); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\" title=\"Anchor Bar (trang không tồn tại)\">Anchor Bar</a><span style=\"color:rgb(32, 33, 34); font-family:sans-serif; font-size:14px\">&nbsp;ở Buffalo,&nbsp;</span><a class=\"mw-redirect mw-disambig\" href=\"https://vi.wikipedia.org/wiki/New_York\" style=\"text-decoration-line: none; color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\" title=\"New York\">New York</a><span style=\"color:rgb(32, 33, 34); font-family:sans-serif; font-size:14px\">&nbsp;bởi&nbsp;</span><a class=\"new\" href=\"https://vi.wikipedia.org/w/index.php?title=Teressa_Bellissimo&amp;action=edit&amp;redlink=1\" style=\"text-decoration-line: none; color: rgb(215, 51, 51); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\" title=\"Teressa Bellissimo (trang không tồn tại)\">Teressa Bellissimo</a><span style=\"color:rgb(32, 33, 34); font-family:sans-serif; font-size:14px\">. Ch&uacute;ng thường được phục vụ&nbsp;</span><a class=\"new\" href=\"https://vi.wikipedia.org/w/index.php?title=N%C3%B3ng&amp;action=edit&amp;redlink=1\" style=\"text-decoration-line: none; color: rgb(215, 51, 51); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\" title=\"Nóng (trang không tồn tại)\">n&oacute;ng</a><span style=\"color:rgb(32, 33, 34); font-family:sans-serif; font-size:14px\">&nbsp;gi&ograve;n, c&ugrave;ng với&nbsp;</span><a href=\"https://vi.wikipedia.org/wiki/C%E1%BA%A7n_t%C3%A2y\" style=\"text-decoration-line: none; color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\" title=\"Cần tây\">cần t&acirc;y</a><span style=\"color:rgb(32, 33, 34); font-family:sans-serif; font-size:14px\">&nbsp;gậy v&agrave; hoặc&nbsp;</span><a href=\"https://vi.wikipedia.org/wiki/C%C3%A0_r%E1%BB%91t\" style=\"text-decoration-line: none; color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\" title=\"Cà rốt\">c&agrave; rốt</a><span style=\"color:rgb(32, 33, 34); font-family:sans-serif; font-size:14px\">&nbsp;gậy với một trong hai loại ph&ocirc; mai xanh.</span></p>\r\n', 1710047132, 1710047132),
(63, 'Thịt bò', 'uploads/10-03-2024/thitbobachi.jpg', 290000, 100, '<p><strong>Thịt b&ograve;</strong><span style=\"color:rgb(32, 33, 34); font-family:sans-serif; font-size:14px\">&nbsp;l&agrave; thịt của con&nbsp;</span><a href=\"https://vi.wikipedia.org/wiki/B%C3%B2\" style=\"text-decoration-line: none; color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\" title=\"Bò\">b&ograve;</a><span style=\"color:rgb(32, 33, 34); font-family:sans-serif; font-size:14px\">&nbsp;(th&ocirc;ng dụng l&agrave; loại&nbsp;</span><a href=\"https://vi.wikipedia.org/wiki/B%C3%B2_th%E1%BB%8Bt\" style=\"text-decoration-line: none; color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\" title=\"Bò thịt\">b&ograve; thịt</a><span style=\"color:rgb(32, 33, 34); font-family:sans-serif; font-size:14px\">). Đ&acirc;y l&agrave; thực phẩm&nbsp;</span><a href=\"https://vi.wikipedia.org/wiki/Gia_s%C3%BAc\" style=\"text-decoration-line: none; color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\" title=\"Gia súc\">gia s&uacute;c</a><span style=\"color:rgb(32, 33, 34); font-family:sans-serif; font-size:14px\">&nbsp;phổ biến tr&ecirc;n thế giới, c&ugrave;ng với&nbsp;</span><a href=\"https://vi.wikipedia.org/wiki/Th%E1%BB%8Bt_l%E1%BB%A3n\" style=\"text-decoration-line: none; color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\" title=\"Thịt lợn\">thịt lợn</a><span style=\"color:rgb(32, 33, 34); font-family:sans-serif; font-size:14px\">, được chế biến v&agrave; sử dụng theo nhiều c&aacute;ch, trong nhiều nền văn ho&aacute; v&agrave; t&ocirc;n gi&aacute;o kh&aacute;c nhau, c&ugrave;ng với thịt lợn v&agrave;&nbsp;</span><a href=\"https://vi.wikipedia.org/wiki/Th%E1%BB%8Bt_g%C3%A0\" style=\"text-decoration-line: none; color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\" title=\"Thịt gà\">thịt g&agrave;</a><span style=\"color:rgb(32, 33, 34); font-family:sans-serif; font-size:14px\">, thịt b&ograve; l&agrave; một trong những loại thịt được&nbsp;</span><a class=\"mw-redirect\" href=\"https://vi.wikipedia.org/wiki/Lo%C3%A0i_ng%C6%B0%E1%BB%9Di\" style=\"text-decoration-line: none; color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\" title=\"Loài người\">con người</a><span style=\"color:rgb(32, 33, 34); font-family:sans-serif; font-size:14px\">&nbsp;sử dụng nhiều nhất.</span></p>\r\n', 1710047168, 1710047204),
(64, 'Thịt trâu', 'uploads/10-03-2024/thittrau.jpg', 290000, 100, '<p><span style=\"color:#000000\">Thịt tr&acirc;u<span style=\"font-family:sans-serif; font-size:14px\">&nbsp;l&agrave;&nbsp;</span></span><a href=\"https://vi.wikipedia.org/wiki/Th%E1%BB%8Bt\" style=\"text-decoration-line: none; color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\" title=\"Thịt\"><span style=\"color:#000000\">thịt</span></a><span style=\"color:#000000\"><span style=\"font-family:sans-serif; font-size:14px\">&nbsp;của c&aacute;c lo&agrave;i&nbsp;</span></span><a href=\"https://vi.wikipedia.org/wiki/Tr%C3%A2u\" style=\"text-decoration-line: none; color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\" title=\"Trâu\"><span style=\"color:#000000\">tr&acirc;u nh&agrave;</span></a><span style=\"color:#000000\"><span style=\"font-family:sans-serif; font-size:14px\">. Thịt tr&acirc;u l&agrave; nguồn&nbsp;</span></span><a href=\"https://vi.wikipedia.org/wiki/Th%E1%BB%B1c_ph%E1%BA%A9m_thi%E1%BA%BFt_y%E1%BA%BFu\" style=\"text-decoration-line: none; color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\" title=\"Thực phẩm thiết yếu\"><span style=\"color:#000000\">thực phẩm quan trọng đối</span></a><span style=\"color:#000000\"><span style=\"font-family:sans-serif; font-size:14px\">&nbsp;với c&aacute;c cư d&acirc;n v&ugrave;ng&nbsp;</span></span><a href=\"https://vi.wikipedia.org/wiki/Nam_%C3%81\" style=\"text-decoration-line: none; color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\" title=\"Nam Á\"><span style=\"color:#000000\">Nam &Aacute;</span></a><span style=\"color:#000000\"><span style=\"font-family:sans-serif; font-size:14px\">&nbsp;v&agrave;&nbsp;</span></span><a href=\"https://vi.wikipedia.org/wiki/%C4%90%C3%B4ng_Nam_%C3%81\" style=\"text-decoration-line: none; color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\" title=\"Đông Nam Á\"><span style=\"color:#000000\">Đ&ocirc;ng Nam &Aacute;</span></a><span style=\"color:#000000\"><span style=\"font-family:sans-serif; font-size:14px\">&nbsp;nơi người ta&nbsp;</span></span><a href=\"https://vi.wikipedia.org/wiki/Nu%C3%B4i_tr%C3%A2u\" style=\"text-decoration-line: none; color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\" title=\"Nuôi trâu\"><span style=\"color:#000000\">nu&ocirc;i tr&acirc;u</span></a><span style=\"color:#000000\"><span style=\"font-family:sans-serif; font-size:14px\">&nbsp;phổ biến. Về gi&aacute; trị&nbsp;</span></span><a href=\"https://vi.wikipedia.org/wiki/Dinh_d%C6%B0%E1%BB%A1ng\" style=\"text-decoration-line: none; color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\" title=\"Dinh dưỡng\"><span style=\"color:#000000\">dinh dưỡng</span></a><span style=\"color:#000000\"><span style=\"font-family:sans-serif; font-size:14px\">, thịt tr&acirc;u kh&ocirc;ng hề thua k&eacute;m những loại thịt kh&aacute;c như&nbsp;</span></span><a href=\"https://vi.wikipedia.org/wiki/Th%E1%BB%8Bt_b%C3%B2\" style=\"text-decoration-line: none; color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\" title=\"Thịt bò\"><span style=\"color:#000000\">thịt b&ograve;</span></a><span style=\"color:#000000\"><span style=\"font-family:sans-serif; font-size:14px\">&nbsp;hay&nbsp;</span></span><a class=\"mw-redirect\" href=\"https://vi.wikipedia.org/wiki/Th%E1%BB%8Bt_heo\" style=\"color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\" title=\"\"><span style=\"color:#000000\">thịt heo</span></a><span style=\"color:#000000\"><span style=\"font-family:sans-serif; font-size:14px\">, thậm ch&iacute; c&ograve;n c&oacute; phần ưu thế hơn như thịt tr&acirc;u c&oacute; ưu điểm &iacute;t mỡ, h&agrave;m lượng sắt cao, c&oacute; t&iacute;nh h&agrave;n nhưng kh&ocirc;ng độc, th&iacute;ch hợp để chế biến m&oacute;n ăn trong m&ugrave;a n&oacute;ng</span></span><sup><a href=\"https://vi.wikipedia.org/wiki/Th%E1%BB%8Bt_tr%C3%A2u#cite_note-source0-1\" style=\"text-decoration-line: none; color: rgb(51, 102, 204); background: none; overflow-wrap: break-word;\"><span style=\"color:#000000\">[1]</span></a></sup><span style=\"color:#000000\"><span style=\"font-family:sans-serif; font-size:14px\">. Thịt tr&acirc;u c&ugrave;ng&nbsp;</span></span><a class=\"new\" href=\"https://vi.wikipedia.org/w/index.php?title=S%E1%BB%ABng_tr%C3%A2u&amp;action=edit&amp;redlink=1\" style=\"text-decoration-line: none; color: rgb(215, 51, 51); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\" title=\"Sừng trâu (trang không tồn tại)\"><span style=\"color:#000000\">sừng tr&acirc;u</span></a><span style=\"color:#000000\"><span style=\"font-family:sans-serif; font-size:14px\">,&nbsp;</span></span><a class=\"mw-redirect\" href=\"https://vi.wikipedia.org/wiki/S%E1%BB%AFa_tr%C3%A2u\" style=\"text-decoration-line: none; color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\" title=\"Sữa trâu\"><span style=\"color:#000000\">sữa tr&acirc;u</span></a><span style=\"color:#000000\"><span style=\"font-family:sans-serif; font-size:14px\">, răng tr&acirc;u, nhiều bộ phận kh&aacute;c như&nbsp;</span></span><a class=\"new\" href=\"https://vi.wikipedia.org/w/index.php?title=Da_tr%C3%A2u&amp;action=edit&amp;redlink=1\" style=\"text-decoration-line: none; color: rgb(215, 51, 51); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\" title=\"Da trâu (trang không tồn tại)\"><span style=\"color:#000000\">da tr&acirc;u</span></a><span style=\"color:#000000\"><span style=\"font-family:sans-serif; font-size:14px\">,&nbsp;</span></span><a href=\"https://vi.wikipedia.org/wiki/N%E1%BB%99i_t%E1%BA%A1ng\" style=\"text-decoration-line: none; color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\" title=\"Nội tạng\"><span style=\"color:#000000\">nội tạng</span></a><span style=\"color:#000000\"><span style=\"font-family:sans-serif; font-size:14px\">&nbsp;</span></span><a href=\"https://vi.wikipedia.org/wiki/Gan_(th%E1%BB%B1c_ph%E1%BA%A9m)\" style=\"text-decoration-line: none; color: rgb(51, 102, 204); background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; overflow-wrap: break-word; font-family: sans-serif; font-size: 14px;\" title=\"Gan (thực phẩm)\"><span style=\"color:#000000\">gan</span></a><span style=\"color:#000000\"><span style=\"font-family:sans-serif; font-size:14px\">, l&aacute; l&aacute;ch, dạ d&agrave;y tr&acirc;u đều được d&ugrave;ng. So với thịt b&ograve; th&igrave; thực tế thịt tr&acirc;u v&agrave; thịt b&ograve; c&oacute; gi&aacute; trị dinh dưỡng v&agrave; độ ngon cũng ngang nhau</span></span><sup><a href=\"https://vi.wikipedia.org/wiki/Th%E1%BB%8Bt_tr%C3%A2u#cite_note-source1-2\" style=\"text-decoration-line: none; color: rgb(51, 102, 204); background: none; overflow-wrap: break-word;\"><span style=\"color:#000000\">[2]</span></a></sup><span style=\"color:#000000\"><span style=\"font-family:sans-serif; font-size:14px\">.</span></span></p>\r\n', 1710047244, 1710089919),
(65, 'ádasd', 'uploads/14-03-2024/nuocepcam.jpg', 123231, 12, '', 1710420638, 1710420638),
(66, 'ads', 'uploads/14-03-2024/suatuoi2(1).jpg', 123, 123, '', 1710420651, 1710420651),
(67, '23dsfd', 'uploads/14-03-2024/raudiepca.jpg', 322222, 323, '', 1710420674, 1710420674),
(68, 'ádasd', 'uploads/14-03-2024/raungof(1).jpg', 2131, 12, '', 1710420686, 1710420686),
(69, 'SDFSD', 'uploads/14-03-2024/raumuong(1).jpg', 234323, 23, '', 1710420705, 1710420705),
(70, 'ƯERWE', 'uploads/14-03-2024/xalachson(1).jpg', 23, 23, '', 1710420722, 1710420722),
(71, '2332EWW', 'uploads/14-03-2024/hanhtay.jpg', 23, 23, '', 1710420731, 1710420731),
(72, 'EWRW', 'uploads/14-03-2024/chuoi(1).jpg', 32, 23, '', 1710420745, 1710420745),
(73, 'SDFSD', 'uploads/14-03-2024/raungof(1).jpg', 232, 12, '', 1710420754, 1710420754),
(74, 'SAD', 'uploads/14-03-2024/dauxanhcovo(1).jpg', 1231, 12, '', 1710420783, 1710420783),
(75, 'SĐFS', 'uploads/14-03-2024/pizzaga.jpg', 23, 23, '', 1710420802, 1710420802),
(76, 'SDS', 'uploads/14-03-2024/thitbobachi(1).jpg', 2323, 232, '', 1710420815, 1710420815),
(77, 'SDFSD', 'uploads/14-03-2024/thitbobachi(1).jpg', 23, 23, '', 1710420836, 1710420836),
(78, 'SDFSD', 'uploads/14-03-2024/thitbobachi(1).jpg', 2342, 23, '<p><span style=\"background-color:rgb(249, 249, 249); color:rgb(17, 17, 17); font-family:-apple-system,roboto,segoeui,segoe ui,helvetica neue,helvetica,microsoft yahei,meiryo ui,meiryo,arial unicode ms,sans-serif; font-size:16px\">Nguyễn &Aacute;i Quốc</span><span style=\"background-color:rgb(249, 249, 249); color:rgb(17, 17, 17); font-family:-apple-system,roboto,segoeui,segoe ui,helvetica neue,helvetica,microsoft yahei,meiryo ui,meiryo,arial unicode ms,sans-serif; font-size:16px\">, với tinh thần c&aacute;ch mạng v&agrave; nhạy cảm ch&iacute;nh trị, đ&atilde; đ&oacute;ng vai tr&ograve; quan trọng trong việc th&agrave;nh lập&nbsp;</span><span style=\"background-color:rgb(249, 249, 249); color:rgb(17, 17, 17); font-family:-apple-system,roboto,segoeui,segoe ui,helvetica neue,helvetica,microsoft yahei,meiryo ui,meiryo,arial unicode ms,sans-serif; font-size:16px\">Đảng Cộng sản Việt Nam</span><span style=\"background-color:rgb(249, 249, 249); color:rgb(17, 17, 17); font-family:-apple-system,roboto,segoeui,segoe ui,helvetica neue,helvetica,microsoft yahei,meiryo ui,meiryo,arial unicode ms,sans-serif; font-size:16px\">.&nbsp;</span><a class=\"tooltip-target\" href=\"https://special.nhandan.vn/nguyenaiquoc_thanhlapdang/index.html\" style=\"position: relative; color: inherit; border-bottom: 2px solid transparent; text-decoration-style: dotted; text-underline-offset: 3px; text-decoration-color: var(--cib-color-foreground-neutral-tertiary); font-family: -apple-system, Roboto, SegoeUI, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;Microsoft YaHei&quot;, &quot;Meiryo UI&quot;, Meiryo, &quot;Arial Unicode MS&quot;, sans-serif; font-size: 16px; background-color: rgb(249, 249, 249);\" target=\"_blank\">Đầu năm&nbsp;<span style=\"font-size:var(--cib-type-subtitle2-stronger-font-size)\">1930</span>, &ocirc;ng đ&atilde; kịp thời&nbsp;<span style=\"font-size:var(--cib-type-subtitle2-stronger-font-size)\">triệu tập v&agrave; chủ tr&igrave; Hội nghị hợp nhất c&aacute;c tổ chức cộng sản</span>&nbsp;để th&agrave;nh lập Đảng duy nhất ở Việt Nam&nbsp;</a><a class=\"ac-anchor sup-target\" href=\"https://special.nhandan.vn/nguyenaiquoc_thanhlapdang/index.html\" style=\"position: relative; font-family: -apple-system, Roboto, SegoeUI, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;Microsoft YaHei&quot;, &quot;Meiryo UI&quot;, Meiryo, &quot;Arial Unicode MS&quot;, sans-serif; font-size: 16px; background-color: rgb(249, 249, 249);\" target=\"_blank\"><span style=\"color:var(--cib-color-foreground-accent-primary); font-size:var(--cib-type-caption2-strong-font-size)\">1</span></a><a class=\"ac-anchor sup-target\" href=\"https://www.vietnam.vn/nguyen-ai-quoc-va-qua-trinh-thanh-lap-dang-cong-san-viet-nam/\" style=\"position: relative; font-family: -apple-system, Roboto, SegoeUI, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;Microsoft YaHei&quot;, &quot;Meiryo UI&quot;, Meiryo, &quot;Arial Unicode MS&quot;, sans-serif; font-size: 16px; background-color: rgb(249, 249, 249);\" target=\"_blank\"><span style=\"color:var(--cib-color-foreground-accent-primary); font-size:var(--cib-type-caption2-strong-font-size)\">2</span></a><a class=\"ac-anchor sup-target\" href=\"https://loigiaihay.com/cau-hoi-110953.html\" style=\"position: relative; font-family: -apple-system, Roboto, SegoeUI, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;Microsoft YaHei&quot;, &quot;Meiryo UI&quot;, Meiryo, &quot;Arial Unicode MS&quot;, sans-serif; font-size: 16px; background-color: rgb(249, 249, 249);\" target=\"_blank\"><span style=\"color:var(--cib-color-foreground-accent-primary); font-size:var(--cib-type-caption2-strong-font-size)\">3</span></a><span style=\"background-color:rgb(249, 249, 249); color:rgb(17, 17, 17); font-family:-apple-system,roboto,segoeui,segoe ui,helvetica neue,helvetica,microsoft yahei,meiryo ui,meiryo,arial unicode ms,sans-serif; font-size:16px\">. Trước đ&oacute;, v&agrave;o năm</span></p>\r\n', 1710420863, 1710420863),
(79, 'SDSD', 'uploads/14-03-2024/thitbocau(1).jpg', 12, 12, '<p><span style=\"background-color:rgb(249, 249, 249); color:rgb(17, 17, 17); font-family:-apple-system,roboto,segoeui,segoe ui,helvetica neue,helvetica,microsoft yahei,meiryo ui,meiryo,arial unicode ms,sans-serif; font-size:16px\">Nguyễn &Aacute;i Quốc</span><span style=\"background-color:rgb(249, 249, 249); color:rgb(17, 17, 17); font-family:-apple-system,roboto,segoeui,segoe ui,helvetica neue,helvetica,microsoft yahei,meiryo ui,meiryo,arial unicode ms,sans-serif; font-size:16px\">, với tinh thần c&aacute;ch mạng v&agrave; nhạy cảm ch&iacute;nh trị, đ&atilde; đ&oacute;ng vai tr&ograve; quan trọng trong việc th&agrave;nh lập&nbsp;</span><span style=\"background-color:rgb(249, 249, 249); color:rgb(17, 17, 17); font-family:-apple-system,roboto,segoeui,segoe ui,helvetica neue,helvetica,microsoft yahei,meiryo ui,meiryo,arial unicode ms,sans-serif; font-size:16px\">Đảng Cộng sản Việt Nam</span><span style=\"background-color:rgb(249, 249, 249); color:rgb(17, 17, 17); font-family:-apple-system,roboto,segoeui,segoe ui,helvetica neue,helvetica,microsoft yahei,meiryo ui,meiryo,arial unicode ms,sans-serif; font-size:16px\">.&nbsp;</span><a class=\"tooltip-target\" href=\"https://special.nhandan.vn/nguyenaiquoc_thanhlapdang/index.html\" style=\"position: relative; color: inherit; border-bottom: 2px solid transparent; text-decoration-style: dotted; text-underline-offset: 3px; text-decoration-color: var(--cib-color-foreground-neutral-tertiary); font-family: -apple-system, Roboto, SegoeUI, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;Microsoft YaHei&quot;, &quot;Meiryo UI&quot;, Meiryo, &quot;Arial Unicode MS&quot;, sans-serif; font-size: 16px; background-color: rgb(249, 249, 249);\" target=\"_blank\">Đầu năm&nbsp;<span style=\"font-size:var(--cib-type-subtitle2-stronger-font-size)\">1930</span>, &ocirc;ng đ&atilde; kịp thời&nbsp;<span style=\"font-size:var(--cib-type-subtitle2-stronger-font-size)\">triệu tập v&agrave; chủ tr&igrave; Hội nghị hợp nhất c&aacute;c tổ chức cộng sản</span>&nbsp;để th&agrave;nh lập Đảng duy nhất ở Việt Nam&nbsp;</a><a class=\"ac-anchor sup-target\" href=\"https://special.nhandan.vn/nguyenaiquoc_thanhlapdang/index.html\" style=\"position: relative; font-family: -apple-system, Roboto, SegoeUI, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;Microsoft YaHei&quot;, &quot;Meiryo UI&quot;, Meiryo, &quot;Arial Unicode MS&quot;, sans-serif; font-size: 16px; background-color: rgb(249, 249, 249);\" target=\"_blank\"><span style=\"color:var(--cib-color-foreground-accent-primary); font-size:var(--cib-type-caption2-strong-font-size)\">1</span></a><a class=\"ac-anchor sup-target\" href=\"https://www.vietnam.vn/nguyen-ai-quoc-va-qua-trinh-thanh-lap-dang-cong-san-viet-nam/\" style=\"position: relative; font-family: -apple-system, Roboto, SegoeUI, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;Microsoft YaHei&quot;, &quot;Meiryo UI&quot;, Meiryo, &quot;Arial Unicode MS&quot;, sans-serif; font-size: 16px; background-color: rgb(249, 249, 249);\" target=\"_blank\"><span style=\"color:var(--cib-color-foreground-accent-primary); font-size:var(--cib-type-caption2-strong-font-size)\">2</span></a><a class=\"ac-anchor sup-target\" href=\"https://loigiaihay.com/cau-hoi-110953.html\" style=\"position: relative; font-family: -apple-system, Roboto, SegoeUI, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;Microsoft YaHei&quot;, &quot;Meiryo UI&quot;, Meiryo, &quot;Arial Unicode MS&quot;, sans-serif; font-size: 16px; background-color: rgb(249, 249, 249);\" target=\"_blank\"><span style=\"color:var(--cib-color-foreground-accent-primary); font-size:var(--cib-type-caption2-strong-font-size)\">3</span></a><span style=\"background-color:rgb(249, 249, 249); color:rgb(17, 17, 17); font-family:-apple-system,roboto,segoeui,segoe ui,helvetica neue,helvetica,microsoft yahei,meiryo ui,meiryo,arial unicode ms,sans-serif; font-size:16px\">. Trước đ&oacute;, v&agrave;o năm</span></p>\r\n', 1710420883, 1710420883);
INSERT INTO `product` (`id`, `name`, `image`, `price`, `quantity`, `content`, `created_time`, `last_updated`) VALUES
(80, 'ASD', 'uploads/14-03-2024/thitbocau(1).jpg', 12, 12, '<p><span style=\"background-color:rgb(249, 249, 249); color:rgb(17, 17, 17); font-family:-apple-system,roboto,segoeui,segoe ui,helvetica neue,helvetica,microsoft yahei,meiryo ui,meiryo,arial unicode ms,sans-serif; font-size:16px\">Nguyễn &Aacute;i Quốc</span><span style=\"background-color:rgb(249, 249, 249); color:rgb(17, 17, 17); font-family:-apple-system,roboto,segoeui,segoe ui,helvetica neue,helvetica,microsoft yahei,meiryo ui,meiryo,arial unicode ms,sans-serif; font-size:16px\">, với tinh thần c&aacute;ch mạng v&agrave; nhạy cảm ch&iacute;nh trị, đ&atilde; đ&oacute;ng vai tr&ograve; quan trọng trong việc th&agrave;nh lập&nbsp;</span><span style=\"background-color:rgb(249, 249, 249); color:rgb(17, 17, 17); font-family:-apple-system,roboto,segoeui,segoe ui,helvetica neue,helvetica,microsoft yahei,meiryo ui,meiryo,arial unicode ms,sans-serif; font-size:16px\">Đảng Cộng sản Việt Nam</span><span style=\"background-color:rgb(249, 249, 249); color:rgb(17, 17, 17); font-family:-apple-system,roboto,segoeui,segoe ui,helvetica neue,helvetica,microsoft yahei,meiryo ui,meiryo,arial unicode ms,sans-serif; font-size:16px\">.&nbsp;</span><a class=\"tooltip-target\" href=\"https://special.nhandan.vn/nguyenaiquoc_thanhlapdang/index.html\" style=\"position: relative; color: inherit; border-bottom: 2px solid transparent; text-decoration-style: dotted; text-underline-offset: 3px; text-decoration-color: var(--cib-color-foreground-neutral-tertiary); font-family: -apple-system, Roboto, SegoeUI, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;Microsoft YaHei&quot;, &quot;Meiryo UI&quot;, Meiryo, &quot;Arial Unicode MS&quot;, sans-serif; font-size: 16px; background-color: rgb(249, 249, 249);\" target=\"_blank\">Đầu năm&nbsp;<span style=\"font-size:var(--cib-type-subtitle2-stronger-font-size)\">1930</span>, &ocirc;ng đ&atilde; kịp thời&nbsp;<span style=\"font-size:var(--cib-type-subtitle2-stronger-font-size)\">triệu tập v&agrave; chủ tr&igrave; Hội nghị hợp nhất c&aacute;c tổ chức cộng sản</span>&nbsp;để th&agrave;nh lập Đảng duy nhất ở Việt Nam&nbsp;</a><a class=\"ac-anchor sup-target\" href=\"https://special.nhandan.vn/nguyenaiquoc_thanhlapdang/index.html\" style=\"position: relative; font-family: -apple-system, Roboto, SegoeUI, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;Microsoft YaHei&quot;, &quot;Meiryo UI&quot;, Meiryo, &quot;Arial Unicode MS&quot;, sans-serif; font-size: 16px; background-color: rgb(249, 249, 249);\" target=\"_blank\"><span style=\"color:var(--cib-color-foreground-accent-primary); font-size:var(--cib-type-caption2-strong-font-size)\">1</span></a><a class=\"ac-anchor sup-target\" href=\"https://www.vietnam.vn/nguyen-ai-quoc-va-qua-trinh-thanh-lap-dang-cong-san-viet-nam/\" style=\"position: relative; font-family: -apple-system, Roboto, SegoeUI, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;Microsoft YaHei&quot;, &quot;Meiryo UI&quot;, Meiryo, &quot;Arial Unicode MS&quot;, sans-serif; font-size: 16px; background-color: rgb(249, 249, 249);\" target=\"_blank\"><span style=\"color:var(--cib-color-foreground-accent-primary); font-size:var(--cib-type-caption2-strong-font-size)\">2</span></a><a class=\"ac-anchor sup-target\" href=\"https://loigiaihay.com/cau-hoi-110953.html\" style=\"position: relative; font-family: -apple-system, Roboto, SegoeUI, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;Microsoft YaHei&quot;, &quot;Meiryo UI&quot;, Meiryo, &quot;Arial Unicode MS&quot;, sans-serif; font-size: 16px; background-color: rgb(249, 249, 249);\" target=\"_blank\"><span style=\"color:var(--cib-color-foreground-accent-primary); font-size:var(--cib-type-caption2-strong-font-size)\">3</span></a><span style=\"background-color:rgb(249, 249, 249); color:rgb(17, 17, 17); font-family:-apple-system,roboto,segoeui,segoe ui,helvetica neue,helvetica,microsoft yahei,meiryo ui,meiryo,arial unicode ms,sans-serif; font-size:16px\">. Trước đ&oacute;, v&agrave;o nămNguyễn &Aacute;i Quốc</span><span style=\"background-color:rgb(249, 249, 249); color:rgb(17, 17, 17); font-family:-apple-system,roboto,segoeui,segoe ui,helvetica neue,helvetica,microsoft yahei,meiryo ui,meiryo,arial unicode ms,sans-serif; font-size:16px\">, với tinh thần c&aacute;ch mạng v&agrave; nhạy cảm ch&iacute;nh trị, đ&atilde; đ&oacute;ng vai tr&ograve; quan trọng trong việc th&agrave;nh lập&nbsp;</span><span style=\"background-color:rgb(249, 249, 249); color:rgb(17, 17, 17); font-family:-apple-system,roboto,segoeui,segoe ui,helvetica neue,helvetica,microsoft yahei,meiryo ui,meiryo,arial unicode ms,sans-serif; font-size:16px\">Đảng Cộng sản Việt Nam</span><span style=\"background-color:rgb(249, 249, 249); color:rgb(17, 17, 17); font-family:-apple-system,roboto,segoeui,segoe ui,helvetica neue,helvetica,microsoft yahei,meiryo ui,meiryo,arial unicode ms,sans-serif; font-size:16px\">.&nbsp;</span><a class=\"tooltip-target\" href=\"https://special.nhandan.vn/nguyenaiquoc_thanhlapdang/index.html\" style=\"position: relative; color: inherit; border-bottom: 2px solid transparent; text-decoration-style: dotted; text-underline-offset: 3px; text-decoration-color: var(--cib-color-foreground-neutral-tertiary); font-family: -apple-system, Roboto, SegoeUI, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;Microsoft YaHei&quot;, &quot;Meiryo UI&quot;, Meiryo, &quot;Arial Unicode MS&quot;, sans-serif; font-size: 16px; background-color: rgb(249, 249, 249);\" target=\"_blank\">Đầu năm&nbsp;<span style=\"font-size:var(--cib-type-subtitle2-stronger-font-size)\">1930</span>, &ocirc;ng đ&atilde; kịp thời&nbsp;<span style=\"font-size:var(--cib-type-subtitle2-stronger-font-size)\">triệu tập v&agrave; chủ tr&igrave; Hội nghị hợp nhất c&aacute;c tổ chức cộng sản</span>&nbsp;để th&agrave;nh lập Đảng duy nhất ở Việt Nam&nbsp;</a><a class=\"ac-anchor sup-target\" href=\"https://special.nhandan.vn/nguyenaiquoc_thanhlapdang/index.html\" style=\"position: relative; font-family: -apple-system, Roboto, SegoeUI, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;Microsoft YaHei&quot;, &quot;Meiryo UI&quot;, Meiryo, &quot;Arial Unicode MS&quot;, sans-serif; font-size: 16px; background-color: rgb(249, 249, 249);\" target=\"_blank\"><span style=\"color:var(--cib-color-foreground-accent-primary); font-size:var(--cib-type-caption2-strong-font-size)\">1</span></a><a class=\"ac-anchor sup-target\" href=\"https://www.vietnam.vn/nguyen-ai-quoc-va-qua-trinh-thanh-lap-dang-cong-san-viet-nam/\" style=\"position: relative; font-family: -apple-system, Roboto, SegoeUI, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;Microsoft YaHei&quot;, &quot;Meiryo UI&quot;, Meiryo, &quot;Arial Unicode MS&quot;, sans-serif; font-size: 16px; background-color: rgb(249, 249, 249);\" target=\"_blank\"><span style=\"color:var(--cib-color-foreground-accent-primary); font-size:var(--cib-type-caption2-strong-font-size)\">2</span></a><a class=\"ac-anchor sup-target\" href=\"https://loigiaihay.com/cau-hoi-110953.html\" style=\"position: relative; font-family: -apple-system, Roboto, SegoeUI, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;Microsoft YaHei&quot;, &quot;Meiryo UI&quot;, Meiryo, &quot;Arial Unicode MS&quot;, sans-serif; font-size: 16px; background-color: rgb(249, 249, 249);\" target=\"_blank\"><span style=\"color:var(--cib-color-foreground-accent-primary); font-size:var(--cib-type-caption2-strong-font-size)\">3</span></a><span style=\"background-color:rgb(249, 249, 249); color:rgb(17, 17, 17); font-family:-apple-system,roboto,segoeui,segoe ui,helvetica neue,helvetica,microsoft yahei,meiryo ui,meiryo,arial unicode ms,sans-serif; font-size:16px\">. Trước đ&oacute;, v&agrave;o năm</span></p>\r\n', 1710420952, 1710420952),
(81, 'SDFAS', 'uploads/14-03-2024/pizzahaisan(1).jpg', 32, 32, '<p><span style=\"background-color:rgb(249, 249, 249); color:rgb(17, 17, 17); font-family:-apple-system,roboto,segoeui,segoe ui,helvetica neue,helvetica,microsoft yahei,meiryo ui,meiryo,arial unicode ms,sans-serif; font-size:16px\">Nguyễn &Aacute;i Quốc</span><span style=\"background-color:rgb(249, 249, 249); color:rgb(17, 17, 17); font-family:-apple-system,roboto,segoeui,segoe ui,helvetica neue,helvetica,microsoft yahei,meiryo ui,meiryo,arial unicode ms,sans-serif; font-size:16px\">, với tinh thần c&aacute;ch mạng v&agrave; nhạy cảm ch&iacute;nh trị, đ&atilde; đ&oacute;ng vai tr&ograve; quan trọng trong việc th&agrave;nh lập&nbsp;</span><span style=\"background-color:rgb(249, 249, 249); color:rgb(17, 17, 17); font-family:-apple-system,roboto,segoeui,segoe ui,helvetica neue,helvetica,microsoft yahei,meiryo ui,meiryo,arial unicode ms,sans-serif; font-size:16px\">Đảng Cộng sản Việt Nam</span><span style=\"background-color:rgb(249, 249, 249); color:rgb(17, 17, 17); font-family:-apple-system,roboto,segoeui,segoe ui,helvetica neue,helvetica,microsoft yahei,meiryo ui,meiryo,arial unicode ms,sans-serif; font-size:16px\">.&nbsp;</span><a class=\"ac-anchor sup-target\" href=\"https://special.nhandan.vn/nguyenaiquoc_thanhlapdang/index.html\" style=\"position: relative; font-family: -apple-system, Roboto, SegoeUI, \" target=\"_blank\"><span style=\"color:var(--cib-color-foreground-accent-primary); font-size:var(--cib-type-caption2-strong-font-size)\">1</span></a><a class=\"ac-anchor sup-target\" href=\"https://loigiaihay.com/cau-hoi-110953.html\" style=\"position: relative; font-family: -apple-system, Roboto, SegoeUI, \" target=\"_blank\"><span style=\"color:var(--cib-color-foreground-accent-primary); font-size:var(--cib-type-caption2-strong-font-size)\">3</span></a><span style=\"background-color:rgb(249, 249, 249); color:rgb(17, 17, 17); font-family:-apple-system,roboto,segoeui,segoe ui,helvetica neue,helvetica,microsoft yahei,meiryo ui,meiryo,arial unicode ms,sans-serif; font-size:16px\">. Trước đ&oacute;, v&agrave;o nămNguyễn &Aacute;i Quốc</span><span style=\"background-color:rgb(249, 249, 249); color:rgb(17, 17, 17); font-family:-apple-system,roboto,segoeui,segoe ui,helvetica neue,helvetica,microsoft yahei,meiryo ui,meiryo,arial unicode ms,sans-serif; font-size:16px\">, với tinh thần c&aacute;ch mạng v&agrave; nhạy cảm ch&iacute;nh trị, đ&atilde; đ&oacute;ng vai tr&ograve; quan trọng trong việc th&agrave;nh lập&nbsp;</span><span style=\"background-color:rgb(249, 249, 249); color:rgb(17, 17, 17); font-family:-apple-system,roboto,segoeui,segoe ui,helvetica neue,helvetica,microsoft yahei,meiryo ui,meiryo,arial unicode ms,sans-serif; font-size:16px\">Đảng Cộng sản Việt Nam</span><span style=\"background-color:rgb(249, 249, 249); color:rgb(17, 17, 17); font-family:-apple-system,roboto,segoeui,segoe ui,helvetica neue,helvetica,microsoft yahei,meiryo ui,meiryo,arial unicode ms,sans-serif; font-size:16px\">.&nbsp;</span><a class=\"ac-anchor sup-target\" href=\"https://special.nhandan.vn/nguyenaiquoc_thanhlapdang/index.html\" style=\"position: relative; font-family: -apple-system, Roboto, SegoeUI, \" target=\"_blank\"><span style=\"color:var(--cib-color-foreground-accent-primary); font-size:var(--cib-type-caption2-strong-font-size)\">1</span></a><a class=\"ac-anchor sup-target\" href=\"https://loigiaihay.com/cau-hoi-110953.html\" style=\"position: relative; font-family: -apple-system, Roboto, SegoeUI, \" target=\"_blank\"><span style=\"color:var(--cib-color-foreground-accent-primary); font-size:var(--cib-type-caption2-strong-font-size)\">3</span></a><span style=\"background-color:rgb(249, 249, 249); color:rgb(17, 17, 17); font-family:-apple-system,roboto,segoeui,segoe ui,helvetica neue,helvetica,microsoft yahei,meiryo ui,meiryo,arial unicode ms,sans-serif; font-size:16px\">. Trước đ&oacute;, v&agrave;o năm</span></p>\r\n', 1710421007, 1710421102),
(82, 'SD', 'uploads/14-03-2024/duigadonglanh(1).jpg', 2333, 3333333, '<p><span style=\"background-color:rgb(249, 249, 249); color:rgb(17, 17, 17); font-family:-apple-system,roboto,segoeui,segoe ui,helvetica neue,helvetica,microsoft yahei,meiryo ui,meiryo,arial unicode ms,sans-serif; font-size:16px\">Nguyễn &Aacute;i Quốc</span><span style=\"background-color:rgb(249, 249, 249); color:rgb(17, 17, 17); font-family:-apple-system,roboto,segoeui,segoe ui,helvetica neue,helvetica,microsoft yahei,meiryo ui,meiryo,arial unicode ms,sans-serif; font-size:16px\">, với tinh thần c&aacute;ch mạng v&agrave; nhạy cảm ch&iacute;nh trị, đ&atilde; đ&oacute;ng vai tr&ograve; quan trọng trong việc th&agrave;nh lập&nbsp;</span><span style=\"background-color:rgb(249, 249, 249); color:rgb(17, 17, 17); font-family:-apple-system,roboto,segoeui,segoe ui,helvetica neue,helvetica,microsoft yahei,meiryo ui,meiryo,arial unicode ms,sans-serif; font-size:16px\">Đảng Cộng sản Việt Nam</span><span style=\"background-color:rgb(249, 249, 249); color:rgb(17, 17, 17); font-family:-apple-system,roboto,segoeui,segoe ui,helvetica neue,helvetica,microsoft yahei,meiryo ui,meiryo,arial unicode ms,sans-serif; font-size:16px\">.&nbsp;</span><a class=\"tooltip-target\" href=\"https://special.nhandan.vn/nguyenaiquoc_thanhlapdang/index.html\" style=\"position: relative; color: inherit; border-bottom: 2px solid transparent; text-decoration-style: dotted; text-underline-offset: 3px; text-decoration-color: var(--cib-color-foreground-neutral-tertiary); font-family: -apple-system, Roboto, SegoeUI, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;Microsoft YaHei&quot;, &quot;Meiryo UI&quot;, Meiryo, &quot;Arial Unicode MS&quot;, sans-serif; font-size: 16px; background-color: rgb(249, 249, 249);\" target=\"_blank\">Đầu năm&nbsp;<span style=\"font-size:var(--cib-type-subtitle2-stronger-font-size)\">1930</span>, &ocirc;ng đ&atilde; kịp thời&nbsp;<span style=\"font-size:var(--cib-type-subtitle2-stronger-font-size)\">triệu tập v&agrave; chủ tr&igrave; Hội nghị hợp nhất c&aacute;c tổ chức cộng sản</span>&nbsp;để th&agrave;nh lập Đảng duy nhất ở Việt Nam&nbsp;</a><a class=\"ac-anchor sup-target\" href=\"https://special.nhandan.vn/nguyenaiquoc_thanhlapdang/index.html\" style=\"position: relative; font-family: -apple-system, Roboto, SegoeUI, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;Microsoft YaHei&quot;, &quot;Meiryo UI&quot;, Meiryo, &quot;Arial Unicode MS&quot;, sans-serif; font-size: 16px; background-color: rgb(249, 249, 249);\" target=\"_blank\"><span style=\"color:var(--cib-color-foreground-accent-primary); font-size:var(--cib-type-caption2-strong-font-size)\">1</span></a><a class=\"ac-anchor sup-target\" href=\"https://www.vietnam.vn/nguyen-ai-quoc-va-qua-trinh-thanh-lap-dang-cong-san-viet-nam/\" style=\"position: relative; font-family: -apple-system, Roboto, SegoeUI, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;Microsoft YaHei&quot;, &quot;Meiryo UI&quot;, Meiryo, &quot;Arial Unicode MS&quot;, sans-serif; font-size: 16px; background-color: rgb(249, 249, 249);\" target=\"_blank\"><span style=\"color:var(--cib-color-foreground-accent-primary); font-size:var(--cib-type-caption2-strong-font-size)\">2</span></a><a class=\"ac-anchor sup-target\" href=\"https://loigiaihay.com/cau-hoi-110953.html\" style=\"position: relative; font-family: -apple-system, Roboto, SegoeUI, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;Microsoft YaHei&quot;, &quot;Meiryo UI&quot;, Meiryo, &quot;Arial Unicode MS&quot;, sans-serif; font-size: 16px; background-color: rgb(249, 249, 249);\" target=\"_blank\"><span style=\"color:var(--cib-color-foreground-accent-primary); font-size:var(--cib-type-caption2-strong-font-size)\">3</span></a><span style=\"background-color:rgb(249, 249, 249); color:rgb(17, 17, 17); font-family:-apple-system,roboto,segoeui,segoe ui,helvetica neue,helvetica,microsoft yahei,meiryo ui,meiryo,arial unicode ms,sans-serif; font-size:16px\">. Trước đ&oacute;, v&agrave;o nămNguyễn &Aacute;i Quốc</span><span style=\"background-color:rgb(249, 249, 249); color:rgb(17, 17, 17); font-family:-apple-system,roboto,segoeui,segoe ui,helvetica neue,helvetica,microsoft yahei,meiryo ui,meiryo,arial unicode ms,sans-serif; font-size:16px\">, với tinh thần c&aacute;ch mạng v&agrave; nhạy cảm ch&iacute;nh trị, đ&atilde; đ&oacute;ng vai tr&ograve; quan trọng trong việc th&agrave;nh lập&nbsp;</span><span style=\"background-color:rgb(249, 249, 249); color:rgb(17, 17, 17); font-family:-apple-system,roboto,segoeui,segoe ui,helvetica neue,helvetica,microsoft yahei,meiryo ui,meiryo,arial unicode ms,sans-serif; font-size:16px\">Đảng Cộng sản Việt Nam</span><span style=\"background-color:rgb(249, 249, 249); color:rgb(17, 17, 17); font-family:-apple-system,roboto,segoeui,segoe ui,helvetica neue,helvetica,microsoft yahei,meiryo ui,meiryo,arial unicode ms,sans-serif; font-size:16px\">.&nbsp;</span><a class=\"tooltip-target\" href=\"https://special.nhandan.vn/nguyenaiquoc_thanhlapdang/index.html\" style=\"position: relative; color: inherit; border-bottom: 2px solid transparent; text-decoration-style: dotted; text-underline-offset: 3px; text-decoration-color: var(--cib-color-foreground-neutral-tertiary); font-family: -apple-system, Roboto, SegoeUI, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;Microsoft YaHei&quot;, &quot;Meiryo UI&quot;, Meiryo, &quot;Arial Unicode MS&quot;, sans-serif; font-size: 16px; background-color: rgb(249, 249, 249);\" target=\"_blank\">Đầu năm&nbsp;<span style=\"font-size:var(--cib-type-subtitle2-stronger-font-size)\">1930</span>, &ocirc;ng đ&atilde; kịp thời&nbsp;<span style=\"font-size:var(--cib-type-subtitle2-stronger-font-size)\">triệu tập v&agrave; chủ tr&igrave; Hội nghị hợp nhất c&aacute;c tổ chức cộng sản</span>&nbsp;để th&agrave;nh lập Đảng duy nhất ở Việt Nam&nbsp;</a><a class=\"ac-anchor sup-target\" href=\"https://special.nhandan.vn/nguyenaiquoc_thanhlapdang/index.html\" style=\"position: relative; font-family: -apple-system, Roboto, SegoeUI, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;Microsoft YaHei&quot;, &quot;Meiryo UI&quot;, Meiryo, &quot;Arial Unicode MS&quot;, sans-serif; font-size: 16px; background-color: rgb(249, 249, 249);\" target=\"_blank\"><span style=\"color:var(--cib-color-foreground-accent-primary); font-size:var(--cib-type-caption2-strong-font-size)\">1</span></a><a class=\"ac-anchor sup-target\" href=\"https://www.vietnam.vn/nguyen-ai-quoc-va-qua-trinh-thanh-lap-dang-cong-san-viet-nam/\" style=\"position: relative; font-family: -apple-system, Roboto, SegoeUI, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;Microsoft YaHei&quot;, &quot;Meiryo UI&quot;, Meiryo, &quot;Arial Unicode MS&quot;, sans-serif; font-size: 16px; background-color: rgb(249, 249, 249);\" target=\"_blank\"><span style=\"color:var(--cib-color-foreground-accent-primary); font-size:var(--cib-type-caption2-strong-font-size)\">2</span></a><a class=\"ac-anchor sup-target\" href=\"https://loigiaihay.com/cau-hoi-110953.html\" style=\"position: relative; font-family: -apple-system, Roboto, SegoeUI, &quot;Segoe UI&quot;, &quot;Helvetica Neue&quot;, Helvetica, &quot;Microsoft YaHei&quot;, &quot;Meiryo UI&quot;, Meiryo, &quot;Arial Unicode MS&quot;, sans-serif; font-size: 16px; background-color: rgb(249, 249, 249);\" target=\"_blank\"><span style=\"color:var(--cib-color-foreground-accent-primary); font-size:var(--cib-type-caption2-strong-font-size)\">3</span></a><span style=\"background-color:rgb(249, 249, 249); color:rgb(17, 17, 17); font-family:-apple-system,roboto,segoeui,segoe ui,helvetica neue,helvetica,microsoft yahei,meiryo ui,meiryo,arial unicode ms,sans-serif; font-size:16px\">. Trước đ&oacute;, v&agrave;o năm</span></p>\r\n', 1710421058, 1710421058);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `fullname` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_time` int(11) NOT NULL,
  `last_updated` int(12) NOT NULL,
  `phone` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `username`, `fullname`, `password`, `created_time`, `last_updated`, `phone`) VALUES
(1, 'admin', 'Nguyen Tran Chi Trung', '123', 1698075641, 1698075641, ''),
(2, 'Teoem2', 'Tèo em', '123', 1699671364, 1699671364, '9553333333'),
(25, 'hehe', 'hehehehe', '123', 1111111, 3333, '0927'),
(26, 'admin1', 'Võ Quốc Khang', '123', 1699760207, 1699760207, '9288222'),
(27, 'admin4', 'Nguyen Tran Chi Trung', '123', 1699761504, 1699761504, ''),
(28, 'admin8', 'Nguyen Tran Chi Trung', '123', 1699761515, 1699761515, ''),
(29, 'admin3', 'Nguyen Tran Chi Trung', '123', 1699761610, 1699761610, '<br /><b>Wa'),
(30, 'admin0', 'Nguyễn Văn A', '123', 1699761678, 1699761678, '+8432766955');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_privilege`
--

CREATE TABLE `user_privilege` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `privilege_id` int(11) NOT NULL,
  `created_time` int(11) NOT NULL,
  `last_updated` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `user_privilege`
--

INSERT INTO `user_privilege` (`id`, `user_id`, `privilege_id`, `created_time`, `last_updated`) VALUES
(574, 2, 1, 1698075641, 1698075641),
(575, 2, 11, 1698075641, 1698075641),
(576, 2, 13, 1698075641, 1698075641),
(579, 25, 6, 1698075641, 1698075641),
(580, 25, 13, 1698075641, 1698075641),
(589, 1, 12, 1698075641, 1698075641),
(590, 1, 17, 1698075641, 1698075641),
(591, 1, 18, 1698075641, 1698075641),
(592, 1, 19, 1698075641, 1698075641),
(593, 1, 20, 1698075641, 1698075641),
(594, 1, 6, 1698075641, 1698075641),
(595, 1, 7, 1698075641, 1698075641),
(596, 1, 8, 1698075641, 1698075641),
(597, 1, 9, 1698075641, 1698075641),
(598, 1, 10, 1698075641, 1698075641),
(599, 1, 1, 1698075641, 1698075641),
(600, 1, 2, 1698075641, 1698075641),
(601, 1, 3, 1698075641, 1698075641),
(602, 1, 4, 1698075641, 1698075641),
(603, 1, 5, 1698075641, 1698075641),
(604, 1, 11, 1698075641, 1698075641),
(605, 1, 13, 1698075641, 1698075641),
(606, 1, 14, 1698075641, 1698075641),
(607, 1, 15, 1698075641, 1698075641),
(608, 1, 16, 1698075641, 1698075641),
(609, 1, 24, 1698075641, 1698075641),
(624, 30, 20, 1698075641, 1698075641),
(625, 30, 1, 1698075641, 1698075641),
(626, 30, 24, 1698075641, 1698075641);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `image_library`
--
ALTER TABLE `image_library`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `magiamgia`
--
ALTER TABLE `magiamgia`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `privilege`
--
ALTER TABLE `privilege`
  ADD PRIMARY KEY (`id`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `group_id_2` (`group_id`);

--
-- Chỉ mục cho bảng `privilege_group`
--
ALTER TABLE `privilege_group`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Chỉ mục cho bảng `user_privilege`
--
ALTER TABLE `user_privilege`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_privilege_ibfk_1` (`user_id`),
  ADD KEY `privilege_id` (`privilege_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT cho bảng `image_library`
--
ALTER TABLE `image_library`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=352;

--
-- AUTO_INCREMENT cho bảng `magiamgia`
--
ALTER TABLE `magiamgia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `member`
--
ALTER TABLE `member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT cho bảng `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=162;

--
-- AUTO_INCREMENT cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=172;

--
-- AUTO_INCREMENT cho bảng `privilege`
--
ALTER TABLE `privilege`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `privilege_group`
--
ALTER TABLE `privilege_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `user_privilege`
--
ALTER TABLE `user_privilege`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=627;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `image_library`
--
ALTER TABLE `image_library`
  ADD CONSTRAINT `image_library_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `order_detail`
--
ALTER TABLE `order_detail`
  ADD CONSTRAINT `order_detail_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `order_detail_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `privilege`
--
ALTER TABLE `privilege`
  ADD CONSTRAINT `privilege_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `privilege_group` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `user_privilege`
--
ALTER TABLE `user_privilege`
  ADD CONSTRAINT `user_privilege_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_privilege_ibfk_2` FOREIGN KEY (`privilege_id`) REFERENCES `privilege` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

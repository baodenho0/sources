-- phpMyAdmin SQL Dump
-- version 4.4.15.10
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 01, 2018 at 11:30 AM
-- Server version: 5.5.56-MariaDB
-- PHP Version: 7.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ogproduction`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE IF NOT EXISTS `contact` (
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image_path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `map` text COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`address`, `phone`, `image_path`, `map`, `user_id`, `id`, `updated_at`) VALUES
('125/17 Hòa Hưng P12 Q10', 'Điện Thoại :0909 401 932 - 0120 2200 222', 'uploads/contact/contact-1526746720.jpg', '!1m18!1m12!1m3!1d3919.438226421443!2d106.67064781528879!3d10.777709562116003!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752ed9ae289f63%3A0x42b4b88f2ef53690!2zUDEyLCAxMjUgSG_DoCBIxrBuZywgUGjGsOG7nW5nIDEyLCBRdeG6rW4gMTAsIEjhu5MgQ2jDrSBNaW5oLCBWaeG7h3QgTmFt!5e0!3m2!1svi!2s!4v1526665539340', 1, 1, '2018-05-19 16:18:40');

-- --------------------------------------------------------

--
-- Table structure for table `footerphoto`
--

CREATE TABLE IF NOT EXISTS `footerphoto` (
  `id` int(11) NOT NULL,
  `image_path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `footerphoto`
--

INSERT INTO `footerphoto` (`id`, `image_path`, `created_at`, `updated_at`) VALUES
(14, 'uploads/1526741589.jpg', '2018-05-19 14:53:09', '2018-05-19 14:53:09'),
(15, 'uploads/1526741871.jpg', '2018-05-19 14:57:51', '2018-05-19 14:57:51'),
(16, 'uploads/1526741927.jpg', '2018-05-19 14:58:47', '2018-05-19 14:58:47'),
(17, 'uploads/1526742026.jpg', '2018-05-19 15:00:26', '2018-05-19 15:00:26'),
(18, 'uploads/1526742188.jpg', '2018-05-19 15:03:08', '2018-05-19 15:03:08');

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE IF NOT EXISTS `galleries` (
  `id` int(10) unsigned NOT NULL,
  `gallery_type_id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `index_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `gallery_type_id`, `title`, `image_path`, `index_id`, `created_at`, `updated_at`) VALUES
(1, 1, 'Thiên Định - Trà My', 'uploads/galleries/1526749489.jpg', 1, '2018-04-27 04:25:21', '2018-05-19 17:07:19'),
(2, 1, 'Paulo - Tôn Tuyền', 'uploads/galleries/1526791467.jpg', 2, '2018-04-27 05:28:18', '2018-05-20 04:44:27'),
(3, 2, 'Pizza Food Milk Tea', 'uploads/galleries/1527147518.JPG', 3, '2018-05-19 07:34:58', '2018-05-24 07:38:38'),
(4, 1, 'Mạnh Hưng -  Ngọc Ni', 'uploads/galleries/1526832819.jpg', 4, '2018-05-20 16:05:43', '2018-05-20 16:13:39'),
(5, 1, 'Chú Minh - Cô Hạnh', 'uploads/galleries/1526868590.jpg', 5, '2018-05-21 02:09:50', '2018-05-21 02:09:50'),
(6, 2, 'Dance Kiều My', 'uploads/galleries/1527179591.jpg', 6, '2018-05-24 16:33:11', '2018-05-24 16:33:11'),
(7, 3, 'Khai Trương LUCA PUB', 'uploads/galleries/1527183282.jpg', 7, '2018-05-24 17:34:42', '2018-05-24 17:34:42'),
(8, 3, 'GURU Kì Đồng', 'uploads/galleries/1527339342.jpg', 8, '2018-05-26 12:55:42', '2018-05-26 12:55:42'),
(9, 1, 'Phóng sự MI - Thái ( Nhà Hàng )', 'uploads/galleries/1527347348.jpg', 9, '2018-05-26 15:09:08', '2018-05-26 15:09:08'),
(10, 2, 'Gym Kiều My', 'uploads/galleries/1527429483.jpg', 10, '2018-05-27 13:58:03', '2018-05-27 13:58:03'),
(11, 1, 'Tuấn Anh - Bảo Trân', 'uploads/galleries/1527436333.jpg', 11, '2018-05-27 15:20:14', '2018-05-27 15:52:13');

-- --------------------------------------------------------

--
-- Table structure for table `gallery_types`
--

CREATE TABLE IF NOT EXISTS `gallery_types` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `gallery_types`
--

INSERT INTO `gallery_types` (`id`, `name`) VALUES
(1, 'Ảnh Cưới'),
(2, 'Ảnh Tổng Hợp'),
(3, 'Ảnh Event');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE IF NOT EXISTS `images` (
  `id` int(10) unsigned NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gallery_id` int(10) unsigned NOT NULL,
  `index_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=582 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `url`, `gallery_id`, `index_id`, `created_at`, `updated_at`) VALUES
(10, 'uploads/galleries/gallery-1526749858.jpg', 1, 0, '2018-05-19 17:10:58', '2018-05-19 17:10:58'),
(11, 'uploads/galleries/gallery-1526749908.jpg', 1, 0, '2018-05-19 17:11:48', '2018-05-19 17:11:48'),
(12, 'uploads/galleries/gallery-1526749919.jpg', 1, 0, '2018-05-19 17:11:59', '2018-05-19 17:11:59'),
(13, 'uploads/galleries/gallery-1526749927.jpg', 1, 0, '2018-05-19 17:12:07', '2018-05-19 17:12:07'),
(14, 'uploads/galleries/gallery-1526749949.jpg', 1, 0, '2018-05-19 17:12:29', '2018-05-19 17:12:29'),
(15, 'uploads/galleries/gallery-1526749964.jpg', 1, 0, '2018-05-19 17:12:44', '2018-05-19 17:12:44'),
(16, 'uploads/galleries/gallery-1526750004.jpg', 1, 0, '2018-05-19 17:13:24', '2018-05-19 17:13:24'),
(17, 'uploads/galleries/gallery-1526750011.jpg', 1, 0, '2018-05-19 17:13:31', '2018-05-19 17:13:31'),
(18, 'uploads/galleries/gallery-1526750022.jpg', 1, 0, '2018-05-19 17:13:42', '2018-05-19 17:13:42'),
(19, 'uploads/galleries/gallery-1526750036.jpg', 1, 0, '2018-05-19 17:13:56', '2018-05-19 17:13:56'),
(20, 'uploads/galleries/gallery-1526750053.jpg', 1, 0, '2018-05-19 17:14:13', '2018-05-19 17:14:13'),
(21, 'uploads/galleries/gallery-1526750063.jpg', 1, 0, '2018-05-19 17:14:23', '2018-05-19 17:14:23'),
(22, 'uploads/galleries/gallery-1526750070.jpg', 1, 0, '2018-05-19 17:14:30', '2018-05-19 17:14:30'),
(23, 'uploads/galleries/gallery-1526750134.jpg', 1, 0, '2018-05-19 17:15:34', '2018-05-19 17:15:34'),
(24, 'uploads/galleries/gallery-1526750141.jpg', 1, 0, '2018-05-19 17:15:41', '2018-05-19 17:15:41'),
(25, 'uploads/galleries/gallery-1526750149.jpg', 1, 0, '2018-05-19 17:15:49', '2018-05-19 17:15:49'),
(26, 'uploads/galleries/gallery-1526750156.jpg', 1, 0, '2018-05-19 17:15:56', '2018-05-19 17:15:56'),
(27, 'uploads/galleries/gallery-1526750164.jpg', 1, 0, '2018-05-19 17:16:04', '2018-05-19 17:16:04'),
(28, 'uploads/galleries/gallery-1526750171.jpg', 1, 0, '2018-05-19 17:16:11', '2018-05-19 17:16:11'),
(29, 'uploads/galleries/gallery-1526750181.jpg', 1, 0, '2018-05-19 17:16:21', '2018-05-19 17:16:21'),
(30, 'uploads/galleries/gallery-1526750187.jpg', 1, 0, '2018-05-19 17:16:27', '2018-05-19 17:16:27'),
(31, 'uploads/galleries/gallery-1526750195.jpg', 1, 0, '2018-05-19 17:16:35', '2018-05-19 17:16:35'),
(32, 'uploads/galleries/gallery-1526750203.jpg', 1, 0, '2018-05-19 17:16:43', '2018-05-19 17:16:43'),
(33, 'uploads/galleries/gallery-1526750209.jpg', 1, 0, '2018-05-19 17:16:49', '2018-05-19 17:16:49'),
(34, 'uploads/galleries/gallery-1526750243.jpg', 1, 0, '2018-05-19 17:17:23', '2018-05-19 17:17:23'),
(35, 'uploads/galleries/gallery-1526750252.jpg', 1, 0, '2018-05-19 17:17:32', '2018-05-19 17:17:32'),
(36, 'uploads/galleries/gallery-1526750262.jpg', 1, 0, '2018-05-19 17:17:42', '2018-05-19 17:17:42'),
(37, 'uploads/galleries/gallery-1526750273.jpg', 1, 0, '2018-05-19 17:17:53', '2018-05-19 17:17:53'),
(38, 'uploads/galleries/gallery-1526750285.jpg', 1, 0, '2018-05-19 17:18:05', '2018-05-19 17:18:05'),
(39, 'uploads/galleries/gallery-1526750292.jpg', 1, 0, '2018-05-19 17:18:12', '2018-05-19 17:18:12'),
(40, 'uploads/galleries/gallery-1526750301.jpg', 1, 0, '2018-05-19 17:18:21', '2018-05-19 17:18:21'),
(41, 'uploads/galleries/gallery-1526791577.jpg', 2, 0, '2018-05-20 04:46:17', '2018-05-20 04:46:17'),
(42, 'uploads/galleries/gallery-1526791587.jpg', 2, 0, '2018-05-20 04:46:27', '2018-05-20 04:46:27'),
(43, 'uploads/galleries/gallery-1526791603.jpg', 2, 0, '2018-05-20 04:46:43', '2018-05-20 04:46:43'),
(44, 'uploads/galleries/gallery-1526791608.jpg', 2, 0, '2018-05-20 04:46:48', '2018-05-20 04:46:48'),
(45, 'uploads/galleries/gallery-1526791614.jpg', 2, 0, '2018-05-20 04:46:54', '2018-05-20 04:46:54'),
(46, 'uploads/galleries/gallery-1526791618.jpg', 2, 0, '2018-05-20 04:46:58', '2018-05-20 04:46:58'),
(47, 'uploads/galleries/gallery-1526791623.jpg', 2, 0, '2018-05-20 04:47:03', '2018-05-20 04:47:03'),
(48, 'uploads/galleries/gallery-1526791630.jpg', 2, 0, '2018-05-20 04:47:10', '2018-05-20 04:47:10'),
(49, 'uploads/galleries/gallery-1526791634.jpg', 2, 0, '2018-05-20 04:47:14', '2018-05-20 04:47:14'),
(50, 'uploads/galleries/gallery-1526791639.jpg', 2, 0, '2018-05-20 04:47:19', '2018-05-20 04:47:19'),
(51, 'uploads/galleries/gallery-1526791644.jpg', 2, 0, '2018-05-20 04:47:24', '2018-05-20 04:47:24'),
(52, 'uploads/galleries/gallery-1526791649.jpg', 2, 0, '2018-05-20 04:47:29', '2018-05-20 04:47:29'),
(53, 'uploads/galleries/gallery-1526791762.jpg', 2, 0, '2018-05-20 04:49:22', '2018-05-20 04:49:22'),
(54, 'uploads/galleries/gallery-1526791766.jpg', 2, 0, '2018-05-20 04:49:26', '2018-05-20 04:49:26'),
(55, 'uploads/galleries/gallery-1526791773.jpg', 2, 0, '2018-05-20 04:49:33', '2018-05-20 04:49:33'),
(56, 'uploads/galleries/gallery-1526791778.jpg', 2, 0, '2018-05-20 04:49:38', '2018-05-20 04:49:38'),
(57, 'uploads/galleries/gallery-1526791784.jpg', 2, 0, '2018-05-20 04:49:44', '2018-05-20 04:49:44'),
(58, 'uploads/galleries/gallery-1526791789.jpg', 2, 0, '2018-05-20 04:49:49', '2018-05-20 04:49:49'),
(59, 'uploads/galleries/gallery-1526791799.jpg', 2, 0, '2018-05-20 04:49:59', '2018-05-20 04:49:59'),
(60, 'uploads/galleries/gallery-1526791804.jpg', 2, 0, '2018-05-20 04:50:04', '2018-05-20 04:50:04'),
(61, 'uploads/galleries/gallery-1526791809.jpg', 2, 0, '2018-05-20 04:50:09', '2018-05-20 04:50:09'),
(62, 'uploads/galleries/gallery-1526791813.jpg', 2, 0, '2018-05-20 04:50:13', '2018-05-20 04:50:13'),
(63, 'uploads/galleries/gallery-1526791818.jpg', 2, 0, '2018-05-20 04:50:18', '2018-05-20 04:50:18'),
(64, 'uploads/galleries/gallery-1526791822.jpg', 2, 0, '2018-05-20 04:50:22', '2018-05-20 04:50:22'),
(65, 'uploads/galleries/gallery-1526791844.jpg', 2, 0, '2018-05-20 04:50:44', '2018-05-20 04:50:44'),
(66, 'uploads/galleries/gallery-1526791848.jpg', 2, 0, '2018-05-20 04:50:48', '2018-05-20 04:50:48'),
(67, 'uploads/galleries/gallery-1526791853.jpg', 2, 0, '2018-05-20 04:50:53', '2018-05-20 04:50:53'),
(68, 'uploads/galleries/gallery-1526791858.jpg', 2, 0, '2018-05-20 04:50:58', '2018-05-20 04:50:58'),
(69, 'uploads/galleries/gallery-1526791862.jpg', 2, 0, '2018-05-20 04:51:02', '2018-05-20 04:51:02'),
(70, 'uploads/galleries/gallery-1526791866.jpg', 2, 0, '2018-05-20 04:51:06', '2018-05-20 04:51:06'),
(71, 'uploads/galleries/gallery-1526791870.jpg', 2, 0, '2018-05-20 04:51:10', '2018-05-20 04:51:10'),
(72, 'uploads/galleries/gallery-1526791876.jpg', 2, 0, '2018-05-20 04:51:16', '2018-05-20 04:51:16'),
(73, 'uploads/galleries/gallery-1526791881.jpg', 2, 0, '2018-05-20 04:51:21', '2018-05-20 04:51:21'),
(74, 'uploads/galleries/gallery-1526791886.jpg', 2, 0, '2018-05-20 04:51:26', '2018-05-20 04:51:26'),
(75, 'uploads/galleries/gallery-1526791890.jpg', 2, 0, '2018-05-20 04:51:30', '2018-05-20 04:51:30'),
(76, 'uploads/galleries/gallery-1526791897.jpg', 2, 0, '2018-05-20 04:51:37', '2018-05-20 04:51:37'),
(77, 'uploads/galleries/gallery-1526791903.jpg', 2, 0, '2018-05-20 04:51:43', '2018-05-20 04:51:43'),
(78, 'uploads/galleries/gallery-1526791909.jpg', 2, 0, '2018-05-20 04:51:49', '2018-05-20 04:51:49'),
(79, 'uploads/galleries/gallery-1526791913.jpg', 2, 0, '2018-05-20 04:51:53', '2018-05-20 04:51:53'),
(80, 'uploads/galleries/gallery-1526791919.jpg', 2, 0, '2018-05-20 04:51:59', '2018-05-20 04:51:59'),
(81, 'uploads/galleries/gallery-1526791925.jpg', 2, 0, '2018-05-20 04:52:05', '2018-05-20 04:52:05'),
(82, 'uploads/galleries/gallery-1526791930.jpg', 2, 0, '2018-05-20 04:52:10', '2018-05-20 04:52:10'),
(83, 'uploads/galleries/gallery-1526791956.jpg', 2, 0, '2018-05-20 04:52:36', '2018-05-20 04:52:36'),
(84, 'uploads/galleries/gallery-1526791960.jpg', 2, 0, '2018-05-20 04:52:40', '2018-05-20 04:52:40'),
(85, 'uploads/galleries/gallery-1526791971.jpg', 2, 0, '2018-05-20 04:52:51', '2018-05-20 04:52:51'),
(86, 'uploads/galleries/gallery-1526791976.jpg', 2, 0, '2018-05-20 04:52:56', '2018-05-20 04:52:56'),
(87, 'uploads/galleries/gallery-1526791981.jpg', 2, 0, '2018-05-20 04:53:01', '2018-05-20 04:53:01'),
(88, 'uploads/galleries/gallery-1526791987.jpg', 2, 0, '2018-05-20 04:53:07', '2018-05-20 04:53:07'),
(89, 'uploads/galleries/gallery-1526791991.jpg', 2, 0, '2018-05-20 04:53:11', '2018-05-20 04:53:11'),
(90, 'uploads/galleries/gallery-1526791996.jpg', 2, 0, '2018-05-20 04:53:16', '2018-05-20 04:53:16'),
(91, 'uploads/galleries/gallery-1526792000.jpg', 2, 0, '2018-05-20 04:53:20', '2018-05-20 04:53:20'),
(92, 'uploads/galleries/gallery-1526792005.jpg', 2, 0, '2018-05-20 04:53:25', '2018-05-20 04:53:25'),
(93, 'uploads/galleries/gallery-1526792010.jpg', 2, 0, '2018-05-20 04:53:30', '2018-05-20 04:53:30'),
(94, 'uploads/galleries/gallery-1526832870.jpg', 4, 0, '2018-05-20 16:14:30', '2018-05-20 16:14:30'),
(95, 'uploads/galleries/gallery-1526832877.jpg', 4, 0, '2018-05-20 16:14:37', '2018-05-20 16:14:37'),
(96, 'uploads/galleries/gallery-1526832882.jpg', 4, 0, '2018-05-20 16:14:42', '2018-05-20 16:14:42'),
(97, 'uploads/galleries/gallery-1526832913.jpg', 4, 0, '2018-05-20 16:15:13', '2018-05-20 16:15:13'),
(98, 'uploads/galleries/gallery-1526832917.jpg', 4, 0, '2018-05-20 16:15:17', '2018-05-20 16:15:17'),
(99, 'uploads/galleries/gallery-1526832923.jpg', 4, 0, '2018-05-20 16:15:23', '2018-05-20 16:15:23'),
(100, 'uploads/galleries/gallery-1526832927.jpg', 4, 0, '2018-05-20 16:15:27', '2018-05-20 16:15:27'),
(101, 'uploads/galleries/gallery-1526832931.jpg', 4, 0, '2018-05-20 16:15:32', '2018-05-20 16:15:32'),
(102, 'uploads/galleries/gallery-1526832936.jpg', 4, 0, '2018-05-20 16:15:36', '2018-05-20 16:15:36'),
(103, 'uploads/galleries/gallery-1526832941.jpg', 4, 0, '2018-05-20 16:15:41', '2018-05-20 16:15:41'),
(104, 'uploads/galleries/gallery-1526832968.jpg', 4, 0, '2018-05-20 16:16:08', '2018-05-20 16:16:08'),
(105, 'uploads/galleries/gallery-1526832972.jpg', 4, 0, '2018-05-20 16:16:12', '2018-05-20 16:16:12'),
(106, 'uploads/galleries/gallery-1526832988.jpg', 4, 0, '2018-05-20 16:16:28', '2018-05-20 16:16:28'),
(107, 'uploads/galleries/gallery-1526832993.jpg', 4, 0, '2018-05-20 16:16:33', '2018-05-20 16:16:33'),
(108, 'uploads/galleries/gallery-1526832998.jpg', 4, 0, '2018-05-20 16:16:38', '2018-05-20 16:16:38'),
(109, 'uploads/galleries/gallery-1526833004.jpg', 4, 0, '2018-05-20 16:16:44', '2018-05-20 16:16:44'),
(110, 'uploads/galleries/gallery-1526833008.jpg', 4, 0, '2018-05-20 16:16:48', '2018-05-20 16:16:48'),
(111, 'uploads/galleries/gallery-1526833012.jpg', 4, 0, '2018-05-20 16:16:52', '2018-05-20 16:16:52'),
(112, 'uploads/galleries/gallery-1526833018.jpg', 4, 0, '2018-05-20 16:16:58', '2018-05-20 16:16:58'),
(113, 'uploads/galleries/gallery-1526833023.jpg', 4, 0, '2018-05-20 16:17:03', '2018-05-20 16:17:03'),
(114, 'uploads/galleries/gallery-1526833028.jpg', 4, 0, '2018-05-20 16:17:08', '2018-05-20 16:17:08'),
(115, 'uploads/galleries/gallery-1526833040.jpg', 4, 0, '2018-05-20 16:17:20', '2018-05-20 16:17:20'),
(116, 'uploads/galleries/gallery-1526833044.jpg', 4, 0, '2018-05-20 16:17:24', '2018-05-20 16:17:24'),
(117, 'uploads/galleries/gallery-1526833048.jpg', 4, 0, '2018-05-20 16:17:28', '2018-05-20 16:17:28'),
(118, 'uploads/galleries/gallery-1526833054.jpg', 4, 0, '2018-05-20 16:17:34', '2018-05-20 16:17:34'),
(119, 'uploads/galleries/gallery-1526833059.jpg', 4, 0, '2018-05-20 16:17:39', '2018-05-20 16:17:39'),
(120, 'uploads/galleries/gallery-1526833063.jpg', 4, 0, '2018-05-20 16:17:43', '2018-05-20 16:17:43'),
(121, 'uploads/galleries/gallery-1526833068.jpg', 4, 0, '2018-05-20 16:17:48', '2018-05-20 16:17:48'),
(122, 'uploads/galleries/gallery-1526833072.jpg', 4, 0, '2018-05-20 16:17:52', '2018-05-20 16:17:52'),
(123, 'uploads/galleries/gallery-1526833084.jpg', 4, 0, '2018-05-20 16:18:04', '2018-05-20 16:18:04'),
(124, 'uploads/galleries/gallery-1526833090.jpg', 4, 0, '2018-05-20 16:18:10', '2018-05-20 16:18:10'),
(125, 'uploads/galleries/gallery-1526868819.jpg', 5, 0, '2018-05-21 02:13:39', '2018-05-21 02:13:39'),
(126, 'uploads/galleries/gallery-1526869386.jpg', 5, 0, '2018-05-21 02:23:06', '2018-05-21 02:23:06'),
(127, 'uploads/galleries/gallery-1526869412.jpg', 5, 0, '2018-05-21 02:23:32', '2018-05-21 02:23:32'),
(128, 'uploads/galleries/gallery-1526869530.jpg', 5, 0, '2018-05-21 02:25:30', '2018-05-21 02:25:30'),
(129, 'uploads/galleries/gallery-1526869536.jpg', 5, 0, '2018-05-21 02:25:36', '2018-05-21 02:25:36'),
(130, 'uploads/galleries/gallery-1526869539.jpg', 5, 0, '2018-05-21 02:25:39', '2018-05-21 02:25:39'),
(131, 'uploads/galleries/gallery-1526869543.jpg', 5, 0, '2018-05-21 02:25:43', '2018-05-21 02:25:43'),
(132, 'uploads/galleries/gallery-1526869548.jpg', 5, 0, '2018-05-21 02:25:48', '2018-05-21 02:25:48'),
(133, 'uploads/galleries/gallery-1526869553.jpg', 5, 0, '2018-05-21 02:25:53', '2018-05-21 02:25:53'),
(134, 'uploads/galleries/gallery-1526869571.jpg', 5, 0, '2018-05-21 02:26:11', '2018-05-21 02:26:11'),
(135, 'uploads/galleries/gallery-1526869582.jpg', 5, 0, '2018-05-21 02:26:22', '2018-05-21 02:26:22'),
(136, 'uploads/galleries/gallery-1526869587.jpg', 5, 0, '2018-05-21 02:26:27', '2018-05-21 02:26:27'),
(137, 'uploads/galleries/gallery-1526869592.jpg', 5, 0, '2018-05-21 02:26:32', '2018-05-21 02:26:32'),
(138, 'uploads/galleries/gallery-1526869597.jpg', 5, 0, '2018-05-21 02:26:37', '2018-05-21 02:26:37'),
(139, 'uploads/galleries/gallery-1526869602.jpg', 5, 0, '2018-05-21 02:26:42', '2018-05-21 02:26:42'),
(140, 'uploads/galleries/gallery-1526869608.jpg', 5, 0, '2018-05-21 02:26:48', '2018-05-21 02:26:48'),
(141, 'uploads/galleries/gallery-1526869615.jpg', 5, 0, '2018-05-21 02:26:55', '2018-05-21 02:26:55'),
(142, 'uploads/galleries/gallery-1526869620.jpg', 5, 0, '2018-05-21 02:27:00', '2018-05-21 02:27:00'),
(143, 'uploads/galleries/gallery-1526869627.jpg', 5, 0, '2018-05-21 02:27:07', '2018-05-21 02:27:07'),
(144, 'uploads/galleries/gallery-1526869631.jpg', 5, 0, '2018-05-21 02:27:11', '2018-05-21 02:27:11'),
(145, 'uploads/galleries/gallery-1526869636.jpg', 5, 0, '2018-05-21 02:27:16', '2018-05-21 02:27:16'),
(146, 'uploads/galleries/gallery-1526869642.jpg', 5, 0, '2018-05-21 02:27:22', '2018-05-21 02:27:22'),
(147, 'uploads/galleries/gallery-1526869647.jpg', 5, 0, '2018-05-21 02:27:27', '2018-05-21 02:27:27'),
(148, 'uploads/galleries/gallery-1526869652.jpg', 5, 0, '2018-05-21 02:27:32', '2018-05-21 02:27:32'),
(149, 'uploads/galleries/gallery-1526869667.jpg', 5, 0, '2018-05-21 02:27:47', '2018-05-21 02:27:47'),
(150, 'uploads/galleries/gallery-1526869751.jpg', 5, 0, '2018-05-21 02:29:11', '2018-05-21 02:29:11'),
(151, 'uploads/galleries/gallery-1526869756.jpg', 5, 0, '2018-05-21 02:29:16', '2018-05-21 02:29:16'),
(152, 'uploads/galleries/gallery-1526869762.jpg', 5, 0, '2018-05-21 02:29:22', '2018-05-21 02:29:22'),
(153, 'uploads/galleries/gallery-1526869768.jpg', 5, 0, '2018-05-21 02:29:28', '2018-05-21 02:29:28'),
(154, 'uploads/galleries/gallery-1526869773.jpg', 5, 0, '2018-05-21 02:29:33', '2018-05-21 02:29:33'),
(155, 'uploads/galleries/gallery-1526869779.jpg', 5, 0, '2018-05-21 02:29:39', '2018-05-21 02:29:39'),
(156, 'uploads/galleries/gallery-1526869837.jpg', 5, 0, '2018-05-21 02:30:37', '2018-05-21 02:30:37'),
(157, 'uploads/galleries/gallery-1526869843.jpg', 5, 0, '2018-05-21 02:30:43', '2018-05-21 02:30:43'),
(158, 'uploads/galleries/gallery-1526869848.jpg', 5, 0, '2018-05-21 02:30:48', '2018-05-21 02:30:48'),
(159, 'uploads/galleries/gallery-1526869853.jpg', 5, 0, '2018-05-21 02:30:53', '2018-05-21 02:30:53'),
(160, 'uploads/galleries/gallery-1526869857.jpg', 5, 0, '2018-05-21 02:30:57', '2018-05-21 02:30:57'),
(161, 'uploads/galleries/gallery-1526869862.jpg', 5, 0, '2018-05-21 02:31:02', '2018-05-21 02:31:02'),
(162, 'uploads/galleries/gallery-1526869867.jpg', 5, 0, '2018-05-21 02:31:07', '2018-05-21 02:31:07'),
(163, 'uploads/galleries/gallery-1526869871.jpg', 5, 0, '2018-05-21 02:31:11', '2018-05-21 02:31:11'),
(164, 'uploads/galleries/gallery-1526869876.jpg', 5, 0, '2018-05-21 02:31:16', '2018-05-21 02:31:16'),
(165, 'uploads/galleries/gallery-1526869882.jpg', 5, 0, '2018-05-21 02:31:22', '2018-05-21 02:31:22'),
(166, 'uploads/galleries/gallery-1526869903.jpg', 5, 0, '2018-05-21 02:31:43', '2018-05-21 02:31:43'),
(167, 'uploads/galleries/gallery-1527147625.JPG', 3, 0, '2018-05-24 07:40:25', '2018-05-24 07:40:25'),
(168, 'uploads/galleries/gallery-1527147629.JPG', 3, 0, '2018-05-24 07:40:29', '2018-05-24 07:40:29'),
(169, 'uploads/galleries/gallery-1527147636.JPG', 3, 0, '2018-05-24 07:40:36', '2018-05-24 07:40:36'),
(170, 'uploads/galleries/gallery-1527147642.JPG', 3, 0, '2018-05-24 07:40:42', '2018-05-24 07:40:42'),
(171, 'uploads/galleries/gallery-1527147647.JPG', 3, 0, '2018-05-24 07:40:47', '2018-05-24 07:40:47'),
(172, 'uploads/galleries/gallery-1527147653.JPG', 3, 0, '2018-05-24 07:40:53', '2018-05-24 07:40:53'),
(173, 'uploads/galleries/gallery-1527147659.JPG', 3, 0, '2018-05-24 07:40:59', '2018-05-24 07:40:59'),
(174, 'uploads/galleries/gallery-1527147663.JPG', 3, 0, '2018-05-24 07:41:03', '2018-05-24 07:41:03'),
(175, 'uploads/galleries/gallery-1527147667.JPG', 3, 0, '2018-05-24 07:41:07', '2018-05-24 07:41:07'),
(176, 'uploads/galleries/gallery-1527147671.JPG', 3, 0, '2018-05-24 07:41:11', '2018-05-24 07:41:11'),
(177, 'uploads/galleries/gallery-1527147678.JPG', 3, 0, '2018-05-24 07:41:18', '2018-05-24 07:41:18'),
(178, 'uploads/galleries/gallery-1527147682.JPG', 3, 0, '2018-05-24 07:41:22', '2018-05-24 07:41:22'),
(179, 'uploads/galleries/gallery-1527147686.JPG', 3, 0, '2018-05-24 07:41:26', '2018-05-24 07:41:26'),
(180, 'uploads/galleries/gallery-1527147692.JPG', 3, 0, '2018-05-24 07:41:32', '2018-05-24 07:41:32'),
(181, 'uploads/galleries/gallery-1527147696.JPG', 3, 0, '2018-05-24 07:41:36', '2018-05-24 07:41:36'),
(182, 'uploads/galleries/gallery-1527147711.JPG', 3, 0, '2018-05-24 07:41:51', '2018-05-24 07:41:51'),
(183, 'uploads/galleries/gallery-1527147717.JPG', 3, 0, '2018-05-24 07:41:57', '2018-05-24 07:41:57'),
(184, 'uploads/galleries/gallery-1527147721.JPG', 3, 0, '2018-05-24 07:42:01', '2018-05-24 07:42:01'),
(185, 'uploads/galleries/gallery-1527147726.JPG', 3, 0, '2018-05-24 07:42:06', '2018-05-24 07:42:06'),
(186, 'uploads/galleries/gallery-1527147731.JPG', 3, 0, '2018-05-24 07:42:11', '2018-05-24 07:42:11'),
(187, 'uploads/galleries/gallery-1527147738.JPG', 3, 0, '2018-05-24 07:42:18', '2018-05-24 07:42:18'),
(188, 'uploads/galleries/gallery-1527147743.JPG', 3, 0, '2018-05-24 07:42:23', '2018-05-24 07:42:23'),
(189, 'uploads/galleries/gallery-1527147749.JPG', 3, 0, '2018-05-24 07:42:29', '2018-05-24 07:42:29'),
(190, 'uploads/galleries/gallery-1527147755.JPG', 3, 0, '2018-05-24 07:42:35', '2018-05-24 07:42:35'),
(191, 'uploads/galleries/gallery-1527147760.JPG', 3, 0, '2018-05-24 07:42:40', '2018-05-24 07:42:40'),
(192, 'uploads/galleries/gallery-1527147765.JPG', 3, 0, '2018-05-24 07:42:45', '2018-05-24 07:42:45'),
(193, 'uploads/galleries/gallery-1527147769.JPG', 3, 0, '2018-05-24 07:42:49', '2018-05-24 07:42:49'),
(194, 'uploads/galleries/gallery-1527147774.JPG', 3, 0, '2018-05-24 07:42:54', '2018-05-24 07:42:54'),
(195, 'uploads/galleries/gallery-1527147780.JPG', 3, 0, '2018-05-24 07:43:00', '2018-05-24 07:43:00'),
(196, 'uploads/galleries/gallery-1527147787.JPG', 3, 0, '2018-05-24 07:43:07', '2018-05-24 07:43:07'),
(197, 'uploads/galleries/gallery-1527147791.JPG', 3, 0, '2018-05-24 07:43:11', '2018-05-24 07:43:11'),
(198, 'uploads/galleries/gallery-1527147795.JPG', 3, 0, '2018-05-24 07:43:15', '2018-05-24 07:43:15'),
(199, 'uploads/galleries/gallery-1527147800.JPG', 3, 0, '2018-05-24 07:43:20', '2018-05-24 07:43:20'),
(200, 'uploads/galleries/gallery-1527147805.JPG', 3, 0, '2018-05-24 07:43:25', '2018-05-24 07:43:25'),
(201, 'uploads/galleries/gallery-1527147810.JPG', 3, 0, '2018-05-24 07:43:30', '2018-05-24 07:43:30'),
(202, 'uploads/galleries/gallery-1527147815.JPG', 3, 0, '2018-05-24 07:43:35', '2018-05-24 07:43:35'),
(203, 'uploads/galleries/gallery-1527147822.JPG', 3, 0, '2018-05-24 07:43:42', '2018-05-24 07:43:42'),
(204, 'uploads/galleries/gallery-1527147826.JPG', 3, 0, '2018-05-24 07:43:46', '2018-05-24 07:43:46'),
(205, 'uploads/galleries/gallery-1527147831.JPG', 3, 0, '2018-05-24 07:43:51', '2018-05-24 07:43:51'),
(206, 'uploads/galleries/gallery-1527147836.JPG', 3, 0, '2018-05-24 07:43:56', '2018-05-24 07:43:56'),
(207, 'uploads/galleries/gallery-1527147840.JPG', 3, 0, '2018-05-24 07:44:00', '2018-05-24 07:44:00'),
(208, 'uploads/galleries/gallery-1527147845.JPG', 3, 0, '2018-05-24 07:44:05', '2018-05-24 07:44:05'),
(209, 'uploads/galleries/gallery-1527147850.JPG', 3, 0, '2018-05-24 07:44:10', '2018-05-24 07:44:10'),
(210, 'uploads/galleries/gallery-1527147854.JPG', 3, 0, '2018-05-24 07:44:14', '2018-05-24 07:44:14'),
(211, 'uploads/galleries/gallery-1527147858.JPG', 3, 0, '2018-05-24 07:44:18', '2018-05-24 07:44:18'),
(212, 'uploads/galleries/gallery-1527147864.JPG', 3, 0, '2018-05-24 07:44:24', '2018-05-24 07:44:24'),
(213, 'uploads/galleries/gallery-1527147869.JPG', 3, 0, '2018-05-24 07:44:29', '2018-05-24 07:44:29'),
(214, 'uploads/galleries/gallery-1527147874.JPG', 3, 0, '2018-05-24 07:44:34', '2018-05-24 07:44:34'),
(215, 'uploads/galleries/gallery-1527147879.JPG', 3, 0, '2018-05-24 07:44:39', '2018-05-24 07:44:39'),
(216, 'uploads/galleries/gallery-1527147884.JPG', 3, 0, '2018-05-24 07:44:44', '2018-05-24 07:44:44'),
(217, 'uploads/galleries/gallery-1527147890.JPG', 3, 0, '2018-05-24 07:44:50', '2018-05-24 07:44:50'),
(218, 'uploads/galleries/gallery-1527147894.JPG', 3, 0, '2018-05-24 07:44:54', '2018-05-24 07:44:54'),
(219, 'uploads/galleries/gallery-1527147899.JPG', 3, 0, '2018-05-24 07:44:59', '2018-05-24 07:44:59'),
(220, 'uploads/galleries/gallery-1527147906.JPG', 3, 0, '2018-05-24 07:45:06', '2018-05-24 07:45:06'),
(221, 'uploads/galleries/gallery-1527147911.JPG', 3, 0, '2018-05-24 07:45:11', '2018-05-24 07:45:11'),
(222, 'uploads/galleries/gallery-1527147916.JPG', 3, 0, '2018-05-24 07:45:16', '2018-05-24 07:45:16'),
(223, 'uploads/galleries/gallery-1527147921.JPG', 3, 0, '2018-05-24 07:45:21', '2018-05-24 07:45:21'),
(224, 'uploads/galleries/gallery-1527147926.JPG', 3, 0, '2018-05-24 07:45:26', '2018-05-24 07:45:26'),
(225, 'uploads/galleries/gallery-1527147932.JPG', 3, 0, '2018-05-24 07:45:32', '2018-05-24 07:45:32'),
(226, 'uploads/galleries/gallery-1527147938.JPG', 3, 0, '2018-05-24 07:45:38', '2018-05-24 07:45:38'),
(227, 'uploads/galleries/gallery-1527147943.JPG', 3, 0, '2018-05-24 07:45:43', '2018-05-24 07:45:43'),
(228, 'uploads/galleries/gallery-1527179730.jpg', 6, 0, '2018-05-24 16:35:30', '2018-05-24 16:35:30'),
(229, 'uploads/galleries/gallery-1527179735.jpg', 6, 0, '2018-05-24 16:35:35', '2018-05-24 16:35:35'),
(230, 'uploads/galleries/gallery-1527179741.jpg', 6, 0, '2018-05-24 16:35:41', '2018-05-24 16:35:41'),
(231, 'uploads/galleries/gallery-1527179746.jpg', 6, 0, '2018-05-24 16:35:46', '2018-05-24 16:35:46'),
(232, 'uploads/galleries/gallery-1527179750.jpg', 6, 0, '2018-05-24 16:35:50', '2018-05-24 16:35:50'),
(233, 'uploads/galleries/gallery-1527179755.jpg', 6, 0, '2018-05-24 16:35:55', '2018-05-24 16:35:55'),
(234, 'uploads/galleries/gallery-1527179760.jpg', 6, 0, '2018-05-24 16:36:00', '2018-05-24 16:36:00'),
(235, 'uploads/galleries/gallery-1527179764.jpg', 6, 0, '2018-05-24 16:36:04', '2018-05-24 16:36:04'),
(236, 'uploads/galleries/gallery-1527179768.jpg', 6, 0, '2018-05-24 16:36:08', '2018-05-24 16:36:08'),
(237, 'uploads/galleries/gallery-1527179772.jpg', 6, 0, '2018-05-24 16:36:12', '2018-05-24 16:36:12'),
(238, 'uploads/galleries/gallery-1527179777.jpg', 6, 0, '2018-05-24 16:36:17', '2018-05-24 16:36:17'),
(239, 'uploads/galleries/gallery-1527183388.jpg', 7, 0, '2018-05-24 17:36:28', '2018-05-24 17:36:28'),
(240, 'uploads/galleries/gallery-1527183393.jpg', 7, 0, '2018-05-24 17:36:33', '2018-05-24 17:36:33'),
(241, 'uploads/galleries/gallery-1527183397.jpg', 7, 0, '2018-05-24 17:36:37', '2018-05-24 17:36:37'),
(242, 'uploads/galleries/gallery-1527183401.jpg', 7, 0, '2018-05-24 17:36:41', '2018-05-24 17:36:41'),
(243, 'uploads/galleries/gallery-1527183405.jpg', 7, 0, '2018-05-24 17:36:45', '2018-05-24 17:36:45'),
(244, 'uploads/galleries/gallery-1527183409.jpg', 7, 0, '2018-05-24 17:36:49', '2018-05-24 17:36:49'),
(245, 'uploads/galleries/gallery-1527183414.jpg', 7, 0, '2018-05-24 17:36:54', '2018-05-24 17:36:54'),
(246, 'uploads/galleries/gallery-1527183417.jpg', 7, 0, '2018-05-24 17:36:57', '2018-05-24 17:36:57'),
(247, 'uploads/galleries/gallery-1527183421.jpg', 7, 0, '2018-05-24 17:37:01', '2018-05-24 17:37:01'),
(248, 'uploads/galleries/gallery-1527183426.jpg', 7, 0, '2018-05-24 17:37:06', '2018-05-24 17:37:06'),
(249, 'uploads/galleries/gallery-1527183432.jpg', 7, 0, '2018-05-24 17:37:12', '2018-05-24 17:37:12'),
(250, 'uploads/galleries/gallery-1527183436.jpg', 7, 0, '2018-05-24 17:37:16', '2018-05-24 17:37:16'),
(251, 'uploads/galleries/gallery-1527183440.jpg', 7, 0, '2018-05-24 17:37:20', '2018-05-24 17:37:20'),
(252, 'uploads/galleries/gallery-1527183445.jpg', 7, 0, '2018-05-24 17:37:25', '2018-05-24 17:37:25'),
(253, 'uploads/galleries/gallery-1527183451.jpg', 7, 0, '2018-05-24 17:37:31', '2018-05-24 17:37:31'),
(254, 'uploads/galleries/gallery-1527183455.jpg', 7, 0, '2018-05-24 17:37:35', '2018-05-24 17:37:35'),
(255, 'uploads/galleries/gallery-1527183458.jpg', 7, 0, '2018-05-24 17:37:38', '2018-05-24 17:37:38'),
(256, 'uploads/galleries/gallery-1527183464.jpg', 7, 0, '2018-05-24 17:37:44', '2018-05-24 17:37:44'),
(257, 'uploads/galleries/gallery-1527183468.jpg', 7, 0, '2018-05-24 17:37:48', '2018-05-24 17:37:48'),
(258, 'uploads/galleries/gallery-1527183474.jpg', 7, 0, '2018-05-24 17:37:54', '2018-05-24 17:37:54'),
(259, 'uploads/galleries/gallery-1527183478.jpg', 7, 0, '2018-05-24 17:37:58', '2018-05-24 17:37:58'),
(260, 'uploads/galleries/gallery-1527183483.jpg', 7, 0, '2018-05-24 17:38:03', '2018-05-24 17:38:03'),
(261, 'uploads/galleries/gallery-1527183487.jpg', 7, 0, '2018-05-24 17:38:07', '2018-05-24 17:38:07'),
(262, 'uploads/galleries/gallery-1527183493.jpg', 7, 0, '2018-05-24 17:38:13', '2018-05-24 17:38:13'),
(263, 'uploads/galleries/gallery-1527183500.jpg', 7, 0, '2018-05-24 17:38:20', '2018-05-24 17:38:20'),
(264, 'uploads/galleries/gallery-1527183504.jpg', 7, 0, '2018-05-24 17:38:24', '2018-05-24 17:38:24'),
(265, 'uploads/galleries/gallery-1527183509.jpg', 7, 0, '2018-05-24 17:38:29', '2018-05-24 17:38:29'),
(266, 'uploads/galleries/gallery-1527183513.jpg', 7, 0, '2018-05-24 17:38:33', '2018-05-24 17:38:33'),
(267, 'uploads/galleries/gallery-1527183518.jpg', 7, 0, '2018-05-24 17:38:38', '2018-05-24 17:38:38'),
(268, 'uploads/galleries/gallery-1527183522.jpg', 7, 0, '2018-05-24 17:38:42', '2018-05-24 17:38:42'),
(269, 'uploads/galleries/gallery-1527183528.jpg', 7, 0, '2018-05-24 17:38:48', '2018-05-24 17:38:48'),
(270, 'uploads/galleries/gallery-1527183532.jpg', 7, 0, '2018-05-24 17:38:52', '2018-05-24 17:38:52'),
(271, 'uploads/galleries/gallery-1527183537.jpg', 7, 0, '2018-05-24 17:38:57', '2018-05-24 17:38:57'),
(272, 'uploads/galleries/gallery-1527183541.jpg', 7, 0, '2018-05-24 17:39:01', '2018-05-24 17:39:01'),
(273, 'uploads/galleries/gallery-1527183546.jpg', 7, 0, '2018-05-24 17:39:06', '2018-05-24 17:39:06'),
(274, 'uploads/galleries/gallery-1527183551.jpg', 7, 0, '2018-05-24 17:39:11', '2018-05-24 17:39:11'),
(275, 'uploads/galleries/gallery-1527183556.jpg', 7, 0, '2018-05-24 17:39:16', '2018-05-24 17:39:16'),
(276, 'uploads/galleries/gallery-1527183560.jpg', 7, 0, '2018-05-24 17:39:20', '2018-05-24 17:39:20'),
(277, 'uploads/galleries/gallery-1527183564.jpg', 7, 0, '2018-05-24 17:39:24', '2018-05-24 17:39:24'),
(278, 'uploads/galleries/gallery-1527183571.jpg', 7, 0, '2018-05-24 17:39:31', '2018-05-24 17:39:31'),
(279, 'uploads/galleries/gallery-1527183586.jpg', 7, 0, '2018-05-24 17:39:46', '2018-05-24 17:39:46'),
(280, 'uploads/galleries/gallery-1527183590.jpg', 7, 0, '2018-05-24 17:39:50', '2018-05-24 17:39:50'),
(281, 'uploads/galleries/gallery-1527183594.jpg', 7, 0, '2018-05-24 17:39:54', '2018-05-24 17:39:54'),
(282, 'uploads/galleries/gallery-1527183599.jpg', 7, 0, '2018-05-24 17:39:59', '2018-05-24 17:39:59'),
(283, 'uploads/galleries/gallery-1527183604.jpg', 7, 0, '2018-05-24 17:40:04', '2018-05-24 17:40:04'),
(284, 'uploads/galleries/gallery-1527183610.jpg', 7, 0, '2018-05-24 17:40:10', '2018-05-24 17:40:10'),
(285, 'uploads/galleries/gallery-1527339387.JPG', 8, 0, '2018-05-26 12:56:27', '2018-05-26 12:56:27'),
(286, 'uploads/galleries/gallery-1527339392.JPG', 8, 0, '2018-05-26 12:56:32', '2018-05-26 12:56:32'),
(287, 'uploads/galleries/gallery-1527339396.JPG', 8, 0, '2018-05-26 12:56:36', '2018-05-26 12:56:36'),
(289, 'uploads/galleries/gallery-1527339459.jpg', 8, 0, '2018-05-26 12:57:39', '2018-05-26 12:57:39'),
(290, 'uploads/galleries/gallery-1527339466.jpg', 8, 0, '2018-05-26 12:57:46', '2018-05-26 12:57:46'),
(291, 'uploads/galleries/gallery-1527339470.jpg', 8, 0, '2018-05-26 12:57:50', '2018-05-26 12:57:50'),
(292, 'uploads/galleries/gallery-1527339475.jpg', 8, 0, '2018-05-26 12:57:55', '2018-05-26 12:57:55'),
(293, 'uploads/galleries/gallery-1527339484.jpg', 8, 0, '2018-05-26 12:58:04', '2018-05-26 12:58:04'),
(294, 'uploads/galleries/gallery-1527339488.jpg', 8, 0, '2018-05-26 12:58:08', '2018-05-26 12:58:08'),
(295, 'uploads/galleries/gallery-1527339551.jpg', 8, 0, '2018-05-26 12:59:11', '2018-05-26 12:59:11'),
(296, 'uploads/galleries/gallery-1527339559.jpg', 8, 0, '2018-05-26 12:59:19', '2018-05-26 12:59:19'),
(297, 'uploads/galleries/gallery-1527339566.jpg', 8, 0, '2018-05-26 12:59:26', '2018-05-26 12:59:26'),
(298, 'uploads/galleries/gallery-1527339570.jpg', 8, 0, '2018-05-26 12:59:30', '2018-05-26 12:59:30'),
(299, 'uploads/galleries/gallery-1527339574.jpg', 8, 0, '2018-05-26 12:59:34', '2018-05-26 12:59:34'),
(300, 'uploads/galleries/gallery-1527339581.jpg', 8, 0, '2018-05-26 12:59:41', '2018-05-26 12:59:41'),
(301, 'uploads/galleries/gallery-1527339585.jpg', 8, 0, '2018-05-26 12:59:45', '2018-05-26 12:59:45'),
(302, 'uploads/galleries/gallery-1527339590.jpg', 8, 0, '2018-05-26 12:59:50', '2018-05-26 12:59:50'),
(303, 'uploads/galleries/gallery-1527339597.jpg', 8, 0, '2018-05-26 12:59:57', '2018-05-26 12:59:57'),
(304, 'uploads/galleries/gallery-1527339602.jpg', 8, 0, '2018-05-26 13:00:02', '2018-05-26 13:00:02'),
(305, 'uploads/galleries/gallery-1527339607.jpg', 8, 0, '2018-05-26 13:00:07', '2018-05-26 13:00:07'),
(306, 'uploads/galleries/gallery-1527347388.jpg', 9, 0, '2018-05-26 15:09:48', '2018-05-26 15:09:48'),
(307, 'uploads/galleries/gallery-1527347393.jpg', 9, 0, '2018-05-26 15:09:53', '2018-05-26 15:09:53'),
(308, 'uploads/galleries/gallery-1527347398.jpg', 9, 0, '2018-05-26 15:09:58', '2018-05-26 15:09:58'),
(309, 'uploads/galleries/gallery-1527347404.jpg', 9, 0, '2018-05-26 15:10:04', '2018-05-26 15:10:04'),
(310, 'uploads/galleries/gallery-1527347409.jpg', 9, 0, '2018-05-26 15:10:09', '2018-05-26 15:10:09'),
(311, 'uploads/galleries/gallery-1527347415.jpg', 9, 0, '2018-05-26 15:10:15', '2018-05-26 15:10:15'),
(312, 'uploads/galleries/gallery-1527347421.jpg', 9, 0, '2018-05-26 15:10:21', '2018-05-26 15:10:21'),
(313, 'uploads/galleries/gallery-1527347427.jpg', 9, 0, '2018-05-26 15:10:27', '2018-05-26 15:10:27'),
(314, 'uploads/galleries/gallery-1527347431.jpg', 9, 0, '2018-05-26 15:10:31', '2018-05-26 15:10:31'),
(315, 'uploads/galleries/gallery-1527347436.jpg', 9, 0, '2018-05-26 15:10:36', '2018-05-26 15:10:36'),
(316, 'uploads/galleries/gallery-1527347440.jpg', 9, 0, '2018-05-26 15:10:40', '2018-05-26 15:10:40'),
(317, 'uploads/galleries/gallery-1527347444.jpg', 9, 0, '2018-05-26 15:10:44', '2018-05-26 15:10:44'),
(318, 'uploads/galleries/gallery-1527347451.jpg', 9, 0, '2018-05-26 15:10:51', '2018-05-26 15:10:51'),
(319, 'uploads/galleries/gallery-1527347457.jpg', 9, 0, '2018-05-26 15:10:57', '2018-05-26 15:10:57'),
(320, 'uploads/galleries/gallery-1527347461.jpg', 9, 0, '2018-05-26 15:11:01', '2018-05-26 15:11:01'),
(321, 'uploads/galleries/gallery-1527347474.jpg', 9, 0, '2018-05-26 15:11:14', '2018-05-26 15:11:14'),
(322, 'uploads/galleries/gallery-1527347479.jpg', 9, 0, '2018-05-26 15:11:19', '2018-05-26 15:11:19'),
(323, 'uploads/galleries/gallery-1527347487.jpg', 9, 0, '2018-05-26 15:11:27', '2018-05-26 15:11:27'),
(324, 'uploads/galleries/gallery-1527347495.jpg', 9, 0, '2018-05-26 15:11:35', '2018-05-26 15:11:35'),
(325, 'uploads/galleries/gallery-1527347502.jpg', 9, 0, '2018-05-26 15:11:42', '2018-05-26 15:11:42'),
(326, 'uploads/galleries/gallery-1527347515.jpg', 9, 0, '2018-05-26 15:11:55', '2018-05-26 15:11:55'),
(327, 'uploads/galleries/gallery-1527347519.jpg', 9, 0, '2018-05-26 15:11:59', '2018-05-26 15:11:59'),
(328, 'uploads/galleries/gallery-1527347525.jpg', 9, 0, '2018-05-26 15:12:05', '2018-05-26 15:12:05'),
(329, 'uploads/galleries/gallery-1527347531.jpg', 9, 0, '2018-05-26 15:12:11', '2018-05-26 15:12:11'),
(330, 'uploads/galleries/gallery-1527347539.jpg', 9, 0, '2018-05-26 15:12:19', '2018-05-26 15:12:19'),
(331, 'uploads/galleries/gallery-1527347545.jpg', 9, 0, '2018-05-26 15:12:25', '2018-05-26 15:12:25'),
(332, 'uploads/galleries/gallery-1527347552.jpg', 9, 0, '2018-05-26 15:12:32', '2018-05-26 15:12:32'),
(333, 'uploads/galleries/gallery-1527347557.jpg', 9, 0, '2018-05-26 15:12:37', '2018-05-26 15:12:37'),
(334, 'uploads/galleries/gallery-1527347562.jpg', 9, 0, '2018-05-26 15:12:42', '2018-05-26 15:12:42'),
(335, 'uploads/galleries/gallery-1527347566.jpg', 9, 0, '2018-05-26 15:12:46', '2018-05-26 15:12:46'),
(336, 'uploads/galleries/gallery-1527347571.jpg', 9, 0, '2018-05-26 15:12:51', '2018-05-26 15:12:51'),
(337, 'uploads/galleries/gallery-1527347577.jpg', 9, 0, '2018-05-26 15:12:57', '2018-05-26 15:12:57'),
(338, 'uploads/galleries/gallery-1527347588.jpg', 9, 0, '2018-05-26 15:13:08', '2018-05-26 15:13:08'),
(339, 'uploads/galleries/gallery-1527347592.jpg', 9, 0, '2018-05-26 15:13:12', '2018-05-26 15:13:12'),
(340, 'uploads/galleries/gallery-1527347597.jpg', 9, 0, '2018-05-26 15:13:17', '2018-05-26 15:13:17'),
(341, 'uploads/galleries/gallery-1527347602.jpg', 9, 0, '2018-05-26 15:13:22', '2018-05-26 15:13:22'),
(342, 'uploads/galleries/gallery-1527347612.jpg', 9, 0, '2018-05-26 15:13:32', '2018-05-26 15:13:32'),
(343, 'uploads/galleries/gallery-1527347618.jpg', 9, 0, '2018-05-26 15:13:38', '2018-05-26 15:13:38'),
(344, 'uploads/galleries/gallery-1527347627.jpg', 9, 0, '2018-05-26 15:13:47', '2018-05-26 15:13:47'),
(345, 'uploads/galleries/gallery-1527347635.jpg', 9, 0, '2018-05-26 15:13:55', '2018-05-26 15:13:55'),
(346, 'uploads/galleries/gallery-1527347655.jpg', 9, 0, '2018-05-26 15:14:15', '2018-05-26 15:14:15'),
(347, 'uploads/galleries/gallery-1527347660.jpg', 9, 0, '2018-05-26 15:14:20', '2018-05-26 15:14:20'),
(348, 'uploads/galleries/gallery-1527347668.jpg', 9, 0, '2018-05-26 15:14:28', '2018-05-26 15:14:28'),
(349, 'uploads/galleries/gallery-1527347675.jpg', 9, 0, '2018-05-26 15:14:35', '2018-05-26 15:14:35'),
(350, 'uploads/galleries/gallery-1527347681.jpg', 9, 0, '2018-05-26 15:14:41', '2018-05-26 15:14:41'),
(351, 'uploads/galleries/gallery-1527347688.jpg', 9, 0, '2018-05-26 15:14:48', '2018-05-26 15:14:48'),
(352, 'uploads/galleries/gallery-1527347701.jpg', 9, 0, '2018-05-26 15:15:01', '2018-05-26 15:15:01'),
(353, 'uploads/galleries/gallery-1527347720.jpg', 9, 0, '2018-05-26 15:15:20', '2018-05-26 15:15:20'),
(354, 'uploads/galleries/gallery-1527347727.jpg', 9, 0, '2018-05-26 15:15:27', '2018-05-26 15:15:27'),
(355, 'uploads/galleries/gallery-1527347743.jpg', 9, 0, '2018-05-26 15:15:43', '2018-05-26 15:15:43'),
(356, 'uploads/galleries/gallery-1527347751.jpg', 9, 0, '2018-05-26 15:15:51', '2018-05-26 15:15:51'),
(357, 'uploads/galleries/gallery-1527347767.jpg', 9, 0, '2018-05-26 15:16:07', '2018-05-26 15:16:07'),
(358, 'uploads/galleries/gallery-1527347773.jpg', 9, 0, '2018-05-26 15:16:13', '2018-05-26 15:16:13'),
(359, 'uploads/galleries/gallery-1527347779.jpg', 9, 0, '2018-05-26 15:16:19', '2018-05-26 15:16:19'),
(360, 'uploads/galleries/gallery-1527347785.jpg', 9, 0, '2018-05-26 15:16:25', '2018-05-26 15:16:25'),
(361, 'uploads/galleries/gallery-1527347793.jpg', 9, 0, '2018-05-26 15:16:33', '2018-05-26 15:16:33'),
(362, 'uploads/galleries/gallery-1527347802.jpg', 9, 0, '2018-05-26 15:16:42', '2018-05-26 15:16:42'),
(363, 'uploads/galleries/gallery-1527347817.jpg', 9, 0, '2018-05-26 15:16:57', '2018-05-26 15:16:57'),
(364, 'uploads/galleries/gallery-1527347824.jpg', 9, 0, '2018-05-26 15:17:04', '2018-05-26 15:17:04'),
(365, 'uploads/galleries/gallery-1527347834.jpg', 9, 0, '2018-05-26 15:17:14', '2018-05-26 15:17:14'),
(366, 'uploads/galleries/gallery-1527347848.jpg', 9, 0, '2018-05-26 15:17:28', '2018-05-26 15:17:28'),
(367, 'uploads/galleries/gallery-1527347856.jpg', 9, 0, '2018-05-26 15:17:36', '2018-05-26 15:17:36'),
(368, 'uploads/galleries/gallery-1527347864.jpg', 9, 0, '2018-05-26 15:17:44', '2018-05-26 15:17:44'),
(369, 'uploads/galleries/gallery-1527347871.jpg', 9, 0, '2018-05-26 15:17:51', '2018-05-26 15:17:51'),
(370, 'uploads/galleries/gallery-1527347878.jpg', 9, 0, '2018-05-26 15:17:58', '2018-05-26 15:17:58'),
(371, 'uploads/galleries/gallery-1527347885.jpg', 9, 0, '2018-05-26 15:18:05', '2018-05-26 15:18:05'),
(372, 'uploads/galleries/gallery-1527347891.jpg', 9, 0, '2018-05-26 15:18:11', '2018-05-26 15:18:11'),
(373, 'uploads/galleries/gallery-1527347896.jpg', 9, 0, '2018-05-26 15:18:16', '2018-05-26 15:18:16'),
(374, 'uploads/galleries/gallery-1527347903.jpg', 9, 0, '2018-05-26 15:18:23', '2018-05-26 15:18:23'),
(375, 'uploads/galleries/gallery-1527347913.jpg', 9, 0, '2018-05-26 15:18:33', '2018-05-26 15:18:33'),
(376, 'uploads/galleries/gallery-1527347920.jpg', 9, 0, '2018-05-26 15:18:40', '2018-05-26 15:18:40'),
(377, 'uploads/galleries/gallery-1527347933.jpg', 9, 0, '2018-05-26 15:18:53', '2018-05-26 15:18:53'),
(378, 'uploads/galleries/gallery-1527347938.jpg', 9, 0, '2018-05-26 15:18:58', '2018-05-26 15:18:58'),
(379, 'uploads/galleries/gallery-1527348134.jpg', 9, 0, '2018-05-26 15:22:14', '2018-05-26 15:22:14'),
(380, 'uploads/galleries/gallery-1527348143.jpg', 9, 0, '2018-05-26 15:22:23', '2018-05-26 15:22:23'),
(381, 'uploads/galleries/gallery-1527348204.jpg', 9, 0, '2018-05-26 15:23:24', '2018-05-26 15:23:24'),
(382, 'uploads/galleries/gallery-1527348211.jpg', 9, 0, '2018-05-26 15:23:31', '2018-05-26 15:23:31'),
(383, 'uploads/galleries/gallery-1527348274.jpg', 9, 0, '2018-05-26 15:24:34', '2018-05-26 15:24:34'),
(384, 'uploads/galleries/gallery-1527348279.jpg', 9, 0, '2018-05-26 15:24:39', '2018-05-26 15:24:39'),
(385, 'uploads/galleries/gallery-1527348285.jpg', 9, 0, '2018-05-26 15:24:45', '2018-05-26 15:24:45'),
(386, 'uploads/galleries/gallery-1527348289.jpg', 9, 0, '2018-05-26 15:24:49', '2018-05-26 15:24:49'),
(387, 'uploads/galleries/gallery-1527348294.jpg', 9, 0, '2018-05-26 15:24:54', '2018-05-26 15:24:54'),
(388, 'uploads/galleries/gallery-1527348299.jpg', 9, 0, '2018-05-26 15:24:59', '2018-05-26 15:24:59'),
(389, 'uploads/galleries/gallery-1527348303.jpg', 9, 0, '2018-05-26 15:25:03', '2018-05-26 15:25:03'),
(390, 'uploads/galleries/gallery-1527348308.jpg', 9, 0, '2018-05-26 15:25:08', '2018-05-26 15:25:08'),
(391, 'uploads/galleries/gallery-1527348313.jpg', 9, 0, '2018-05-26 15:25:13', '2018-05-26 15:25:13'),
(392, 'uploads/galleries/gallery-1527348318.jpg', 9, 0, '2018-05-26 15:25:18', '2018-05-26 15:25:18'),
(393, 'uploads/galleries/gallery-1527348322.jpg', 9, 0, '2018-05-26 15:25:22', '2018-05-26 15:25:22'),
(394, 'uploads/galleries/gallery-1527348326.jpg', 9, 0, '2018-05-26 15:25:26', '2018-05-26 15:25:26'),
(395, 'uploads/galleries/gallery-1527348331.jpg', 9, 0, '2018-05-26 15:25:31', '2018-05-26 15:25:31'),
(396, 'uploads/galleries/gallery-1527348335.jpg', 9, 0, '2018-05-26 15:25:35', '2018-05-26 15:25:35'),
(397, 'uploads/galleries/gallery-1527348339.jpg', 9, 0, '2018-05-26 15:25:39', '2018-05-26 15:25:39'),
(398, 'uploads/galleries/gallery-1527348344.jpg', 9, 0, '2018-05-26 15:25:44', '2018-05-26 15:25:44'),
(399, 'uploads/galleries/gallery-1527348348.jpg', 9, 0, '2018-05-26 15:25:48', '2018-05-26 15:25:48'),
(400, 'uploads/galleries/gallery-1527348353.jpg', 9, 0, '2018-05-26 15:25:53', '2018-05-26 15:25:53'),
(401, 'uploads/galleries/gallery-1527348358.jpg', 9, 0, '2018-05-26 15:25:58', '2018-05-26 15:25:58'),
(402, 'uploads/galleries/gallery-1527348363.jpg', 9, 0, '2018-05-26 15:26:03', '2018-05-26 15:26:03'),
(403, 'uploads/galleries/gallery-1527348368.jpg', 9, 0, '2018-05-26 15:26:08', '2018-05-26 15:26:08'),
(404, 'uploads/galleries/gallery-1527348373.jpg', 9, 0, '2018-05-26 15:26:13', '2018-05-26 15:26:13'),
(405, 'uploads/galleries/gallery-1527348388.jpg', 9, 0, '2018-05-26 15:26:28', '2018-05-26 15:26:28'),
(406, 'uploads/galleries/gallery-1527348393.jpg', 9, 0, '2018-05-26 15:26:33', '2018-05-26 15:26:33'),
(407, 'uploads/galleries/gallery-1527348399.jpg', 9, 0, '2018-05-26 15:26:39', '2018-05-26 15:26:39'),
(408, 'uploads/galleries/gallery-1527348404.jpg', 9, 0, '2018-05-26 15:26:44', '2018-05-26 15:26:44'),
(409, 'uploads/galleries/gallery-1527348409.jpg', 9, 0, '2018-05-26 15:26:49', '2018-05-26 15:26:49'),
(410, 'uploads/galleries/gallery-1527348415.jpg', 9, 0, '2018-05-26 15:26:55', '2018-05-26 15:26:55'),
(411, 'uploads/galleries/gallery-1527348423.jpg', 9, 0, '2018-05-26 15:27:03', '2018-05-26 15:27:03'),
(412, 'uploads/galleries/gallery-1527348427.jpg', 9, 0, '2018-05-26 15:27:07', '2018-05-26 15:27:07'),
(413, 'uploads/galleries/gallery-1527348432.jpg', 9, 0, '2018-05-26 15:27:12', '2018-05-26 15:27:12'),
(414, 'uploads/galleries/gallery-1527348437.jpg', 9, 0, '2018-05-26 15:27:17', '2018-05-26 15:27:17'),
(415, 'uploads/galleries/gallery-1527348443.jpg', 9, 0, '2018-05-26 15:27:23', '2018-05-26 15:27:23'),
(416, 'uploads/galleries/gallery-1527348448.jpg', 9, 0, '2018-05-26 15:27:28', '2018-05-26 15:27:28'),
(417, 'uploads/galleries/gallery-1527348453.jpg', 9, 0, '2018-05-26 15:27:33', '2018-05-26 15:27:33'),
(418, 'uploads/galleries/gallery-1527348458.jpg', 9, 0, '2018-05-26 15:27:38', '2018-05-26 15:27:38'),
(419, 'uploads/galleries/gallery-1527348462.jpg', 9, 0, '2018-05-26 15:27:42', '2018-05-26 15:27:42'),
(420, 'uploads/galleries/gallery-1527348467.jpg', 9, 0, '2018-05-26 15:27:47', '2018-05-26 15:27:47'),
(421, 'uploads/galleries/gallery-1527348472.jpg', 9, 0, '2018-05-26 15:27:52', '2018-05-26 15:27:52'),
(422, 'uploads/galleries/gallery-1527348477.jpg', 9, 0, '2018-05-26 15:27:57', '2018-05-26 15:27:57'),
(423, 'uploads/galleries/gallery-1527348481.jpg', 9, 0, '2018-05-26 15:28:01', '2018-05-26 15:28:01'),
(424, 'uploads/galleries/gallery-1527348485.jpg', 9, 0, '2018-05-26 15:28:05', '2018-05-26 15:28:05'),
(425, 'uploads/galleries/gallery-1527348493.jpg', 9, 0, '2018-05-26 15:28:13', '2018-05-26 15:28:13'),
(426, 'uploads/galleries/gallery-1527348653.jpg', 9, 0, '2018-05-26 15:30:53', '2018-05-26 15:30:53'),
(427, 'uploads/galleries/gallery-1527348658.jpg', 9, 0, '2018-05-26 15:30:58', '2018-05-26 15:30:58'),
(428, 'uploads/galleries/gallery-1527348663.jpg', 9, 0, '2018-05-26 15:31:03', '2018-05-26 15:31:03'),
(429, 'uploads/galleries/gallery-1527348667.jpg', 9, 0, '2018-05-26 15:31:07', '2018-05-26 15:31:07'),
(430, 'uploads/galleries/gallery-1527348672.jpg', 9, 0, '2018-05-26 15:31:12', '2018-05-26 15:31:12'),
(431, 'uploads/galleries/gallery-1527348677.jpg', 9, 0, '2018-05-26 15:31:17', '2018-05-26 15:31:17'),
(432, 'uploads/galleries/gallery-1527348682.jpg', 9, 0, '2018-05-26 15:31:22', '2018-05-26 15:31:22'),
(433, 'uploads/galleries/gallery-1527348687.jpg', 9, 0, '2018-05-26 15:31:27', '2018-05-26 15:31:27'),
(434, 'uploads/galleries/gallery-1527348692.jpg', 9, 0, '2018-05-26 15:31:32', '2018-05-26 15:31:32'),
(435, 'uploads/galleries/gallery-1527348701.jpg', 9, 0, '2018-05-26 15:31:41', '2018-05-26 15:31:41'),
(436, 'uploads/galleries/gallery-1527348708.jpg', 9, 0, '2018-05-26 15:31:48', '2018-05-26 15:31:48'),
(437, 'uploads/galleries/gallery-1527348714.jpg', 9, 0, '2018-05-26 15:31:54', '2018-05-26 15:31:54'),
(438, 'uploads/galleries/gallery-1527348720.jpg', 9, 0, '2018-05-26 15:32:00', '2018-05-26 15:32:00'),
(439, 'uploads/galleries/gallery-1527348726.jpg', 9, 0, '2018-05-26 15:32:06', '2018-05-26 15:32:06'),
(440, 'uploads/galleries/gallery-1527348731.jpg', 9, 0, '2018-05-26 15:32:11', '2018-05-26 15:32:11'),
(441, 'uploads/galleries/gallery-1527348738.jpg', 9, 0, '2018-05-26 15:32:18', '2018-05-26 15:32:18'),
(442, 'uploads/galleries/gallery-1527348743.jpg', 9, 0, '2018-05-26 15:32:23', '2018-05-26 15:32:23'),
(443, 'uploads/galleries/gallery-1527348751.jpg', 9, 0, '2018-05-26 15:32:31', '2018-05-26 15:32:31'),
(444, 'uploads/galleries/gallery-1527348757.jpg', 9, 0, '2018-05-26 15:32:37', '2018-05-26 15:32:37'),
(445, 'uploads/galleries/gallery-1527348762.jpg', 9, 0, '2018-05-26 15:32:42', '2018-05-26 15:32:42'),
(446, 'uploads/galleries/gallery-1527348767.jpg', 9, 0, '2018-05-26 15:32:47', '2018-05-26 15:32:47'),
(447, 'uploads/galleries/gallery-1527348773.jpg', 9, 0, '2018-05-26 15:32:53', '2018-05-26 15:32:53'),
(448, 'uploads/galleries/gallery-1527348779.jpg', 9, 0, '2018-05-26 15:32:59', '2018-05-26 15:32:59'),
(449, 'uploads/galleries/gallery-1527348784.jpg', 9, 0, '2018-05-26 15:33:04', '2018-05-26 15:33:04'),
(450, 'uploads/galleries/gallery-1527348789.jpg', 9, 0, '2018-05-26 15:33:09', '2018-05-26 15:33:09'),
(451, 'uploads/galleries/gallery-1527348794.jpg', 9, 0, '2018-05-26 15:33:14', '2018-05-26 15:33:14'),
(452, 'uploads/galleries/gallery-1527348800.jpg', 9, 0, '2018-05-26 15:33:20', '2018-05-26 15:33:20'),
(453, 'uploads/galleries/gallery-1527348805.jpg', 9, 0, '2018-05-26 15:33:25', '2018-05-26 15:33:25'),
(454, 'uploads/galleries/gallery-1527348812.jpg', 9, 0, '2018-05-26 15:33:32', '2018-05-26 15:33:32'),
(455, 'uploads/galleries/gallery-1527348819.jpg', 9, 0, '2018-05-26 15:33:39', '2018-05-26 15:33:39'),
(456, 'uploads/galleries/gallery-1527348825.jpg', 9, 0, '2018-05-26 15:33:45', '2018-05-26 15:33:45'),
(457, 'uploads/galleries/gallery-1527348829.jpg', 9, 0, '2018-05-26 15:33:49', '2018-05-26 15:33:49'),
(458, 'uploads/galleries/gallery-1527348834.jpg', 9, 0, '2018-05-26 15:33:54', '2018-05-26 15:33:54'),
(459, 'uploads/galleries/gallery-1527348840.jpg', 9, 0, '2018-05-26 15:34:00', '2018-05-26 15:34:00'),
(460, 'uploads/galleries/gallery-1527348845.jpg', 9, 0, '2018-05-26 15:34:05', '2018-05-26 15:34:05'),
(461, 'uploads/galleries/gallery-1527348850.jpg', 9, 0, '2018-05-26 15:34:10', '2018-05-26 15:34:10'),
(462, 'uploads/galleries/gallery-1527348855.jpg', 9, 0, '2018-05-26 15:34:15', '2018-05-26 15:34:15'),
(463, 'uploads/galleries/gallery-1527348860.jpg', 9, 0, '2018-05-26 15:34:20', '2018-05-26 15:34:20'),
(464, 'uploads/galleries/gallery-1527348866.jpg', 9, 0, '2018-05-26 15:34:26', '2018-05-26 15:34:26'),
(465, 'uploads/galleries/gallery-1527348871.jpg', 9, 0, '2018-05-26 15:34:31', '2018-05-26 15:34:31'),
(466, 'uploads/galleries/gallery-1527348880.jpg', 9, 0, '2018-05-26 15:34:40', '2018-05-26 15:34:40'),
(467, 'uploads/galleries/gallery-1527348886.jpg', 9, 0, '2018-05-26 15:34:46', '2018-05-26 15:34:46'),
(468, 'uploads/galleries/gallery-1527348892.jpg', 9, 0, '2018-05-26 15:34:52', '2018-05-26 15:34:52'),
(469, 'uploads/galleries/gallery-1527348898.jpg', 9, 0, '2018-05-26 15:34:58', '2018-05-26 15:34:58'),
(470, 'uploads/galleries/gallery-1527348905.jpg', 9, 0, '2018-05-26 15:35:05', '2018-05-26 15:35:05'),
(471, 'uploads/galleries/gallery-1527348926.jpg', 9, 0, '2018-05-26 15:35:26', '2018-05-26 15:35:26'),
(472, 'uploads/galleries/gallery-1527348931.jpg', 9, 0, '2018-05-26 15:35:31', '2018-05-26 15:35:31'),
(473, 'uploads/galleries/gallery-1527348937.jpg', 9, 0, '2018-05-26 15:35:37', '2018-05-26 15:35:37'),
(474, 'uploads/galleries/gallery-1527348942.jpg', 9, 0, '2018-05-26 15:35:42', '2018-05-26 15:35:42'),
(475, 'uploads/galleries/gallery-1527348951.jpg', 9, 0, '2018-05-26 15:35:51', '2018-05-26 15:35:51'),
(476, 'uploads/galleries/gallery-1527348956.jpg', 9, 0, '2018-05-26 15:35:56', '2018-05-26 15:35:56'),
(477, 'uploads/galleries/gallery-1527348961.jpg', 9, 0, '2018-05-26 15:36:01', '2018-05-26 15:36:01'),
(478, 'uploads/galleries/gallery-1527348966.jpg', 9, 0, '2018-05-26 15:36:06', '2018-05-26 15:36:06'),
(479, 'uploads/galleries/gallery-1527348972.jpg', 9, 0, '2018-05-26 15:36:12', '2018-05-26 15:36:12'),
(480, 'uploads/galleries/gallery-1527348977.jpg', 9, 0, '2018-05-26 15:36:17', '2018-05-26 15:36:17'),
(481, 'uploads/galleries/gallery-1527348984.jpg', 9, 0, '2018-05-26 15:36:24', '2018-05-26 15:36:24'),
(482, 'uploads/galleries/gallery-1527348990.jpg', 9, 0, '2018-05-26 15:36:30', '2018-05-26 15:36:30'),
(483, 'uploads/galleries/gallery-1527348995.jpg', 9, 0, '2018-05-26 15:36:35', '2018-05-26 15:36:35'),
(484, 'uploads/galleries/gallery-1527349002.jpg', 9, 0, '2018-05-26 15:36:42', '2018-05-26 15:36:42'),
(485, 'uploads/galleries/gallery-1527349010.jpg', 9, 0, '2018-05-26 15:36:50', '2018-05-26 15:36:50'),
(486, 'uploads/galleries/gallery-1527349016.jpg', 9, 0, '2018-05-26 15:36:56', '2018-05-26 15:36:56'),
(487, 'uploads/galleries/gallery-1527349021.jpg', 9, 0, '2018-05-26 15:37:01', '2018-05-26 15:37:01'),
(488, 'uploads/galleries/gallery-1527349026.jpg', 9, 0, '2018-05-26 15:37:06', '2018-05-26 15:37:06'),
(489, 'uploads/galleries/gallery-1527349031.jpg', 9, 0, '2018-05-26 15:37:11', '2018-05-26 15:37:11'),
(490, 'uploads/galleries/gallery-1527349037.jpg', 9, 0, '2018-05-26 15:37:17', '2018-05-26 15:37:17'),
(491, 'uploads/galleries/gallery-1527349042.jpg', 9, 0, '2018-05-26 15:37:22', '2018-05-26 15:37:22'),
(492, 'uploads/galleries/gallery-1527349047.jpg', 9, 0, '2018-05-26 15:37:27', '2018-05-26 15:37:27'),
(493, 'uploads/galleries/gallery-1527349052.jpg', 9, 0, '2018-05-26 15:37:32', '2018-05-26 15:37:32'),
(494, 'uploads/galleries/gallery-1527349058.jpg', 9, 0, '2018-05-26 15:37:38', '2018-05-26 15:37:38'),
(495, 'uploads/galleries/gallery-1527349063.jpg', 9, 0, '2018-05-26 15:37:43', '2018-05-26 15:37:43'),
(496, 'uploads/galleries/gallery-1527349071.jpg', 9, 0, '2018-05-26 15:37:51', '2018-05-26 15:37:51'),
(497, 'uploads/galleries/gallery-1527349076.jpg', 9, 0, '2018-05-26 15:37:56', '2018-05-26 15:37:56'),
(498, 'uploads/galleries/gallery-1527349081.jpg', 9, 0, '2018-05-26 15:38:01', '2018-05-26 15:38:01'),
(499, 'uploads/galleries/gallery-1527349087.jpg', 9, 0, '2018-05-26 15:38:07', '2018-05-26 15:38:07'),
(500, 'uploads/galleries/gallery-1527349092.jpg', 9, 0, '2018-05-26 15:38:12', '2018-05-26 15:38:12'),
(501, 'uploads/galleries/gallery-1527349097.jpg', 9, 0, '2018-05-26 15:38:17', '2018-05-26 15:38:17'),
(502, 'uploads/galleries/gallery-1527349103.jpg', 9, 0, '2018-05-26 15:38:23', '2018-05-26 15:38:23'),
(503, 'uploads/galleries/gallery-1527349107.jpg', 9, 0, '2018-05-26 15:38:27', '2018-05-26 15:38:27'),
(504, 'uploads/galleries/gallery-1527349112.jpg', 9, 0, '2018-05-26 15:38:32', '2018-05-26 15:38:32');
INSERT INTO `images` (`id`, `url`, `gallery_id`, `index_id`, `created_at`, `updated_at`) VALUES
(505, 'uploads/galleries/gallery-1527349117.jpg', 9, 0, '2018-05-26 15:38:37', '2018-05-26 15:38:37'),
(506, 'uploads/galleries/gallery-1527349123.jpg', 9, 0, '2018-05-26 15:38:43', '2018-05-26 15:38:43'),
(507, 'uploads/galleries/gallery-1527349129.jpg', 9, 0, '2018-05-26 15:38:49', '2018-05-26 15:38:49'),
(508, 'uploads/galleries/gallery-1527349134.jpg', 9, 0, '2018-05-26 15:38:54', '2018-05-26 15:38:54'),
(509, 'uploads/galleries/gallery-1527349139.jpg', 9, 0, '2018-05-26 15:38:59', '2018-05-26 15:38:59'),
(510, 'uploads/galleries/gallery-1527349145.jpg', 9, 0, '2018-05-26 15:39:05', '2018-05-26 15:39:05'),
(511, 'uploads/galleries/gallery-1527349150.jpg', 9, 0, '2018-05-26 15:39:10', '2018-05-26 15:39:10'),
(512, 'uploads/galleries/gallery-1527349155.jpg', 9, 0, '2018-05-26 15:39:15', '2018-05-26 15:39:15'),
(513, 'uploads/galleries/gallery-1527349161.jpg', 9, 0, '2018-05-26 15:39:21', '2018-05-26 15:39:21'),
(514, 'uploads/galleries/gallery-1527349166.jpg', 9, 0, '2018-05-26 15:39:26', '2018-05-26 15:39:26'),
(515, 'uploads/galleries/gallery-1527349172.jpg', 9, 0, '2018-05-26 15:39:32', '2018-05-26 15:39:32'),
(516, 'uploads/galleries/gallery-1527349178.jpg', 9, 0, '2018-05-26 15:39:38', '2018-05-26 15:39:38'),
(517, 'uploads/galleries/gallery-1527349184.jpg', 9, 0, '2018-05-26 15:39:44', '2018-05-26 15:39:44'),
(518, 'uploads/galleries/gallery-1527349189.jpg', 9, 0, '2018-05-26 15:39:49', '2018-05-26 15:39:49'),
(519, 'uploads/galleries/gallery-1527349195.jpg', 9, 0, '2018-05-26 15:39:55', '2018-05-26 15:39:55'),
(520, 'uploads/galleries/gallery-1527349200.jpg', 9, 0, '2018-05-26 15:40:00', '2018-05-26 15:40:00'),
(521, 'uploads/galleries/gallery-1527349205.jpg', 9, 0, '2018-05-26 15:40:05', '2018-05-26 15:40:05'),
(522, 'uploads/galleries/gallery-1527349210.jpg', 9, 0, '2018-05-26 15:40:10', '2018-05-26 15:40:10'),
(523, 'uploads/galleries/gallery-1527349215.jpg', 9, 0, '2018-05-26 15:40:15', '2018-05-26 15:40:15'),
(524, 'uploads/galleries/gallery-1527349222.jpg', 9, 0, '2018-05-26 15:40:22', '2018-05-26 15:40:22'),
(525, 'uploads/galleries/gallery-1527349227.jpg', 9, 0, '2018-05-26 15:40:27', '2018-05-26 15:40:27'),
(526, 'uploads/galleries/gallery-1527349232.jpg', 9, 0, '2018-05-26 15:40:32', '2018-05-26 15:40:32'),
(527, 'uploads/galleries/gallery-1527349239.jpg', 9, 0, '2018-05-26 15:40:39', '2018-05-26 15:40:39'),
(528, 'uploads/galleries/gallery-1527349245.jpg', 9, 0, '2018-05-26 15:40:45', '2018-05-26 15:40:45'),
(529, 'uploads/galleries/gallery-1527349250.jpg', 9, 0, '2018-05-26 15:40:50', '2018-05-26 15:40:50'),
(530, 'uploads/galleries/gallery-1527349257.jpg', 9, 0, '2018-05-26 15:40:57', '2018-05-26 15:40:57'),
(531, 'uploads/galleries/gallery-1527349262.jpg', 9, 0, '2018-05-26 15:41:02', '2018-05-26 15:41:02'),
(532, 'uploads/galleries/gallery-1527349267.jpg', 9, 0, '2018-05-26 15:41:07', '2018-05-26 15:41:07'),
(533, 'uploads/galleries/gallery-1527349273.jpg', 9, 0, '2018-05-26 15:41:13', '2018-05-26 15:41:13'),
(534, 'uploads/galleries/gallery-1527429502.jpg', 10, 0, '2018-05-27 13:58:22', '2018-05-27 13:58:22'),
(535, 'uploads/galleries/gallery-1527429507.jpg', 10, 0, '2018-05-27 13:58:27', '2018-05-27 13:58:27'),
(536, 'uploads/galleries/gallery-1527429512.jpg', 10, 0, '2018-05-27 13:58:32', '2018-05-27 13:58:32'),
(537, 'uploads/galleries/gallery-1527429516.jpg', 10, 0, '2018-05-27 13:58:36', '2018-05-27 13:58:36'),
(538, 'uploads/galleries/gallery-1527429520.jpg', 10, 0, '2018-05-27 13:58:40', '2018-05-27 13:58:40'),
(539, 'uploads/galleries/gallery-1527429525.jpg', 10, 0, '2018-05-27 13:58:45', '2018-05-27 13:58:45'),
(540, 'uploads/galleries/gallery-1527429529.jpg', 10, 0, '2018-05-27 13:58:49', '2018-05-27 13:58:49'),
(541, 'uploads/galleries/gallery-1527429535.jpg', 10, 0, '2018-05-27 13:58:55', '2018-05-27 13:58:55'),
(542, 'uploads/galleries/gallery-1527429540.jpg', 10, 0, '2018-05-27 13:59:00', '2018-05-27 13:59:00'),
(543, 'uploads/galleries/gallery-1527429544.jpg', 10, 0, '2018-05-27 13:59:04', '2018-05-27 13:59:04'),
(544, 'uploads/galleries/gallery-1527429548.jpg', 10, 0, '2018-05-27 13:59:08', '2018-05-27 13:59:08'),
(545, 'uploads/galleries/gallery-1527429552.jpg', 10, 0, '2018-05-27 13:59:12', '2018-05-27 13:59:12'),
(546, 'uploads/galleries/gallery-1527429556.jpg', 10, 0, '2018-05-27 13:59:16', '2018-05-27 13:59:16'),
(547, 'uploads/galleries/gallery-1527429561.jpg', 10, 0, '2018-05-27 13:59:21', '2018-05-27 13:59:21'),
(548, 'uploads/galleries/gallery-1527429566.jpg', 10, 0, '2018-05-27 13:59:26', '2018-05-27 13:59:26'),
(549, 'uploads/galleries/gallery-1527429571.jpg', 10, 0, '2018-05-27 13:59:31', '2018-05-27 13:59:31'),
(550, 'uploads/galleries/gallery-1527429578.jpg', 10, 0, '2018-05-27 13:59:38', '2018-05-27 13:59:38'),
(551, 'uploads/galleries/gallery-1527429582.jpg', 10, 0, '2018-05-27 13:59:42', '2018-05-27 13:59:42'),
(552, 'uploads/galleries/gallery-1527429587.jpg', 10, 0, '2018-05-27 13:59:47', '2018-05-27 13:59:47'),
(553, 'uploads/galleries/gallery-1527429591.jpg', 10, 0, '2018-05-27 13:59:51', '2018-05-27 13:59:51'),
(554, 'uploads/galleries/gallery-1527429597.jpg', 10, 0, '2018-05-27 13:59:57', '2018-05-27 13:59:57'),
(555, 'uploads/galleries/gallery-1527429602.jpg', 10, 0, '2018-05-27 14:00:02', '2018-05-27 14:00:02'),
(569, 'uploads/galleries/gallery-1527436346.jpg', 11, 0, '2018-05-27 15:52:26', '2018-05-27 15:52:26'),
(570, 'uploads/galleries/gallery-1527436351.jpg', 11, 0, '2018-05-27 15:52:31', '2018-05-27 15:52:31'),
(571, 'uploads/galleries/gallery-1527436357.jpg', 11, 0, '2018-05-27 15:52:37', '2018-05-27 15:52:37'),
(572, 'uploads/galleries/gallery-1527436363.jpg', 11, 0, '2018-05-27 15:52:43', '2018-05-27 15:52:43'),
(573, 'uploads/galleries/gallery-1527436368.jpg', 11, 0, '2018-05-27 15:52:48', '2018-05-27 15:52:48'),
(574, 'uploads/galleries/gallery-1527436374.jpg', 11, 0, '2018-05-27 15:52:54', '2018-05-27 15:52:54'),
(575, 'uploads/galleries/gallery-1527436378.jpg', 11, 0, '2018-05-27 15:52:58', '2018-05-27 15:52:58'),
(576, 'uploads/galleries/gallery-1527436385.jpg', 11, 0, '2018-05-27 15:53:05', '2018-05-27 15:53:05'),
(577, 'uploads/galleries/gallery-1527436391.jpg', 11, 0, '2018-05-27 15:53:11', '2018-05-27 15:53:11'),
(578, 'uploads/galleries/gallery-1527436396.jpg', 11, 0, '2018-05-27 15:53:16', '2018-05-27 15:53:16'),
(579, 'uploads/galleries/gallery-1527436420.jpg', 11, 0, '2018-05-27 15:53:40', '2018-05-27 15:53:40'),
(580, 'uploads/galleries/gallery-1527436425.jpg', 11, 0, '2018-05-27 15:53:45', '2018-05-27 15:53:45'),
(581, 'uploads/galleries/gallery-1527436435.jpg', 11, 0, '2018-05-27 15:53:55', '2018-05-27 15:53:55');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE IF NOT EXISTS `menus` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2018-04-20 05:42:41', '2018-04-20 05:42:41'),
(2, 'master', '2018-04-20 11:22:41', '2018-04-20 11:22:41');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE IF NOT EXISTS `menu_items` (
  `id` int(10) unsigned NOT NULL,
  `menu_id` int(10) unsigned NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `order` int(10) unsigned NOT NULL DEFAULT '0',
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `parent_id`, `order`, `route`, `parameters`, `created_at`, `updated_at`) VALUES
(1, 1, 'Dashboard', NULL, NULL, 'ti-anchor', 0, 1, 'dashboard', NULL, '2018-04-20 05:42:41', '2018-04-27 07:52:48'),
(2, 1, 'Người dùng', NULL, NULL, 'ti-user', 0, 7, 'users.index', NULL, '2018-04-20 05:42:41', '2018-05-19 04:30:12'),
(3, 1, 'Vai trò & Quyền', '#', NULL, 'ti-key', 0, 8, NULL, NULL, '2018-04-20 05:42:41', '2018-05-19 04:30:12'),
(4, 1, 'Vai trò', NULL, NULL, NULL, 3, 9, 'roles.index', NULL, '2018-04-20 05:42:41', '2018-05-19 04:30:12'),
(5, 1, 'Quyền', NULL, NULL, NULL, 3, 10, 'permissions.index', NULL, '2018-04-20 05:42:41', '2018-05-19 04:30:12'),
(6, 1, 'Menu Builder', NULL, NULL, 'ti-list', 0, 9, 'menus.index', NULL, '2018-04-20 05:42:41', '2018-05-19 04:30:12'),
(7, 2, 'Home', '/', NULL, NULL, 0, 1, NULL, NULL, '2018-04-20 11:23:13', '2018-04-20 11:47:38'),
(9, 2, 'Galleries', 'galleries-hinh-anh', NULL, NULL, 0, 2, NULL, NULL, '2018-04-20 11:27:43', '2018-05-19 05:23:26'),
(11, 2, 'Videos', 'videos', NULL, NULL, 0, 3, NULL, NULL, '2018-04-20 12:02:38', '2018-05-23 08:33:08'),
(12, 1, 'Settings', '#', NULL, 'ti-settings', 0, 10, NULL, NULL, '2018-04-20 12:04:41', '2018-05-19 04:29:58'),
(15, 1, 'Bộ sưu tập', NULL, NULL, 'ti-gallery', 0, 3, 'galleries.index', NULL, '2018-04-21 03:40:09', '2018-05-23 08:36:40'),
(16, 1, 'Logo', '#', NULL, NULL, 12, 11, NULL, NULL, '2018-04-27 07:52:30', '2018-05-19 04:29:58'),
(17, 1, 'Sliders', NULL, NULL, 'ti-image', 0, 2, 'sliders.index', NULL, '2018-04-27 07:58:09', '2018-05-19 04:30:04'),
(18, 1, 'Liên Hệ', NULL, NULL, 'ti-location-arrow', 0, 5, 'contact.index', NULL, '2018-05-18 15:13:43', '2018-05-19 04:30:12'),
(19, 1, 'Ảnh Cuối Trang', NULL, NULL, 'ti-image', 0, 6, 'footerphoto.index', NULL, '2018-05-18 18:36:46', '2018-05-19 04:30:12'),
(20, 2, 'Liên Hệ', 'lien-he', NULL, NULL, 0, 4, NULL, NULL, '2018-05-19 04:28:45', '2018-05-19 10:05:40'),
(21, 2, 'Album Cưới', '/galleries-hinh-anh/1', NULL, NULL, 9, 3, NULL, NULL, '2018-05-19 09:59:28', '2018-05-19 10:01:09'),
(22, 2, 'Album Tổng Hợp', '/galleries-hinh-anh/2', NULL, NULL, 9, 5, NULL, NULL, '2018-05-19 09:59:52', '2018-05-24 05:11:53'),
(23, 1, 'Videos', NULL, NULL, 'ti-briefcase', 0, 4, 'portfolios.index', NULL, '2018-05-23 08:35:45', '2018-05-23 08:36:40'),
(24, 1, 'Bài Viết', NULL, NULL, NULL, 0, 0, 'posts.index', NULL, '2018-05-23 11:20:20', '2018-05-23 11:20:20'),
(25, 2, 'Album Event', '/galleries-hinh-anh/3', NULL, NULL, 9, 4, NULL, NULL, '2018-05-24 05:11:46', '2018-05-24 05:11:53');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_03_10_031326_laratrust_setup_tables', 1),
(4, '2018_03_17_091235_create_menus_table', 1),
(5, '2018_03_17_091522_create_menu_items_table', 1),
(6, '2018_04_20_124940_create_sliders_table', 2),
(7, '2018_04_21_085359_create_portfolios_table', 3),
(8, '2018_04_21_102415_create_galleries_table', 4),
(9, '2018_04_21_102545_create_images_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE IF NOT EXISTS `permissions` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'create-users', 'Create Users', 'Create Users', '2018-04-20 05:42:37', '2018-04-20 05:42:37'),
(2, 'read-users', 'Read Users', 'Read Users', '2018-04-20 05:42:37', '2018-04-20 05:42:37'),
(3, 'update-users', 'Update Users', 'Update Users', '2018-04-20 05:42:37', '2018-04-20 05:42:37'),
(4, 'delete-users', 'Delete Users', 'Delete Users', '2018-04-20 05:42:37', '2018-04-20 05:42:37'),
(5, 'create-acl', 'Create Acl', 'Create Acl', '2018-04-20 05:42:37', '2018-04-20 05:42:37'),
(6, 'read-acl', 'Read Acl', 'Read Acl', '2018-04-20 05:42:37', '2018-04-20 05:42:37'),
(7, 'update-acl', 'Update Acl', 'Update Acl', '2018-04-20 05:42:37', '2018-04-20 05:42:37'),
(8, 'delete-acl', 'Delete Acl', 'Delete Acl', '2018-04-20 05:42:37', '2018-04-20 05:42:37'),
(9, 'read-profile', 'Read Profile', 'Read Profile', '2018-04-20 05:42:37', '2018-04-20 05:42:37'),
(10, 'update-profile', 'Update Profile', 'Update Profile', '2018-04-20 05:42:37', '2018-04-20 05:42:37'),
(19, 'create-menus', 'Create Menus', 'Create Menus', '2018-04-20 05:42:38', '2018-04-20 05:42:38'),
(20, 'read-menus', 'Read Menus', 'Read Menus', '2018-04-20 05:42:38', '2018-04-20 05:42:38'),
(21, 'update-menus', 'Update Menus', 'Update Menus', '2018-04-20 05:42:38', '2018-04-20 05:42:38'),
(22, 'delete-menus', 'Delete Menus', 'Delete Menus', '2018-04-20 05:42:38', '2018-04-20 05:42:38'),
(23, 'create-sliders', 'Create Sliders', 'Create Sliders', '2018-05-16 05:11:24', '2018-05-16 05:11:53'),
(24, 'read-sliders', 'Read Sliders', 'Read Sliders', '2018-05-16 05:12:24', '2018-05-16 05:12:24'),
(25, 'update-sliders', 'Update Sliders', 'Update Sliders', '2018-05-16 05:14:05', '2018-05-16 05:14:05'),
(26, 'delete-sliders', 'Delete Sliders', 'Delete Sliders', '2018-05-16 05:14:23', '2018-05-16 05:14:23'),
(27, 'create-portfolios', 'Create Portfolios', 'Create Portfolios', '2018-05-16 05:17:13', '2018-05-16 05:17:13'),
(28, 'read-portfolios', 'Read Portfolios', 'Read Portfolios', '2018-05-16 05:17:34', '2018-05-16 05:17:34'),
(29, 'delete-portfolios', 'Delete Portfolios', 'Delete Portfolios', '2018-05-16 05:18:20', '2018-05-16 05:18:20'),
(30, 'update-portfolios', 'Update Portfolios', 'Update Portfolios', '2018-05-16 05:18:37', '2018-05-16 05:18:37'),
(31, 'update-contact', 'Liên Hệ', 'Liên Hệ', '2018-05-18 15:19:24', '2018-05-18 15:19:24'),
(32, 'create-footerphoto', 'Tạo Ảnh Cuối Trang', 'Tạo Ảnh Cuối Trang', '2018-05-18 18:42:01', '2018-05-18 18:42:01'),
(33, 'read-footerphoto', 'Đọc Ảnh Cuối Trang', 'Đọc Ảnh Cuối Trang', '2018-05-18 18:42:29', '2018-05-18 18:42:29'),
(34, 'update-footerphoto', 'Sửa Ảnh Cuối Trang', 'Sửa Ảnh Cuối Trang', '2018-05-18 18:42:57', '2018-05-18 18:42:57'),
(35, 'delete-footerphoto', 'Xóa Ảnh Cuối Trang', 'Xóa Ảnh Cuối Trang', '2018-05-18 18:43:31', '2018-05-18 18:43:31'),
(36, 'create-galleries', 'Tạo bộ sưu tập', 'Tạo bộ sưu tập', '2018-05-19 06:56:22', '2018-05-19 06:56:22'),
(37, 'read-galleries', 'Xem bộ sưu tập', 'Xem bộ sưu tập', '2018-05-19 06:56:46', '2018-05-19 06:56:46'),
(38, 'update-galleries', 'Cập nhật bộ sưu tập', 'Cập nhật bộ sưu tập', '2018-05-19 06:57:31', '2018-05-19 06:57:31'),
(39, 'delete-galleries', 'Xóa bộ sưu tập', 'Xóa bộ sưu tập', '2018-05-19 06:57:53', '2018-05-19 06:57:53');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE IF NOT EXISTS `permission_role` (
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(2, 1),
(2, 2),
(3, 1),
(3, 2),
(4, 1),
(4, 2),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(9, 2),
(9, 3),
(10, 1),
(10, 2),
(10, 3),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1);

-- --------------------------------------------------------

--
-- Table structure for table `permission_user`
--

CREATE TABLE IF NOT EXISTS `permission_user` (
  `permission_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `user_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'AppUser'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `portfolios`
--

CREATE TABLE IF NOT EXISTS `portfolios` (
  `id` int(10) unsigned NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT 'double_size',
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `video_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `portfolios`
--

INSERT INTO `portfolios` (`id`, `title`, `size`, `image_path`, `video_path`, `created_at`, `updated_at`) VALUES
(1, 'Picture Yourself', NULL, 'uploads/1526483350.jpg', 'gGqqRiNpT_g', '2018-04-21 02:23:10', '2018-05-23 08:37:46'),
(2, 'Highlining 2800 In Winter', 'double_size', 'uploads/1526483668.jpg', 'gGqqRiNpT_g', '2018-04-21 02:45:36', '2018-05-23 08:37:54'),
(3, 'Istanbul - Through the Prism', NULL, 'uploads/1526483871.jpg', 'gGqqRiNpT_g', '2018-04-21 02:47:18', '2018-05-23 08:38:02'),
(4, 'The Marvel Symphonic Universe', NULL, 'uploads/1526483962.jpg', 'gGqqRiNpT_g', '2018-04-21 02:55:29', '2018-05-23 08:38:11'),
(5, 'The Dress', NULL, 'uploads/1526484079.jpg', 'gGqqRiNpT_g', '2018-04-21 02:56:27', '2018-05-23 08:38:21'),
(6, 'Jones - ‘Melt’', NULL, 'uploads/1526484193.jpg', 'gGqqRiNpT_g', '2018-04-21 03:01:26', '2018-05-23 08:38:31');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'superadmin', 'Superadmin', 'Superadmin', '2018-04-20 05:42:37', '2018-04-20 05:42:37'),
(2, 'admin', 'Admin', 'Admin', '2018-04-20 05:42:39', '2018-04-20 05:42:39'),
(3, 'user', 'User', 'User', '2018-04-20 05:42:40', '2018-04-20 05:42:40');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE IF NOT EXISTS `role_user` (
  `role_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `user_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'AppUser'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`role_id`, `user_id`, `user_type`) VALUES
(1, 1, 'AppUser'),
(2, 2, 'AppUser'),
(3, 3, 'AppUser'),
(1, 4, 'AppUser');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE IF NOT EXISTS `sliders` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `btn_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btn_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btn_route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `name`, `title`, `description`, `btn_name`, `btn_url`, `btn_route`, `video_path`, `created_at`, `updated_at`) VALUES
(1, 'main', 'OG PRODUCTION', 'Media - Wedding - Event - Fashion', NULL, NULL, NULL, 'gGqqRiNpT_g', '2018-04-20 08:43:08', '2018-05-16 14:27:33'),
(2, 'second', 'Nhận Báo Giá', 'Liên hệ với chúng tôi ngay hôm nay để được báo giá và bắt đầu làm việc cho các dự án của bạn', 'Liên Hệ', 'lien-he', NULL, 'XE0fU9PCrWE', '2018-04-27 08:24:42', '2018-05-16 16:38:20');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Superadmin', 'superadmin@likegroup.vn', '$2y$10$Gq1MQFA2xy1NCHG0Q0XFu.dP6cH7leFvKSw08VbN4wcG9PUWKEhuS', 'GUpohgfql9M2UB4dx7M0bjaLHXMKUhLisqylebKtVJW9mLcuDCmt1nYrY2m2', '2018-04-20 05:42:39', '2018-04-20 05:42:39'),
(2, 'Admin', 'admin@likegroup.vn', '$2y$10$UUsh1jD4Hr0mPvKfYk9Wzu4cvOOw4YxJUWLlSkwp8VD0PtUtMRSTO', 'NBL8LSmMe2zv0hCJGdOQJblMeyIPhVZkW1bk39Fa5UR6UPNUXdgTAxUD8xPO', '2018-04-20 05:42:40', '2018-04-20 05:42:40'),
(3, 'User', 'user@likegroup.vn', '$2y$10$Y1p7zeZV79X3yyYwWfOhw.Gtmjjggo6pmxjXb8SJ7zoxyUnEarIVC', NULL, '2018-04-20 05:42:41', '2018-04-20 05:42:41'),
(4, 'Trung', 'duongquitrung1000@gmail.com', '$2y$10$mq3gfeh7NjMf3S9.zvkiW.2I0ZfpR5uVoWHoSKh/XAe7UMvlBSxoO', 'KQQmIzASmOXnUdGhMpAq5UIDy1YOEhuCiRfN07eWI3j4dEU9Ujn574zYk7UW', '2018-05-16 08:46:23', '2018-05-16 08:46:23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `address` (`address`);

--
-- Indexes for table `footerphoto`
--
ALTER TABLE `footerphoto`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery_types`
--
ALTER TABLE `gallery_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `images_gallery_id_foreign` (`gallery_id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD PRIMARY KEY (`user_id`,`permission_id`,`user_type`),
  ADD KEY `permission_user_permission_id_foreign` (`permission_id`);

--
-- Indexes for table `portfolios`
--
ALTER TABLE `portfolios`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`user_id`,`role_id`,`user_type`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `footerphoto`
--
ALTER TABLE `footerphoto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `gallery_types`
--
ALTER TABLE `gallery_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=582;
--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `portfolios`
--
ALTER TABLE `portfolios`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `images_gallery_id_foreign` FOREIGN KEY (`gallery_id`) REFERENCES `galleries` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD CONSTRAINT `permission_user_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

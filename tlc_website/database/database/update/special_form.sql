-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: mysql
-- Generation Time: Feb 04, 2020 at 07:50 AM
-- Server version: 8.0.18
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `demo3`
--

-- --------------------------------------------------------

--
-- Table structure for table `special_form`
--

CREATE TABLE `special_form` (
  `id` int(11) NOT NULL,
  `name` varchar(110) NOT NULL,
  `phone` int(11) NOT NULL,
  `email` varchar(110) NOT NULL,
  `date` date DEFAULT NULL,
  `description` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `special_form`
--

INSERT INTO `special_form` (`id`, `name`, `phone`, `email`, `date`, `description`, `created_at`, `updated_at`) VALUES
(1, '7777777777777', 777, 'admin@gmail.com', '2021-02-12', NULL, '2020-02-04 14:29:13', '2020-02-04 14:29:13'),
(2, '7777777777777', 777, 'admin@gmail.com', '2021-02-12', NULL, '2020-02-04 14:29:55', '2020-02-04 14:29:55'),
(3, '7777777777777', 777, 'admin@gmail.com', '2021-02-12', NULL, '2020-02-04 14:30:15', '2020-02-04 14:30:15'),
(4, '7777777777777', 777, 'admin@gmail.com', '2021-02-12', 'ddddddddddddddddddddddd', '2020-02-04 14:31:06', '2020-02-04 14:31:06'),
(5, '7777', 99999, 'tuananh6596@gmail.com', '2020-02-13', '899879', '2020-02-04 14:31:48', '2020-02-04 14:31:48'),
(6, '777777', 7, 'tuananh6596@gmail.com', '2020-02-25', '7', '2020-02-04 14:33:01', '2020-02-04 14:33:01'),
(7, 'Happy New year', 666, 'tuananh6596@gmail.com', '2020-02-25', '666', '2020-02-04 14:33:46', '2020-02-04 14:33:46'),
(8, '11', 1, 'admin@gmail.com11', '2020-02-19', '11', '2020-02-04 14:34:24', '2020-02-04 14:34:24'),
(9, 'nameeeeeeeeeee', 1626832288, 'admin@gmail.com', '2020-02-17', 'Hai thanh niên có dấu hiệu say xỉn băng ngang đường khiến tài xế xe cứu thương trở tay không kịp.\r\nSự kiện: Tin nóng, Bình Dương\r\nKhoảng 14 giờ 30 ngày 30-12 trên Quốc lộ 13, đoạn qua thị xã Bến Cát, tỉnh Bình Dương, tài xế Trần Hữu Lâm (40 tuổi, ngụ TP Thủ Dầu Một) điều khiển xe cứu thương chở một bệnh nhân đi cấp cứu, lưu thông theo hướng từ thị xã Bến Cát đi TP Thủ Dầu Một. \r\n\r\nKhi xe cứu thương đến đoạn ngã tư giao đường NA2, thuộc phường Thới Hòa thì bất ngờ bị xe máy do 2 thanh niên có dấu hiệu say xỉn chạy băng qua đường tông trúng', '2020-02-04 14:44:04', '2020-02-04 14:44:04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `special_form`
--
ALTER TABLE `special_form`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `special_form`
--
ALTER TABLE `special_form`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

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
(9, 'nameeeeeeeeeee', 1626832288, 'admin@gmail.com', '2020-02-17', 'Hai thanh ni??n c?? d???u hi???u say x???n b??ng ngang ???????ng khi???n t??i x??? xe c???u th????ng tr??? tay kh??ng k???p.\r\nS??? ki???n: Tin n??ng, B??nh D????ng\r\nKho???ng 14 gi??? 30 ng??y 30-12 tr??n Qu???c l??? 13, ??o???n qua th??? x?? B???n C??t, t???nh B??nh D????ng, t??i x??? Tr???n H???u L??m (40 tu???i, ng??? TP Th??? D???u M???t) ??i???u khi???n xe c???u th????ng ch??? m???t b???nh nh??n ??i c???p c???u, l??u th??ng theo h?????ng t??? th??? x?? B???n C??t ??i TP Th??? D???u M???t. \r\n\r\nKhi xe c???u th????ng ?????n ??o???n ng?? t?? giao ???????ng NA2, thu???c ph?????ng Th???i H??a th?? b???t ng??? b??? xe m??y do 2 thanh ni??n c?? d???u hi???u say x???n ch???y b??ng qua ???????ng t??ng tr??ng', '2020-02-04 14:44:04', '2020-02-04 14:44:04');

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

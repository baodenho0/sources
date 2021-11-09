-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: mysql
-- Generation Time: Feb 18, 2020 at 09:48 AM
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
-- Database: `ogproduction`
--

-- --------------------------------------------------------

--
-- Table structure for table `portfolios_type`
--

CREATE TABLE `portfolios_type` (
  `id` int(10) NOT NULL,
  `title` varchar(110) NOT NULL,
  `slug` varchar(110) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `portfolios_type`
--

INSERT INTO `portfolios_type` (`id`, `title`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'ee', 'ee', NULL, NULL),
(3, '22 sdaf wwww aaa as á', '22-sdaf-wwww-aaa-as-a', '2020-02-18 16:47:26', '2020-02-18 16:48:09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `portfolios_type`
--
ALTER TABLE `portfolios_type`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `portfolios_type`
--
ALTER TABLE `portfolios_type`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

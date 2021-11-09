-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: mysql
-- Generation Time: Feb 04, 2020 at 04:44 AM
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
-- Table structure for table `financing`
--

CREATE TABLE `financing` (
  `id` int(10) NOT NULL,
  `description` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `financing`
--

INSERT INTO `financing` (`id`, `description`, `created_at`, `updated_at`) VALUES
(1, '<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.0 Transitional//EN\" \"http://www.w3.org/TR/REC-html40/loose.dtd\">\n<?xml encoding=\"utf-8\" ?><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><html><body><p><img style=\"width: 100%;\" data-filename=\"1577599252_15658564000.png\" src=\"/upload/summer_note/15807909070.png\"></p><p>343</p><p>5</p><p>656</p><p><u>dsafsd</u></p></body></html>\n', '2020-02-04 11:35:07', '2020-02-04 11:44:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `financing`
--
ALTER TABLE `financing`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `financing`
--
ALTER TABLE `financing`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

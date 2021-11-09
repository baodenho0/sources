-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 12, 2019 at 04:06 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `company_introduction`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `id` int(10) NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`id`, `content`, `created_at`, `updated_at`) VALUES
(1, '<p><img data-filename=\"0Yuh-171856.jpg\" style=\"width: 25%;\" src=\"/upload/summer_note/15652521450.png\"><br><p>ertreterte</p><p></p><p></p></p>\n', '2019-08-08 07:31:08', '2019-08-08 08:15:45');

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id`, `title`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 'BROWSE OUR PREMIUM PRODUCT  1', '<p>Us which over of signs divide dominion deep fill bring they\'re meat beho upon own earth without morning over third. Their male dry. They are great appear whose land fly grass.  1&nbsp;</p><ol><li>hj</li><li>jh\\</li></ol>', 'V7pz-hero-banner.png', NULL, '2019-08-09 10:04:16'),
(2, 'title', '<h3 style=\"margin-bottom: 25px; font-family: Oswald, sans-serif; line-height: 1.1; color: rgb(34, 34, 34); font-size: 50px; text-align: center;\">Up To 50% Off</h3><h4 style=\"font-family: Oswald, sans-serif; line-height: 1.3; color: rgb(34, 34, 34); font-size: 30px; text-align: center;\">Winter Sale</h4><p style=\"color: rgb(85, 85, 85); font-family: Roboto, sans-serif; font-size: 15px; text-align: center;\">Him she\'d let them sixth saw light</p><p><font color=\"#ffffff\" face=\"Roboto, sans-serif\"><span style=\"background: rgb(56, 74, 235); display: inline-block; border: 1px solid rgb(56, 74, 235); border-radius: 30px; padding: 12px 50px; transition-duration: 0.4s; transition-property: all; font-size: 15px; text-align: center;\">Shop Now</span></font><br></p>', 'LJ1E-parallax-bg.png', '2019-08-12 01:47:02', '2019-08-12 01:52:40');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(10) NOT NULL,
  `name` varchar(128) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `created_at`, `updated_at`, `status`) VALUES
(1, 'category 11', '2019-08-07 02:07:53', '2019-08-07 02:07:53', 1),
(2, 'category 1', '2019-08-07 02:08:56', '2019-08-07 02:08:45', 1);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(10) NOT NULL,
  `address` text,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mission` text,
  `map` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `address`, `phone`, `email`, `mission`, `map`, `created_at`, `updated_at`) VALUES
(1, '123, Main Street, Your City', '+123 456 7890 <br>+123 456 7890', 'free@infoexample.com <br>www.infoexample.com', '<p style=\"margin-bottom: 15px;\">So seed seed green that winged cattle in. Gathering thing made fly you\'re no divided deep moved us lan Gathering thing us land years living.</p><p style=\"margin-bottom: 0px;\">So seed seed green that winged cattle in. Gathering thing made fly you\'re no divided deep moved</p><p style=\"margin-bottom: 0px;\"><br></p><p style=\"margin-bottom: 0px;\">123</p>', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d15674.205695610324!2d106.66450094999999!3d10.8455998!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2s!4v1565248705233!5m2!1sen!2s\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen></iframe>', '2019-08-08 07:16:43', '2019-08-08 09:06:56');

-- --------------------------------------------------------

--
-- Table structure for table `logo`
--

CREATE TABLE `logo` (
  `id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `logo`
--

INSERT INTO `logo` (`id`, `title`, `image`, `created_at`, `updated_at`) VALUES
(1, 'logo', 'ZEru-logo.png', '2019-08-08 08:24:51', '2019-08-08 08:25:42');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `target` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `class_icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(11) UNSIGNED DEFAULT '0',
  `order` int(11) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` int(2) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `title`, `url`, `target`, `class_icon`, `parent_id`, `order`, `created_at`, `updated_at`, `status`) VALUES
(1, 'Dashboard', '/admin/', NULL, 'fas fa-fw fa-tachometer-alt', 0, 1, NULL, '2019-08-12 02:05:54', 0),
(2, 'Menu', '/admin/menu', NULL, 'fas fa-list', 0, 2, NULL, '2019-08-06 09:44:12', 1),
(19, 'User', '/admin/user', '_blank', 'fas fa-user', 0, 3, '2019-05-30 02:19:10', '2019-08-06 09:44:12', 1),
(28, 'Position', '/admin/position', NULL, NULL, 29, 5, '2019-06-04 00:18:54', '2019-08-06 09:44:12', 1),
(29, 'Setting', '/setting', NULL, 'fas fa-cog', 0, 4, '2019-06-04 02:19:22', '2019-08-06 09:44:12', 1),
(41, 'Product', '/admin/products', NULL, NULL, 0, 5, '2019-08-06 09:42:37', '2019-08-07 02:10:19', 1),
(42, 'Products', '/admin/products', NULL, NULL, 0, 6, '2019-08-06 09:42:58', '2019-08-06 09:45:16', 0),
(43, 'Category', '/admin/category', NULL, NULL, 0, 6, '2019-08-06 09:43:53', '2019-08-07 07:18:19', 1),
(44, 'Setup Page', '/', NULL, NULL, 0, 7, '2019-08-07 07:18:14', '2019-08-07 07:18:19', 1),
(45, 'Setup Banner', '/admin/setup-page/banner', NULL, NULL, 44, 8, '2019-08-07 07:18:37', '2019-08-09 10:13:29', 1),
(46, 'Setup Contact', '/admin/setup-page/contact', NULL, NULL, 44, 9, '2019-08-08 06:57:38', '2019-08-09 10:13:29', 1),
(47, 'Setup About', '/admin/setup-page/about', NULL, NULL, 44, 10, '2019-08-08 07:26:00', '2019-08-09 10:13:29', 1),
(48, 'Setup Logo', '/admin/setup-page/logo', NULL, NULL, 44, 11, '2019-08-08 08:22:29', '2019-08-09 10:13:29', 1),
(49, 'Setup Content Banner', '/admin/setup-page/content-banner', NULL, NULL, 44, 12, '2019-08-09 10:13:21', '2019-08-09 10:13:29', 1);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('admin@dataeglobal.com', '$2y$10$pUKXaRkmo1Y62INh3erl2uZ8.jN7IcT/5zZwTXEKRvBfv.qpSM46i', '2019-05-27 01:19:55');

-- --------------------------------------------------------

--
-- Table structure for table `positions`
--

CREATE TABLE `positions` (
  `id` int(10) NOT NULL,
  `position_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `position_permission_status` int(1) NOT NULL DEFAULT '1',
  `position_delete_status` int(1) NOT NULL DEFAULT '1',
  `position_permission_list` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `positions`
--

INSERT INTO `positions` (`id`, `position_name`, `position_permission_status`, `position_delete_status`, `position_permission_list`) VALUES
(1, 'supper admin', 1, 1, '{\"Position\":{\"read\":1,\"insert\":1,\"update\":\"1\",\"delete\":1},\"Dashboard\":{\"read\":\"1\",\"insert\":\"1\",\"update\":\"1\",\"delete\":\"1\"},\"Menu\":{\"read\":\"0\"},\"\":{\"\":\"1\"}}'),
(2, 'chuc vu 1 abc', 1, 1, '{\"Projects\":{\"read\":0,\"insert\":0,\"update\":0,\"delete\":0}}'),
(3, 'abc', 0, 1, '{\"Projects\":{\"read\":0,\"insert\":0,\"update\":0,\"delete\":0}}'),
(4, '123', 1, 1, NULL),
(5, '54', 1, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(10) NOT NULL,
  `name` varchar(128) NOT NULL,
  `slug` varchar(128) DEFAULT NULL,
  `price` int(10) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_category_id` int(10) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  `check_home_page` int(1) NOT NULL DEFAULT '0',
  `check_trending` int(1) DEFAULT '0',
  `best_seller` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `slug`, `price`, `image`, `description`, `created_at`, `updated_at`, `product_category_id`, `status`, `check_home_page`, `check_trending`, `best_seller`) VALUES
(1, 'product 1', 'product-1', 12323, 'OepV-product7.png', '123213', '2019-08-07 02:42:40', '2019-08-09 09:42:23', 1, 1, 1, 0, 1),
(2, 'proud 1', 'proud-1', 1111, 'uEMj-product1.png', '111', '2019-08-07 02:52:21', '2019-08-09 09:42:24', 2, 1, 1, 1, 1),
(3, '1231', '1231', 1111, 'jlbF-product4.png', '111', '2019-08-07 03:39:14', '2019-08-09 09:42:25', 1, 1, 1, 0, 1),
(4, '1', '1', 1, 'Xlbj-product6.png', '1', '2019-08-07 08:17:57', '2019-08-09 09:42:59', 1, 1, 1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fullname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `city_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'null',
  `phone` int(12) DEFAULT NULL,
  `user_position_id` int(10) DEFAULT NULL,
  `user_department_id` int(10) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_status` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `fullname`, `birthday`, `start_date`, `city_address`, `state_address`, `image`, `phone`, `user_position_id`, `user_department_id`, `created_at`, `updated_at`, `user_status`) VALUES
(1, 'admin', 'admin@dataeglobal.com', NULL, '$2y$10$dX5.6dJWu8E5aVxXhEHB9u8qWPXcR/b5ZU88U.da30wgUIyT/Wck.', 'fSUO5mTsP48tdR1UdWnIUzP1aECrLSlE0SWMlVQcPTwqKJSRwgOzSUXLI7TT', 'hieu admin', '2019-05-23', '2019-05-31', '234234', '3123', 'XWIV-DSC_0349.JPG', 0, 2, 2, NULL, '2019-08-12 01:56:48', 1),
(2, 'admin1', 'ejr96676@zwoho.com', NULL, '$2y$10$ZgslVSEW8hXgblxhSxqJF.pBSNc4p46BuRImy/ZfLnm1xcRkXjVi2', NULL, 'hieu 1', '2019-05-31', '2019-05-30', 'Select City', 'hieu', 'L55R-Untitled.jpg', 1626832288, 1, 1, '2019-05-31 02:25:17', '2019-06-03 19:37:19', 1),
(3, '123', '123@gmail.com', NULL, '$2y$10$pyoGo1g7uy7rlbd/YpTqfeRYSnnQjRTzJBuLCotaqqQ5s/wCBsCCK', NULL, 'hieu', '2019-05-24', '2019-05-24', 'Select City', 'hieu', 'BvIX-anh-bia-dep-ve-phong-canh-thien-nhien-30.jpg', 1626832288, 1, 0, '2019-05-31 02:34:02', '2019-06-06 01:55:19', 0),
(4, 'dsffsdf', 'test@test.com', NULL, '$2y$10$N9j1AP3G27Ek6nBVkkFsu.EMNExYfFSffI8KQ6p865idVuCHdtzPC', NULL, 'test', '2019-06-20', '2019-06-20', 'Select City', 'testt aa', 'null', 12121, 3, 1, '2019-06-03 21:47:29', '2019-06-04 00:38:28', 1),
(5, 'sss', 'ejr9667ss6@zwoho.com', NULL, '$2y$10$H4tABz/eeBmbrczHPxX7sOznA35GbwL9B2T99N7t2EFbya/7yi5oG', NULL, 'hieu', '2019-06-19', '2019-06-20', 'Select City', 'ktx a, ktx b', 'null', 1626832288, 3, 2, '2019-06-06 23:18:26', '2019-06-06 23:18:26', 1),
(6, '111111', 'gnb80216@bcaoo.com', NULL, '$2y$10$3TY0uNVG71mOzWtwy2Tr2umKKIiygse.gfQ2cIPPRKTzqAVKtzdrW', NULL, 'ihieeu', '2019-06-11', '2019-06-11', 'Hồ Chí Minh', 'ktx a, ktx b', 'null', 1626832288, 1, 2, '2019-06-11 09:32:23', '2019-06-11 09:32:23', 1),
(7, '1111111111', 'lequochieu284@gmail.com', NULL, '$2y$10$fVbIvkCZHFcoLesO/ZyYyOeWd3cAFaDnN.fQemuYVYjDCSrTKGsdK', NULL, '111111111111', '2019-06-11', '2019-06-11', 'Hồ Chí Minh', '11111111111', 'null', 111111, 1, 1, '2019-06-11 09:44:58', '2019-06-11 09:44:58', 1),
(8, '213123', 'qen19932@bcaoo.com', NULL, '$2y$10$2zTtta101r2biVzlu5nMeeBF2V6F0uJg53giwKZAd71nn.X0fitVK', NULL, 'sds', '2019-06-19', '2019-06-27', 'Đồng Nai', 'ktsx a', 'null', 3123, 2, 1, '2019-06-11 10:07:40', '2019-08-06 06:25:06', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logo`
--
ALTER TABLE `logo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `positions`
--
ALTER TABLE `positions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
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
-- AUTO_INCREMENT for table `about`
--
ALTER TABLE `about`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `logo`
--
ALTER TABLE `logo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `positions`
--
ALTER TABLE `positions`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

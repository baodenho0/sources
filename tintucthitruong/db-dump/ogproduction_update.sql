-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 01, 2018 at 03:17 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.9

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
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image_path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `map` text COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`address`, `phone`, `image_path`, `map`, `user_id`, `id`, `updated_at`) VALUES
('125/17 Hòa Hưng P12 Q10', 'Điện Thoại :0909 401 932 - 0120 2200 222', 'uploads/contact/contact-1526665617.jpeg', '!1m18!1m12!1m3!1d3919.438226421443!2d106.67064781528879!3d10.777709562116003!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31752ed9ae289f63%3A0x42b4b88f2ef53690!2zUDEyLCAxMjUgSG_DoCBIxrBuZywgUGjGsOG7nW5nIDEyLCBRdeG6rW4gMTAsIEjhu5MgQ2jDrSBNaW5oLCBWaeG7h3QgTmFt!5e0!3m2!1svi!2s!4v1526665539340', 1, 1, '2018-05-19 05:20:30');

-- --------------------------------------------------------

--
-- Table structure for table `footerphoto`
--

CREATE TABLE `footerphoto` (
  `id` int(11) NOT NULL,
  `image_path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `footerphoto`
--

INSERT INTO `footerphoto` (`id`, `image_path`, `created_at`, `updated_at`) VALUES
(14, 'uploads/1526719907.jpeg', '2018-05-19 08:51:47', '2018-05-19 08:51:47');

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` int(10) UNSIGNED NOT NULL,
  `gallery_type_id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `index_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `gallery_type_id`, `title`, `image_path`, `index_id`, `created_at`, `updated_at`) VALUES
(7, 1, 'dfgdfg', 'uploads/galleries/1526842292.jpg', 1, '2018-05-20 18:51:32', '2018-05-30 18:00:05'),
(8, 2, 'aaaaaaaaaaaaaaaaaaa', 'uploads/galleries/1527703037.png', 2, '2018-05-30 17:57:17', '2018-05-30 18:02:28'),
(9, 1, 'bbbbbbbbbbbbb', 'uploads/galleries/1527703407.png', 0, '2018-05-30 18:03:27', '2018-05-30 18:04:32');

-- --------------------------------------------------------

--
-- Table structure for table `gallery_types`
--

CREATE TABLE `gallery_types` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `gallery_types`
--

INSERT INTO `gallery_types` (`id`, `name`) VALUES
(1, 'Ảnh Cưới'),
(2, 'Ảnh Tổng Hợp');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(10) UNSIGNED NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gallery_id` int(10) UNSIGNED NOT NULL,
  `index_id` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `url`, `gallery_id`, `index_id`, `created_at`, `updated_at`) VALUES
(2, 'uploads/galleries/gallery-1526922532.png', 7, 0, '2018-05-21 17:08:52', '2018-05-21 17:08:52'),
(3, 'uploads/galleries/gallery-1527704183.png', 9, 0, '2018-05-30 18:16:23', '2018-05-30 18:16:23'),
(4, 'uploads/galleries/gallery-1527704315.png', 9, 0, '2018-05-30 18:18:35', '2018-05-30 18:18:35'),
(5, 'uploads/galleries/gallery-1527739286.png', 7, 0, '2018-05-31 04:01:26', '2018-05-31 04:01:26'),
(6, 'uploads/galleries/gallery-1527739690.jpg', 7, 5, '2018-05-31 04:08:10', '2018-05-31 04:08:10');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `order` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(11, 2, 'Video', 'video', NULL, NULL, 0, 3, NULL, NULL, '2018-04-20 12:02:38', '2018-05-19 10:05:40'),
(12, 1, 'Settings', '#', NULL, 'ti-settings', 0, 10, NULL, NULL, '2018-04-20 12:04:41', '2018-05-19 04:29:58'),
(14, 1, 'Danh mục đầu tư', NULL, NULL, 'ti-briefcase', 0, 3, 'portfolios.index', NULL, '2018-04-21 02:17:50', '2018-05-19 04:30:09'),
(15, 1, 'Bộ sưu tập', NULL, NULL, 'ti-gallery', 0, 4, 'galleries.index', NULL, '2018-04-21 03:40:09', '2018-05-19 04:30:12'),
(16, 1, 'Logo', '#', NULL, NULL, 12, 11, NULL, NULL, '2018-04-27 07:52:30', '2018-05-19 04:29:58'),
(17, 1, 'Sliders', NULL, NULL, 'ti-image', 0, 2, 'sliders.index', NULL, '2018-04-27 07:58:09', '2018-05-19 04:30:04'),
(18, 1, 'Liên Hệ', NULL, NULL, 'ti-location-arrow', 0, 5, 'contact.index', NULL, '2018-05-18 15:13:43', '2018-05-19 04:30:12'),
(19, 1, 'Ảnh Cuối Trang', NULL, NULL, 'ti-image', 0, 6, 'footerphoto.index', NULL, '2018-05-18 18:36:46', '2018-05-19 04:30:12'),
(20, 2, 'Liên Hệ', 'lien-he', NULL, NULL, 0, 4, NULL, NULL, '2018-05-19 04:28:45', '2018-05-19 10:05:40'),
(21, 2, 'Album Cưới', '/galleries-hinh-anh/1', NULL, NULL, 9, 3, NULL, NULL, '2018-05-19 09:59:28', '2018-05-19 10:01:09'),
(22, 2, 'Album Tổng Hợp', '/galleries-hinh-anh/2', NULL, NULL, 9, 4, NULL, NULL, '2018-05-19 09:59:52', '2018-05-19 10:01:23'),
(23, 1, 'Bài Viết', '', NULL, NULL, 0, 0, 'posts.index', NULL, '2018-05-23 11:25:00', '2018-05-23 11:25:00');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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

CREATE TABLE `password_resets` (
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
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

CREATE TABLE `permission_user` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `user_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'AppUser'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `portfolios`
--

CREATE TABLE `portfolios` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT 'double_size',
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `video_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `portfolios`
--

INSERT INTO `portfolios` (`id`, `title`, `size`, `image_path`, `video_path`, `created_at`, `updated_at`) VALUES
(1, 'Picture Yourself', NULL, 'uploads/1526483350.jpg', 'A5UhkVey-qs', '2018-04-21 02:23:10', '2018-05-16 16:35:22'),
(2, 'Highlining 2800 In Winter', 'double_size', 'uploads/1526483668.jpg', 'A5UhkVey-qs', '2018-04-21 02:45:36', '2018-05-16 16:35:31'),
(3, 'Istanbul - Through the Prism', NULL, 'uploads/1526483871.jpg', 'A5UhkVey-qs', '2018-04-21 02:47:18', '2018-05-16 16:35:41'),
(4, 'The Marvel Symphonic Universe', NULL, 'uploads/1526483962.jpg', 'A5UhkVey-qs', '2018-04-21 02:55:29', '2018-05-16 16:35:55'),
(5, 'The Dress', NULL, 'uploads/1526484079.jpg', 'https://www.youtube.com/watch?v=gGqqRiNpT_g', '2018-04-21 02:56:27', '2018-05-16 16:36:05'),
(6, 'Jones - ‘Melt’', NULL, 'uploads/1526484193.jpg', 'https://www.youtube.com/watch?v=gGqqRiNpT_g', '2018-04-21 03:01:26', '2018-05-16 16:36:51');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image_path` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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

CREATE TABLE `role_user` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
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

CREATE TABLE `sliders` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `btn_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btn_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btn_route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Superadmin', 'superadmin@likegroup.vn', '$2y$10$Gq1MQFA2xy1NCHG0Q0XFu.dP6cH7leFvKSw08VbN4wcG9PUWKEhuS', 'YgEoSXuy3pbe2csfS6YYgHfewG7A2CALmJpx02bDsu3kaLTNDlvWdiTzu6kv', '2018-04-20 05:42:39', '2018-04-20 05:42:39'),
(2, 'Admin', 'admin@likegroup.vn', '$2y$10$UUsh1jD4Hr0mPvKfYk9Wzu4cvOOw4YxJUWLlSkwp8VD0PtUtMRSTO', 'NBL8LSmMe2zv0hCJGdOQJblMeyIPhVZkW1bk39Fa5UR6UPNUXdgTAxUD8xPO', '2018-04-20 05:42:40', '2018-04-20 05:42:40'),
(3, 'User', 'user@likegroup.vn', '$2y$10$Y1p7zeZV79X3yyYwWfOhw.Gtmjjggo6pmxjXb8SJ7zoxyUnEarIVC', NULL, '2018-04-20 05:42:41', '2018-04-20 05:42:41'),
(4, 'Trung', 'duongquitrung1000@gmail.com', '$2y$10$mq3gfeh7NjMf3S9.zvkiW.2I0ZfpR5uVoWHoSKh/XAe7UMvlBSxoO', 'KQQmIzASmOXnUdGhMpAq5UIDy1YOEhuCiRfN07eWI3j4dEU9Ujn574zYk7UW', '2018-05-16 08:46:23', '2018-05-16 08:46:23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `footerphoto`
--
ALTER TABLE `footerphoto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `gallery_types`
--
ALTER TABLE `gallery_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `portfolios`
--
ALTER TABLE `portfolios`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

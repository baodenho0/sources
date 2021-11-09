-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 29, 2020 at 11:00 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tintucthitruong`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `title` varchar(255) NOT NULL,
  `id` int(10) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `leftimage` varchar(255) NOT NULL,
  `rightcontent` text NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `rightimage` varchar(255) DEFAULT NULL,
  `leftcontent` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`title`, `id`, `image`, `leftimage`, `rightcontent`, `content`, `created_at`, `updated_at`, `rightimage`, `leftcontent`) VALUES
('', 1, 'upload/images/1596614183_shutterstock_495349657.jpg', 'upload/images/1596190496_nha-dep.jpg', '<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.0 Transitional//EN\" \"http://www.w3.org/TR/REC-html40/loose.dtd\">\n<?xml encoding=\"utf-8\" ?><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><html><body><h4 style=\"line-height:1.38;margin-left: 35.43307086614173pt;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\"></span></h4><h3 style=\'box-sizing: inherit; border: 0px rgb(230, 230, 230); outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; font-weight: 700; font-family: \"Open Sans\", sans-serif; font-size: 36px; color: rgb(56, 56, 56);\'>&nbsp; &nbsp; <span style=\"font-family: Tahoma;\">&nbsp;<span style=\"font-family: Nunito;\">V&#7873; Ch&uacute;ng T&ocirc;i</span></span></h3><h4 style=\"line-height:1.38;margin-left: 35.43307086614173pt;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size: 10.5pt; font-family: Arial; background-color: rgb(255, 255, 255); font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\"><strong style=\'font-weight: bold; box-sizing: inherit; border: 0px rgb(230, 230, 230); outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; margin: 0px; padding: 0px; font-family: \"Open Sans\", sans-serif; font-size: 20px; text-align: justify; color: rgb(255, 0, 0);\'><span style=\"font-family: Nunito;\">FUTURES RAPID</span></strong><strong style=\'color: rgb(36, 88, 223); font-weight: bold; box-sizing: inherit; border: 0px rgb(230, 230, 230); outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; margin: 0px; padding: 0px; font-family: \"Open Sans\", sans-serif; font-size: 20px; text-align: justify;\'><span style=\"font-family: Nunito;\">&nbsp;</span></strong><span id=\"docs-internal-guid-1fd9f97f-7fff-62c2-a82b-22e9e148adc4\" style=\"color: rgb(0, 0, 0);\"><span style=\"font-weight: 400; font-size: 13pt; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; font-family: Nunito;\">l&agrave; n&#7873;n t&#7843;ng qu&#7843;n l&yacute; &#273;&#7847;u t&#432; d&#7921;a tr&ecirc;n c&ocirc;ng ngh&#7879; h&agrave;ng &#273;&#7847;u thu&#7897;c </span><span style=\"font-size: 13pt; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; font-family: Nunito;\">C&ocirc;ng Ty TNHH C&ocirc;ng Ngh&#7879; M&#7841;ng Minh Huy</span><span style=\"font-weight: 400; font-size: 13pt; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; font-family: Nunito;\"> ( Futures Rapid ).</span></span></span></h4><h4 style=\"line-height:1.38;margin-left: 35.43307086614173pt;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size:13pt;font-family:Arial;color:#000000;background-color:#ffffff;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\"><br></span></h4><h4 style=\'box-sizing: inherit; border: 0px rgb(230, 230, 230); outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; margin: 0pt 0px 0pt 35.4331pt; padding: 0px; line-height: 1.38; font-family: \"Open Sans\", sans-serif; font-size: 28px;\'><span style=\"font-weight: 400; color: rgb(0, 0, 0); box-sizing: inherit; border: 0px rgb(230, 230, 230); outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; margin: 0px; padding: 0px; font-size: 13pt; font-family: Arial; font-variant-numeric: normal; font-variant-east-asian: normal; white-space: pre-wrap;\"><strong style=\'background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; box-sizing: inherit; font-weight: bold; border: 0px rgb(230, 230, 230); outline: 0px; vertical-align: baseline; margin: 0px; padding: 0px; font-family: \"Open Sans\", sans-serif; font-size: 20px; text-align: justify; color: rgb(255, 0, 0);\'><span style=\"font-family: Nunito;\">FUTURES RAPID</span></strong><span style=\"font-family: Nunito;\"> l&agrave; &#273;&#7841;i l&yacute; c&#7911;a </span></span><span style=\"box-sizing: inherit; border: 0px rgb(230, 230, 230); outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; margin: 0px; padding: 0px; font-size: 13pt; font-family: Nunito; font-variant-numeric: normal; font-variant-east-asian: normal; white-space: pre-wrap;\"><b>JS Securities LTD</b></span><span style=\"font-weight: 400; color: rgb(0, 0, 0); box-sizing: inherit; border: 0px rgb(230, 230, 230); outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; margin: 0px; padding: 0px; font-size: 13pt; font-family: Nunito; font-variant-numeric: normal; font-variant-east-asian: normal; white-space: pre-wrap;\"> ( Hong Kong ) thi&#7871;t l&#7853;p T&#7893;ng c&ocirc;ng ty t&#7841;i H&agrave; N&#7897;i, &#273;&#432;&#7907;c th&agrave;nh l&#7853;p b&#7903;i c&aacute;c chuy&ecirc;n gia trong l&#297;nh v&#7921;c t&agrave;i ch&iacute;nh v&agrave; c&aacute;c chuy&ecirc;n gia trong l&#297;nh v&#7921;c &#273;&#7847;u t&#432; ph&aacute;i sinh.</span></h4><h4 style=\"line-height:1.38;margin-left: 35.43307086614173pt;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size:13pt;font-family:Arial;color:#000000;background-color:#ffffff;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\"></span><span style=\"font-size: 13pt; font-family: Nunito; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255); font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">Ch&uacute;ng t&ocirc;i &#273;&atilde; c&oacute; m&#7863;t t&#7841;i 6 qu&#7889;c gia nh&#432; Hong Kong, Nh&#7853;t B&#7843;n, Th&aacute;i Lan, Singapore. Ch&uacute;ng t&ocirc;i h&#7895; tr&#7907; kh&aacute;ch h&agrave;ng t&igrave;m hi&#7875;u v&#7873; c&aacute;c s&#7843;n ph&#7849;m &#273;&#7847;u t&#432;, n&#7855;m b&#7855;t c&#417; h&#7897;i, cung c&#7845;p giao d&#7883;ch tr&#7921;c tuy&#7871;n to&agrave;n di&#7879;n tr&ecirc;n c&aacute;c thi&#7871;t b&#7883; di &#273;&#7897;ng ph&#7909;c v&#7909; v&#7873; c&aacute;c th&ocirc;ng tin v&agrave; &#273;&#7847;u t&#432; ch&#7913;ng kho&aacute;n. C&ocirc;ng ty TNHH C&ocirc;ng Ngh&#7879; M&#7841;ng Minh Huy th&agrave;nh l&#7853;p t&#7841;i </span><span style=\"font-size: 13pt; font-family: Nunito; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255); font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\"><b>H&agrave; N&#7897;i</b></span><span style=\"font-size: 13pt; font-family: Nunito; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255); font-weight: 400; font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\">, l&#7845;y H&agrave; N&#7897;i l&agrave;m tr&#7885;ng &#273;i&#7875;m v&agrave; s&#7869; ph&aacute;t tri&#7875;n theo h&#432;&#7899;ng qu&#7889;c t&#7871; h&oacute;a.</span></h4></body></html>\n', '<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.0 Transitional//EN\" \"http://www.w3.org/TR/REC-html40/loose.dtd\">\n<?xml encoding=\"utf-8\" ?><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><html><body><p><br></p><p><br></p><table class=\"table table-bordered\"><tbody><tr><td><p><img data-filename=\"1.png\" style=\"width: 906px;\" src=\"/upload/summer_note/15960999410.png\"><br></p></td><td><p><img data-filename=\"vechungtoi1.png\" style=\"width: 906px;\" src=\"/upload/summer_note/15960999411.png\"><br></p></td></tr></tbody></table><p style=\"text-align: center; \"><br></p><h5 style=\"text-align: center; \"><b>C&Oacute; M&#7862;T T&#7840;I 6 QU&#7888;C GIA KH&Aacute;C</b></h5><table class=\"table table-bordered\"><tbody><tr><td><p style=\"text-align: center; \"><span style=\'font-family: \"Segoe UI\", sans-serif; font-size: 17.3333px; font-weight: 700; text-align: left; white-space: pre-wrap;\'>THAILAND</span><br></p><p style=\"text-align: center; \"><img data-filename=\"thai.jpg\" style=\"width: 1152px;\" src=\"/upload/summer_note/15961893952.png\"><b><br></b></p><p><img data-filename=\"4-01 - Copy.jpg\" style=\"width: 1151.99px;\" src=\"/upload/summer_note/15970520763.png\"><br></p></td><td><p style=\"text-align: center;\"><span style=\'font-family: \"Segoe UI\", sans-serif; font-size: 17.3333px; font-weight: 700; text-align: left; white-space: pre-wrap;\'>HONG KONG</span><br></p><p style=\"text-align: center;\"><img data-filename=\"fwd.jpg\" style=\"width: 1152px;\" src=\"/upload/summer_note/15970470984.png\"></p><p style=\"text-align: center;\"><img data-filename=\"1-01 - Copy.jpg\" style=\"width: 1152px;\" src=\"/upload/summer_note/15970515434.png\"><br></p></td></tr><tr><td><p style=\"text-align: center; \"><span style=\"font-weight: bolder; color: rgb(0, 0, 0); font-family: Arial; font-size: 17.3333px; text-align: left; white-space: pre-wrap;\"><span style=\'font-family: \"Segoe UI\", sans-serif; color: rgb(133, 135, 150); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\'>SINGAPORE</span></span><br></p><p style=\"text-align: center; \"><img data-filename=\"Robinson.jpg\" style=\"width: 1151.99px;\" src=\"/upload/summer_note/15963756304.png\"><b><br></b></p><p style=\"text-align: center; \"><img data-filename=\"12.jpg\" style=\"width: 1152px;\" src=\"/upload/summer_note/15970520016.png\"><b><br></b></p><p></p></td><td style=\"text-align: center;\"><p><span style=\"font-weight: bolder; color: rgb(0, 0, 0); font-family: Arial; font-size: 17.3333px; text-align: left; white-space: pre-wrap;\"><span style=\'font-family: \"Segoe UI\", sans-serif; color: rgb(133, 135, 150); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\'>JAPAN</span></span><br></p><p><img data-filename=\"002_mokuzai_001.jpg\" style=\"width: 1151.99px;\" src=\"/upload/summer_note/15963759205.png\"></p><p><img data-filename=\"2-01 - Copy.jpg\" style=\"width: 1152px;\" src=\"/upload/summer_note/15970516898.png\"><br></p><p></p><p></p><p></p></td></tr></tbody></table><p style=\"text-align: center; \"><br></p></body></html>\n', '2019-08-08 07:31:08', '2020-10-21 09:09:31', 'upload/images/1596614076_shutterstock_495349657.jpg', '<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.0 Transitional//EN\" \"http://www.w3.org/TR/REC-html40/loose.dtd\">\n<?xml encoding=\"utf-8\" ?><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><html><body><p><br></p></body></html>\n'),
('BMLN', 2, 'upload/images/1596614276_dau-tu-chung-khoan-qt.jpg', 'upload/images/1596377002_about-2-bg.jpg', '<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.0 Transitional//EN\" \"http://www.w3.org/TR/REC-html40/loose.dtd\">\n<?xml encoding=\"utf-8\" ?><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><html><body><p>Do &#273;&oacute;, Futures Rapid &#273;&atilde; &#273;&#432;a ra\r\nK&#7871; ho&#7841;ch<br><span style=\"font-size: 1rem;\">b&#7843;o m&#7853;t l&#7907;i nhu&#7853;n b&#7843;o hi&#7875;m Ph&aacute;i sinh\r\n&#273;&#7875; <br>cho ph&eacute;p ng&#432;&#7901;i d&ugrave;ng tr&aacute;nh r&#7911;i ro v&agrave; &#273;&#7843;m b&#7843;o <br>l&#7907;i nhu&#7853;n trong th&#7883; tr&#432;&#7901;ng ngo&#7841;i h&#7889;i lu&ocirc;n thay &#273;&#7893;i.\r\n<br>Ch&#432;&#417;ng tr&igrave;nh n&agrave;y l&agrave; &#273;&#7913;a con tinh th&#7847;n c&#7911;a c&aacute;c\r\nchuy&ecirc;n gia <br>h&agrave;ng &#273;&#7847;u th&#7871; gi&#7899;i bao g&#7891;m c&aacute;c nh&agrave;\r\n&#273;&#7847;u t&#432; t&agrave;i ch&iacute;nh, nh&agrave; to&aacute;n h&#7885;c,<br>&nbsp;nh&agrave; ph&acirc;n t&iacute;ch ph&aacute;i sinh,\r\nchuy&ecirc;n gia l&#7853;p tr&igrave;nh ph&#7847;n m&#7873;m v&agrave; <br>chuy&ecirc;n gia qu&#7843;n l&yacute; r&#7911;i ro.\r\n</span></p><p><span style=\"font-size: 1rem;\"><br>Futures Rapid hy v&#7885;ng s&#7869; t&#7841;o ra m&#7897;t m&ocirc;i tr&#432;&#7901;ng an to&agrave;n cho ng&#432;&#7901;i d&ugrave;ng,\r\n<br>th&uacute;c &#273;&#7849;y th&#7883; tr&#432;&#7901;ng &#273;&#7847;u t&#432; ngo&#7841;i h&#7889;i v&agrave; b&#7843;o v&#7879; ng&#432;&#7901;i d&ugrave;ng qu&#7929;\r\nc&#7911;a h&#7885; <br>&#273;&#7875; h&#7885; c&oacute; th&#7875; h&#432;&#7903;ng l&#7907;i nhu&#7853;n &#7893;n &#273;&#7883;nh l&acirc;u d&agrave;i.<br></span></p></body></html>\n', '<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.0 Transitional//EN\" \"http://www.w3.org/TR/REC-html40/loose.dtd\">\n<?xml encoding=\"utf-8\" ?><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><html><body><h4 style=\'font-family: Nunito, -apple-system, BlinkMacSystemFont, \"Segoe UI\", Roboto, \"Helvetica Neue\", Arial, sans-serif, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol\", \"Noto Color Emoji\"; color: rgb(0, 0, 0); text-align: center;\'></h4><h4 style=\"text-align: center; \"><b style=\"color: rgb(0, 0, 255);\">K&#7870; HO&#7840;CH B&#7842;O M&#7852;T L&#7906;I NHU&#7852;N</b></h4><h4 style=\"text-align: center;\"><span style=\"font-size: 1rem;\"><b>5 L&#7906;I NHU&#7852;N CH&Iacute;NH</b></span></h4><div style=\"text-align: center;\"><span style=\"font-size: 1rem;\"><br></span></div><p style=\'font-family: Nunito, -apple-system, BlinkMacSystemFont, \"Segoe UI\", Roboto, \"Helvetica Neue\", Arial, sans-serif, \"Apple Color Emoji\", \"Segoe UI Emoji\", \"Segoe UI Symbol\", \"Noto Color Emoji\"; color: rgb(0, 0, 0); text-align: center;\'><img src=\"https://www.tlcglobal.asia/wp-content/uploads/2019/12/Screenshot-2019-12-23-at-5.16.08-PM.png\"><br></p></body></html>\n', NULL, '2020-08-05 14:57:56', 'upload/images/1596376695_wp_zimp.jpg', '<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.0 Transitional//EN\" \"http://www.w3.org/TR/REC-html40/loose.dtd\">\n<?xml encoding=\"utf-8\" ?><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><html><body><h4><b style=\"color: inherit; font-family: inherit; font-size: 1.5rem;\">K&#7870; HO&#7840;CH B&#7842;O M&#7852;T B&#7842;O HI&#7874;M</b><br></h4><p>Th&#7883; tr&#432;&#7901;ng ch&#7913;ng kho&aacute;n ph&aacute;i sinh m&#7903; c&#7917;a 24 gi&#7901; m&#7897;t ng&agrave;y, v&#7899;i bi&#7871;n &#273;&#7897;ng h&agrave;ng ng&agrave;y t&#7915; 0,8% &#273;&#7871;n 1,5%. S&#7921; th&#259;ng tr&#7847;m th&#432;&#7901;ng xuy&ecirc;n bi&#7875;u th&#7883; r&#7857;ng:</p><p>C&oacute; nh&#7919;ng l&#7907;i nhu&#7853;n kh&#7893;ng l&#7891; &#273;&#432;&#7907;c t&#7841;o ra t&#7915; th&#7883; tr&#432;&#7901;ng ngo&#7841;i h&#7889;i. Tuy nhi&ecirc;n, t&#7893;n th&#7845;t c&#361;ng s&#7869; &#273;&#432;&#7907;c ph&oacute;ng to.</p><p>&#272;&oacute; l&agrave; m&#7897;t kho&#7843;n &#273;&#7847;u t&#432; r&#7911;i ro cao.</p><p>Do &#273;&oacute;, nhi&#7873;u nh&agrave; &#273;&#7847;u t&#432; c&#7843;m th&#7845;y n&#7843;n l&ograve;ng v&agrave; b&#7887; l&#7905; m&#7897;t ngu&#7891;n thu nh&#7853;p l&#7899;n.</p></body></html>\n');
INSERT INTO `about` (`title`, `id`, `image`, `leftimage`, `rightcontent`, `content`, `created_at`, `updated_at`, `rightimage`, `leftcontent`) VALUES
('Đối Tác Chiến Lược', 3, 'upload/images/1596615407_Banner-1.1.png', 'upload/images/1596180938_TLC_Head-Poster-03b.jpg', '', '<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.0 Transitional//EN\" \"http://www.w3.org/TR/REC-html40/loose.dtd\">\n<?xml encoding=\"utf-8\" ?><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><html><body><div class=\"gdlr-core-pbf-wrapper \" data-skin=\"Purple Personnel\" style=\"box-sizing: inherit; border-width: 0px 0px 1px; border-style: solid; border-color: rgb(221, 221, 221); border-image: initial; outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; margin: 0px; padding: 30px 0px 40px; clear: both; position: relative;\">\r\n<div class=\"gdlr-core-pbf-wrapper-content gdlr-core-js \" style=\"box-sizing: inherit; border: 0px rgb(230, 230, 230); outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; margin: 0px; padding: 0px; position: relative;\">\r\n<div class=\"gdlr-core-pbf-wrapper-container clearfix gdlr-core-container\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; box-sizing: inherit; border: 0px rgb(230, 230, 230); outline: 0px; vertical-align: baseline; margin: 0px auto; padding: 0px 16px; zoom: 1; max-width: 1320px;\">\r\n<div class=\"gdlr-core-pbf-column gdlr-core-column-60 gdlr-core-column-first\" id=\"gdlr-core-column-1\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; box-sizing: inherit; border: 0px rgb(230, 230, 230); outline: 0px; vertical-align: baseline; margin: 0px; padding: 0px; float: none; width: 1290px; clear: left; position: relative;\">\r\n<div class=\"gdlr-core-pbf-column-content-margin gdlr-core-js \" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; box-sizing: inherit; border: 0px rgb(230, 230, 230); outline: 0px; vertical-align: baseline; margin: 0px; padding: 0px; position: relative;\"> <!--&#7902; &#273;&acirc;y-->\r\n<div class=\"gdlr-core-pbf-column-content clearfix gdlr-core-js \" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; box-sizing: inherit; border: 0px rgb(230, 230, 230); outline: 0px; vertical-align: baseline; margin: 0px auto; padding: 0px; zoom: 1; position: relative; min-height: 1px;\">\r\n<div class=\"gdlr-core-pbf-element\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; box-sizing: inherit; border: 0px rgb(230, 230, 230); outline: 0px; vertical-align: baseline; margin: 0px; padding: 0px; clear: both;\"><div class=\"gdlr-core-text-box-item gdlr-core-item-pdlr gdlr-core-item-pdb gdlr-core-left-align\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; box-sizing: inherit; border: 0px rgb(230, 230, 230); outline: 0px; vertical-align: baseline; margin: 0px; padding: 0px 20px 5px;\">\r\n<div class=\"gdlr-core-text-box-item-content\" style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; box-sizing: inherit; border: 0px rgb(230, 230, 230); outline: 0px; vertical-align: baseline; margin: 0px; padding: 0px;\"><h5 style=\'background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; box-sizing: inherit; border: 0px rgb(230, 230, 230); outline: 0px; vertical-align: baseline; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; font-weight: 700; font-family: \"Open Sans\", sans-serif; font-size: 22px; color: rgb(45, 95, 222);\'><strong style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; box-sizing: inherit; border: 0px rgb(230, 230, 230); outline: 0px; vertical-align: baseline; margin: 0px; padding: 0px; font-weight: bold; color: rgb(0, 0, 0); font-size: 18px;\">&#272;&#7889;i t&aacute;c li&ecirc;n minh chi&#7871;n l&#432;&#7907;c - JS Futures</strong><br></h5><p style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; box-sizing: inherit; border: 0px rgb(230, 230, 230); outline: 0px; vertical-align: baseline; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; line-height: 1.7;\"><span style=\'font-family: \"Open Sans\", sans-serif; font-size: 18px;\'><b>JS Futures</b> &#273;&#432;&#7907;c th&agrave;nh l&#7853;p nh&#432; m&#7897;t c&#417; quan t&#432; v&#7845;n t&agrave;i ch&iacute;nh qu&#7889;c t&#7871; v&agrave;o th&aacute;ng 3 n&#259;m 2019 t&#7841;i Hong Kong. N&oacute; c&oacute; m&#7897;t s&#7889; gi&#7845;y ph&eacute;p ph&aacute;p l&yacute; &#273;&#432;&#7907;c qu&#7889;c t&#7871; c&ocirc;ng nh&#7853;n c&#7845;p b&#7903;i c&aacute;c c&#417; quan ti&#7873;n t&#7879; &#273;&#7875; ph&#7909;c v&#7909; kh&aacute;ch h&agrave;ng tr&ecirc;n to&agrave;n c&#7847;u. D&#7883;ch v&#7909; c&#7911;a n&oacute; bao g&#7891;m qu&#7843;n l&yacute; t&agrave;i s&#7843;n, t&#432; v&#7845;n qu&#7843;n l&yacute;, t&#432; v&#7845;n v&#7889;n v&agrave; t&#432; v&#7845;n r&#7911;i ro. C&aacute;c doanh nghi&#7879;p &#273;a d&#7841;ng c&#7911;a n&oacute; bao g&#7891;m giao d&#7883;ch ngo&#7841;i h&#7889;i, &#273;&#7847;u t&#432; qu&#7929;, ti&#7873;n &#273;i&#7879;n t&#7917; v&agrave; giao d&#7883;ch h&agrave;ng h&oacute;a.</span><br></p><p style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; box-sizing: inherit; border: 0px rgb(230, 230, 230); outline: 0px; vertical-align: baseline; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; line-height: 1.7;\"><span style=\'font-family: \"Open Sans\", sans-serif; font-size: 18px;\'>Gi&aacute;m &#273;&#7889;c &#273;i&#7873;u h&agrave;nh&nbsp;</span><span style=\'font-family: \"Open Sans\", sans-serif; font-size: 18px;\'>JS Futures</span><span style=\'font-family: \"Open Sans\", sans-serif; font-size: 18px;\'><b>&nbsp;</b>d&#7851;n &#273;&#7847;u m&#7897;t nh&oacute;m c&aacute;c nh&agrave; &#273;&#7847;u t&#432; t&agrave;i ch&iacute;nh, nh&agrave; ph&acirc;n t&iacute;ch v&agrave; chuy&ecirc;n gia qu&#7843;n l&yacute; v&#7889;n c&oacute; kinh nghi&#7879;m &#273;&#7847;u t&#432;, giao d&#7883;ch v&agrave; qu&#7843;n l&yacute; s&acirc;u s&#7855;c &#273;&#7875; cung c&#7845;p d&#7883;ch v&#7909; t&#432; v&#7845;n qu&#7843;n l&yacute; v&#7889;n v&agrave; &#273;&#7847;u t&#432; chuy&ecirc;n nghi&#7879;p cho kh&aacute;ch h&agrave;ng tr&ecirc;n to&agrave;n c&#7847;u. H&#7885; tu&acirc;n theo b&#7889;n nguy&ecirc;n t&#7855;c c&#7911;a c&ocirc;ng ty &#273;&#7875; c&oacute; &#273;&#432;&#7907;c s&#7921; tin t&#432;&#7903;ng c&#7911;a kh&aacute;ch h&agrave;ng: &#273;&#7883;nh h&#432;&#7899;ng con ng&#432;&#7901;i, qu&#7843;n l&yacute; t&#7893;ng h&#7907;p, d&#7851;n d&#7855;t t&#432;&#417;ng lai v&agrave; ph&aacute;t tri&#7875;n s&aacute;ng t&#7841;o. Th&ocirc;ng qua ch&#7845;t l&#432;&#7907;ng d&#7883;ch v&#7909; v&#432;&#7907;t tr&#7897;i v&agrave; v&#432;&#7907;t qua c&aacute;c th&aacute;ch th&#7913;c c&#7911;a c&aacute;c y&#7871;u t&#7889; kh&aacute;c nhau nh&#432; ph&aacute;p l&yacute;, kinh t&#7871;, x&atilde; h&#7897;i v&agrave; c&ocirc;ng ngh&#7879;, h&#7885; gi&uacute;p kh&aacute;ch h&agrave;ng c&#7911;a h&#7885; &#273;&#7841;t &#273;&#432;&#7907;c l&#7907;i nhu&#7853;n t&#7915; v&#7889;n.</span><br></p><p style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; box-sizing: inherit; border: 0px rgb(230, 230, 230); outline: 0px; vertical-align: baseline; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; line-height: 1.7;\"><span style=\'font-family: \"Open Sans\", sans-serif; font-size: 18px;\'>L&agrave; m&#7897;t t&#7893; ch&#7913;c t&#432; v&#7845;n t&agrave;i ch&iacute;nh qu&#7889;c t&#7871;,&nbsp;</span><span style=\'font-family: \"Open Sans\", sans-serif; font-size: 18px;\'>JS Futures</span><span style=\'font-family: \"Open Sans\", sans-serif; font-size: 18px;\'>&nbsp;c&oacute; c&ocirc;ng ngh&#7879; t&agrave;i ch&iacute;nh h&agrave;ng &#273;&#7847;u th&#7871; gi&#7899;i, c&oacute; th&#7875; m&#7903; kh&aacute;ch h&agrave;ng truy c&#7853;p v&agrave;o c&aacute;c trung t&acirc;m t&agrave;i ch&iacute;nh qu&#7889;c t&#7871; v&agrave; t&#7841;o ra l&#7907;i nhu&#7853;n v&ocirc; h&#7841;n th&ocirc;ng qua c&aacute;c th&#7883; tr&#432;&#7901;ng &#273;&#7847;u t&#432; &#273;a d&#7841;ng. &#272;&#7891;ng th&#7901;i, n&oacute; ph&aacute;t tri&#7875;n c&aacute;c k&#7871; ho&#7841;ch h&#7897;i nh&#7853;p kh&aacute;c nhau cho c&aacute;c th&#7883; tr&#432;&#7901;ng thay &#273;&#7893;i nhanh ch&oacute;ng &#273;&#7875; th&uacute;c &#273;&#7849;y hi&#7879;u qu&#7843; qu&#7843;n l&yacute; v&agrave; &#273;&#7841;t &#273;&#432;&#7907;c t&#259;ng tr&#432;&#7903;ng v&#7889;n.</span><br></p><p style=\"background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; box-sizing: inherit; border: 0px rgb(230, 230, 230); outline: 0px; vertical-align: baseline; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; line-height: 1.7;\"><span style=\'font-family: \"Open Sans\", sans-serif; font-size: 18px;\'>V&agrave;o th&aacute;ng 4 n&#259;m 2020,&nbsp;</span><span style=\'font-family: \"Open Sans\", sans-serif; font-size: 18px;\'>JS Futures</span><span style=\'font-family: \"Open Sans\", sans-serif; font-size: 18px;\'>&nbsp;v&agrave; Futures Rapid tuy&ecirc;n b&#7889; ch&iacute;nh th&#7913;c r&#7857;ng h&#7885; s&#7869; tr&#7903; th&agrave;nh &#273;&#7889;i t&aacute;c chi&#7871;n l&#432;&#7907;c, c&#7911;ng c&#7889; h&#417;n n&#7919;a ngu&#7891;n v&#7889;n to&agrave;n c&#7847;u v&agrave; k&#7871;t h&#7907;p c&aacute;c th&#7871; m&#7841;nh c&#7911;a c&#7843; hai b&ecirc;n &#273;&#7875; n&acirc;ng c&aacute;c kh&iacute;a c&#7841;nh kh&aacute;c nhau c&#7911;a d&#7883;ch v&#7909; qu&#7843;n l&yacute; r&#7911;i ro v&agrave; qu&#7843;n l&yacute; r&#7911;i ro l&ecirc;n m&#7897;t t&#7847;m cao h&#417;n.</span></p><div class=\"gdlr-core-pbf-wrapper \" data-skin=\"Purple Personnel\" style=\'box-sizing: inherit; border-width: 0px 0px 1px; border-style: solid; border-color: rgb(221, 221, 221); border-image: initial; outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; margin: 0px; padding: 40px 0px 0px 40px; clear: both; position: relative; color: rgb(122, 122, 122); font-family: \"Open Sans\", sans-serif; font-size: 15px;\'><div class=\"gdlr-core-pbf-wrapper-content gdlr-core-js \" style=\"box-sizing: inherit; border: 0px rgb(230, 230, 230); outline: 0px; vertical-align: baseline; background: transparent; margin: 0px; padding: 0px; position: relative;\"><div class=\"gdlr-core-pbf-wrapper-container clearfix gdlr-core-container\" style=\"box-sizing: inherit; border: 0px rgb(230, 230, 230); outline: 0px; vertical-align: baseline; background: transparent; margin: 0px auto; padding: 0px 15px; zoom: 1; max-width: 1320px;\"><div class=\"gdlr-core-pbf-column gdlr-core-column-60 gdlr-core-column-first\" id=\"gdlr-core-column-2\" style=\"box-sizing: inherit; border: 0px rgb(230, 230, 230); outline: 0px; vertical-align: baseline; background: transparent; margin: 0px; padding: 0px; float: none; width: 1290px; clear: left; position: relative;\"><div class=\"gdlr-core-pbf-column-content-margin gdlr-core-js  gdlr-core-column-extend-right\" style=\"box-sizing: inherit; border: 0px rgb(230, 230, 230); outline: 0px; vertical-align: baseline; background: transparent; margin: 0px; padding: 0px; position: relative;\"><div class=\"gdlr-core-pbf-column-content clearfix gdlr-core-js \" style=\"box-sizing: inherit; border: 0px rgb(230, 230, 230); outline: 0px; vertical-align: baseline; background: transparent; margin: 0px auto; padding: 0px; zoom: 1; position: relative; min-height: 1px;\"></div></div></div></div></div></div><div class=\"gdlr-core-pbf-wrapper  gdlr-core-hide-in-tablet-mobile\" data-skin=\"Purple Personnel\" style=\'box-sizing: inherit; border-width: 0px 0px 1px; border-style: solid; border-color: rgb(221, 221, 221); border-image: initial; outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; margin: 0px; padding: 40px 0px 40px 40px; clear: both; position: relative; color: rgb(122, 122, 122); font-family: \"Open Sans\", sans-serif; font-size: 15px;\'><div class=\"gdlr-core-pbf-background-wrap\" style=\"box-sizing: inherit; border: 0px rgb(230, 230, 230); outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; margin: 0px; padding: 0px; position: absolute; top: 0px; right: 0px; bottom: 0px; left: 0px; overflow: hidden;\"></div><div class=\"gdlr-core-pbf-wrapper-content gdlr-core-js \" style=\"box-sizing: inherit; border: 0px rgb(230, 230, 230); outline: 0px; vertical-align: baseline; background: transparent; margin: 0px; padding: 0px; position: relative;\"><div class=\"gdlr-core-pbf-wrapper-container clearfix gdlr-core-container\" style=\"box-sizing: inherit; border: 0px rgb(230, 230, 230); outline: 0px; vertical-align: baseline; background: transparent; margin: 0px auto; padding: 0px 15px; zoom: 1; max-width: 1320px;\"><div class=\"gdlr-core-pbf-column gdlr-core-column-20 gdlr-core-column-first\" style=\"box-sizing: inherit; border: 0px rgb(230, 230, 230); outline: 0px; vertical-align: baseline; background: transparent; margin: 0px; padding: 0px; float: left; width: 429.984px; clear: left; position: relative;\"><div class=\"gdlr-core-pbf-column-content-margin gdlr-core-js \" style=\"box-sizing: inherit; border: 0px rgb(230, 230, 230); outline: 0px; vertical-align: baseline; background: transparent; margin: 0px; padding: 40px 0px 0px; position: relative;\"><div class=\"gdlr-core-pbf-column-content clearfix gdlr-core-js \" style=\"box-sizing: inherit; border: 0px rgb(230, 230, 230); outline: 0px; vertical-align: baseline; background: transparent; margin: 0px auto; padding: 0px; zoom: 1; position: relative; min-height: 1px;\"><div class=\"gdlr-core-pbf-element\" style=\"box-sizing: inherit; border: 0px rgb(230, 230, 230); outline: 0px; vertical-align: baseline; background: transparent; margin: 0px; padding: 0px; clear: both;\"><div class=\"gdlr-core-text-box-item gdlr-core-item-pdlr gdlr-core-item-pdb gdlr-core-left-align\" style=\"box-sizing: inherit; border: 0px rgb(230, 230, 230); outline: 0px; vertical-align: baseline; background: transparent; margin: 0px; padding: 0px 20px 30px;\"><div class=\"gdlr-core-text-box-item-content\" style=\"box-sizing: inherit; border: 0px rgb(230, 230, 230); outline: 0px; vertical-align: baseline; background: transparent; margin: 0px; padding: 0px; font-size: 18px; color: rgb(193, 193, 193);\"><p style=\"box-sizing: inherit; border: 0px rgb(230, 230, 230); outline: 0px; vertical-align: baseline; background: transparent; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; font-size: inherit; line-height: 1.7;\"><img class=\"alignnone wp-image-6360\" src=\"https://www.tlcglobal.asia/wp-content/uploads/2019/05/ibh.jpeg\" alt=\"\" width=\"348\" height=\"191\" style=\"box-sizing: inherit; border: 0px rgb(230, 230, 230); outline: 0px; vertical-align: baseline; background: transparent; margin: 5px 20px 20px 0px; padding: 0px; max-width: 100%; height: auto;\"></p></div></div></div></div></div></div><div class=\"gdlr-core-pbf-column gdlr-core-column-40\" style=\"box-sizing: inherit; border: 0px rgb(230, 230, 230); outline: 0px; vertical-align: baseline; background: transparent; margin: 0px; padding: 0px; float: left; width: 859.984px; position: relative;\"><div class=\"gdlr-core-pbf-column-content-margin gdlr-core-js  gdlr-core-column-extend-right\" style=\"box-sizing: inherit; border: 0px rgb(230, 230, 230); outline: 0px; vertical-align: baseline; background: transparent; margin: 0px; padding: 0px; position: relative;\"><div class=\"gdlr-core-pbf-column-content clearfix gdlr-core-js \" style=\"box-sizing: inherit; border: 0px rgb(230, 230, 230); outline: 0px; vertical-align: baseline; background: transparent; margin: 0px auto; padding: 0px; zoom: 1; position: relative; min-height: 1px;\"><div class=\"gdlr-core-pbf-element\" style=\"box-sizing: inherit; border: 0px rgb(230, 230, 230); outline: 0px; vertical-align: baseline; background: transparent; margin: 0px; padding: 0px; clear: both;\"><div class=\"gdlr-core-text-box-item gdlr-core-item-pdlr gdlr-core-item-pdb gdlr-core-left-align\" style=\"box-sizing: inherit; border: 0px rgb(230, 230, 230); outline: 0px; vertical-align: baseline; background: transparent; margin: 0px; padding: 0px 20px;\"><div class=\"gdlr-core-text-box-item-content\" style=\"box-sizing: inherit; border: 0px rgb(230, 230, 230); outline: 0px; vertical-align: baseline; background: transparent; margin: 0px; padding: 0px; font-size: 18px; color: rgb(193, 193, 193);\"><h5 style=\'box-sizing: inherit; border: 0px rgb(230, 230, 230); outline: 0px; vertical-align: baseline; background: transparent; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; font-weight: 700; font-family: \"Open Sans\", sans-serif; font-size: 22px; color: rgb(45, 95, 222);\'>IBH Investment Bank</h5><p style=\"box-sizing: inherit; border: 0px rgb(230, 230, 230); outline: 0px; vertical-align: baseline; background: transparent; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; font-size: 16px; line-height: 1.7; color: rgb(0, 0, 0);\">IBH Investment Bank Limited &#273;&#432;&#7907;c th&agrave;nh l&#7853;p v&agrave;o ng&agrave;y 9 th&aacute;ng 7 n&#259;m 2009 v&agrave; &#273;&#432;&#7907;c s&#7903; h&#7919;u ho&agrave;n to&agrave;n b&#7903;i c&ocirc;ng ty c&#7893; ph&#7847;n ng&acirc;n h&agrave;ng c&#7911;a n&oacute;, IBH Capital (Labuan) Limited (C&ocirc;ng ty LL 06841), v&#7899;i s&#7889; v&#7889;n &#273;&#259;ng k&yacute; l&agrave; 100 tri&#7879;u USD. </p><p style=\"box-sizing: inherit; border: 0px rgb(230, 230, 230); outline: 0px; vertical-align: baseline; background: transparent; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; font-size: 16px; line-height: 1.7; color: rgb(0, 0, 0);\">IBH Investment Bank &#273;&#432;&#7907;c c&#7845;p ph&eacute;p ho&#7841;t &#273;&#7897;ng ng&acirc;n h&agrave;ng th&ocirc;ng th&#432;&#7901;ng, qu&#7843;n l&yacute; qu&#7929; doanh nghi&#7879;p ho&#7863;c c&aacute; nh&acirc;n, d&#7883;ch v&#7909; t&#432; v&#7845;n v&agrave; t&#432; v&#7845;n li&ecirc;n quan &#273;&#7871;n c&aacute;c v&#7845;n &#273;&#7873; &#273;&#7847;u t&#432; v&agrave; doanh nghi&#7879;p, cho vay v&agrave; t&iacute;n d&#7909;ng, ho&#7841;t &#273;&#7897;ng qu&#7843;n l&yacute; r&#7911;i ro v&agrave; &#273;&#7847;u t&#432;, giao d&#7883;ch ngo&#7841;i h&#7889;i, ho&aacute;n &#273;&#7893;i l&atilde;i su&#7845;t, giao d&#7883;ch trong c&aacute;c c&ocirc;ng c&#7909; ph&aacute;i sinh ho&#7863;c C&ocirc;ng c&#7909; t&agrave;i ch&iacute;nh ph&aacute;t sinh.</p></div></div></div></div></div></div></div></div></div></div></div></div></div></div></div></div></div></div></body></html>\n', NULL, '2020-08-05 15:16:47', 'upload/images/1596180938_TLC_Head-Poster-03b.jpg', '<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.0 Transitional//EN\" \"http://www.w3.org/TR/REC-html40/loose.dtd\">\n<?xml encoding=\"utf-8\" ?><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><html><body><h4 style=\"line-height:1.38;margin-left: 35.43307086614173pt;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\"></span></h4><h3 style=\'box-sizing: inherit; border: 0px rgb(230, 230, 230); outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; font-weight: 700; font-family: \"Open Sans\", sans-serif; font-size: 36px; color: rgb(56, 56, 56);\'>&nbsp; &nbsp; &nbsp;V&#7873; Ch&uacute;ng T&ocirc;i</h3><h4 style=\"line-height:1.38;margin-left: 35.43307086614173pt;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size: 10.5pt; font-family: Arial; background-color: rgb(255, 255, 255); font-style: normal; font-variant: normal; text-decoration: none; vertical-align: baseline; white-space: pre-wrap;\"><strong style=\'font-weight: bold; box-sizing: inherit; border: 0px rgb(230, 230, 230); outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; margin: 0px; padding: 0px; font-family: \"Open Sans\", sans-serif; font-size: 20px; text-align: justify; color: rgb(255, 0, 0);\'>FUTURES RAPID</strong><strong style=\'color: rgb(36, 88, 223); font-weight: bold; box-sizing: inherit; border: 0px rgb(230, 230, 230); outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; margin: 0px; padding: 0px; font-family: \"Open Sans\", sans-serif; font-size: 20px; text-align: justify;\'>&nbsp;</strong><span id=\"docs-internal-guid-1fd9f97f-7fff-62c2-a82b-22e9e148adc4\" style=\"color: rgb(0, 0, 0);\"><span style=\"font-weight: 400; font-size: 13pt; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline;\">l&agrave; n&#7873;n t&#7843;ng qu&#7843;n l&yacute; &#273;&#7847;u t&#432; d&#7921;a tr&ecirc;n c&ocirc;ng ngh&#7879; h&agrave;ng &#273;&#7847;u thu&#7897;c </span><span style=\"font-size: 13pt; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline;\">C&ocirc;ng Ty TNHH C&ocirc;ng Ngh&#7879; M&#7841;ng Minh Huy</span><span style=\"font-weight: 400; font-size: 13pt; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline;\"> ( Futures Rapid ).</span></span></span></h4><h4 style=\"line-height:1.38;margin-left: 35.43307086614173pt;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size:13pt;font-family:Arial;color:#000000;background-color:#ffffff;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\"><br></span></h4><h4 style=\'box-sizing: inherit; border: 0px rgb(230, 230, 230); outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; margin: 0pt 0px 0pt 35.4331pt; padding: 0px; line-height: 1.38; font-family: \"Open Sans\", sans-serif; font-size: 28px;\'><span style=\"font-weight: 400; color: rgb(0, 0, 0); box-sizing: inherit; border: 0px rgb(230, 230, 230); outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; margin: 0px; padding: 0px; font-size: 13pt; font-family: Arial; font-variant-numeric: normal; font-variant-east-asian: normal; white-space: pre-wrap;\"><strong style=\'background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; box-sizing: inherit; font-weight: bold; border: 0px rgb(230, 230, 230); outline: 0px; vertical-align: baseline; margin: 0px; padding: 0px; font-family: \"Open Sans\", sans-serif; font-size: 20px; text-align: justify; color: rgb(255, 0, 0);\'>FUTURES RAPID</strong> l&agrave; &#273;&#7841;i l&yacute; c&#7911;a </span><span style=\"box-sizing: inherit; border: 0px rgb(230, 230, 230); outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; margin: 0px; padding: 0px; font-size: 13pt; font-family: Arial; font-variant-numeric: normal; font-variant-east-asian: normal; white-space: pre-wrap;\"><b>JS Securities LTD</b></span><span style=\"font-weight: 400; color: rgb(0, 0, 0); box-sizing: inherit; border: 0px rgb(230, 230, 230); outline: 0px; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; margin: 0px; padding: 0px; font-size: 13pt; font-family: Arial; font-variant-numeric: normal; font-variant-east-asian: normal; white-space: pre-wrap;\"> ( Hong Kong ) thi&#7871;t l&#7853;p T&#7893;ng c&ocirc;ng ty t&#7841;i H&agrave; N&#7897;i, &#273;&#432;&#7907;c th&agrave;nh l&#7853;p b&#7903;i c&aacute;c chuy&ecirc;n gia trong l&#297;nh v&#7921;c t&agrave;i ch&iacute;nh v&agrave; c&aacute;c chuy&ecirc;n gia trong l&#297;nh v&#7921;c &#273;&#7847;u t&#432; ph&aacute;i sinh.</span></h4><h4 style=\"line-height:1.38;margin-left: 35.43307086614173pt;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size:13pt;font-family:Arial;color:#000000;background-color:#ffffff;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\"></span><span style=\"font-size:13pt;font-family:Arial;color:#000000;background-color:#ffffff;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\">Ch&uacute;ng t&ocirc;i &#273;&atilde; c&oacute; m&#7863;t t&#7841;i 6 qu&#7889;c gia nh&#432; Hong Kong, Nh&#7853;t B&#7843;n, H&agrave;n Qu&#7889;c, Th&aacute;i Lan, Singapore, &#7844;n &#272;&#7897;. Chung t&ocirc;i h&#7895; tr&#7907; kh&aacute;ch h&agrave;ng t&igrave;m hi&#7875;u v&#7873; c&aacute;c s&#7843;n ph&#7849;m &#273;&#7847;u t&#432;, n&#7855;m b&#7855;t c&#417; h&#7897;i, cung c&#7845;p giao d&#7883;ch tr&#7921;c tuy&#7871;n to&agrave;n di&#7879;n tr&ecirc;n c&aacute;c thi&#7871;t b&#7883; di &#273;&#7897;ng ph&#7909;c v&#7909; v&#7873; c&aacute;c th&ocirc;ng tin v&agrave; &#273;&#7847;u t&#432; ch&#7913;ng kho&aacute;n. C&ocirc;ng ty TNHH C&ocirc;ng Ngh&#7879; M&#7841;ng Minh Huy th&agrave;nh l&#7853;p t&#7841;i H&agrave; N&#7897;i, l&#7845;y H&agrave; N&#7897;i l&agrave;m tr&#7885;ng &#273;i&#7875;m v&agrave; s&#7869; ph&aacute;t tri&#7875;n theo h&#432;&#7899;ng qu&#7889;c t&#7871; h&oacute;a.</span></h4></body></html>\n');
INSERT INTO `about` (`title`, `id`, `image`, `leftimage`, `rightcontent`, `content`, `created_at`, `updated_at`, `rightimage`, `leftcontent`) VALUES
('Phái Sinh', 4, 'upload/images/1603960566_maxresdefault.jpg', 'upload/images/1596599908_slider-1-1-1[1].jpg', '<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.0 Transitional//EN\" \"http://www.w3.org/TR/REC-html40/loose.dtd\">\n<?xml encoding=\"utf-8\" ?>\n', '<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.0 Transitional//EN\" \"http://www.w3.org/TR/REC-html40/loose.dtd\">\n<?xml encoding=\"utf-8\" ?><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><html><body><div class=\"row-1\" style=\"font-family: Muli;\"><h2 style=\"text-transform: initial; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; padding: 0px; color: rgb(15, 44, 82); text-size-adjust: 100%; font-size: 36px; line-height: 48px; letter-spacing: 0px;\">&#272;&#7889;i t&aacute;c gi&#7899;i thi&#7879;u l&agrave; g&igrave;?</h2><p style=\"text-transform: initial; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; color: rgb(76, 76, 76); text-size-adjust: 100%; font-size: 18px; line-height: 30px; letter-spacing: 0px;\">&#272;&#7889;i t&aacute;c gi&#7899;i gi&#7899;i thi&#7879;u (IB) l&agrave; m&#7897;t ng&#432;&#7901;i ho&#7863;c m&#7897;t doanh nghi&#7879;p gi&#7899;i thi&#7879;u kh&aacute;ch h&agrave;ng m&#7899;i cho m&#7897;t doanh nghi&#7879;p kh&aacute;c. &#272;&oacute; l&agrave; quan h&#7879; h&#7907;p t&aacute;c gi&#7919;a hai b&ecirc;n &#273;&#7875; gi&uacute;p th&uacute;c &#273;&#7849;y c&#7843; hai doanh nghi&#7879;p t&#432;&#417;ng &#7913;ng. Trong tr&#432;&#7901;ng h&#7907;p n&agrave;y, b&#7841;n s&#7869; gi&#7899;i thi&#7879;u kh&aacute;ch h&agrave;ng cho ch&uacute;ng t&ocirc;i v&agrave; ch&uacute;ng t&ocirc;i s&#7869; tr&#7843; ti&#7873;n cho b&#7841;n cho c&ocirc;ng vi&#7879;c c&#7911;a b&#7841;n.</p><p style=\"text-transform: initial; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; color: rgb(76, 76, 76); text-size-adjust: 100%; font-size: 18px; line-height: 30px; letter-spacing: 0px;\">&nbsp;</p><h2 style=\"text-transform: initial; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; padding: 0px; color: rgb(15, 44, 82); text-size-adjust: 100%; font-size: 36px; line-height: 48px; letter-spacing: 0px; text-align: justify;\">B&#7841;n Gi&#7899;i thi&#7879;u Kh&aacute;ch h&agrave;ng cho ATFX B&#7857;ng c&aacute;ch n&agrave;o?</h2><p style=\"text-transform: initial; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; color: rgb(76, 76, 76); text-size-adjust: 100%; font-size: 18px; line-height: 30px; letter-spacing: 0px; text-align: justify;\">B&#7841;n gi&#7899;i thi&#7879;u kh&aacute;ch h&agrave;ng cho&nbsp;<a href=\"https://www.atfx.com/vi/about-us\" rel=\"noopener\" style=\"text-transform: initial; margin: 0px; padding: 0px; text-decoration-line: underline; color: rgb(242, 103, 42); text-size-adjust: 100%; cursor: pointer; font-weight: bold;\">ATFX</a>&nbsp;th&ocirc;ng qua website ho&#7863;c c&aacute;c k&ecirc;nh marketing c&#7911;a b&#7841;n. B&#7841;n c&oacute; th&#7875; l&agrave;m vi&#7879;c n&agrave;y b&#7857;ng c&aacute;ch nh&uacute;ng c&aacute;c li&ecirc;n k&#7871;t duy nh&#7845;t v&agrave;o n&#7897;i dung c&#7911;a m&igrave;nh v&agrave; &#273;&#7863;t bi&#7875;u ng&#7919; c&#7911;a ch&uacute;ng t&ocirc;i tr&ecirc;n trang website c&#7911;a b&#7841;n. Kh&aacute;ch h&agrave;ng s&#7869; nh&#7845;p chu&#7897;t qua v&agrave; b&#7841;n s&#7869; gi&#7899;i thi&#7879;u h&#7885;, gi&#7843; s&#7917; h&#7885;&nbsp;<a href=\"https://www.atfx.com/vi/trading-accounts\" rel=\"noopener\" style=\"text-transform: initial; margin: 0px; padding: 0px; text-decoration-line: underline; color: rgb(242, 103, 42); text-size-adjust: 100%; cursor: pointer; font-weight: bold;\">&#273;&#259;ng k&yacute;</a>.</p><p style=\"text-transform: initial; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; color: rgb(76, 76, 76); text-size-adjust: 100%; font-size: 18px; line-height: 30px; letter-spacing: 0px; text-align: justify;\">B&#7841;n c&#361;ng c&oacute; th&#7875; t&#7841;o c&aacute;c chi&#7871;n d&#7883;ch marketing v&agrave; &#273;&#259;ng th&#432; tin t&#7913;c, email, b&agrave;i &#273;&#259;ng tr&ecirc;n m&#7841;ng x&atilde; h&#7897;i, v.v... M&#7897;t l&#7847;n n&#7919;a, b&#7841;n &#273;&atilde; bao g&#7891;m c&aacute;c li&ecirc;n k&#7871;t duy nh&#7845;t trong c&aacute;c b&agrave;i &#273;&#259;ng n&agrave;y.</p><p style=\"text-transform: initial; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; color: rgb(76, 76, 76); text-size-adjust: 100%; font-size: 18px; line-height: 30px; letter-spacing: 0px; text-align: justify;\">Ch&uacute;ng t&ocirc;i cung c&#7845;p cho b&#7841;n t&#7845;t c&#7843; s&#7921; gi&uacute;p &#273;&#7905; b&#7841;n c&#7847;n, bao g&#7891;m c&aacute;c c&ocirc;ng c&#7909; tr&#7921;c tuy&#7871;n kh&aacute;c nhau, &#273;&#7875; b&#7841;n t&#7921; do t&#7853;p trung v&agrave;o nh&#7919;ng g&igrave; b&#7841;n l&agrave;m t&#7889;t nh&#7845;t. &#272;&#7897;i ng&#361; quan h&#7879; h&#7907;p t&aacute;c c&#7911;a ch&uacute;ng t&ocirc;i c&#361;ng r&#7845;t vui khi &#273;&#432;&#7907;c t&#432; v&#7845;n v&#7873; c&aacute;c k&#7929; thu&#7853;t t&#7841;o kh&aacute;ch h&agrave;ng ti&#7873;m n&#259;ng.</p><p style=\"text-transform: initial; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; color: rgb(76, 76, 76); text-size-adjust: 100%; font-size: 18px; line-height: 30px; letter-spacing: 0px; text-align: justify;\">&nbsp;</p></div><div class=\"row-2\" style=\"font-family: Muli;\"><h2 style=\"text-transform: initial; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; padding: 0px; color: rgb(15, 44, 82); text-size-adjust: 100%; font-size: 36px; line-height: 48px; letter-spacing: 0px;\">L&#7907;i &iacute;ch c&#7911;a Ch&#432;&#417;ng tr&igrave;nh &#272;&#7889;i t&aacute;c gi&#7899;i thi&#7879;u c&#7911;a Ch&uacute;ng t&ocirc;i</h2><ol style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\"><li style=\"margin-bottom: 8px; font-size: 18px; line-height: 30px; letter-spacing: 0px; position: relative; margin-left: 10px; text-align: justify;\"><p style=\"text-transform: initial; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; color: rgb(76, 76, 76); text-size-adjust: 100%; line-height: 30px; letter-spacing: 0px;\">C&#417; ch&#7871; chi&#7871;t kh&#7845;u c&#7841;nh tranh v&agrave; c&oacute; th&#7875; t&ugrave;y ch&#7881;nh - Ch&uacute;ng t&ocirc;i lu&ocirc;n &#273;&#7863;t kh&aacute;ch h&agrave;ng v&agrave; &#273;&#7889;i t&aacute;c l&ecirc;n h&agrave;ng &#273;&#7847;u. B&#7841;n s&#7869; &#273;&#432;&#7907;c t&#432;&#7903;ng th&#432;&#7903;ng v&#7899;i c&aacute;c t&ugrave;y ch&#7885;n chi&#7871;t kh&#7845;u c&#7921;c k&#7923; c&#7841;nh tranh v&agrave; c&oacute; th&#7875; t&ugrave;y ch&#7881;nh.</p></li><li style=\"margin-bottom: 8px; font-size: 18px; line-height: 30px; letter-spacing: 0px; position: relative; margin-left: 10px; text-align: justify;\"><p style=\"text-transform: initial; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; color: rgb(76, 76, 76); text-size-adjust: 100%; line-height: 30px; letter-spacing: 0px;\">Kh&ocirc;ng gi&#7899;i h&#7841;n v&#7873; hoa h&#7891;ng tr&ecirc;n m&#7895;i kh&aacute;ch h&agrave;ng - Ch&uacute;ng t&ocirc;i kh&ocirc;ng &#273;&#7863;t ra gi&#7899;i h&#7841;n s&#7889; ti&#7873;n b&#7841;n c&oacute; th&#7875; ki&#7871;m &#273;&#432;&#7907;c tr&ecirc;n m&#7895;i kh&aacute;ch h&agrave;ng. Kh&aacute;ch h&agrave;ng c&agrave;ng ho&#7841;t &#273;&#7897;ng, b&#7841;n c&agrave;ng ki&#7871;m &#273;&#432;&#7907;c nhi&#7873;u ti&#7873;n chi&#7871;t kh&#7845;u.</p></li><li style=\"margin-bottom: 8px; font-size: 18px; line-height: 30px; letter-spacing: 0px; position: relative; margin-left: 10px; text-align: justify;\"><p style=\"text-transform: initial; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; color: rgb(76, 76, 76); text-size-adjust: 100%; line-height: 30px; letter-spacing: 0px;\">Thanh to&aacute;n hoa h&#7891;ng &#273;a c&#7845;p - C&#417; ch&#7871; thanh to&aacute;n hoa h&#7891;ng &#273;a c&#7845;p c&#7911;a ch&uacute;ng t&ocirc;i c&oacute; ngh&#297;a l&agrave; b&#7841;n c&oacute; th&#7875; ki&#7871;m ti&#7873;n th&ocirc;ng qua gi&#7899;i thi&#7879;u kh&aacute;ch h&agrave;ng, chi&#7871;t kh&#7845;u t&#7915; m&#7895;i giao d&#7883;ch &#273;&atilde; &#273;&oacute;ng c&#361;ng nh&#432; l&#432;&#7907;t gi&#7899;i thi&#7879;u IB ph&#7909;.</p></li><li style=\"margin-bottom: 8px; font-size: 18px; line-height: 30px; letter-spacing: 0px; position: relative; margin-left: 10px; text-align: justify;\"><p style=\"text-transform: initial; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; color: rgb(76, 76, 76); text-size-adjust: 100%; line-height: 30px; letter-spacing: 0px;\">Thanh to&aacute;n hoa h&#7891;ng nhanh ch&oacute;ng - T&#7845;t c&#7843; hoa h&#7891;ng &#273;&#432;&#7907;c tr&#7843; &#273;&uacute;ng h&#7841;n v&agrave; kh&ocirc;ng k&egrave;m theo b&#7845;t k&#7923; ph&iacute; ho&#7863;c l&#7879; ph&iacute; &#7849;n n&agrave;o. &#272;&#7897; tin c&#7853;y l&agrave; ch&igrave;a kh&oacute;a khi l&agrave;m vi&#7879;c trong quan h&#7879; &#273;&#7889;i t&aacute;c.</p></li><li style=\"margin-bottom: 8px; font-size: 18px; line-height: 30px; letter-spacing: 0px; position: relative; margin-left: 10px; text-align: justify;\"><p style=\"text-transform: initial; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; color: rgb(76, 76, 76); text-size-adjust: 100%; line-height: 30px; letter-spacing: 0px;\">G&oacute;i h&#7895; tr&#7907; &#273;&#7863;c bi&#7879;t - Ch&uacute;ng t&ocirc;i cung c&#7845;p cho b&#7841;n ch&#432;&#417;ng tr&igrave;nh &#273;&agrave;o t&#7841;o h&agrave;ng &#273;&#7847;u v&agrave; c&#417; h&#7897;i tham gia c&aacute;c tri&#7875;n l&atilde;m l&#7899;n,&nbsp;<a href=\"https://www.atfx.com/vi/education-and-tools/trading-seminars\" rel=\"noopener\" style=\"text-transform: initial; margin: 0px; padding: 0px; text-decoration-line: underline; color: rgb(242, 103, 42); text-size-adjust: 100%; cursor: pointer; font-weight: bold;\">h&#7897;i th&#7843;o</a>&nbsp;v&agrave;&nbsp;<a href=\"https://www.atfx.com/vi/education-and-tools/trading-webinars\" rel=\"noopener\" style=\"text-transform: initial; margin: 0px; padding: 0px; text-decoration-line: underline; color: rgb(242, 103, 42); text-size-adjust: 100%; cursor: pointer; font-weight: bold;\">h&#7897;i th&#7843;o qua web</a>. B&#7841;n c&#361;ng s&#7869; &#273;&#432;&#7907;c ch&#7881; &#273;&#7883;nh nh&agrave; qu&#7843;n l&yacute; t&agrave;i kho&#7843;n ri&ecirc;ng.</p></li><li style=\"margin-bottom: 8px; font-size: 18px; line-height: 30px; letter-spacing: 0px; position: relative; margin-left: 10px; text-align: justify;\"><p style=\"text-transform: initial; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; color: rgb(76, 76, 76); text-size-adjust: 100%; line-height: 30px; letter-spacing: 0px;\">Ch&#432;&#417;ng tr&igrave;nh &#273;&agrave;o t&#7841;o n&acirc;ng cao cho &#273;&#7889;i t&aacute;c - N&#7871;u b&#7841;n th&agrave;nh c&ocirc;ng, ch&uacute;ng t&ocirc;i c&#361;ng th&agrave;nh c&ocirc;ng. Do &#273;&oacute;, ch&uacute;ng t&ocirc;i cung c&#7845;p ch&#432;&#417;ng tr&igrave;nh &#273;&agrave;o t&#7841;o n&acirc;ng cao cho t&#7845;t c&#7843; &#273;&#7889;i t&aacute;c c&#7911;a ch&uacute;ng t&ocirc;i nh&#7857;m gi&uacute;p b&#7841;n t&#7889;i &#273;a h&oacute;a ti&#7873;m n&#259;ng c&#7911;a m&igrave;nh.</p></li><li style=\"margin-bottom: 8px; font-size: 18px; line-height: 30px; letter-spacing: 0px; position: relative; margin-left: 10px; text-align: justify;\"><p style=\"text-transform: initial; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; color: rgb(76, 76, 76); text-size-adjust: 100%; line-height: 30px; letter-spacing: 0px;\">Truy c&#7853;p mi&#7877;n ph&iacute;&nbsp;<a href=\"https://www.atfx.com/vi/education-and-tools\" rel=\"noopener\" style=\"text-transform: initial; margin: 0px; padding: 0px; text-decoration-line: underline; color: rgb(242, 103, 42); text-size-adjust: 100%; cursor: pointer; font-weight: bold;\">c&ocirc;ng c&#7909; giao d&#7883;ch</a>&nbsp;- B&#7841;n c&#361;ng s&#7869; &#273;&#432;&#7907;c c&#7845;p quy&#7873;n truy c&#7853;p t&#7845;t c&#7843; c&ocirc;ng c&#7909; giao d&#7883;ch mi&#7877;n ph&iacute; c&#7911;a ch&uacute;ng t&ocirc;i &#273;&#7875; gi&uacute;p h&#7895; tr&#7907; c&aacute;c quy&#7871;t &#273;&#7883;nh giao d&#7883;ch c&#7911;a m&igrave;nh v&agrave; gi&uacute;p kh&aacute;ch h&agrave;ng c&#7911;a b&#7841;n.</p></li><li style=\"margin-bottom: 8px; font-size: 18px; line-height: 30px; letter-spacing: 0px; position: relative; margin-left: 10px; text-align: justify;\"><p style=\"text-transform: initial; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; color: rgb(76, 76, 76); text-size-adjust: 100%; line-height: 30px; letter-spacing: 0px;\">Nh&agrave; m&ocirc;i gi&#7899;i &#273;&#432;&#7907;c qu&#7843;n l&yacute; to&agrave;n c&#7847;u - T&#7853;p &#273;o&agrave;n ATFX l&agrave;&nbsp;<a href=\"https://www.atfx.com/vi/about-us/atfx-regulators\" rel=\"noopener\" style=\"text-transform: initial; margin: 0px; padding: 0px; text-decoration-line: underline; color: rgb(242, 103, 42); text-size-adjust: 100%; cursor: pointer; font-weight: bold;\">nh&agrave; m&ocirc;i gi&#7899;i &#273;&#432;&#7907;c &#7911;y quy&#7873;n</a>, &#273;&#432;&#7907;c qu&#7843;n l&yacute; b&#7903;i m&#7897;t s&#7889; c&#417; quan c&oacute; th&#7849;m quy&#7873;n tr&ecirc;n to&agrave;n th&#7871; gi&#7899;i.</p></li></ol></div></body></html>\n', NULL, '2020-10-29 08:36:06', 'upload/images/1596599962_shutterstock_495349657.jpg', '<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.0 Transitional//EN\" \"http://www.w3.org/TR/REC-html40/loose.dtd\">\n<?xml encoding=\"utf-8\" ?><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><html><body><h4 style=\"line-height:1.38;margin-left: 35.43307086614173pt;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\"></span></h4><h4 style=\"line-height:1.38;margin-left: 35.43307086614173pt;margin-top:0pt;margin-bottom:0pt;\"><span style=\'font-family: \"Open Sans\", sans-serif; font-size: 18px; color: rgb(255, 255, 255);\'>, v.v.</span><br></h4><h1 class=\"h2\" style=\"margin-bottom: 16px; padding: 0px; color: rgb(15, 44, 82); text-size-adjust: 100%; font-size: 36px; line-height: 48px; font-family: Muli; background-color: rgb(245, 245, 245);\">Ch&#432;&#417;ng tr&igrave;nh &#272;&#7889;i t&aacute;c gi&#7899;i thi&#7879;u</h1><div class=\"daText\" style=\"font-size: 18px; line-height: 30px; color: rgb(76, 76, 76); margin: 0px 0px 30px; font-family: Muli; background-color: rgb(245, 245, 245);\"><p style=\"text-transform: initial; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-size-adjust: 100%; line-height: 30px; letter-spacing: 0px; text-align: justify;\">Ch&#432;&#417;ng tr&igrave;nh &#272;&#7889;i t&aacute;c gi&#7899;i thi&#7879;u c&#7911;a ch&uacute;ng t&ocirc;i l&agrave; g&oacute;i kinh doanh &#273;&#432;&#7907;c t&#7841;o s&#7861;n d&agrave;nh cho nh&#7919;ng c&aacute; nh&acirc;n l&atilde;o luy&#7879;n c&oacute; th&#7875; t&#7841;o ra kh&aacute;ch h&agrave;ng ti&#7873;m n&#259;ng trong ng&agrave;nh forex ho&#7863;c t&agrave;i ch&iacute;nh.</p><p style=\"text-transform: initial; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-size-adjust: 100%; line-height: 30px; letter-spacing: 0px; text-align: justify;\">Tr&#7903; th&agrave;nh &#272;&#7889;i t&aacute;c gi&#7899;i thi&#7879;u (IB) cho ATFX l&agrave; c&#417; h&#7897;i tuy&#7879;t v&#7901;i &#273;&#7875; ph&aacute;t tri&#7875;n v&#7899;i t&#432; c&aacute;ch l&agrave; &#273;&#7889;i t&aacute;c kinh doanh c&#7911;a ch&uacute;ng t&ocirc;i v&agrave; t&#7841;o thu nh&#7853;p.</p></div><div style=\"font-family: Muli; background-color: rgb(245, 245, 245);\"><div class=\"daAdditional\"><div class=\"daaContent\"><div class=\"daInner\" style=\"float: left; width: 604.094px; padding: 10px 0px 10px 80px; position: relative; min-height: 65px; margin: 0px 0px 20px;\"><div class=\"daaIcon\" style=\"position: absolute; left: 0px; top: 5px; max-width: 60px;\"><img src=\"https://www.atfx.com/hubfs/ATFX.COM/NEW%20pages/Pages%20-%20go%20live%20-%20Promotions%20+%20IB/IB%20Partnership%20-%20A%20-%20Introducing%20Broker/icons/ibprogram-icon-a-spanner-%20wrench1a.svg\" alt=\"ibprogram-icon-a-spanner- wrench1a\" width=\"40\" height=\"40\" style=\"max-width: 100%; border: 0px; vertical-align: bottom;\"></div><div class=\"daaText\">C&#417; ch&#7871; chi&#7871;t kh&#7845;u c&#7841;nh tranh v&agrave; c&oacute; th&#7875; t&ugrave;y ch&#7881;nh</div></div><div class=\"daInner\" style=\"float: left; width: 604.094px; padding: 10px 0px 10px 80px; position: relative; min-height: 65px; margin: 0px 0px 20px;\"><div class=\"daaIcon\" style=\"position: absolute; left: 0px; top: 5px; max-width: 60px;\"><img src=\"https://www.atfx.com/hubfs/ATFX.COM/NEW%20pages/Pages%20-%20go%20live%20-%20Promotions%20+%20IB/IB%20Partnership%20-%20A%20-%20Introducing%20Broker/icons/ibprogram-icon-infinite1a.svg\" alt=\"ibprogram-icon-infinite1a\" width=\"40\" height=\"40\" style=\"max-width: 100%; border: 0px; vertical-align: bottom;\"></div><div class=\"daaText\">Kh&ocirc;ng c&oacute; gi&#7899;i h&#7841;n v&#7873; hoa h&#7891;ng tr&ecirc;n m&#7895;i kh&aacute;ch h&agrave;ng</div></div><div class=\"daInner\" style=\"float: left; width: 604.094px; padding: 10px 0px 10px 80px; position: relative; min-height: 65px; margin: 0px 0px 20px;\"><div class=\"daaIcon\" style=\"position: absolute; left: 0px; top: 5px; max-width: 60px;\"><img src=\"https://www.atfx.com/hubfs/ATFX.COM/NEW%20pages/Pages%20-%20go%20live%20-%20Promotions%20+%20IB/IB%20Partnership%20-%20A%20-%20Introducing%20Broker/icons/ibprogram-icon-podium-a.svg\" alt=\"ibprogram-icon-podium-a\" width=\"40\" height=\"40\" style=\"max-width: 100%; border: 0px; vertical-align: bottom;\"></div><div class=\"daaText\">G&oacute;i h&#7895; tr&#7907; &#273;&#7847;u ng&agrave;nh</div></div><div class=\"daInner\" style=\"float: left; width: 604.094px; padding: 10px 0px 10px 80px; position: relative; min-height: 65px; margin: 0px 0px 20px;\"><div class=\"daaIcon\" style=\"position: absolute; left: 0px; top: 5px; max-width: 60px;\"><img src=\"https://www.atfx.com/hubfs/ATFX.COM/NEW%20pages/Pages%20-%20go%20live%20-%20Promotions%20+%20IB/IB%20Partnership%20-%20A%20-%20Introducing%20Broker/icons/ibprogram-icon-ticked-checkbox2a.svg\" alt=\"ibprogram-icon-ticked-checkbox2a\" width=\"40\" height=\"40\" style=\"max-width: 100%; border: 0px; vertical-align: bottom;\"></div><div class=\"daaText\">Nh&agrave; qu&#7843;n l&yacute; t&agrave;i kho&#7843;n ri&ecirc;ng</div></div></div></div></div></body></html>\n');

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id`, `title`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 'LỜI CHÀO MỪNG', '<span id=\"docs-internal-guid-d1ffae52-7fff-1600-3b85-95eb2b33873d\"><p dir=\"ltr\" style=\"line-height:1.38;margin-left: 36pt;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size: 11pt; font-family: Arial; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;\">Chào mừng đến với Futures Rapid!</span></p><br><p dir=\"ltr\" style=\"line-height:1.38;margin-left: 36pt;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size: 11pt; font-family: Arial; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;\">Tôi chân thành cảm ơn bạn đã chọn chúng tôi làm đối tác trong việc quản lý tài chính.</span></p><br><p dir=\"ltr\" style=\"line-height:1.38;margin-left: 36pt;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size: 11.5pt; font-family: Arial; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;\">Cũng như các thị trường khác, TTCK phái sinh phụ thuộc rất nhiều vào các yếu tố vĩ mô</span><span style=\"font-size: 11pt; font-family: Arial; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;\">, nhưng có rất nhiều ưu điểm vượt trội hơn so với cổ phiếu, trái phiếu.</span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-left: 36pt;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size: 11pt; font-family: Arial; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;\">Sản phẩm chứng khoán phái sinh tại Việt Nam phù hợp với những người chấp nhận rủi ro cao, giao dịch nhiều, đã có kinh nghiệm đầu tư. Bên cạnh đó, phái sinh cũng phù hợp với các tổ chức, như là 1 khoản bảo hiểm cho tài sản trên thị trường chứng khoán cơ sở khi thị trường giảm. Kỹ thuật này gọi là hedging.</span></p><br><p dir=\"ltr\" style=\"line-height:1.38;margin-left: 36pt;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size: 11pt; font-family: Arial; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;\">Do đó, thông qua kế hoạch ổn định thu nhập BMLN của chúng tôi, hy vọng sẽ loại bỏ nỗi sợ mất tiền khỏi phương trình, đảm bảo an ninh quỹ và giao dịch, cũng như tạo ra lợi nhuận dài hạn. Giúp khách hàng gặt hái những lợi ích từ khoản đầu tư của họ là lời chứng thực tốt nhất mà chúng ta có thể có. Do đó, chúng tôi cố gắng cung cấp cho họ dịch vụ tốt nhất có thể.</span></p><br><p dir=\"ltr\" style=\"line-height:1.38;margin-left: 36pt;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size: 11pt; font-family: Arial; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;\">Cuối cùng, cảm ơn bạn một lần nữa vì sự tin tưởng và hỗ trợ của bạn. Chúng tôi tin rằng tương lai của Futures Rapid là một triển vọng. Chúng tôi sẽ tiếp tục mở ra các thị trường rộng lớn hơn, vì vậy nhiều người sẽ biết đến Throne Legacy Capital và có cơ hội nhân rộng tài sản của họ tăng trưởng thông qua nền tảng để có được cuộc sống dồi dào.</span></p><p dir=\"ltr\" style=\"line-height:1.38;margin-left: 36pt;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size: 11pt; font-family: Arial; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;\">Cảm ơn.</span></p><br><p dir=\"ltr\" style=\"line-height:1.38;text-indent: 36pt;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size: 11pt; font-family: Arial; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;\">Futures Rapid CEO</span></p><div><span style=\"font-size: 11pt; font-family: Arial; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;\"><br></span></div></span>', 'upload/images/1595912076_z1996295965729_7a5b0275eb9c9f6733f5c6e27953bee8.jpg', NULL, '2020-07-28 04:54:36');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(10) NOT NULL,
  `name` varchar(128) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `slug`, `created_at`, `updated_at`, `status`) VALUES
(1, 'category 11', 'category-11', '2020-02-04 03:38:31', '2019-08-07 02:07:53', 1),
(2, 'category 1', 'category-1', '2020-02-04 03:38:41', '2019-08-07 02:08:45', 1);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(10) NOT NULL,
  `address` text DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mission` text DEFAULT NULL,
  `map` text NOT NULL,
  `facebook_link` text DEFAULT NULL,
  `youtube_link` text DEFAULT NULL,
  `zalo_link` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `address`, `phone`, `email`, `mission`, `map`, `facebook_link`, `youtube_link`, `zalo_link`, `created_at`, `updated_at`) VALUES
(1, 'Keangnam Hanoi Landmark Tower Khu E6 Đô thị mới Cầu Giấy, Phạm Hùng, Mễ Trì, Nam Từ Liêm, Hà Nội', '078 293 8808', 'email', '<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.0 Transitional//EN\" \"http://www.w3.org/TR/REC-html40/loose.dtd\">\n<?xml encoding=\"utf-8\" ?><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?-->\n', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2602.755521808779!2d-123.05560578455984!3d49.28102957880912!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x548671221ec1ed37%3A0xbd08ef4a36d6eff1!2sPure%20Luxe%20Aesthetics!5e0!3m2!1svi!2s!4v1580802278305!5m2!1svi!2s\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\"></iframe>', 'https://www.facebook.com/CFDmagazine/', NULL, NULL, '2019-08-08 07:16:43', '2020-10-29 07:21:34');

-- --------------------------------------------------------

--
-- Table structure for table `contact_list`
--

CREATE TABLE `contact_list` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `contact_list`
--

INSERT INTO `contact_list` (`id`, `name`, `phone`, `email`, `description`, `updated_at`, `created_at`) VALUES
(1, 'Lưu Bá Tài', 899496569, 'luubatai@gmail.com', 'test', '2020-07-28 16:52:03', '2020-07-28 16:52:03'),
(2, 'Lưu Bá Tài', 899496569, 'luubatai@gmail.com', '1111111111', '2020-10-20 14:36:18', '2020-10-20 14:36:18');

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `name`, `updated_at`, `created_at`) VALUES
(1, 'Viet Nam', '2020-10-23 13:41:38', '2020-10-23 13:41:38'),
(2, 'American', '2020-10-23 13:41:38', '2020-10-23 13:41:38'),
(3, 'China', '2020-10-23 13:48:35', '2020-10-23 13:43:30'),
(5, 'Campuchia', '2020-10-23 13:50:56', '2020-10-23 13:50:56');

-- --------------------------------------------------------

--
-- Table structure for table `financing`
--

CREATE TABLE `financing` (
  `id` int(10) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `financing`
--

INSERT INTO `financing` (`id`, `description`, `created_at`, `updated_at`) VALUES
(1, '<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.0 Transitional//EN\" \"http://www.w3.org/TR/REC-html40/loose.dtd\">\n<?xml encoding=\"utf-8\" ?><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><html><body><p><img style=\"width: 100%;\" data-filename=\"1577599252_15658564000.png\" src=\"/upload/summer_note/15807909070.png\"></p><p>343</p><p>5</p><p>656</p><p><u>dsafsd</u></p></body></html>\n', '2020-02-04 11:35:07', '2020-02-04 11:44:18');

-- --------------------------------------------------------

--
-- Table structure for table `home_services`
--

CREATE TABLE `home_services` (
  `id` int(10) NOT NULL,
  `title` varchar(110) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `background` varchar(255) NOT NULL,
  `link` varchar(110) DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `home_services`
--

INSERT INTO `home_services` (`id`, `title`, `description`, `image`, `icon`, `background`, `link`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Phái Sinh', 'Chứng khoán phái sinh (CKPS) trong đó giá trị của CKPS phụ thuộc vào giá trị của một hay nhiều loại tài sản cơ sở. Được chia làm 4 nhóm chính : Hợp đồng kỳ hạn, hợp đồng tương lai, hợp đồng quyền chọn và hợp đồng hoán đổi.', 'upload/images/1595910623_shutterstock_361397258.jpg', 'upload/images/1595913035_1-1.png', '', 'forextrade', 1, '2019-12-11 17:00:00', '2020-07-28 05:10:35'),
(2, 'Bảo Mật Lợi Nhuận ( BMLN)', 'Chương trình này là đứa con tinh thần của 6 chuyên gia hàng đầu thế giới bao gồm các nhà đầu tư tài chính, nhà toán học, nhà phân tích, chuyên gia lập trình phần mềm và chuyên gia quản lý rủi ro.', 'upload/images/1595910686_hp3-service-2.jpg', 'upload/images/1595916022_2.png', '', 'bmln', 1, '2019-12-26 15:17:56', '2020-07-28 06:00:22'),
(3, 'Đối tác chiến lược', 'Chúng tôi rất cẩn trọng trong việc lựa chọn đối tác và tin rằng sự hợp tác giữa Futures Rapid và JS Futures sẽ mang lại lợi ích ổn định lâu dài cho người dùng của chúng tôi.', 'upload/images/1595910747_shutterstock_306860177-1.jpg', 'upload/images/1595916045_3-1.png', '', '#', 1, '2019-12-26 15:18:35', '2020-07-28 06:00:45'),
(4, 'Về Chúng Tôi', 'Nền tảng quản lý đầu tư định hướng công nghệ hàng đầu thế giới.  Được thành lập vào năm 2019 và có trụ sở tại TPHCM, công ty được thành lập bởi các chuyên gia trong lĩnh vực tài chính và các chuyên gia trong lĩnh vực đầu tư. Futures Rapid Chúng tôi sẽ nỗ lực hết mức có thể vì lợi ích của khách hàng.', 'upload/images/1595910794_shutterstock_341257523.jpg', NULL, '', 'contactus', 1, '2020-07-28 04:33:14', '2020-07-28 04:33:14');

-- --------------------------------------------------------

--
-- Table structure for table `hop_tac`
--

CREATE TABLE `hop_tac` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `surname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `business` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `agency` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `logo`
--

CREATE TABLE `logo` (
  `id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `image` varchar(255) NOT NULL,
  `range_begin` int(10) NOT NULL DEFAULT 0,
  `range_end` int(10) NOT NULL DEFAULT 0,
  `register_password` varchar(255) NOT NULL,
  `facebook_link` text DEFAULT NULL,
  `youtube_link` text DEFAULT NULL,
  `zalo_link` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `logo`
--

INSERT INTO `logo` (`id`, `title`, `image`, `range_begin`, `range_end`, `register_password`, `facebook_link`, `youtube_link`, `zalo_link`, `created_at`, `updated_at`) VALUES
(1, 'logo', 'upload/images/1595910323_logo-1.png', 1, 10000, '123456', NULL, NULL, NULL, '2019-08-08 08:24:51', '2020-10-20 09:41:07');

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
  `parent_id` int(11) UNSIGNED DEFAULT 0,
  `order` int(11) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` int(2) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `title`, `url`, `target`, `class_icon`, `parent_id`, `order`, `created_at`, `updated_at`, `status`) VALUES
(2, 'Menu', '/admin/menu', NULL, 'fas fa-list', 62, 8, NULL, '2020-07-28 08:30:40', 1),
(19, 'User', '/admin/user', '_blank', 'fas fa-user', 62, 9, '2019-05-30 02:19:10', '2020-07-28 08:30:40', 1),
(41, 'Product', '/admin/products', NULL, NULL, 61, 3, '2019-08-06 09:42:37', '2020-07-28 08:31:22', 0),
(43, 'Shop Category', '/admin/category', NULL, NULL, 61, 4, '2019-08-06 09:43:53', '2020-07-28 08:31:15', 0),
(50, 'Banner', '/banner', NULL, NULL, 0, 8, '2019-12-29 07:46:52', '2020-02-04 06:31:51', 0),
(51, 'Giới thiệu trang chủ', '/admin/banner/edit/1', NULL, NULL, 63, 2, '2019-12-29 07:47:31', '2020-07-28 08:30:21', 1),
(52, 'Title', '/title', NULL, NULL, 0, 9, '2019-12-29 07:47:57', '2020-02-04 06:30:47', 0),
(53, 'Home Title', '/admin/title/edit/1', NULL, NULL, 52, 10, '2019-12-29 07:48:09', '2020-02-04 06:28:48', 1),
(54, 'Home Services', '/admin/home-services', NULL, NULL, 63, 3, '2019-12-29 07:49:03', '2020-10-20 09:07:20', 1),
(55, 'Slides', '/admin/slides', NULL, NULL, 63, 4, '2019-12-29 07:49:23', '2020-10-20 09:07:20', 1),
(56, 'Review', '/admin/slide-title', NULL, NULL, 63, 5, '2019-12-29 07:49:47', '2020-02-04 06:35:43', 1),
(57, 'Our Team', '/admin/our-team', NULL, NULL, 63, 6, '2019-12-29 07:50:04', '2020-02-04 06:34:41', 1),
(58, 'Contact Info', '/admin/contact/edit', NULL, NULL, 0, 6, '2019-12-29 08:06:54', '2020-07-28 08:29:32', 1),
(59, 'Service Types', '/admin/service-types', NULL, NULL, 0, 3, '2020-02-04 03:45:16', '2020-10-20 09:07:20', 1),
(60, 'Contact List', '/admin/contact-list', NULL, NULL, 0, 5, '2020-02-04 03:45:58', '2020-07-28 08:32:10', 1),
(61, 'Shop', '/', NULL, NULL, 0, 2, '2020-02-04 03:55:59', '2020-07-28 08:31:26', 0),
(62, 'Setting', '/', NULL, NULL, 0, 7, '2020-02-04 06:27:44', '2020-02-04 06:35:43', 1),
(63, 'Home Page', '/', NULL, NULL, 0, 1, '2020-02-04 06:29:20', '2020-02-04 06:30:51', 1),
(64, 'Home About', '/title', NULL, NULL, 63, 7, '2020-02-04 06:32:13', '2020-02-04 06:35:43', 1),
(65, 'Blog', '/', NULL, NULL, 0, 2, '2020-02-04 06:35:29', '2020-10-20 09:07:20', 1),
(66, 'Posts', '/admin/posts', NULL, NULL, 65, 3, '2020-02-04 06:36:04', '2020-10-20 09:07:20', 1),
(67, 'Post Type', '/admin/post-types', NULL, NULL, 65, 4, '2020-02-04 06:36:27', '2020-10-20 09:07:20', 1),
(68, 'Logo and Register Range', '/admin/logo', NULL, NULL, 62, 10, '2020-02-04 07:02:43', '2020-10-20 09:35:29', 1),
(69, 'Register List', '/admin/register-list', NULL, NULL, 0, 4, '2020-10-20 09:07:13', '2020-10-20 09:07:20', 1),
(70, 'Country List', '/admin/country', NULL, NULL, 0, NULL, '2020-10-23 06:34:28', '2020-10-23 06:34:28', 1),
(71, '3 Bước', '/admin/step', NULL, NULL, 0, NULL, '2020-10-29 07:22:18', '2020-10-29 07:22:18', 1),
(72, 'Hợp Tác', '/admin/hop-tac/edit', NULL, NULL, 0, NULL, '2020-10-29 08:28:18', '2020-10-29 08:28:18', 1);

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
-- Table structure for table `our_team`
--

CREATE TABLE `our_team` (
  `id` int(11) NOT NULL,
  `title` varchar(110) NOT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `link` varchar(255) NOT NULL,
  `type_name` varchar(110) DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `our_team`
--

INSERT INTO `our_team` (`id`, `title`, `description`, `image`, `link`, `type_name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'CARON MINICE', 'I have been licensed for 14 years.\r\nI have worked at Aqua Spa for 14 years.\r\nPedicure, Manicure, Shellac, Acrylic Nail, Waxing', 'upload/images/1580799341_team1.jpg', '#', 'Nail staff', 1, '2019-12-29 06:58:23', '2020-02-04 06:55:41'),
(2, 'MICHEL CARTER', 'I have been licensed for 12 years.\r\nNice, clean, friendly, relaxing environment. Good rate,\r\nflexible hours', 'upload/images/1580799535_team2.jpg', '#', 'Massage man', 1, '2019-12-29 06:58:45', '2020-02-04 06:58:55'),
(3, 'TARA STITLER', 'Certified in Hatha Yoga, Tara offers a fusion of different styles she has learned over the years, and blends tradition with the physiology of the body.', 'upload/images/1580799452_team3.jpg', '#', 'Yoga teacher', 1, '2019-12-29 06:59:18', '2020-02-04 06:57:32');

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
  `position_permission_status` int(1) NOT NULL DEFAULT 1,
  `position_delete_status` int(1) NOT NULL DEFAULT 1,
  `position_permission_list` text COLLATE utf8_unicode_ci DEFAULT NULL
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
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `title` varchar(110) NOT NULL,
  `slug` varchar(110) NOT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `post_type_id` int(10) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `title`, `slug`, `description`, `image`, `post_type_id`, `status`, `created_at`, `updated_at`) VALUES
(1, '3333 55555555 3', '3333-55555555-3', '<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.0 Transitional//EN\" \"http://www.w3.org/TR/REC-html40/loose.dtd\">\n<?xml encoding=\"utf-8\" ?><html><body><a href=\"file:///D:/deg/demo33/blog-article1.html\" class=\"ro-title\" style=\'background-color: rgb(255, 255, 255); color: inherit; transition: all 0.4s ease 0s; outline: none; font-weight: 700; font-size: 36px; font-style: italic; font-family: \"Josefin Sans\", sans-serif;\'>Lose Weight &amp; Feel Great: 6 Expert Fitness Tips &amp; Tricks</a><span style=\'color: rgb(68, 68, 68); font-family: \"Josefin Sans\", sans-serif; font-weight: 600;\'></span><div class=\"ro-image\" style=\'position: relative; margin-top: 50px; margin-bottom: 50px; color: rgb(68, 68, 68); font-family: \"Josefin Sans\", sans-serif; font-weight: 600;\'><img src=\"file:///D:/deg/demo33/assets/images/blog2.jpg\" alt=\"blog image\" class=\"img-responsive\" style=\"border: 0px; display: block; max-width: 100%; height: auto;\"></div><div class=\"ro-content ro-ellipsis\" style=\'overflow: hidden; margin-bottom: 20px; color: rgb(68, 68, 68); font-family: \"Josefin Sans\", sans-serif; font-weight: 600; overflow-wrap: break-word;\'><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\">Through various yoga modalities ranging from bikram and power yoga to ashtanga and vinyasa, yoga has many healthy benefits for the mind, body, and soul. Originating in ancient India, the word yoga means to unite or to join, and in yoga, we unite our minds and our bodies through breath. Most Western yoga derives from hatha, one of the six major branches of yoga. Traditional hatha yoga consists of asanas (physical yoga postures) and pranayamas (breathing exercises). With over 100 yoga poses, it&rsquo;s no wonder yogis never get bored. Like many calming spa treatments, yoga is a discipline that utilizes the mind-body connection to reduce stress, increase flexibility, and enhance wellbeing.In honor of International Yoga Day we&rsquo;re sharing this handy infographic to help you learn about the different styles and find the practice that&rsquo;s perfect for you. Learn more about yoga and find classes and studios near you with our Yoga Guide.</p></div></body></html>\n', 'upload/images/1577680499_1577374253_2-2-happy-girl-png-pic.png', 1, 1, '2019-12-30 04:34:59', '2019-12-30 06:26:26'),
(2, 'sssssssssssss', 'sssssssssssss', '<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.0 Transitional//EN\" \"http://www.w3.org/TR/REC-html40/loose.dtd\">\n<?xml encoding=\"utf-8\" ?><html><body><p><b>sssssssssssss</b></p><p><b>s</b></p><p><img data-filename=\"1577599252_15658564000.png\" style=\"width: 25%;\" src=\"/upload/summer_note/15776870480.png\"><b><br></b></p><p><b>yyuyu</b></p></body></html>\n', 'upload/images/1577680871_1577374253_2-2-happy-girl-png-pic.png', 1, 1, '2019-12-30 04:41:11', '2019-12-30 06:24:08'),
(3, 'fffffffffffffffffffff', 'fffffffffffffffffffff', '<p>ffffffffffff</p>', 'upload/images/1577681040_1577599252_15658564000.png', 1, 1, '2019-12-30 04:44:00', '2019-12-30 04:44:07'),
(4, 'ssssssssssssssssssss', 'ssssssssssssssssssss', '<p><span style=\"color: rgb(68, 68, 68); font-family: &quot;Josefin Sans&quot;, sans-serif; font-weight: 600;\">Through various yoga modalities ranging from bikram and power yoga to ashtanga and vinyasa, yoga has many healthy benefits for the mind, body, and soul. Originating in ancient India, the word yoga means to unite or to join, and in yoga, we unite our minds and our bodies through breath. Most Western yoga derives from hatha, one of the six major branches of yoga. Traditional hatha yoga consists of asanas (physical yoga postures) and pranayamas (breathing exercises). With over 100 yoga poses, it’s no wonder yogis never get bored. Like many calming spa treatments, yoga is a discipline that utilizes the mind-body connection to reduce stress, increase flexibility, and enhance wellbeing.In honor of International Yoga Day we’re sharing this handy infographic to help you learn about the different styles and find the practice that’s perfect for you. Learn more about yoga and find classes and studios near you with our Yoga Guide.</span><br></p>', 'upload/images/1577686877_1577600526_jlbF-product4.png', 1, 1, '2019-12-30 06:21:17', '2019-12-30 06:21:17'),
(5, '3333333333', '3333333333', '<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.0 Transitional//EN\" \"http://www.w3.org/TR/REC-html40/loose.dtd\">\n<?xml encoding=\"utf-8\" ?><html><body><p>3333333333333333333333333333333333</p></body></html>\n', 'upload/images/1577687201_1577599252_15658564000.png', 1, 1, '2019-12-30 06:26:41', '2019-12-30 06:26:41'),
(6, 'Xe máy va chạm xe cứu thương, 2 người nguy kịch', 'xe-may-va-cham-xe-cuu-thuong-2-nguoi-nguy-kich', '<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.0 Transitional//EN\" \"http://www.w3.org/TR/REC-html40/loose.dtd\">\n<?xml encoding=\"utf-8\" ?><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><html><body><br><h2 id=\"article_sapo\" class=\"ctTp\" style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; margin: 10px 0px; line-height: 1.5; color: rgb(0, 0, 0);\">Hai thanh ni&ecirc;n c&oacute; d&#7845;u hi&#7879;u say x&#7881;n b&#259;ng ngang &#273;&#432;&#7901;ng khi&#7871;n t&agrave;i x&#7871; xe c&#7913;u th&#432;&#417;ng tr&#7903; tay kh&ocirc;ng k&#7883;p.</h2><div class=\"sbNws\" style=\"font-family: Arial, Helvetica, sans-serif; font-size: 13px; margin-bottom: 20px;\">S&#7921; ki&#7879;n:&nbsp;<h3 style=\"font-family: Arial, Helvetica, sans-serif; font-size: 12px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; display: inline;\"><a class=\"sbevt clrGr fs12\" title=\"Tin n&oacute;ng\" href=\"https://www.24h.com.vn/tin-nong-c46e3908.html\" style=\"font-size: 15px; text-decoration-line: underline; color: rgb(55, 139, 54);\">Tin n&oacute;ng</a></h3>,&nbsp;<h3 style=\"font-family: Arial, Helvetica, sans-serif; font-size: 12px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; display: inline;\"><a class=\"sbevt clrGr\" title=\"B&igrave;nh D&#432;&#417;ng\" href=\"https://www.24h.com.vn/binh-duong-c46e4331.html\" style=\"font-size: 15px; text-decoration-line: underline; color: rgb(55, 139, 54);\">B&igrave;nh D&#432;&#417;ng</a></h3></div><p style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6;\">Kho&#7843;ng 14 gi&#7901; 30 ng&agrave;y 30-12 tr&ecirc;n Qu&#7889;c l&#7897; 13, &#273;o&#7841;n qua th&#7883; x&atilde; B&#7871;n C&aacute;t,&nbsp;<a class=\"TextlinkBaiviet\" href=\"https://www.24h.com.vn/binh-duong-c46e4331.html\" title=\"t&#7881;nh B&igrave;nh D&#432;&#417;ng\" style=\"color: rgb(0, 0, 255); line-height: 1.6;\">t&#7881;nh B&igrave;nh D&#432;&#417;ng</a>, t&agrave;i x&#7871; Tr&#7847;n H&#7919;u L&acirc;m (40 tu&#7893;i, ng&#7909; TP Th&#7911; D&#7847;u M&#7897;t) &#273;i&#7873;u khi&#7875;n xe c&#7913;u th&#432;&#417;ng ch&#7903; m&#7897;t b&#7879;nh nh&acirc;n &#273;i c&#7845;p c&#7913;u, l&#432;u th&ocirc;ng theo h&#432;&#7899;ng t&#7915; th&#7883; x&atilde; B&#7871;n C&aacute;t &#273;i TP Th&#7911; D&#7847;u M&#7897;t.&nbsp;</p><p style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6;\">Khi xe c&#7913;u th&#432;&#417;ng &#273;&#7871;n &#273;o&#7841;n ng&atilde; t&#432; giao &#273;&#432;&#7901;ng NA2, thu&#7897;c ph&#432;&#7901;ng Th&#7899;i H&ograve;a th&igrave; b&#7845;t ng&#7901; b&#7883; xe m&aacute;y do 2 thanh ni&ecirc;n c&oacute; d&#7845;u hi&#7879;u say x&#7881;n ch&#7841;y b&#259;ng qua &#273;&#432;&#7901;ng t&ocirc;ng tr&uacute;ng.</p><p align=\"center\" style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; text-align: center;\"><img class=\"news-image initial loading\" alt=\"Xe m&aacute;y va ch&#7841;m xe c&#7913;u th&#432;&#417;ng, 2 ng&#432;&#7901;i nguy k&#7883;ch - 1\" src=\"https://cdn.24h.com.vn/upload/4-2019/images/2019-12-31//1577750544-805267cd3d4f5cce31f618a189028a88.jpg\" width=\"660\" data-was-processed=\"true\" style=\"font-size: 12px; border: 0px; max-width: 660px;\"></p><p class=\"img_chu_thich_0407\" style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6; color: rgb(37, 37, 37); font-style: italic; text-align: center; margin-top: -15px;\">Xe c&#7913;u th&#432;&#417;ng g&#7863;p n&#7841;n</p><p style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6;\">Do b&#7883; b&#7845;t ng&#7901;, t&agrave;i x&#7871; xe c&#7913;u th&#432;&#417;ng &#273;&aacute;nh l&aacute;i tr&aacute;nh n&ecirc;n &#273;&atilde; t&ocirc;ng v&agrave;o d&#7843;i ph&acirc;n c&aacute;ch b&ecirc; t&ocirc;ng l&agrave;m giao th&ocirc;ng t&#7841;i khu v&#7921;c h&#7895;n lo&#7841;n.&nbsp;</p><p style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6;\">Sau tai n&#7841;n, t&agrave;i x&#7871; L&acirc;m nhanh ch&oacute;ng chuy&#7875;n b&#7879;nh nh&acirc;n tr&ecirc;n xe c&#7845;p c&#7913;u qua taxi &#273;&#7875; ti&#7871;p t&#7909;c &#273;&#7871;n b&#7879;nh vi&#7879;n. C&ograve;n 2 nam thanh ni&ecirc;n c&#361;ng &#273;&#432;&#7907;c t&agrave;i x&#7871; v&agrave; ng&#432;&#7901;i d&acirc;n &#273;&#432;a &#273;i b&#7879;nh vi&ecirc;n trong t&igrave;nh tr&#7841;ng nguy k&#7883;ch.&nbsp;</p><p style=\"font-family: Arial, Helvetica, sans-serif; font-size: 15px; line-height: 1.6;\">Nh&#7853;n &#273;&#432;&#7907;c tin b&aacute;o, l&#7921;c l&#432;&#7907;ng CSGT C&ocirc;ng an th&#7883; x&atilde; B&#7871;n C&aacute;t &#273;&atilde; c&oacute; m&#7863;t &#273;&#7875; ph&acirc;n lu&#7891;ng giao th&ocirc;ng, x&#7917; l&yacute; v&#7909; tai n&#7841;n</p><table class=\"picture\" align=\"center\" style=\"text-rendering: geometricprecision; -webkit-font-smoothing: antialiased; margin: 22px 0px 30px; padding: 0px; border: 0px; outline: 0px; font-size: 0.9em; vertical-align: baseline; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; text-size-adjust: 100%; border-spacing: 0px; width: 660px; font-family: sans-serif; line-height: 1.5;\"><tbody style=\"text-rendering: geometricprecision; -webkit-font-smoothing: antialiased; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 15.84px; vertical-align: baseline; background: transparent; text-size-adjust: 100%;\"><tr style=\"background: transparent; font-size: 15.84px; color: rgb(51, 51, 51); text-rendering: geometricprecision; -webkit-font-smoothing: antialiased; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; text-size-adjust: 100%;\"><td class=\"pic\" style=\"text-rendering: geometricprecision; -webkit-font-smoothing: antialiased; margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 15.84px; vertical-align: baseline; background: transparent; text-size-adjust: 100%; position: relative; cursor: pointer;\"></td></tr><tr style=\"background: transparent; font-size: 15.84px; color: rgb(51, 51, 51); text-rendering: geometricprecision; -webkit-font-smoothing: antialiased; margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; text-size-adjust: 100%;\"></tr></tbody></table></body></html>\n', 'upload/images/1577758504_1577374244_Download-Girl-Download-PNG.png', 2, 1, '2019-12-31 02:15:04', '2019-12-31 02:16:22');

-- --------------------------------------------------------

--
-- Table structure for table `post_type`
--

CREATE TABLE `post_type` (
  `id` int(11) NOT NULL,
  `title` varchar(110) NOT NULL,
  `slug` varchar(110) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `post_type`
--

INSERT INTO `post_type` (`id`, `title`, `slug`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, '2222222222 yodate', '2222222222-yodate', 'upload/images/1577680087_1577602758_1577599255_15658564000.png', 1, '2019-12-30 04:26:25', '2019-12-30 04:28:36'),
(2, '44444444444444444', '44444444444444444', 'upload/images/1577681179_1577374232_2-2-happy-girl-png-pic.png', 1, '2019-12-30 04:46:19', '2019-12-30 04:46:19');

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
  `status` int(1) NOT NULL DEFAULT 1,
  `check_home_page` int(1) NOT NULL DEFAULT 0,
  `check_trending` int(1) DEFAULT 0,
  `best_seller` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `slug`, `price`, `image`, `description`, `created_at`, `updated_at`, `product_category_id`, `status`, `check_home_page`, `check_trending`, `best_seller`) VALUES
(1, 'product 1', 'product-1', 12323, 'nFmf-jlbF-product4.png', '<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.0 Transitional//EN\" \"http://www.w3.org/TR/REC-html40/loose.dtd\">\n<?xml encoding=\"utf-8\" ?><!--?xml encoding=\"utf-8\" ?--><html><body><p>123213</p></body></html>\n', '2019-08-07 02:42:40', '2019-12-27 16:33:21', 1, 1, 0, 0, 0),
(2, 'proud 1', 'proud-1', 1111, 'uEMj-product1.png', '111', '2019-08-07 02:52:21', '2019-08-09 09:42:24', 2, 1, 1, 1, 1),
(3, '1231', '1231', 1111, 'jlbF-product4.png', '111', '2019-08-07 03:39:14', '2019-08-09 09:42:25', 1, 1, 1, 0, 1),
(4, '1', '1', 1, 'Xlbj-product6.png', '1', '2019-08-07 08:17:57', '2019-08-09 09:42:59', 1, 1, 1, 0, 1),
(5, '1111@gmail.com', '1111-at-gmailcom', 11, NULL, '<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.0 Transitional//EN\" \"http://www.w3.org/TR/REC-html40/loose.dtd\">\n<?xml encoding=\"utf-8\" ?>\n', '2019-12-26 08:57:25', '2019-12-26 08:57:25', 1, 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` int(10) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `province` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `name`, `country`, `province`, `phone`, `email`, `user`, `password`, `updated_at`, `created_at`) VALUES
(12, 'Lưu Bá Tài', NULL, NULL, '0899496569', 'luubatai@gmail.com', '', '', '2020-10-20 15:39:35', '2020-10-20 15:39:35'),
(13, 'Lưu Bá Tài', NULL, NULL, '0899496569', 'luubatai@gmail.com', '', '', '2020-10-20 15:41:52', '2020-10-20 15:41:52'),
(14, 'Lưu Bá Tài', NULL, NULL, '0899496569', 'luubatai@gmail.com', '', '', '2020-10-20 15:42:02', '2020-10-20 15:42:02'),
(15, 'Lưu Bá Tài', NULL, NULL, '0899496569', 'luubatai@gmail.com', '', '', '2020-10-20 15:47:01', '2020-10-20 15:47:01'),
(16, 'Lưu Bá Tài', NULL, NULL, '0899496569', 'luubatai@gmail.com', '', '', '2020-10-20 15:50:08', '2020-10-20 15:50:08'),
(17, 'Lưu Bá Tài', NULL, NULL, '0899496569', 'luubatai@gmail.com', '', '', '2020-10-20 15:53:16', '2020-10-20 15:53:16'),
(18, 'Lưu Bá Tài', NULL, NULL, '0899496569', 'luubatai@gmail.com', '', '', '2020-10-20 15:54:40', '2020-10-20 15:54:40'),
(19, 'Lưu Bá Tài', NULL, NULL, '0899496569', 'luubatai@gmail.com', '6804', '123456', '2020-10-20 16:51:57', '2020-10-20 16:51:57'),
(20, 'Lưu Bá Tài', NULL, NULL, '0899496569', 'luubatai@gmail.com', '2259', '123456', '2020-10-20 16:53:12', '2020-10-20 16:53:12'),
(21, NULL, NULL, NULL, NULL, NULL, '1805', '123456', '2020-10-23 14:30:00', '2020-10-23 14:30:00'),
(22, 'Lưu Bá Tài1', 'Viet Nam', NULL, '08994965691', 'luubatai1@gmail.com', '7239', '123456', '2020-10-23 15:04:03', '2020-10-23 15:04:03'),
(23, 'Lưu Bá Tài12', 'Viet Nam', NULL, '089949656912', 'luubatai2@gmail.com', '9013', '123456', '2020-10-23 15:04:23', '2020-10-23 15:04:23');

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `id` int(10) NOT NULL,
  `title` varchar(110) NOT NULL,
  `slug` varchar(110) NOT NULL,
  `description` text DEFAULT NULL,
  `price` int(10) DEFAULT NULL,
  `duration` varchar(110) DEFAULT NULL,
  `service_type_id` int(10) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`id`, `title`, `slug`, `description`, `price`, `duration`, `service_type_id`, `status`, `created_at`, `updated_at`) VALUES
(1, '555555 3', '555555-3', '55555555555555555 3', 555555553, '555555555555 3', 1, 1, '2019-12-31 04:01:26', '2019-12-31 04:05:45');

-- --------------------------------------------------------

--
-- Table structure for table `service_type`
--

CREATE TABLE `service_type` (
  `id` int(10) NOT NULL,
  `title` varchar(110) NOT NULL,
  `slug` varchar(110) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `service_type`
--

INSERT INTO `service_type` (`id`, `title`, `slug`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, '222222222 222222', '222222222-222222', 'upload/images/1577764681_1577374244_Download-Girl-Download-PNG.png', 1, '2019-12-31 03:58:01', '2019-12-31 03:58:16');

-- --------------------------------------------------------

--
-- Table structure for table `slides`
--

CREATE TABLE `slides` (
  `id` int(10) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `link` varchar(255) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `slides`
--

INSERT INTO `slides` (`id`, `title`, `description`, `image`, `link`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Title', 'This is a description', 'upload/images/1595872026_TLC_Web-Banner-01.jpg', '#', 1, '2019-12-10 17:00:00', '2020-07-27 17:47:06'),
(2, 'Title', 'This is a description', 'upload/images/1595872036_TLC_Web-Banner-03.jpg', '#', 1, '2019-12-09 17:00:00', '2020-07-27 17:47:16'),
(3, 'test 3', 'sdaf', 'upload/images/1580798763_slider2.png', 'ewewqe', 0, '2019-12-09 17:00:00', '2020-02-04 07:16:53'),
(4, 'sáđáa', 'đâssad', 'upload/images/1577374928_1577372044_xuu.jpg', 'ádâsd', 0, '2019-12-26 09:14:09', '2020-02-04 06:46:07'),
(5, 'Title', 'Mô Tả', 'upload/images/1595872074_TLC_Web-Banner-04.jpg', '#', 1, '2020-07-27 17:47:54', '2020-07-27 17:47:54'),
(6, 'Title', 'Mô Tả', 'upload/images/1595872095_TLC_Web-Banner-05.jpg', '#', 1, '2020-07-27 17:48:15', '2020-07-27 17:48:15');

-- --------------------------------------------------------

--
-- Table structure for table `slide_title`
--

CREATE TABLE `slide_title` (
  `id` int(10) NOT NULL,
  `title` varchar(110) NOT NULL,
  `description` text DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `slide_title`
--

INSERT INTO `slide_title` (`id`, `title`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'JESSICA AWUST', 'Aqua Spa is a wonderfully relaxing, unpretentious haven in the heart of the city. The staff is friendly, attentive and knowledgeable, offering a complete list of services and expertise. Amrit\'s facials in particular are a special treat. I\'ve been going to Aqua regularly for five years, and have never wanted to go anywhere else.', 1, NULL, '2020-02-04 06:59:39'),
(2, 'SCALET THOMESON', 'I highly recommend Spa for its excellent service, as well as its courteous, knowledgeable and friendly staff.', 1, '2019-12-29 07:52:24', '2020-02-04 07:00:29');

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
  `description` text DEFAULT NULL,
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

-- --------------------------------------------------------

--
-- Table structure for table `step`
--

CREATE TABLE `step` (
  `id` int(11) NOT NULL,
  `image` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `step1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `step2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `step3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `desc1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `desc2` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `desc3` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `step`
--

INSERT INTO `step` (`id`, `image`, `step1`, `step2`, `step3`, `desc1`, `desc2`, `desc3`, `updated_at`, `created_at`) VALUES
(1, 'upload/images/1603957268_images-content.png', 'MỞ TÀI KHOẢN', 'NHẬN ƯU ĐÃI', 'GIAO DỊCH NGAY', 'Nhanh chóng và dễ dàng', 'Nhiều chương trình hấp dẫn', 'Làm chủ giao dịch', '2020-10-29 14:41:08', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `step_description`
--

CREATE TABLE `step_description` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `step_description`
--

INSERT INTO `step_description` (`id`, `name`, `description`, `updated_at`, `created_at`) VALUES
(1, 'HỖ TRỢ 24H', 'Phản hồi khách hàng trực tuyến 24/24', '2020-10-29 15:00:53', NULL),
(2, 'DỊCH VỤ KHÁCH HÀNG', 'Trung tâm chăm sóc khách hàng uy tín', NULL, NULL),
(3, 'THANH KHOẢN NHANH CHÓNG', 'Nạp thần tốc - rút nhanh chóng.', NULL, NULL),
(4, 'CHÊNH LỆCH THẤP', 'Mức chênh lệch thấp nhất là 0.2 điểm', NULL, NULL),
(5, 'GIAO DỊCH ĐÒN BẨY', 'Cung cấp nền tảng giao dịch với đòn bẩy 1:100 lần', '2020-10-29 15:01:00', NULL),
(6, 'KHÔNG HOA HỒNG, KHÔNG TRƯỢT GIÁ', 'không ẩn các khoản phí, tuyệt đối không trượt giá', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `title`
--

CREATE TABLE `title` (
  `id` int(11) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `title`
--

INSERT INTO `title` (`id`, `description`, `created_at`, `updated_at`) VALUES
(1, '7\r\n\r\nFile can\'t be uploaded to the server and it is not the fault of laravel, but your server.\r\n\r\nI had the same problem with the same environment. The thing was the file was too large, so it couldn\'t be uploaded to the temporary location. Although the file wasn\'t uploaded to the server, laravel still was trying to read it so this is why you get \"no address was supplied\".\r\n\r\nIn my case file couldn\'t be uploaded, because of exceeding size limits, but perhaps in your case, it is another reason why the file cannot be uploaded.', '2019-08-16 07:55:57', '2019-12-29 07:30:37'),
(2, 'category title', '2019-08-16 07:59:01', '2019-08-16 07:59:01'),
(3, 'about title', '2019-08-16 07:59:14', '2019-08-16 07:59:14'),
(4, 'customer title', '2019-08-16 07:59:23', '2019-08-16 07:59:23'),
(5, 'contact title', '2019-08-16 07:59:31', '2019-08-16 07:59:31'),
(6, 'detail title', '2019-08-16 08:15:12', '2019-08-16 08:15:12');

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
  `user_status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `fullname`, `birthday`, `start_date`, `city_address`, `state_address`, `image`, `phone`, `user_position_id`, `user_department_id`, `created_at`, `updated_at`, `user_status`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, '$2y$10$dX5.6dJWu8E5aVxXhEHB9u8qWPXcR/b5ZU88U.da30wgUIyT/Wck.', 'LHss5bdEXril4oICvT8thxjsoCCu5qFrDZjl1lDu78fseuFzKTQVwFfm4tVr', 'Superadmin', '2019-05-23', '2019-05-31', '234234', '3123', '2gIi-photo.jpg', 0, 2, 2, NULL, '2020-02-04 07:31:10', 1),
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
-- Indexes for table `contact_list`
--
ALTER TABLE `contact_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `financing`
--
ALTER TABLE `financing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_services`
--
ALTER TABLE `home_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hop_tac`
--
ALTER TABLE `hop_tac`
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
-- Indexes for table `our_team`
--
ALTER TABLE `our_team`
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
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_type`
--
ALTER TABLE `post_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_type`
--
ALTER TABLE `service_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slide_title`
--
ALTER TABLE `slide_title`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `special_form`
--
ALTER TABLE `special_form`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `step`
--
ALTER TABLE `step`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `step_description`
--
ALTER TABLE `step_description`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `title`
--
ALTER TABLE `title`
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
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
-- AUTO_INCREMENT for table `contact_list`
--
ALTER TABLE `contact_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `financing`
--
ALTER TABLE `financing`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `home_services`
--
ALTER TABLE `home_services`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `hop_tac`
--
ALTER TABLE `hop_tac`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `logo`
--
ALTER TABLE `logo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `our_team`
--
ALTER TABLE `our_team`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `positions`
--
ALTER TABLE `positions`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `post_type`
--
ALTER TABLE `post_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `service`
--
ALTER TABLE `service`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `service_type`
--
ALTER TABLE `service_type`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `slides`
--
ALTER TABLE `slides`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `slide_title`
--
ALTER TABLE `slide_title`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `special_form`
--
ALTER TABLE `special_form`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `step`
--
ALTER TABLE `step`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `step_description`
--
ALTER TABLE `step_description`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `title`
--
ALTER TABLE `title`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

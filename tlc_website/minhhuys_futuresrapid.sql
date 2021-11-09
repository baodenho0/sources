-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 03, 2020 at 02:30 PM
-- Server version: 5.7.31-log-cll-lve
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `minhhuys_futuresrapid`
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
  `leftcontent` text
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
('Hợp Tác', 4, 'upload/images/1596621647_New-report-banner.jpg', 'upload/images/1596599908_slider-1-1-1[1].jpg', '<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.0 Transitional//EN\" \"http://www.w3.org/TR/REC-html40/loose.dtd\">\n<?xml encoding=\"utf-8\" ?>\n', '<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.0 Transitional//EN\" \"http://www.w3.org/TR/REC-html40/loose.dtd\">\n<?xml encoding=\"utf-8\" ?><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><html><body><div class=\"row-1\" style=\"font-family: Muli;\"><h2 style=\"text-transform: initial; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; padding: 0px; color: rgb(15, 44, 82); text-size-adjust: 100%; font-size: 36px; line-height: 48px; letter-spacing: 0px;\">&#272;&#7889;i t&aacute;c gi&#7899;i thi&#7879;u l&agrave; g&igrave;?</h2><p style=\"text-transform: initial; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; color: rgb(76, 76, 76); text-size-adjust: 100%; font-size: 18px; line-height: 30px; letter-spacing: 0px;\">&#272;&#7889;i t&aacute;c gi&#7899;i gi&#7899;i thi&#7879;u (IB) l&agrave; m&#7897;t ng&#432;&#7901;i ho&#7863;c m&#7897;t doanh nghi&#7879;p gi&#7899;i thi&#7879;u kh&aacute;ch h&agrave;ng m&#7899;i cho m&#7897;t doanh nghi&#7879;p kh&aacute;c. &#272;&oacute; l&agrave; quan h&#7879; h&#7907;p t&aacute;c gi&#7919;a hai b&ecirc;n &#273;&#7875; gi&uacute;p th&uacute;c &#273;&#7849;y c&#7843; hai doanh nghi&#7879;p t&#432;&#417;ng &#7913;ng. Trong tr&#432;&#7901;ng h&#7907;p n&agrave;y, b&#7841;n s&#7869; gi&#7899;i thi&#7879;u kh&aacute;ch h&agrave;ng cho ch&uacute;ng t&ocirc;i v&agrave; ch&uacute;ng t&ocirc;i s&#7869; tr&#7843; ti&#7873;n cho b&#7841;n cho c&ocirc;ng vi&#7879;c c&#7911;a b&#7841;n.</p><p style=\"text-transform: initial; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; color: rgb(76, 76, 76); text-size-adjust: 100%; font-size: 18px; line-height: 30px; letter-spacing: 0px;\">&nbsp;</p><h2 style=\"text-transform: initial; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; padding: 0px; color: rgb(15, 44, 82); text-size-adjust: 100%; font-size: 36px; line-height: 48px; letter-spacing: 0px; text-align: justify;\">B&#7841;n Gi&#7899;i thi&#7879;u Kh&aacute;ch h&agrave;ng cho Futures Rapid B&#7857;ng c&aacute;ch n&agrave;o?</h2><p style=\"text-transform: initial; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; color: rgb(76, 76, 76); text-size-adjust: 100%; font-size: 18px; line-height: 30px; letter-spacing: 0px; text-align: justify;\">B&#7841;n gi&#7899;i thi&#7879;u kh&aacute;ch h&agrave;ng cho&nbsp;<font color=\"#f2672a\"><span style=\"text-transform: initial; cursor: pointer;\"><b><u>Futures Rapid</u></b></span></font>&nbsp;th&ocirc;ng qua website ho&#7863;c c&aacute;c k&ecirc;nh marketing c&#7911;a b&#7841;n. B&#7841;n c&oacute; th&#7875; l&agrave;m vi&#7879;c n&agrave;y b&#7857;ng c&aacute;ch nh&uacute;ng c&aacute;c li&ecirc;n k&#7871;t duy nh&#7845;t v&agrave;o n&#7897;i dung c&#7911;a m&igrave;nh v&agrave; &#273;&#7863;t bi&#7875;u ng&#7919; c&#7911;a ch&uacute;ng t&ocirc;i tr&ecirc;n trang website c&#7911;a b&#7841;n. Kh&aacute;ch h&agrave;ng s&#7869; nh&#7845;p chu&#7897;t qua v&agrave; b&#7841;n s&#7869; gi&#7899;i thi&#7879;u h&#7885;, gi&#7843; s&#7917; h&#7885;&nbsp;<font color=\"#f2672a\"><span style=\"text-transform: initial; cursor: pointer;\"><b><u>&#273;&#259;ng k&yacute;</u></b></span></font>.</p><p style=\"text-transform: initial; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; color: rgb(76, 76, 76); text-size-adjust: 100%; font-size: 18px; line-height: 30px; letter-spacing: 0px; text-align: justify;\">B&#7841;n c&#361;ng c&oacute; th&#7875; t&#7841;o c&aacute;c chi&#7871;n d&#7883;ch marketing v&agrave; &#273;&#259;ng th&#432; tin t&#7913;c, email, b&agrave;i &#273;&#259;ng tr&ecirc;n m&#7841;ng x&atilde; h&#7897;i, v.v... M&#7897;t l&#7847;n n&#7919;a, b&#7841;n &#273;&atilde; bao g&#7891;m c&aacute;c li&ecirc;n k&#7871;t duy nh&#7845;t trong c&aacute;c b&agrave;i &#273;&#259;ng n&agrave;y.</p><p style=\"text-transform: initial; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; color: rgb(76, 76, 76); text-size-adjust: 100%; font-size: 18px; line-height: 30px; letter-spacing: 0px; text-align: justify;\">Ch&uacute;ng t&ocirc;i cung c&#7845;p cho b&#7841;n t&#7845;t c&#7843; s&#7921; gi&uacute;p &#273;&#7905; b&#7841;n c&#7847;n, bao g&#7891;m c&aacute;c c&ocirc;ng c&#7909; tr&#7921;c tuy&#7871;n kh&aacute;c nhau, &#273;&#7875; b&#7841;n t&#7921; do t&#7853;p trung v&agrave;o nh&#7919;ng g&igrave; b&#7841;n l&agrave;m t&#7889;t nh&#7845;t. &#272;&#7897;i ng&#361; quan h&#7879; h&#7907;p t&aacute;c c&#7911;a ch&uacute;ng t&ocirc;i c&#361;ng r&#7845;t vui khi &#273;&#432;&#7907;c t&#432; v&#7845;n v&#7873; c&aacute;c k&#7929; thu&#7853;t t&#7841;o kh&aacute;ch h&agrave;ng ti&#7873;m n&#259;ng.</p><p style=\"text-transform: initial; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; color: rgb(76, 76, 76); text-size-adjust: 100%; font-size: 18px; line-height: 30px; letter-spacing: 0px; text-align: justify;\">&nbsp;</p></div><div class=\"row-2\" style=\"font-family: Muli;\"><h2 style=\"text-transform: initial; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; padding: 0px; color: rgb(15, 44, 82); text-size-adjust: 100%; font-size: 36px; line-height: 48px; letter-spacing: 0px;\">L&#7907;i &iacute;ch c&#7911;a Ch&#432;&#417;ng tr&igrave;nh &#272;&#7889;i t&aacute;c gi&#7899;i thi&#7879;u c&#7911;a Ch&uacute;ng t&ocirc;i</h2><ol style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;\"><li style=\"margin-bottom: 8px; font-size: 18px; line-height: 30px; letter-spacing: 0px; position: relative; margin-left: 10px; text-align: justify;\"><p style=\"text-transform: initial; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; color: rgb(76, 76, 76); text-size-adjust: 100%; line-height: 30px; letter-spacing: 0px;\">C&#417; ch&#7871; chi&#7871;t kh&#7845;u c&#7841;nh tranh v&agrave; c&oacute; th&#7875; t&ugrave;y ch&#7881;nh - Ch&uacute;ng t&ocirc;i lu&ocirc;n &#273;&#7863;t kh&aacute;ch h&agrave;ng v&agrave; &#273;&#7889;i t&aacute;c l&ecirc;n h&agrave;ng &#273;&#7847;u. B&#7841;n s&#7869; &#273;&#432;&#7907;c t&#432;&#7903;ng th&#432;&#7903;ng v&#7899;i c&aacute;c t&ugrave;y ch&#7885;n chi&#7871;t kh&#7845;u c&#7921;c k&#7923; c&#7841;nh tranh v&agrave; c&oacute; th&#7875; t&ugrave;y ch&#7881;nh.</p></li><li style=\"margin-bottom: 8px; font-size: 18px; line-height: 30px; letter-spacing: 0px; position: relative; margin-left: 10px; text-align: justify;\"><p style=\"text-transform: initial; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; color: rgb(76, 76, 76); text-size-adjust: 100%; line-height: 30px; letter-spacing: 0px;\">Kh&ocirc;ng gi&#7899;i h&#7841;n v&#7873; hoa h&#7891;ng tr&ecirc;n m&#7895;i kh&aacute;ch h&agrave;ng - Ch&uacute;ng t&ocirc;i kh&ocirc;ng &#273;&#7863;t ra gi&#7899;i h&#7841;n s&#7889; ti&#7873;n b&#7841;n c&oacute; th&#7875; ki&#7871;m &#273;&#432;&#7907;c tr&ecirc;n m&#7895;i kh&aacute;ch h&agrave;ng. Kh&aacute;ch h&agrave;ng c&agrave;ng ho&#7841;t &#273;&#7897;ng, b&#7841;n c&agrave;ng ki&#7871;m &#273;&#432;&#7907;c nhi&#7873;u ti&#7873;n chi&#7871;t kh&#7845;u.</p></li><li style=\"margin-bottom: 8px; font-size: 18px; line-height: 30px; letter-spacing: 0px; position: relative; margin-left: 10px; text-align: justify;\"><p style=\"text-transform: initial; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; color: rgb(76, 76, 76); text-size-adjust: 100%; line-height: 30px; letter-spacing: 0px;\">Thanh to&aacute;n hoa h&#7891;ng &#273;a c&#7845;p - C&#417; ch&#7871; thanh to&aacute;n hoa h&#7891;ng &#273;a c&#7845;p c&#7911;a ch&uacute;ng t&ocirc;i c&oacute; ngh&#297;a l&agrave; b&#7841;n c&oacute; th&#7875; ki&#7871;m ti&#7873;n th&ocirc;ng qua gi&#7899;i thi&#7879;u kh&aacute;ch h&agrave;ng, chi&#7871;t kh&#7845;u t&#7915; m&#7895;i giao d&#7883;ch &#273;&atilde; &#273;&oacute;ng c&#361;ng nh&#432; l&#432;&#7907;t gi&#7899;i thi&#7879;u IB ph&#7909;.</p></li><li style=\"margin-bottom: 8px; font-size: 18px; line-height: 30px; letter-spacing: 0px; position: relative; margin-left: 10px; text-align: justify;\"><p style=\"text-transform: initial; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; color: rgb(76, 76, 76); text-size-adjust: 100%; line-height: 30px; letter-spacing: 0px;\">Thanh to&aacute;n hoa h&#7891;ng nhanh ch&oacute;ng - T&#7845;t c&#7843; hoa h&#7891;ng &#273;&#432;&#7907;c tr&#7843; &#273;&uacute;ng h&#7841;n v&agrave; kh&ocirc;ng k&egrave;m theo b&#7845;t k&#7923; ph&iacute; ho&#7863;c l&#7879; ph&iacute; &#7849;n n&agrave;o. &#272;&#7897; tin c&#7853;y l&agrave; ch&igrave;a kh&oacute;a khi l&agrave;m vi&#7879;c trong quan h&#7879; &#273;&#7889;i t&aacute;c.</p></li><li style=\"margin-bottom: 8px; font-size: 18px; line-height: 30px; letter-spacing: 0px; position: relative; margin-left: 10px; text-align: justify;\"><p style=\"text-transform: initial; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; color: rgb(76, 76, 76); text-size-adjust: 100%; line-height: 30px; letter-spacing: 0px;\">G&oacute;i h&#7895; tr&#7907; &#273;&#7863;c bi&#7879;t - Ch&uacute;ng t&ocirc;i cung c&#7845;p cho b&#7841;n ch&#432;&#417;ng tr&igrave;nh &#273;&agrave;o t&#7841;o h&agrave;ng &#273;&#7847;u v&agrave; c&#417; h&#7897;i tham gia c&aacute;c tri&#7875;n l&atilde;m l&#7899;n,&nbsp;<font color=\"#f2672a\"><span style=\"text-transform: initial; cursor: pointer;\"><b><u>h&#7897;i th&#7843;o</u></b></span></font>&nbsp;v&agrave;&nbsp;<font color=\"#f2672a\"><span style=\"text-transform: initial; cursor: pointer;\"><b><u>h&#7897;i th&#7843;o qua web</u></b></span></font>. B&#7841;n c&#361;ng s&#7869; &#273;&#432;&#7907;c ch&#7881; &#273;&#7883;nh nh&agrave; qu&#7843;n l&yacute; t&agrave;i kho&#7843;n ri&ecirc;ng.</p></li><li style=\"margin-bottom: 8px; font-size: 18px; line-height: 30px; letter-spacing: 0px; position: relative; margin-left: 10px; text-align: justify;\"><p style=\"text-transform: initial; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; color: rgb(76, 76, 76); text-size-adjust: 100%; line-height: 30px; letter-spacing: 0px;\">Ch&#432;&#417;ng tr&igrave;nh &#273;&agrave;o t&#7841;o n&acirc;ng cao cho &#273;&#7889;i t&aacute;c - N&#7871;u b&#7841;n th&agrave;nh c&ocirc;ng, ch&uacute;ng t&ocirc;i c&#361;ng th&agrave;nh c&ocirc;ng. Do &#273;&oacute;, ch&uacute;ng t&ocirc;i cung c&#7845;p ch&#432;&#417;ng tr&igrave;nh &#273;&agrave;o t&#7841;o n&acirc;ng cao cho t&#7845;t c&#7843; &#273;&#7889;i t&aacute;c c&#7911;a ch&uacute;ng t&ocirc;i nh&#7857;m gi&uacute;p b&#7841;n t&#7889;i &#273;a h&oacute;a ti&#7873;m n&#259;ng c&#7911;a m&igrave;nh.</p></li><li style=\"margin-bottom: 8px; font-size: 18px; line-height: 30px; letter-spacing: 0px; position: relative; margin-left: 10px; text-align: justify;\"><p style=\"text-transform: initial; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; color: rgb(76, 76, 76); text-size-adjust: 100%; line-height: 30px; letter-spacing: 0px;\">Truy c&#7853;p mi&#7877;n ph&iacute;&nbsp;<font color=\"#f2672a\"><span style=\"text-transform: initial; cursor: pointer;\"><b><u>c&ocirc;ng c&#7909; giao d&#7883;ch</u></b></span></font>&nbsp;- B&#7841;n c&#361;ng s&#7869; &#273;&#432;&#7907;c c&#7845;p quy&#7873;n truy c&#7853;p t&#7845;t c&#7843; c&ocirc;ng c&#7909; giao d&#7883;ch mi&#7877;n ph&iacute; c&#7911;a ch&uacute;ng t&ocirc;i &#273;&#7875; gi&uacute;p h&#7895; tr&#7907; c&aacute;c quy&#7871;t &#273;&#7883;nh giao d&#7883;ch c&#7911;a m&igrave;nh v&agrave; gi&uacute;p kh&aacute;ch h&agrave;ng c&#7911;a b&#7841;n.</p></li><li style=\"margin-bottom: 8px; font-size: 18px; line-height: 30px; letter-spacing: 0px; position: relative; margin-left: 10px; text-align: justify;\"><p style=\"text-transform: initial; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; color: rgb(76, 76, 76); text-size-adjust: 100%; line-height: 30px; letter-spacing: 0px;\">Nh&agrave; m&ocirc;i gi&#7899;i &#273;&#432;&#7907;c qu&#7843;n l&yacute; to&agrave;n c&#7847;u - T&#7853;p &#273;o&agrave;n Futures Rapid l&agrave;&nbsp;<font color=\"#f2672a\"><span style=\"text-transform: initial; cursor: pointer;\"><b><u>nh&agrave; m&ocirc;i gi&#7899;i &#273;&#432;&#7907;c &#7911;y quy&#7873;n</u></b></span></font>, &#273;&#432;&#7907;c qu&#7843;n l&yacute; b&#7903;i m&#7897;t s&#7889; c&#417; quan c&oacute; th&#7849;m quy&#7873;n tr&ecirc;n to&agrave;n th&#7871; gi&#7899;i.</p></li></ol></div></body></html>\n', NULL, '2020-10-30 08:39:43', 'upload/images/1596599962_shutterstock_495349657.jpg', '<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.0 Transitional//EN\" \"http://www.w3.org/TR/REC-html40/loose.dtd\">\n<?xml encoding=\"utf-8\" ?><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><html><body><h4 style=\"line-height:1.38;margin-left: 35.43307086614173pt;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size:11pt;font-family:Arial;color:#000000;background-color:transparent;font-weight:700;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;\"></span></h4><h4 style=\"line-height:1.38;margin-left: 35.43307086614173pt;margin-top:0pt;margin-bottom:0pt;\"><span style=\'font-family: \"Open Sans\", sans-serif; font-size: 18px; color: rgb(255, 255, 255);\'>, v.v.</span><br></h4><h1 class=\"h2\" style=\"margin-bottom: 16px; padding: 0px; color: rgb(15, 44, 82); text-size-adjust: 100%; font-size: 36px; line-height: 48px; font-family: Muli; background-color: rgb(245, 245, 245);\">Ch&#432;&#417;ng tr&igrave;nh &#272;&#7889;i t&aacute;c gi&#7899;i thi&#7879;u</h1><div class=\"daText\" style=\"font-size: 18px; line-height: 30px; color: rgb(76, 76, 76); margin: 0px 0px 30px; font-family: Muli; background-color: rgb(245, 245, 245);\"><p style=\"text-transform: initial; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-size-adjust: 100%; line-height: 30px; letter-spacing: 0px; text-align: justify;\">Ch&#432;&#417;ng tr&igrave;nh &#272;&#7889;i t&aacute;c gi&#7899;i thi&#7879;u c&#7911;a ch&uacute;ng t&ocirc;i l&agrave; g&oacute;i kinh doanh &#273;&#432;&#7907;c t&#7841;o s&#7861;n d&agrave;nh cho nh&#7919;ng c&aacute; nh&acirc;n l&atilde;o luy&#7879;n c&oacute; th&#7875; t&#7841;o ra kh&aacute;ch h&agrave;ng ti&#7873;m n&#259;ng trong ng&agrave;nh forex ho&#7863;c t&agrave;i ch&iacute;nh.</p><p style=\"text-transform: initial; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-size-adjust: 100%; line-height: 30px; letter-spacing: 0px; text-align: justify;\">Tr&#7903; th&agrave;nh &#272;&#7889;i t&aacute;c gi&#7899;i thi&#7879;u (IB) cho Futures Rapid l&agrave; c&#417; h&#7897;i tuy&#7879;t v&#7901;i &#273;&#7875; ph&aacute;t tri&#7875;n v&#7899;i t&#432; c&aacute;ch l&agrave; &#273;&#7889;i t&aacute;c kinh doanh c&#7911;a ch&uacute;ng t&ocirc;i v&agrave; t&#7841;o thu nh&#7853;p.</p></div><div style=\"font-family: Muli; background-color: rgb(245, 245, 245);\"><div class=\"daAdditional\"><div class=\"daaContent\"><div class=\"daInner\" style=\"float: left; width: 604.094px; padding: 10px 0px 10px 80px; position: relative; min-height: 65px; margin: 0px 0px 20px;\"><div class=\"daaIcon\" style=\"position: absolute; left: 0px; top: 5px; max-width: 60px;\"><img src=\"https://www.atfx.com/hubfs/ATFX.COM/NEW%20pages/Pages%20-%20go%20live%20-%20Promotions%20+%20IB/IB%20Partnership%20-%20A%20-%20Introducing%20Broker/icons/ibprogram-icon-a-spanner-%20wrench1a.svg\" alt=\"ibprogram-icon-a-spanner- wrench1a\" width=\"40\" height=\"40\" style=\"max-width: 100%; border: 0px; vertical-align: bottom;\"></div><div class=\"daaText\">C&#417; ch&#7871; chi&#7871;t kh&#7845;u c&#7841;nh tranh v&agrave; c&oacute; th&#7875; t&ugrave;y ch&#7881;nh</div></div><div class=\"daInner\" style=\"float: left; width: 604.094px; padding: 10px 0px 10px 80px; position: relative; min-height: 65px; margin: 0px 0px 20px;\"><div class=\"daaIcon\" style=\"position: absolute; left: 0px; top: 5px; max-width: 60px;\"><img src=\"https://www.atfx.com/hubfs/ATFX.COM/NEW%20pages/Pages%20-%20go%20live%20-%20Promotions%20+%20IB/IB%20Partnership%20-%20A%20-%20Introducing%20Broker/icons/ibprogram-icon-infinite1a.svg\" alt=\"ibprogram-icon-infinite1a\" width=\"40\" height=\"40\" style=\"max-width: 100%; border: 0px; vertical-align: bottom;\"></div><div class=\"daaText\">Kh&ocirc;ng c&oacute; gi&#7899;i h&#7841;n v&#7873; hoa h&#7891;ng tr&ecirc;n m&#7895;i kh&aacute;ch h&agrave;ng</div></div><div class=\"daInner\" style=\"float: left; width: 604.094px; padding: 10px 0px 10px 80px; position: relative; min-height: 65px; margin: 0px 0px 20px;\"><div class=\"daaIcon\" style=\"position: absolute; left: 0px; top: 5px; max-width: 60px;\"><img src=\"https://www.atfx.com/hubfs/ATFX.COM/NEW%20pages/Pages%20-%20go%20live%20-%20Promotions%20+%20IB/IB%20Partnership%20-%20A%20-%20Introducing%20Broker/icons/ibprogram-icon-podium-a.svg\" alt=\"ibprogram-icon-podium-a\" width=\"40\" height=\"40\" style=\"max-width: 100%; border: 0px; vertical-align: bottom;\"></div><div class=\"daaText\">G&oacute;i h&#7895; tr&#7907; &#273;&#7847;u ng&agrave;nh</div></div><div class=\"daInner\" style=\"float: left; width: 604.094px; padding: 10px 0px 10px 80px; position: relative; min-height: 65px; margin: 0px 0px 20px;\"><div class=\"daaIcon\" style=\"position: absolute; left: 0px; top: 5px; max-width: 60px;\"><img src=\"https://www.atfx.com/hubfs/ATFX.COM/NEW%20pages/Pages%20-%20go%20live%20-%20Promotions%20+%20IB/IB%20Partnership%20-%20A%20-%20Introducing%20Broker/icons/ibprogram-icon-ticked-checkbox2a.svg\" alt=\"ibprogram-icon-ticked-checkbox2a\" width=\"40\" height=\"40\" style=\"max-width: 100%; border: 0px; vertical-align: bottom;\"></div><div class=\"daaText\">Nh&agrave; qu&#7843;n l&yacute; t&agrave;i kho&#7843;n ri&ecirc;ng</div></div></div></div></div></body></html>\n'),
('Nền Tảng Giao Dịch', 5, 'upload/images/1604049829_1596621647_New-report-banner.jpg', '', '', '<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.0 Transitional//EN\" \"http://www.w3.org/TR/REC-html40/loose.dtd\">\n<?xml encoding=\"utf-8\" ?><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><html><body><p>\r\n<!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--></p><h1 style=\"margin-bottom: 24px; font-family: roboto, sans-serif; font-weight: 800; color: rgb(18, 30, 42); font-size: 36px;\"><span style=\"font-family: Nunito;\">&#65279;</span>\r\n<br class=\"Apple-interchange-newline\"></h1><table class=\"table table-bordered\"><tbody><tr><td><h1 style=\"font-size: 36px; margin-bottom: 24px; font-family: roboto, sans-serif; font-weight: 800; color: rgb(18, 30, 42);\"><span style=\"font-family: Nunito;\">N&#7873;n ta&#777;ng FuturesRapid danh gi&aacute;: <br>lu&ocirc;n c&#7843;i ti&#7871;n, lu&ocirc;n ph&aacute;t huy</span></h1><p style=\"margin-right: 0px; margin-bottom: 12px; margin-left: 0px; font-size: 20px; color: rgb(18, 30, 42); font-family: roboto, sans-serif;\"><span style=\"font-family: Nunito;\">Cho d&ugrave; b&#7841;n l&agrave; m&#7897;t ng&#432;&#7901;i m&#7899;i hay &#273;&atilde; c&oacute; kinh nghi&#7879;m, v&#7899;i n&#7873;n t&#7843;ng danh gi&aacute; d&#7877; s&#7917; d&#7909;ng c&#7911;a<br>ch&uacute;ng t&ocirc;i &#273;&#432;&#7907;c thi&#7871;t k&#7871; &#273;&#7875; mang l&#7841;i k&#7871;t qu&#7843; t&#7889;i &#432;u nh&#7845;t.</span></p><ul class=\"list-unstyled\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px 0px 0px 20px; list-style-type: disc; font-size: 20px; color: rgb(18, 30, 42); font-family: roboto, sans-serif;\"><li style=\"margin: 0px 0px 4px;\"><span style=\"font-family: Nunito;\">Nhi&#7873;u gi&#7843;i th&#432;&#7903;ng danh gi&aacute;</span></li><li style=\"margin: 0px 0px 4px;\"><span style=\"font-family: Nunito;\">X&#7917; l&yacute; l&#7879;nh si&ecirc;u t&#7889;c</span></li><li style=\"margin: 0px;\"><span style=\"font-family: Nunito;\">D&#7877; s&#7917; d&#7909;ng</span></li><li style=\"margin: 0px;\"><span style=\"font-family: Nunito;\"><br></span></li><li style=\"margin: 0px;\"><a href=\"https://futuresrapid.com/\" class=\"btn btn-green btn-big desktop\" style=\"color: rgb(255, 255, 255); background: rgb(20, 176, 67); line-height: 1; border-width: 2px; border-color: rgb(20, 176, 67); border-radius: 2px; font-size: 16px; font-weight: 700; text-transform: uppercase; transition: all 0.3s ease 0s; padding: 20px 40px; margin: 12px 10px 0px 0px;\">&#272;&#258;NG K&Yacute; T&Agrave;I KHO&#7842;N</a><span style=\"background-color: transparent; font-size: 16px;\">&nbsp;</span><a href=\"https://futuresrapid.com/\" class=\"btn btn-border-gray btn-big desktop\" style=\"color: rgb(18, 30, 42); background-color: rgb(255, 255, 255); line-height: 1; border-width: 2px; border-color: rgb(18, 30, 42); border-radius: 2px; font-size: 16px; font-weight: 700; text-transform: uppercase; transition: all 0.3s ease 0s; padding: 20px 40px; margin: 12px 10px 0px 0px;\">M&#7902; T&Agrave;I KHO&#7842;N DEMO</a></li></ul></td><td><p><img src=\"https://xas.scdn5.secure.raxcdn.com/build/twigImages/pages/tradingPlatforms/xStation/header.16a180de.png\" style=\"width: 100%; float: right;\" class=\"note-float-right\"><br></p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p></td></tr></tbody></table><p></p><h2 style=\"margin-right: 0px; margin-bottom: 48px; margin-left: 0px; font-family: roboto, sans-serif; font-weight: 800; color: rgb(18, 30, 42); font-size: 36px; text-align: center;\"><br></h2><h2 style=\"margin-right: 0px; margin-bottom: 48px; margin-left: 0px; font-family: roboto, sans-serif; font-weight: 800; color: rgb(18, 30, 42); font-size: 36px; text-align: center;\"><span style=\"font-family: Nunito;\">&#272;i&#7873;u g&igrave; l&agrave;m cho n&#7873;n t&#7843;ng c&#7911;a ch&uacute;ng t&ocirc;i tr&#7903; n&ecirc;n kh&aacute;c bi&#7879;t?<br></span></h2><table class=\"table table-bordered\" style=\"text-align: center;\"><tbody><tr><td>&nbsp; &nbsp; &nbsp; &nbsp;<img src=\"https://xas.scdn5.secure.raxcdn.com/build/twigImages/pages/tradingPlatforms/xStation/icon_benefits-1.f2a2c841.png\" alt=\"\" style=\"color: rgb(18, 30, 42); font-family: roboto, sans-serif; margin: 0px 0px 24px;\"><h3 style=\"margin-right: 0px; margin-bottom: 12px; margin-left: 0px; font-family: roboto, sans-serif; font-weight: 800; color: rgb(18, 30, 42); font-size: 18px;\"><span style=\"font-family: Nunito;\">&nbsp; &nbsp; &nbsp; Giao d&#7883;ch m&#7885;i n&#417;i</span></h3><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: roboto, sans-serif; font-size: 18px; color: rgba(18, 30, 42, 0.6);\"><span style=\"font-family: Nunito;\"><span style=\"font-family: Nunito;\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; C&ocirc;ng c&#7909; ph&acirc;n t&iacute;ch chuy&ecirc;n nghi&#7879;p&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><br><span style=\"font-family: Nunito;\">&nbsp; &nbsp; &nbsp; &nbsp;ch&#7881; trong t&#7847;m tay b&#7841;n.</span></span></p></td><td><img src=\"https://xas.scdn5.secure.raxcdn.com/build/twigImages/pages/tradingPlatforms/xStation/icon_benefits-2.6043c297.png\" alt=\"\" style=\"color: rgb(18, 30, 42); font-family: roboto, sans-serif; margin: 0px 0px 24px;\"><h3 style=\"margin-right: 0px; margin-bottom: 12px; margin-left: 0px; font-family: roboto, sans-serif; font-weight: 800; color: rgb(18, 30, 42); font-size: 18px;\"><span style=\"font-family: Nunito;\">L&#7921;a ch&#7885;n 4000 c&ocirc;ng c&#7909;</span></h3><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-family: roboto, sans-serif; font-size: 18px; color: rgba(18, 30, 42, 0.6);\"><span style=\"font-family: Nunito;\"><span style=\"font-family: Nunito;\">&nbsp; &nbsp; &nbsp; Bao g&#7891;m CFD c&#7911;a Forex, ti&#7873;n &#273;i&#7879;n t&#7917;, ch&#7881; s&#7889;,&nbsp;</span><br><span style=\"font-family: Nunito;\">h&agrave;ng ho&aacute;, c&#7893; phi&#7871;u,&nbsp;</span><br><span style=\"font-family: Nunito;\">Qu&#7929; ETF tr&ecirc;n to&agrave;n th&#7871; gi&#7899;i</span></span></p></td><td><img src=\"https://xas.scdn5.secure.raxcdn.com/build/twigImages/pages/tradingPlatforms/xStation/icon_benefits-3.93422bc4.png\" alt=\"\" style=\"margin: 0px 0px 24px; color: rgb(18, 30, 42); font-family: roboto, sans-serif;\"><span style=\"color: rgb(18, 30, 42); font-family: roboto, sans-serif;\"></span><h3 style=\"margin-right: 0px; margin-bottom: 12px; margin-left: 0px; font-family: roboto, sans-serif; font-weight: 800; color: rgb(18, 30, 42); font-size: 18px;\"><span style=\"font-family: Nunito;\">Thi&#7871;t k&#7871; tr&#7921;c quan v&agrave; &#273;&#417;n gi&#7843;n</span></h3><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 18px; color: rgba(18, 30, 42, 0.6); font-family: roboto, sans-serif;\"><span style=\"font-family: Nunito;\">&#272;&#432;&#7907;c t&#7841;o ra &#273;&#7875; gi&uacute;p b&#7841;n qu&#7843;n l&yacute; &#273;&#7847;u t&#432; nhanh</span></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 18px; color: rgba(18, 30, 42, 0.6); font-family: roboto, sans-serif;\"><span style=\"font-family: Nunito;\">h&#417;n v&agrave; d&#7877; d&agrave;ng h&#417;n</span></p></td></tr></tbody></table><div class=\"row\" style=\"margin-right: -15px; margin-left: -15px; color: rgb(18, 30, 42); font-family: roboto, sans-serif; text-align: center;\"><div class=\"col-md-4\" style=\"width: 389.984px; padding-right: 15px; padding-left: 15px; flex-basis: 33.3333%; max-width: 33.3333%;\"><br><br></div><div class=\"col-md-4\" style=\"width: 389.984px; padding-right: 15px; padding-left: 15px; flex-basis: 33.3333%; max-width: 33.3333%;\"><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 18px; color: rgba(18, 30, 42, 0.6);\"><br></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 18px; color: rgba(18, 30, 42, 0.6);\"><br></p></div></div><table class=\"table table-bordered\" style=\"text-align: center;\"><tbody><tr><td><p><img src=\"https://xas.scdn5.secure.raxcdn.com/build/twigImages/pages/tradingPlatforms/xStation/mobile.5ab35817.png\" style=\"float: left;\" class=\"note-float-left\">&nbsp; &nbsp; &nbsp;&nbsp;<br></p></td><td><div class=\"trading-platforms-mobile-text-inner\" style=\"color: rgb(18, 30, 42); font-family: roboto, sans-serif; text-align: left; margin-left: 25px;\"><h2 style=\"margin-right: 0px; margin-bottom: 24px; margin-left: 25px; font-weight: 800; font-size: 36px;\"><span style=\"font-family: Nunito;\"><br></span></h2><h2 style=\"margin-right: 0px; margin-bottom: 24px; margin-left: 25px; font-weight: 800; font-size: 36px;\"><span style=\"font-family: Nunito;\"><br></span></h2><h2 style=\"margin-right: 0px; margin-bottom: 24px; margin-left: 25px; font-weight: 800; font-size: 36px;\"><span style=\"font-family: Nunito;\">Ta&#777;i v&ecirc;&#768; FuturesRapid phi&ecirc;n ba&#777;n di &#273;&ocirc;&#803;ng</span></h2><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 25px; font-size: 18px; color: rgba(18, 30, 42, 0.6);\"><span style=\"font-family: Nunito;\">K&ecirc;&#769;t n&ocirc;&#769;i &#273;&ecirc;&#769;n thi&#803; tr&#432;&#417;&#768;ng ta&#768;i chi&#769;nh toa&#768;n c&acirc;&#768;u trong t&acirc;&#768;m tay ba&#803;n. FuturesRapid phi&ecirc;n ba&#777;n <br>di &#273;&ocirc;&#803;ng cung c&acirc;&#769;p h&#417;n 1500 ma&#771; CFD v&#417;&#769;i nhi&ecirc;&#768;u chu&#777;ng loa&#803;i: Forex, Ti&ecirc;&#768;n a&#777;o, Chi&#777; s&ocirc;&#769;,<br></span><span style=\"font-family: Nunito; background-color: transparent;\">Th&#432;&#417;ng ph&acirc;&#777;m, C&ocirc;&#777; phi&ecirc;&#769;u va&#768; &#273;&#259;&#803;c bi&ecirc;&#803;c&nbsp;</span></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 25px; font-size: 18px; color: rgba(18, 30, 42, 0.6);\"><span style=\"font-family: Nunito;\">ETF tr&ecirc;n kh&#259;&#769;p toa&#768;n c&acirc;&#768;u.</span></p></div><div class=\"trading-platforms-btns\" style=\"margin-top: 36px; color: rgb(18, 30, 42); font-family: roboto, sans-serif; text-align: left; margin-left: 50px;\"><span class=\"trading-platforms-btns-download js-btns\"><a href=\"https://futuresrapid.com/\" class=\"btn btn-big btn-black desktop-windows js-dynamic-link\" style=\"color: rgb(255, 255, 255); background: rgb(18, 30, 42); line-height: 1; border-width: 2px; border-color: rgb(18, 30, 42); border-radius: 0px; font-size: 16px; font-weight: 700; text-transform: uppercase; transition: all 0.3s ease 0s; padding: 20px 40px; margin: 12px 10px 0px 0px;\">TA&#777;I V&Ecirc;&#768; &#272;I&Ecirc;&#803;N THOA&#803;I</a>&nbsp;</span><a href=\"https://futuresrapid.com/\" class=\"btn btn-border-gray btn-big\" style=\"color: rgb(18, 30, 42); line-height: 1; border-width: 2px; border-color: rgba(18, 30, 42, 0.3); border-radius: 2px; font-size: 16px; font-weight: 700; text-transform: uppercase; transition: all 0.3s ease 0s; padding: 20px 40px; margin: 12px 0px 0px;\">TI&#768;M HI&Ecirc;&#777;U TH&Ecirc;M</a></div></td></tr></tbody></table><br><table class=\"table table-bordered\"><tbody><tr><td><div class=\"tab-content\" style=\"color: rgb(18, 30, 42); font-family: roboto, sans-serif;\"><div class=\"tab-pane fade show active\" id=\"desktop\" role=\"tabpanel\" aria-labelledby=\"desktop-tab\"><div class=\"row\" style=\"margin-right: -15px; margin-left: -15px;\"><div class=\"col-md-6 trading-platforms-app-text\" style=\"width: 585px; padding: 24px 60px 0px 15px;\"><ul class=\"list-unstyled nav trading-platforms-app-nav\" role=\"tablist\" style=\"margin-right: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px;\"><li class=\"nav-item\" style=\"display: inline-block; margin-right: 0px;\"></ul><ul class=\"list-unstyled nav trading-platforms-app-nav\" role=\"tablist\" style=\"margin-right: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px;\"><li class=\"nav-item\" style=\"display: inline-block; margin-right: 60px;\"><a id=\"mobile-tab\" data-toggle=\"tab\" href=\"https://apps.apple.com/cn/app/%E6%9C%9F%E9%80%9F/id1463572015\" role=\"tab\" aria-controls=\"mobile\" aria-selected=\"true\" style=\"color: rgb(18, 30, 42); display: block; text-transform: uppercase; font-size: 20px; line-height: 25px; padding-bottom: 7px; border-bottom: 2px solid transparent; transition: all 0.3s ease 0s;\" class=\"active\"><span style=\"font-family: Nunito;\">&#7912;NG D&#7908;NG &#272;I&#7878;N THO&#7840;I</span></a></li><li class=\"nav-item\" style=\"display: inline-block; margin-right: 60px;\"><div><br></div></li></ul><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 18px; color: rgba(18, 30, 42, 0.6);\">Bao g&ocirc;&#768;m t&acirc;&#769;t ca&#777; ca&#769;c ti&#769;nh n&#259;ng c&acirc;&#768;n thi&ecirc;&#769;t cho vi&ecirc;&#803;c giao di&#803;ch. &#272;&#432;&#417;&#803;c ti&#769;ch h&#417;&#803;p va&#768;o app &#273;i&ecirc;&#803;n thoa&#803;i nho&#777; go&#803;n cho phe&#769;p ba&#803;n qua&#777;n ly&#769; vi&ecirc;&#803;c giao di&#803;ch&nbsp; mo&#803;i lu&#769;c mo&#803;i n&#417;i. FuturesRapid co&#769; ca&#777; hai phi&ecirc;n ba&#777;n iOS va&#768; Android.<br></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 18px; color: rgba(18, 30, 42, 0.6);\"><br></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 18px; color: rgba(18, 30, 42, 0.6);\"><a href=\"https://youji-ctp-ios.oss-cn-hangzhou.aliyuncs.com/foreign/apk-vita/index.html\" class=\"btn btn-black btn-big\" style=\"color: rgb(255, 255, 255); background: rgb(0, 0, 0); line-height: 1; border-width: 2px; border-color: rgb(0, 0, 0); border-radius: 0px; font-size: 16px; font-weight: 700; text-transform: uppercase; transition: all 0.3s ease 0s; padding: 20px 40px; margin: 12px 10px 0px 0px;\">T&#7842;I &#7912;NG D&#7908;NG &#272;I&#7878;N THO&#7840;I</a><br></p><div><br></div></div></div></div></div></td><td><p style=\"margin-left: 25px;\"><br></p><p style=\"margin-left: 50px;\"><img src=\"https://xas.scdn5.secure.raxcdn.com/build/twigImages/pages/tradingPlatforms/xStation/app_mobile.8155496f.png\"><br></p></td></tr></tbody></table><br><table class=\"table table-bordered\"><tbody><tr><td><p></p><p><a id=\"desktop-app-tab\" data-toggle=\"tab\" href=\"https://www.xtb.com/vn/trading-services/trading-platforms/xstation#desktop-app\" role=\"tab\" aria-controls=\"desktop-app\" aria-selected=\"true\" class=\"active\" style=\"color: rgb(18, 30, 42); background-color: rgb(255, 255, 255); text-transform: uppercase; font-size: 20px; line-height: 25px; padding-bottom: 7px; border-bottom: 2px solid transparent; transition: all 0.3s ease 0s; font-family: roboto, sans-serif; display: inline !important;\">PH&#7846;N M&#7872;M M&Aacute;Y T&Iacute;NH</a><br></p>N&#7873;n t&#7843;ng giao d&#7883;ch c&#7911;a ch&uacute;ng t&ocirc;i kh&#7843; d&#7909;ng tr&ecirc;n c&#7843; m&aacute;y t&iacute;nh, <br>v&#7899;i nh&#7919;ng t&iacute;nh n&#259;ng t&#432;&#417;ng t&#7921; b&#7843;n Web. B&#7841;n c&oacute; th&#7875; c&agrave;i &#273;&#7863;t <br>ph&#7847;n m&#7873;m n&agrave;y tr&ecirc;n c&#7843; h&#7879; &#273;i&#7873;u h&agrave;nh Windows v&agrave; Mac OS.<p></p><div class=\"col-md-6 trading-platforms-app-text\" style=\"width: 585px; padding: 24px 60px 0px 15px; color: rgb(18, 30, 42); font-family: roboto, sans-serif;\"><div class=\"trading-platforms-app-download\" style=\"margin-top: 48px;\"><a href=\"https://www.xtb.com/vn/xstation5/xStation5-Setup-x86.exe\" style=\'color: rgba(18, 30, 42, 0.6); background-image: url(\"/build/images/download.a18cad37.svg\"); background-position: 0px center; background-size: 12px 13px; background-repeat: no-repeat; background-attachment: initial; background-origin: initial; background-clip: initial; transition: color 0.3s ease 0s; display: inline-block; padding-left: 24px; margin-right: 48px;\'>Windows 32 bit</a>&nbsp;<a href=\"https://www.xtb.com/vn/xstation5/xStation5-Setup-x64.exe\" style=\'color: rgba(18, 30, 42, 0.6); background-image: url(\"/build/images/download.a18cad37.svg\"); background-position: 0px center; background-size: 12px 13px; background-repeat: no-repeat; background-attachment: initial; background-origin: initial; background-clip: initial; transition: color 0.3s ease 0s; display: inline-block; padding-left: 24px; margin-right: 48px;\'>Windows 64 bit</a>&nbsp;<a href=\"https://www.xtb.com/vn/xstation5/xStation5-MacOS.dmg\" style=\'color: rgba(18, 30, 42, 0.6); background-image: url(\"/build/images/download.a18cad37.svg\"); background-position: 0px center; background-size: 12px 13px; background-repeat: no-repeat; background-attachment: initial; background-origin: initial; background-clip: initial; transition: color 0.3s ease 0s; display: inline-block; padding-left: 24px; margin-right: 0px;\'>Da&#768;nh cho Mac</a></div></div><p></p></td><td><p><br><img src=\"https://xas.scdn5.secure.raxcdn.com/build/twigImages/pages/tradingPlatforms/xStation/app_desktop.9e7c240e.png\" style=\"background-color: transparent; font-size: 1rem;\"><br></p></td></tr></tbody></table><h2 style=\"margin-right: 0px; margin-bottom: 48px; margin-left: 0px; font-family: roboto, sans-serif; font-weight: 800; color: rgb(18, 30, 42); font-size: 36px; text-align: center;\"><span style=\"font-family: Nunito;\">FuturesRapid, &#272;&#417;n Vi&#803; D&acirc;&#771;n &#272;&acirc;&#768;u Thi&#803; Tr&#432;&#417;&#768;ng</span></h2><table class=\"table table-bordered\" style=\"text-align: center;\"><tbody><tr><td><img src=\"https://xas.scdn5.secure.raxcdn.com/build/twigImages/pages/tradingPlatforms/xStation/icon_why-1.1633b6b3.png\" alt=\"\" style=\"margin: 0px 0px 24px; color: rgb(18, 30, 42); font-family: roboto, sans-serif; text-align: center;\"><span style=\"color: rgb(18, 30, 42); font-family: roboto, sans-serif; text-align: center;\"></span><h3 style=\"margin-right: 0px; margin-bottom: 12px; margin-left: 0px; font-family: roboto, sans-serif; font-weight: 800; color: rgb(18, 30, 42); font-size: 18px; text-align: center;\"><span style=\"font-family: Nunito;\">H&#417;n 15 n&#259;m kinh nghi&#7879;m</span></h3><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 18px; color: rgba(18, 30, 42, 0.6); font-family: roboto, sans-serif; text-align: center;\"><span style=\"font-family: Nunito;\">FuturesRapid l&agrave; m&#7897;t trong nh&#7919;ng nh&agrave; m&ocirc;i gi&#7899;i Forex v&agrave; CFD </span><br><span style=\"font-family: Nunito;\">l&#7899;n nh&#7845;t th&#7871; gi&#7899;i &#273;&#432;&#7907;c ni&ecirc;m y&#7871;t tr&ecirc;n s&agrave;n ch&#7913;ng kho&aacute;n.</span></p></td><td><img src=\"https://xas.scdn5.secure.raxcdn.com/build/twigImages/pages/tradingPlatforms/xStation/icon_why-2.617c965b.png\" alt=\"\" style=\"margin: 0px 0px 24px; color: rgb(18, 30, 42); font-family: roboto, sans-serif;\"><span style=\"color: rgb(18, 30, 42); font-family: roboto, sans-serif;\"></span><h3 style=\"margin-right: 0px; margin-bottom: 12px; margin-left: 0px; font-family: roboto, sans-serif; font-weight: 800; color: rgb(18, 30, 42); font-size: 18px;\"><span style=\"font-family: Nunito;\">H&#7895; tr&#7907; kh&aacute;ch h&agrave;ng nhanh ch&oacute;ng</span></h3><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 18px; color: rgba(18, 30, 42, 0.6); font-family: roboto, sans-serif;\"><span style=\"font-family: Nunito;\">Nh&acirc;n vi&ecirc;n h&#7895; tr&#7907; kh&aacute;ch h&agrave;ng lu&ocirc;n s&#7861;n s&agrave;ng 24/7 </span><br><span style=\"font-family: Nunito;\">&#273;&#7875; tr&#7843; l&#7901;i&nbsp;</span><span style=\"background-color: transparent;\"><span style=\"font-family: Nunito;\">th&#7855;c m&#7855;c v&agrave; gi&uacute;p b&#7841;n gi&#7843;i quy&#7871;t v&#7845;n &#273;&#7873;. </span><br><span style=\"font-family: Nunito;\">M&#7909;c ti&ecirc;u c&#7911;a ch&uacute;ng t&ocirc;i l&agrave; l&agrave;m h&agrave;i l&ograve;ng kh&aacute;ch h&agrave;ng.</span></span></p></td><td><img src=\"https://xas.scdn5.secure.raxcdn.com/build/twigImages/pages/tradingPlatforms/xStation/icon_why-3.7e965708.png\" alt=\"\" style=\"margin: 0px 0px 24px; color: rgb(18, 30, 42); font-family: roboto, sans-serif;\"><span style=\"color: rgb(18, 30, 42); font-family: roboto, sans-serif;\"></span><h3 style=\"margin-right: 0px; margin-bottom: 12px; margin-left: 0px; font-family: roboto, sans-serif; font-weight: 800; color: rgb(18, 30, 42); font-size: 18px;\"><span style=\"font-family: Nunito;\">Nha&#768; m&ocirc;i gi&#417;&#769;i v&#417;&#769;i nhi&ecirc;&#768;u gi&acirc;&#769;y phe&#769;p danh gia&#769;</span></h3><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-size: 18px; color: rgba(18, 30, 42, 0.6); font-family: roboto, sans-serif;\"><span style=\"font-family: Nunito;\">FuturesRapid &#273;&#432;&#7907;c qu&#7843;n l&yacute; b&#7903;i c&aacute;c c&#417; quan c&#7845;p ph&eacute;p l&#7899;n nh&#7845;t </span><br><span style=\"font-family: Nunito;\">th&#7871; gi&#7899;i bao g&#7891;m C&#417; Quan Ki&#7875;m So&aacute;t T&agrave;i Ch&iacute;nh FCA.</span></p></td></tr></tbody></table><h2 style=\"margin-right: 0px; margin-bottom: 48px; margin-left: 0px; font-family: roboto, sans-serif; font-weight: 800; color: rgb(18, 30, 42); font-size: 36px; text-align: center;\"><span style=\"font-family: Nunito;\"><br></span></h2></body></html>\n', NULL, '2020-11-02 06:29:35', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id`, `title`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 'LỜI CHÀO MỪNG', '<span id=\"docs-internal-guid-d1ffae52-7fff-1600-3b85-95eb2b33873d\"><p style=\"line-height:1.38;text-indent: 36pt;margin-top:0pt;margin-bottom:0pt;\"><span style=\"font-size: 11pt; font-family: Nunito; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;\">Chào mừng đến với Futures Rapid!<br></span></p><p><span style=\"font-size: 11pt; font-family: Nunito; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;\"><br></span></p><p>&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"font-size: 11pt; font-family: Nunito; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;\">Tôi chân thành cảm ơn bạn đã chọn chúng tôi làm đối tác trong việc quản lý tài chính.<br></span><span style=\"font-size: 11.5pt; font-family: Nunito; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;\">Cũng như các thị trường khác, TTCK phái sinh phụ thuộc rất nhiều vào các yếu tố vĩ mô</span><span style=\"font-size: 11pt; font-family: Nunito; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;\">, nhưng có rất nhiều ưu điểm vượt trội hơn so với cổ phiếu, trái phiếu.<br></span>&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"font-size: 11pt; font-family: Nunito; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;\">Sản phẩm chứng khoán phái sinh tại Việt Nam phù hợp với những người chấp nhận rủi ro cao, giao dịch nhiều, đã có kinh nghiệm đầu tư. Bên cạnh đó, phái sinh cũng phù hợp với các tổ chức, như là 1 khoản bảo hiểm cho tài sản trên thị trường chứng khoán cơ sở khi thị trường giảm. Kỹ thuật này gọi là hedging.<br></span>&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"font-size: 11pt; font-family: Nunito; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;\">Do đó, thông qua kế hoạch ổn định thu nhập BMLN của chúng tôi, hy vọng sẽ loại bỏ nỗi sợ mất tiền khỏi phương trình, đảm bảo an ninh quỹ và giao dịch, cũng như tạo ra lợi nhuận dài hạn. Giúp khách hàng gặt hái những lợi ích từ khoản đầu tư của họ là lời chứng thực tốt nhất mà chúng ta có thể có. Do đó, chúng tôi cố gắng cung cấp cho họ dịch vụ tốt nhất có thể.<br></span>&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"font-size: 11pt; font-family: &quot;Segoe UI&quot;; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;\"><span style=\"font-family: Nunito;\">Cuối cùng, cảm ơn bạn một lần nữa vì sự tin tưởng và hỗ trợ của bạn. Chúng tôi tin rằng tương lai của Futures Rapid là một triển vọng. Chúng tôi sẽ tiếp tục mở ra các thị trường rộng lớn hơn, vì vậy nhiều người sẽ biết đến </span><span style=\"font-size: 14.6667px; text-indent: 48px; font-family: Nunito;\">Futures Rapid </span><span style=\"font-family: Nunito;\">và có cơ hội nhân rộng tài sản của họ tăng trưởng thông qua nền tảng để có được cuộc sống dồi dào.</span></span></p><p><span style=\"font-size: 11pt; font-family: &quot;Segoe UI&quot;; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;\"><span style=\"font-family: Nunito;\"><br></span></span>&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"font-size: 11pt; font-family: Nunito; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;\">Cảm ơn.<br></span>&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"font-size: 11pt; font-family: Nunito; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;\">Futures Rapid CEO</span></p><p></p></span><span><div><span style=\"font-size: 11pt; font-family: Arial; background-color: transparent; font-variant-numeric: normal; font-variant-east-asian: normal; vertical-align: baseline; white-space: pre-wrap;\"><br></span></div></span>', 'upload/images/1596615046_1543054248279477.png', NULL, '2020-10-21 09:11:44');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(10) NOT NULL,
  `name` varchar(128) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` int(1) NOT NULL DEFAULT '1'
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
  `address` text,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mission` text,
  `map` text NOT NULL,
  `facebook_link` text,
  `youtube_link` text,
  `zalo_link` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `address`, `phone`, `email`, `mission`, `map`, `facebook_link`, `youtube_link`, `zalo_link`, `created_at`, `updated_at`) VALUES
(1, 'Keangnam Hanoi Landmark Tower Khu E6 Đô thị mới Cầu Giấy, Phạm Hùng, Mễ Trì, Nam Từ Liêm, Hà Nội', '0787 869 262', 'futuresrapid@gmail.com', '<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.0 Transitional//EN\" \"http://www.w3.org/TR/REC-html40/loose.dtd\">\n<?xml encoding=\"utf-8\" ?><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?-->\n', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2602.755521808779!2d-123.05560578455984!3d49.28102957880912!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x548671221ec1ed37%3A0xbd08ef4a36d6eff1!2sPure%20Luxe%20Aesthetics!5e0!3m2!1svi!2s!4v1580802278305!5m2!1svi!2s\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\"></iframe>', 'https://www.facebook.com/CFDmagazine/', NULL, NULL, '2019-08-08 07:16:43', '2020-08-19 16:10:01');

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
(2, 'Lưu Bá Tài', 899496569, 'luubatai@gmail.com', 'Test 1', '2020-07-31 16:22:51', '2020-07-31 16:22:51'),
(3, 'Nguyen Van A', 23423423, 'abc@gmail.com', 'This is a abcdsfsd', '2020-07-31 16:39:21', '2020-07-31 16:39:21'),
(4, 'AAAA', 0, 'tai@mail.com', '1111111111', '2020-08-04 22:41:43', '2020-08-04 22:41:43');

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `id` int(10) NOT NULL,
  `name` varchar(250) NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `name`, `updated_at`, `created_at`) VALUES
(1, 'Việt Nam', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'China', '2020-10-26 23:52:28', '2020-10-26 23:52:28');

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
  `status` int(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `home_services`
--

INSERT INTO `home_services` (`id`, `title`, `description`, `image`, `icon`, `background`, `link`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Hợp Tác', 'Chứng khoán phái sinh (CKPS) trong đó giá trị của CKPS phụ thuộc vào giá trị của một hay nhiều loại tài sản cơ sở. Được chia làm 4 nhóm chính : Hợp đồng kỳ hạn, hợp đồng tương lai, hợp đồng quyền chọn và hợp đồng hoán đổi.', 'upload/images/1595910623_shutterstock_361397258.jpg', NULL, '', 'hop-tac', 1, '2019-12-11 17:00:00', '2020-10-21 03:19:18'),
(2, 'Bảo Mật LN ( BMLN)', 'Chương trình này là đứa con tinh thần của 6 chuyên gia hàng đầu thế giới bao gồm các nhà đầu tư tài chính, nhà toán học, nhà phân tích, chuyên gia lập trình phần mềm và chuyên gia quản lý rủi ro.', 'upload/images/1595910686_hp3-service-2.jpg', 'upload/images/1596618005_insurance.png', '', 'bmln', 1, '2019-12-26 15:17:56', '2020-08-05 16:00:05'),
(3, 'Đối Tác Chiến Lược', 'Chúng tôi rất cẩn trọng trong việc lựa chọn đối tác và tin rằng sự hợp tác giữa Futures Rapid và JS Futures sẽ mang lại lợi ích ổn định lâu dài cho người dùng của chúng tôi.', 'upload/images/1595910747_shutterstock_306860177-1.jpg', 'upload/images/1596618284_Partner-icon[1].png', '', '#', 1, '2019-12-26 15:18:35', '2020-08-05 16:04:44'),
(4, 'Về Chúng Tôi', 'Nền tảng quản lý đầu tư định hướng công nghệ hàng đầu thế giới.  Được thành lập vào năm 2019 và có trụ sở tại TPHCM, công ty được thành lập bởi các chuyên gia trong lĩnh vực tài chính và các chuyên gia trong lĩnh vực đầu tư. Futures Rapid Chúng tôi sẽ nỗ lực hết mức có thể vì lợi ích của khách hàng.', 'upload/images/1595910794_shutterstock_341257523.jpg', NULL, '', 'aboutus', 1, '2020-07-28 04:33:14', '2020-07-30 15:20:01');

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
  `range_begin` int(10) NOT NULL,
  `range_end` int(10) NOT NULL,
  `register_password` varchar(50) NOT NULL,
  `register_count` int(10) NOT NULL,
  `register_number` int(10) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `logo`
--

INSERT INTO `logo` (`id`, `title`, `image`, `range_begin`, `range_end`, `register_password`, `register_count`, `register_number`, `created_at`, `updated_at`) VALUES
(1, 'logo', 'upload/images/1596608765_logo-2.png', 80000, 80499, '123456', 3, 500, '2019-08-08 08:24:51', '2020-11-02 07:09:14');

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
(2, 'Menu', '/admin/menu', NULL, 'fas fa-list', 62, 16, NULL, '2020-10-30 09:42:15', 1),
(19, 'User', '/admin/user', '_blank', 'fas fa-user', 62, 15, '2019-05-30 02:19:10', '2020-10-30 09:24:53', 1),
(41, 'Product', '/admin/products', NULL, NULL, 61, 3, '2019-08-06 09:42:37', '2020-07-28 08:31:22', 0),
(43, 'Shop Category', '/admin/category', NULL, NULL, 61, 4, '2019-08-06 09:43:53', '2020-07-28 08:31:15', 0),
(50, 'Banner', '/banner', NULL, NULL, 0, 8, '2019-12-29 07:46:52', '2020-02-04 06:31:51', 0),
(51, 'Giới thiệu trang chủ', '/admin/banner/edit/1', NULL, NULL, 63, 2, '2019-12-29 07:47:31', '2020-07-28 08:30:21', 1),
(52, 'Title', '/title', NULL, NULL, 0, 9, '2019-12-29 07:47:57', '2020-02-04 06:30:47', 0),
(53, 'Home Title', '/admin/title/edit/1', NULL, NULL, 52, 10, '2019-12-29 07:48:09', '2020-02-04 06:28:48', 1),
(54, 'Home Services', '/admin/home-services', NULL, NULL, 63, 3, '2019-12-29 07:49:03', '2020-07-30 09:33:14', 1),
(55, 'Slides', '/admin/slides', NULL, NULL, 63, 4, '2019-12-29 07:49:23', '2020-07-30 09:33:14', 1),
(56, 'Review', '/admin/slide-title', NULL, NULL, 63, 5, '2019-12-29 07:49:47', '2020-02-04 06:35:43', 1),
(57, 'Our Team', '/admin/our-team', NULL, NULL, 63, 6, '2019-12-29 07:50:04', '2020-02-04 06:34:41', 1),
(58, 'Contact Info', '/admin/contact/edit', NULL, NULL, 0, 11, '2019-12-29 08:06:54', '2020-10-30 09:24:53', 1),
(59, 'Service Types', '/admin/service-types', NULL, NULL, 0, 7, '2020-02-04 03:45:16', '2020-07-31 15:47:09', 0),
(60, 'Contact List', '/admin/contact-list', NULL, NULL, 0, 10, '2020-02-04 03:45:58', '2020-10-30 09:24:53', 1),
(61, 'Shop', '/', NULL, NULL, 0, 2, '2020-02-04 03:55:59', '2020-07-28 08:31:26', 0),
(62, 'Setting', '/', NULL, NULL, 0, 12, '2020-02-04 06:27:44', '2020-10-30 09:42:15', 1),
(63, 'Home Page', '/', NULL, NULL, 0, 1, '2020-02-04 06:29:20', '2020-02-04 06:30:51', 1),
(64, 'Home About', '/title', NULL, NULL, 63, 7, '2020-02-04 06:32:13', '2020-02-04 06:35:43', 1),
(65, 'Tin Tức', '/', NULL, NULL, 0, 6, '2020-02-04 06:35:29', '2020-07-31 15:45:46', 0),
(66, 'Danh Sách Tin Tức', '/admin/posts', NULL, NULL, 65, 7, '2020-02-04 06:36:04', '2020-07-31 15:37:26', 1),
(67, 'Loại Tin Tức', '/admin/post-types', NULL, NULL, 65, 8, '2020-02-04 06:36:27', '2020-07-31 15:45:27', 0),
(68, 'Register Range & Logo', '/admin/logo', NULL, NULL, 62, 14, '2020-02-04 07:02:43', '2020-10-30 09:42:15', 1),
(69, 'Chúng Tôi Page', '/admin/about/edit', NULL, NULL, 0, 2, '2020-07-30 09:33:07', '2020-10-30 09:41:49', 1),
(70, 'BMBH Page', '/admin/bmln/edit', NULL, NULL, 0, 3, '2020-07-31 14:26:31', '2020-10-30 09:15:34', 1),
(71, 'Đối Tác Chiến Lược Page', '/admin/doi-tac-chien-luoc/edit', NULL, NULL, 0, 4, '2020-07-31 15:36:55', '2020-10-30 09:15:17', 1),
(72, 'Hợp Tác', '/admin/hop-tac/edit', NULL, NULL, 0, 6, '2020-07-31 15:37:21', '2020-10-30 08:33:30', 0),
(73, 'Tin Tức', '/admin/posts', NULL, NULL, 0, 7, '2020-07-31 15:46:40', '2020-10-30 09:14:50', 1),
(74, 'Country List', '/admin/country', NULL, NULL, 62, 13, '2020-10-26 16:52:01', '2020-10-30 09:42:15', 1),
(75, 'Register List', '/admin/register-list', NULL, NULL, 0, 9, '2020-10-26 17:07:25', '2020-10-30 09:24:53', 1),
(76, '3 Bước', '/admin/step', NULL, NULL, 63, 8, '2020-10-30 08:25:42', '2020-10-30 08:25:49', 1),
(77, 'Hợp Tác Page', '/admin/hop-tac/edit', NULL, NULL, 0, 5, '2020-10-30 08:26:27', '2020-10-30 08:33:37', 1),
(78, 'Nền Tảng Giao Dịch Page', '/admin/nen-tang-giao-dich/edit', NULL, NULL, 0, 6, '2020-10-30 09:14:42', '2020-10-30 09:15:03', 1),
(79, 'Hợp Tác List', '/admin/hop-tac-list', NULL, NULL, 0, 8, '2020-10-30 09:24:45', '2020-10-30 09:24:53', 1);

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
  `description` text,
  `image` varchar(255) DEFAULT NULL,
  `link` varchar(255) NOT NULL,
  `type_name` varchar(110) DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
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
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `title` varchar(110) NOT NULL,
  `slug` varchar(110) NOT NULL,
  `description` text,
  `short_description` text,
  `image` varchar(255) DEFAULT NULL,
  `post_type_id` int(10) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `title`, `slug`, `description`, `short_description`, `image`, `post_type_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Giá khởi điểm đấu giá BIDV là 18.500 đồng/cổ phần', 'gia-khoi-diem-dau-gia-bidv-la-18500-dongco-phan', '<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.0 Transitional//EN\" \"http://www.w3.org/TR/REC-html40/loose.dtd\">\n<?xml encoding=\"utf-8\" ?><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><html><body><div class=\"ro-content ro-ellipsis\" style=\'overflow: hidden; margin-bottom: 20px; color: rgb(68, 68, 68); font-family: \"Josefin Sans\", sans-serif; font-weight: 600; overflow-wrap: break-word;\'><p class=\"MsoNormal\" style=\"text-align: justify; margin: 0in 0in 10pt; color: rgb(54, 54, 54); font-family: Arial, sans-serif; font-size: 14px; font-weight: 400; line-height: 21px;\">Ng&acirc;n h&agrave;ng &#272;&#7847;u t&#432; v&agrave; ph&aacute;t tri&#7875;n Vi&#7879;t Nam - BIDV c&ocirc;ng b&#7889; C&ocirc;ng V&#259;n ng&agrave;y 5/12 c&#7911;a V&#259;n ph&ograve;ng Ch&iacute;nh ph&#7911; &#273;&#7891;ng &yacute; m&#7913;c gi&aacute; kh&#7903;i &#273;i&#7875;m b&aacute;n &#273;&#7847;u gi&aacute; l&#7847;n &#273;&#7847;u ra c&ocirc;ng ch&uacute;ng c&#7911;a BIDV l&agrave; 18.500 &#273;&#7891;ng/c&#7893; phi&#7871;u.</p><p class=\"MsoNormal\" style=\"text-align: justify; margin: 0in 0in 10pt; color: rgb(54, 54, 54); font-family: Arial, sans-serif; font-size: 14px; font-weight: 400; line-height: 21px;\">Ng&agrave;y 10/12 t&#7899;i, BIDV s&#7869; t&#7893; ch&#7913;c roadshow gi&#7899;i thi&#7879;u ch&agrave;o b&aacute;n t&#7841;i H&agrave; N&#7897;i. Ng&acirc;n h&agrave;ng s&#7869; ch&agrave;o b&aacute;n 3% v&#7889;n, t&#432;&#417;ng &#273;&#432;&#417;ng 84,7 tri&#7879;u c&#7893; ph&#7847;n trong &#273;&#7907;t &#273;&#7845;u gi&aacute; n&agrave;y.</p><p class=\"MsoNormal\" style=\"text-align: justify; margin: 0in 0in 10pt; color: rgb(54, 54, 54); font-family: Arial, sans-serif; font-size: 14px; font-weight: 400; line-height: 21px;\">V&#7899;i m&#7913;c gi&aacute; kh&#7903;i &#273;i&#7875;m k&#7875; tr&ecirc;n, t&#7893;ng gi&aacute; tr&#7883; v&#7889;n h&oacute;a c&#7911;a &#273;&#7907;t ch&agrave;o b&aacute;n kho&#7843;ng 1.570 t&#7927; &#273;&#7891;ng.</p><p class=\"MsoNormal\" style=\"text-align: justify; margin: 0in 0in 10pt; color: rgb(54, 54, 54); font-family: Arial, sans-serif; font-size: 14px; font-weight: 400; line-height: 21px;\">Theo c&ocirc;ng b&#7889; t&#7915; BIDV, gi&aacute; tr&#7883; doanh nghi&#7879;p theo s&#7893; s&aacute;ch &#273;&atilde; &#273;&#432;&#7907;c ki&#7875;m to&aacute;n l&agrave; 363.094 t&#7927; &#273;&#7891;ng. Trong &#273;&oacute;, gi&aacute; tr&#7883; ph&#7847;n v&#7889;n nh&agrave; n&#432;&#7899;c t&#7841;i doanh nghi&#7879;p l&agrave; 22.036 t&#7927; &#273;&#7891;ng. Gi&aacute; tr&#7883; doanh nghi&#7879;p theo &#273;&#7883;nh gi&aacute; &#273;&atilde; &#273;&#432;&#7907;c Ki&#7875;m to&aacute;n Nh&agrave; n&#432;&#7899;c ki&#7875;m to&aacute;n l&agrave; 381.317 t&#7927; &#273;&#7891;ng. Trong &#273;&oacute;, gi&aacute; tr&#7883; th&#7921;c t&#7871; ph&#7847;n v&#7889;n nh&agrave; n&#432;&#7899;c t&#7841;i doanh nghi&#7879;p l&agrave; 40.259 t&#7927; &#273;&#7891;ng.</p><p class=\"MsoNormal\" style=\"text-align: justify; margin: 0in 0in 10pt; color: rgb(54, 54, 54); font-family: Arial, sans-serif; font-size: 14px; font-weight: 400; line-height: 21px;\">&Ocirc;ng Tr&#7847;n B&#7855;c H&agrave;, Ch&#7911; t&#7883;ch BIDV tr&#432;&#7899;c &#273;&oacute; c&#361;ng cho bi&#7871;t ng&acirc;n h&agrave;ng s&#7869; ch&#7885;n m&#7897;t &#273;i&#7875;m r&#417;i ph&ugrave; h&#7907;p th&#7921;c t&#7871; th&#7883; tr&#432;&#7901;ng th&#7901;i &#273;i&#7875;m hi&#7879;n t&#7841;i c&#361;ng nh&#432; d&#7921; b&aacute;o th&#7883; tr&#432;&#7901;ng t&#7915; nay t&#7899;i l&uacute;c &#273;&#7845;u gi&aacute; v&agrave; &#273;&#7863;c bi&#7879;t l&agrave; c&oacute; so s&aacute;nh v&#7899;i gi&aacute; c&#7893; phi&#7871;u VietinBank c&#361;ng nh&#432; Vietcombank hi&#7879;n nay. BIDV c&#361;ng d&#7921; ph&ograve;ng b&#432;&#7899;c l&ugrave;i trong tr&#432;&#7901;ng h&#7907;p x&#7845;u nh&#7845;t &#273;&#7875; &#273;&#7843;m b&#7843;o cho phi&ecirc;n &#273;&#7845;u gi&aacute; th&agrave;nh c&ocirc;ng.</p><p class=\"MsoNormal\" style=\"text-align: justify; margin: 0in 0in 10pt; color: rgb(54, 54, 54); font-family: Arial, sans-serif; font-size: 14px; font-weight: 400; line-height: 21px;\">&#272;&oacute;ng c&#7917;a phi&ecirc;n h&ocirc;m 6/12, gi&aacute; c&#7893; phi&#7871;u c&#7911;a Vietcombank l&agrave; 22.200 &#273;&#7891;ng v&agrave; gi&aacute; c&#7893; phi&#7871;u c&#7911;a VietinBank l&agrave; 20.200 &#273;&#7891;ng.</p></div></body></html>\n', 'Sở Giao dịch chứng khoán Hà Nội (HNX) cho biết, khối lượng giao dịch hợp đồng tương lai chỉ số VN30 trong tháng 7 tăng so với tháng trước. Theo đó, khối lượng giao dịch bình quân đạt 212.623 hợp đồng, tăng 18,59% so với tháng trước.', 'upload/images/1596096628_Giao+dich+khach+hang-compressed[1].jpg', 1, 1, '2020-07-31 15:39:21', '2020-08-10 15:43:11'),
(2, 'Ngày giao dịch đầu tiên cổ phiếu đăng ký giao dịch CTCP Srok Phu Miêng IDICO', 'ngay-giao-dich-dau-tien-co-phieu-dang-ky-giao-dich-ctcp-srok-phu-mieng-idico', '<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.0 Transitional//EN\" \"http://www.w3.org/TR/REC-html40/loose.dtd\">\n<?xml encoding=\"utf-8\" ?><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><html><body><p style=\"text-align: justify; color: rgb(54, 54, 54); font-family: Arial, sans-serif; font-size: 14px;\">T&ecirc;n ch&#7913;ng kho&aacute;n: C&#7893; phi&#7871;u CTCP Srok Phu Mi&ecirc;ng IDICO</p><p style=\"text-align: justify; color: rgb(54, 54, 54); font-family: Arial, sans-serif; font-size: 14px;\">Lo&#7841;i ch&#7913;ng kho&aacute;n: C&#7893; phi&#7871;u ph&#7893; th&ocirc;ng</p><p style=\"text-align: justify; color: rgb(54, 54, 54); font-family: Arial, sans-serif; font-size: 14px;\">M&atilde; ch&#7913;ng kho&aacute;n: ISH</p><p style=\"text-align: justify; color: rgb(54, 54, 54); font-family: Arial, sans-serif; font-size: 14px;\">M&#7879;nh gi&aacute;: 10.000 &#273;&#7891;ng/c&#7893; phi&#7871;u</p><p style=\"text-align: justify; color: rgb(54, 54, 54); font-family: Arial, sans-serif; font-size: 14px;\">- S&#7889; l&#432;&#7907;ng ch&#7913;ng kho&aacute;n &#273;&#259;ng k&yacute; giao d&#7883;ch: 45.000.000 c&#7893; phi&#7871;u</p><p style=\"text-align: justify; color: rgb(54, 54, 54); font-family: Arial, sans-serif; font-size: 14px;\"><em>(B&#7889;n m&#432;&#417;i l&#259;m tri&#7879;u c&#7893; phi&#7871;u)</em></p><p style=\"text-align: justify; color: rgb(54, 54, 54); font-family: Arial, sans-serif; font-size: 14px;\">- T&#7893;ng gi&aacute; tr&#7883; ch&#7913;ng kho&aacute;n &#273;&#259;ng k&yacute; giao d&#7883;ch: 450.000.000.000 &#273;&#7891;ng</p><p style=\"text-align: justify; color: rgb(54, 54, 54); font-family: Arial, sans-serif; font-size: 14px;\"><em>(B&#7889;n tr&#259;m n&#259;m m&#432;&#417;i t&#7927; &#273;&#7891;ng)</em></p><p style=\"text-align: justify; color: rgb(54, 54, 54); font-family: Arial, sans-serif; font-size: 14px;\">Ng&agrave;y giao d&#7883;ch &#273;&#7847;u ti&ecirc;n:&nbsp;<span style=\"font-weight: bolder;\">Th&#7913; hai, ng&agrave;y 29/6/2015</span></p><p style=\"text-align: justify; color: rgb(54, 54, 54); font-family: Arial, sans-serif; font-size: 14px;\">Gi&aacute; tham chi&#7871;u trong ng&agrave;y giao d&#7883;ch &#273;&#7847;u ti&ecirc;n:&nbsp;<span style=\"font-weight: bolder;\">11.300</span>&nbsp;&#273;&#7891;ng/c&#7893; phi&#7871;u</p></body></html>\n', 'Sở Giao dịch chứng khoán Hà Nội (HNX) cho biết, khối lượng giao dịch hợp đồng tương lai chỉ số VN30 trong tháng 7 tăng so với tháng trước. Theo đó, khối lượng giao dịch bình quân đạt 212.623 hợp đồng, tăng 18,59% so với tháng trước.', 'upload/images/1596096553_IDICO-KCN_Phu_My_2[1].jpg', 1, 1, '2020-07-31 15:39:46', '2020-08-10 15:43:28'),
(7, 'Thị trường chứng khoán phái sinh Việt Nam tiếp tục lập kỷ lục giao dịch trong tháng 7', 'thi-truong-chung-khoan-phai-sinh-viet-nam-tiep-tuc-lap-ky-luc-giao-dich-trong-thang-7', '<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.0 Transitional//EN\" \"http://www.w3.org/TR/REC-html40/loose.dtd\">\n<?xml encoding=\"utf-8\" ?><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><html><body><p style=\'text-align: justify; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; max-width: 100%; font-family: opensans, \"San Francisco\", \"Helvetica Neue\", Helvetica, Arial, sans-serif; font-size: 15px;\'>Phi&ecirc;n c&oacute; kh&#7889;i l&#432;&#7907;ng giao d&#7883;ch cao nh&#7845;t &#273;&#7841;t 356.033 h&#7907;p &#273;&#7891;ng v&agrave;o ng&agrave;y 29/7, t&#259;ng 16,7% so v&#7899;i m&#7913;c cao nh&#7845;t trong th&aacute;ng 6. &#272;&acirc;y c&#361;ng l&agrave; m&#7913;c cao nh&#7845;t k&#7875; t&#7915; khi khai tr&#432;&#417;ng th&#7883; tr&#432;&#7901;ng, v&#432;&#7907;t qua k&#7927; l&#7909;c tr&#432;&#7899;c &#273;&oacute; v&#7873; kh&#7889;i l&#432;&#7907;ng giao d&#7883;ch trong phi&ecirc;n.</p><p style=\'text-align: justify; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; max-width: 100%; font-family: opensans, \"San Francisco\", \"Helvetica Neue\", Helvetica, Arial, sans-serif; font-size: 15px;\'>Th&aacute;ng 7, kh&#7889;i l&#432;&#7907;ng h&#7907;p &#273;&#7891;ng m&#7903; (OI) ti&#7871;p t&#7909;c t&#259;ng m&#7841;nh 40,43% so v&#7899;i th&aacute;ng tr&#432;&#7899;c v&agrave; t&#7841;i ng&agrave;y giao d&#7883;ch cu&#7889;i c&ugrave;ng c&#7911;a th&aacute;ng, OI &#273;&#7841;t 38.001 h&#7907;p &#273;&#7891;ng. &#272;&acirc;y cu&#771;ng la&#768; m&#7913;c OI cao nh&#7845;t t&#7915; tr&#432;&#7899;c &#273;&#7871;n nay.&nbsp;</p><p style=\'text-align: justify; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; max-width: 100%; font-family: opensans, \"San Francisco\", \"Helvetica Neue\", Helvetica, Arial, sans-serif; font-size: 15px;\'>S&#7889; l&#432;&#7907;ng t&agrave;i kho&#7843;n giao d&#7883;ch ph&aacute;i sinh v&#7851;n ti&#7871;p t&#7909;c t&#259;ng l&ecirc;n. T&#7841;i th&#7901;i &#273;i&#7875;m cu&#7889;i th&aacute;ng 7, s&#7889; l&#432;&#7907;ng t&agrave;i kho&#7843;n giao d&#7883;ch ph&aacute;i sinh &#273;&#7841;t 132.274 t&agrave;i kho&#7843;n, t&#259;ng 4,86% so v&#7899;i th&aacute;ng tr&#432;&#7899;c.</p><p style=\'margin-right: 0px; margin-bottom: 15px; margin-left: 0px; max-width: 100%; font-family: opensans, \"San Francisco\", \"Helvetica Neue\", Helvetica, Arial, sans-serif; font-size: 15px;\'><img src=\"http://static.tapchitaichinh.vn/w800/images/upload/duongthanhhai/08102020/h1.png\" alt=\"Th&#7883; tr&#432;&#7901;ng ch&#7913;ng kho&aacute;n ph&aacute;i sinh Vi&#7879;t Nam ti&#7871;p t&#7909;c l&#7853;p k&#7927; l&#7909;c giao d&#7883;ch trong th&aacute;ng 7 - &#7842;nh 1\"></p><p style=\'text-align: justify; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; max-width: 100%; font-family: opensans, \"San Francisco\", \"Helvetica Neue\", Helvetica, Arial, sans-serif; font-size: 15px;\'>Nh&#432; v&#7853;y, b&#7845;t ch&#7845;p d&#7883;ch COVID-19 b&ugrave;ng ph&aacute;t tr&#7903; l&#7841;i &#273;e d&#7885;a &#273;&#7871;n tri&#7875;n v&#7885;ng t&#259;ng tr&#432;&#7903;ng c&#7911;a th&#7883; tr&#432;&#7901;ng, trong th&aacute;ng 7, th&#7883; tr&#432;&#7901;ng ch&#7913;ng kho&aacute;n ph&aacute;i sinh Vi&#7879;t Nam ti&#7871;p t&#7909;c l&#7853;p k&#7927; l&#7909;c m&#7899;i c&#7843; v&#7873; kh&#7889;i l&#432;&#7907;ng giao d&#7883;ch v&agrave; h&#7907;p &#273;&#7891;ng m&#7903;.</p><p style=\'text-align: justify; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; max-width: 100%; font-family: opensans, \"San Francisco\", \"Helvetica Neue\", Helvetica, Arial, sans-serif; font-size: 15px;\'>V&#7873; giao d&#7883;ch h&#7907;p &#273;&#7891;ng t&#432;&#417;ng lai tr&aacute;i phi&#7871;u Ch&iacute;nh ph&#7911;, trong th&aacute;ng 7 c&oacute; 9 h&#7907;p &#273;&#7891;ng &#273;&#432;&#7907;c giao d&#7883;ch. C&aacute;c giao d&#7883;ch h&#7907;p &#273;&#7891;ng t&#432;&#417;ng lai tr&aacute;i phi&#7871;u Ch&iacute;nh ph&#7911; &#273;&#7873;u do c&aacute;c t&#7893; ch&#7913;c trong n&#432;&#7899;c th&#7921;c hi&#7879;n.</p><p style=\'text-align: justify; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; max-width: 100%; font-family: opensans, \"San Francisco\", \"Helvetica Neue\", Helvetica, Arial, sans-serif; font-size: 15px;\'>T&#7881; tr&#7885;ng giao d&#7883;ch c&#7911;a nh&agrave; &#273;&#7847;u t&#432; c&aacute; nh&acirc;n trong n&#432;&#7899;c duy tr&igrave; &#7903; m&#7913;c t&#432;&#417;ng t&#7921; th&aacute;ng tr&#432;&#7899;c, chi&#7871;m 85,94% kh&#7889;i l&#432;&#7907;ng giao d&#7883;ch to&agrave;n th&#7883; tr&#432;&#7901;ng. T&#7881; tr&#7885;ng giao d&#7883;ch c&#7911;a nh&agrave; &#273;&#7847;u t&#432; t&#7893; ch&#7913;c trong n&#432;&#7899;c c&#361;ng gi&#7919; &#7903; m&#7913;c g&#7847;n t&#432;&#417;ng &#273;&#432;&#417;ng, chi&#7871;m 13,47% to&agrave;n th&#7883; tr&#432;&#7901;ng. T&#7881; tro&#803;ng giao di&#803;ch t&#7921; doanh cu&#777;a c&ocirc;ng ty ch&#7913;ng kho&aacute;n gi&#7843;m m&#7841;nh so v&#7899;i th&aacute;ng tr&#432;&#7899;c, ch&#7881; chi&#7871;m 0,66%. Ph&acirc;&#768;n co&#768;n la&#803;i la&#768; cu&#777;a ca&#769;c t&ocirc;&#777; ch&#432;&#769;c kha&#769;c.</p><p style=\'text-align: justify; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; max-width: 100%; font-family: opensans, \"San Francisco\", \"Helvetica Neue\", Helvetica, Arial, sans-serif; font-size: 15px;\'>Kh&#7889;i l&#432;&#7907;ng giao d&#7883;ch c&#7911;a nh&agrave; &#273;&#7847;u t&#432; n&#432;&#7899;c ngo&agrave;i trong th&aacute;ng 7 gi&#7843;m so v&#7899;i th&aacute;ng tr&#432;&#7899;c, chi&#7871;m 0,59% t&#7893;ng kh&#7889;i l&#432;&#7907;ng giao d&#7883;ch to&agrave;n th&#7883; tr&#432;&#7901;ng.<br></p><p style=\'margin-right: 0px; margin-bottom: 15px; margin-left: 0px; max-width: 100%; font-family: opensans, \"San Francisco\", \"Helvetica Neue\", Helvetica, Arial, sans-serif; font-size: 15px;\'><a href=\"http://tapchitaichinh.vn/kinh-te-vi-mo/thi-truong-chung-khoan-phai-sinh-viet-nam-tiep-tuc-lap-ky-luc-giao-dich-trong-thang-7-326459.html\" style=\"color: rgb(255, 255, 255);\">http://tapchitaichinh.vn/kinh-te-vi-mo/thi-truong-chung-khoan-phai-sinh-viet-nam-tiep-tuc-lap-ky-luc-giao-dich-trong-thang-7-326459.html</a><br></p></body></html>\n', 'Sở Giao dịch chứng khoán Hà Nội (HNX) cho biết, khối lượng giao dịch hợp đồng tương lai chỉ số VN30 trong tháng 7 tăng so với tháng trước. Theo đó, khối lượng giao dịch bình quân đạt 212.623 hợp đồng, tăng 18,59% so với tháng trước.', 'upload/images/1597048327_img_5289[1].jpg', 1, 1, '2020-08-10 15:32:07', '2020-08-10 15:46:27');
INSERT INTO `post` (`id`, `title`, `slug`, `description`, `short_description`, `image`, `post_type_id`, `status`, `created_at`, `updated_at`) VALUES
(8, 'Thị trường chứng khoán phái sinh: Vượt trên cả kỳ vọng', 'thi-truong-chung-khoan-phai-sinh-vuot-tren-ca-ky-vong', '<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.0 Transitional//EN\" \"http://www.w3.org/TR/REC-html40/loose.dtd\">\n<?xml encoding=\"utf-8\" ?><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><!--?xml encoding=\"utf-8\" ?--><html><body><p style=\'text-align: justify; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; max-width: 100%; font-family: opensans, \"San Francisco\", \"Helvetica Neue\", Helvetica, Arial, sans-serif; font-size: 15px;\'><span style=\"font-weight: bolder;\">Ph&aacute;t tri&#7875;n nhanh ch&oacute;ng, v&#432;&#7907;t tr&ecirc;n c&#7843; k&#7923; v&#7885;ng</span></p><p style=\'text-align: justify; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; max-width: 100%; font-family: opensans, \"San Francisco\", \"Helvetica Neue\", Helvetica, Arial, sans-serif; font-size: 15px;\'>Ng&agrave;y 10/8/2017, th&#7883; tr&#432;&#7901;ng ch&#7913;ng kho&aacute;n (TTCK) ph&aacute;i sinh ch&iacute;nh th&#7913;c khai tr&#432;&#417;ng ho&#7841;t &#273;&#7897;ng, g&oacute;p ph&#7847;n ho&agrave;n thi&#7879;n c&#417; c&#7845;u th&#7883; tr&#432;&#7901;ng c&#7911;a S&#7903; Giao d&#7883;ch Ch&#7913;ng kho&aacute;n H&agrave; N&#7897;i (HNX) c&#361;ng nh&#432; ho&agrave;n thi&#7879;n c&#7845;u tr&uacute;c ho&#7841;t &#273;&#7897;ng th&#7883; tr&#432;&#7901;ng ch&#7913;ng kho&aacute;n theo th&ocirc;ng l&#7879; qu&#7889;c t&#7871;.</p><p style=\'text-align: justify; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; max-width: 100%; font-family: opensans, \"San Francisco\", \"Helvetica Neue\", Helvetica, Arial, sans-serif; font-size: 15px;\'>Theo c&aacute;c chuy&ecirc;n gia ch&#7913;ng kho&aacute;n, vi&#7879;c ph&aacute;t tri&#7875;n th&#7883; tr&#432;&#7901;ng ph&aacute;i sinh l&agrave; xu th&#7871; t&#7845;t y&#7871;u kh&ocirc;ng ch&#7881; v&#7899;i th&#7883; tr&#432;&#7901;ng ch&#7913;ng kho&aacute;n Vi&#7879;t Nam m&agrave; &#273;&oacute; l&agrave; xu th&#7871; chung c&#7911;a th&#7871; gi&#7899;i. Sau 3 n&#259;m khai tr&#432;&#417;ng ho&#7841;t &#273;&#7897;ng, TTCK ph&aacute;i sinh &#273;&atilde; c&oacute; s&#7921; ph&aacute;t tri&#7875;n nhanh ch&oacute;ng, v&#432;&#7907;t c&aacute;c k&#7923; v&#7885;ng &#273;&#7863;t ra, th&#7875; hi&#7879;n r&otilde; vai tr&ograve; l&agrave; c&ocirc;ng c&#7909; ph&ograve;ng ng&#7915;a r&#7911;i ro, g&oacute;p ph&#7847;n t&iacute;ch c&#7921;c v&agrave;o vi&#7879;c &#7893;n &#273;&#7883;nh th&#7883; tr&#432;&#7901;ng c&#417; s&#7903;.</p><p style=\'text-align: justify; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; max-width: 100%; font-family: opensans, \"San Francisco\", \"Helvetica Neue\", Helvetica, Arial, sans-serif; font-size: 15px;\'>Hi&#7879;n t&#7841;i, TTCK ph&aacute;i sinh c&oacute; &nbsp;hai s&#7843;n ph&#7849;m ph&aacute;i sinh tr&ecirc;n c&aacute;c t&agrave;i s&#7843;n c&#417; s&#7903; l&agrave;: ch&#7881; s&#7889; c&#7893; phi&#7871;u VN30 v&agrave; tr&aacute;i phi&#7871;u Ch&iacute;nh ph&#7911; (TPCP) k&#7923; h&#7841;n 5 n&#259;m, trong &#273;&oacute; h&#7907;p &#273;&#7891;ng t&#432;&#417;ng lai TPCP l&agrave; s&#7843;n ph&#7849;m d&agrave;nh ri&ecirc;ng cho c&aacute;c nh&agrave; &#273;&#7847;u t&#432; t&#7893; ch&#7913;c.</p><div><p class=\"aligncenter\" style=\'margin-right: 0px; margin-bottom: 15px; margin-left: 0px; max-width: 100%; font-family: opensans, \"San Francisco\", \"Helvetica Neue\", Helvetica, Arial, sans-serif; font-size: 15px; text-align: center !important;\'><span style=\"font-weight: bolder;\">B&#7843;ng 1: B&#7843;ng t&#7893;ng h&#7907;p giao d&#7883;ch h&#7907;p &#273;&#7891;ng t&#432;&#417;ng lai VN30 2017-2020</span></p><table class=\" report-table has-border\" style=\'max-width: 800px; margin: auto auto auto -90px; width: 800px; font-family: opensans, \"San Francisco\", \"Helvetica Neue\", Helvetica, Arial, sans-serif; font-size: 15px; background-color: rgb(255, 255, 255);\'><tbody><tr style=\"background-color: rgb(11, 100, 54); font-weight: 700; color: rgb(255, 255, 255);\"><td style=\"padding: 10px 20px; border: 1px solid rgb(204, 204, 204); width: 120px;\"><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\"><span style=\"font-weight: bolder; font-size: 16px;\">TT</span></p></td><td style=\"padding: 10px 20px; border: 1px solid rgb(204, 204, 204);\"><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\"><span style=\"font-weight: bolder; font-size: 16px;\">Ch&#7881; ti&ecirc;u</span></p></td><td style=\"padding: 10px 20px; border: 1px solid rgb(204, 204, 204);\"><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\"><span style=\"font-weight: bolder; font-size: 16px;\">&#272;&#417;n v&#7883;</span></p></td><td style=\"padding: 10px 20px; border: 1px solid rgb(204, 204, 204);\"><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\"><span style=\"font-weight: bolder; font-size: 16px;\">8-12/2017</span></p></td><td style=\"padding: 10px 20px; border: 1px solid rgb(204, 204, 204);\"><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\"><span style=\"font-weight: bolder; font-size: 16px;\">2018</span></p></td><td style=\"padding: 10px 20px; border: 1px solid rgb(204, 204, 204);\"><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\"><span style=\"font-weight: bolder; font-size: 16px;\">2019</span></p></td><td style=\"padding: 10px 20px; border: 1px solid rgb(204, 204, 204);\"><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\"><span style=\"font-weight: bolder; font-size: 16px;\">1-7/2020</span></p></td></tr><tr><td style=\"padding: 10px 20px; border: 1px solid rgb(11, 100, 54); width: 120px;\"><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\">&nbsp;</p></td><td style=\"padding: 10px 20px; border: 1px solid rgb(11, 100, 54);\"><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\"><span style=\"font-weight: bolder; font-size: 16px;\">H&#7907;p &#273;&#7891;ng t&#432;&#417;ng lai tr&ecirc;n ch&#7881; s&#7889; VN30</span></p></td><td style=\"padding: 10px 20px; border: 1px solid rgb(11, 100, 54);\"><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\">&nbsp;</p></td></tr><tr style=\"background-color: rgb(249, 249, 249);\"><td style=\"padding: 10px 20px; border: 1px solid rgb(11, 100, 54); width: 120px;\"><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\">1</p></td><td style=\"padding: 10px 20px; border: 1px solid rgb(11, 100, 54);\"><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\">T&#7893;ng KLGD</p></td><td style=\"padding: 10px 20px; border: 1px solid rgb(11, 100, 54);\"><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\">h&#7907;p &#273;&#7891;ng</p></td><td style=\"padding: 10px 20px; border: 1px solid rgb(11, 100, 54);\"><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\">1.106.353</p></td><td style=\"padding: 10px 20px; border: 1px solid rgb(11, 100, 54);\"><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\">19.697.764</p></td><td style=\"padding: 10px 20px; border: 1px solid rgb(11, 100, 54);\"><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\">22.185.096</p></td><td style=\"padding: 10px 20px; border: 1px solid rgb(11, 100, 54);\"><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\">24.913.276</p></td></tr><tr><td style=\"padding: 10px 20px; border: 1px solid rgb(11, 100, 54); width: 120px;\"><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\">2</p></td><td style=\"padding: 10px 20px; border: 1px solid rgb(11, 100, 54);\"><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\">KLGD b&igrave;nh qu&acirc;n/phi&ecirc;n</p></td><td style=\"padding: 10px 20px; border: 1px solid rgb(11, 100, 54);\"><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\">h&#7907;p &#273;&#7891;ng</p></td><td style=\"padding: 10px 20px; border: 1px solid rgb(11, 100, 54);\"><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\">10.954</p></td><td style=\"padding: 10px 20px; border: 1px solid rgb(11, 100, 54);\"><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\">78.791</p></td><td style=\"padding: 10px 20px; border: 1px solid rgb(11, 100, 54);\"><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\">88.740</p></td><td style=\"padding: 10px 20px; border: 1px solid rgb(11, 100, 54);\"><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\">173.009</p></td></tr><tr style=\"background-color: rgb(249, 249, 249);\"><td style=\"padding: 10px 20px; border: 1px solid rgb(11, 100, 54); width: 120px;\"><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\">3</p></td><td style=\"padding: 10px 20px; border: 1px solid rgb(11, 100, 54);\"><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\">Kh&#7889;i l&#432;&#7907;ng OI (cu&#7889;i k&#7923;)</p></td><td style=\"padding: 10px 20px; border: 1px solid rgb(11, 100, 54);\"><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\">h&#7907;p &#273;&#7891;ng</p></td><td style=\"padding: 10px 20px; border: 1px solid rgb(11, 100, 54);\"><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\">8.077</p></td><td style=\"padding: 10px 20px; border: 1px solid rgb(11, 100, 54);\"><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\">21.653</p></td><td style=\"padding: 10px 20px; border: 1px solid rgb(11, 100, 54);\"><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\">16.625</p></td><td style=\"padding: 10px 20px; border: 1px solid rgb(11, 100, 54);\"><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\">&nbsp;38.001</p></td></tr><tr><td style=\"padding: 10px 20px; border: 1px solid rgb(11, 100, 54); width: 120px;\"><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\">&nbsp;</p></td><td style=\"padding: 10px 20px; border: 1px solid rgb(11, 100, 54);\"><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\"><span style=\"font-weight: bolder; font-size: 16px;\">H&#7907;p &#273;&#7891;ng t&#432;&#417;ng lai TPCP k&#7923; h&#7841;n 5 n&#259;m</span></p></td><td style=\"padding: 10px 20px; border: 1px solid rgb(11, 100, 54);\">&nbsp;</td></tr><tr style=\"background-color: rgb(249, 249, 249);\"><td style=\"padding: 10px 20px; border: 1px solid rgb(11, 100, 54); width: 120px;\"><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\"><span style=\"font-weight: bolder; font-size: 16px;\">TT</span></p></td><td style=\"padding: 10px 20px; border: 1px solid rgb(11, 100, 54);\"><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\"><span style=\"font-weight: bolder; font-size: 16px;\">Ch&#7881; ti&ecirc;u</span></p></td><td style=\"padding: 10px 20px; border: 1px solid rgb(11, 100, 54);\"><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\"><span style=\"font-weight: bolder; font-size: 16px;\">&#272;&#417;n v&#7883;</span></p></td><td style=\"padding: 10px 20px; border: 1px solid rgb(11, 100, 54);\"><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\"><span style=\"font-weight: bolder; font-size: 16px;\">&nbsp;</span></p></td><td style=\"padding: 10px 20px; border: 1px solid rgb(11, 100, 54);\"><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\"><span style=\"font-weight: bolder; font-size: 16px;\">&nbsp;</span></p></td><td style=\"padding: 10px 20px; border: 1px solid rgb(11, 100, 54);\"><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\"><span style=\"font-weight: bolder; font-size: 16px;\">7-12/2019</span></p></td><td style=\"padding: 10px 20px; border: 1px solid rgb(11, 100, 54);\"><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\"><span style=\"font-weight: bolder; font-size: 16px;\">1-7/2020</span></p></td></tr><tr><td style=\"padding: 10px 20px; border: 1px solid rgb(11, 100, 54); width: 120px;\"><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\">1</p></td><td style=\"padding: 10px 20px; border: 1px solid rgb(11, 100, 54);\"><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\">T&#7893;ng KLGD</p></td><td style=\"padding: 10px 20px; border: 1px solid rgb(11, 100, 54);\"><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\">h&#7907;p &#273;&#7891;ng</p></td><td style=\"padding: 10px 20px; border: 1px solid rgb(11, 100, 54);\"><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\">&nbsp;</p></td><td style=\"padding: 10px 20px; border: 1px solid rgb(11, 100, 54);\"><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\">&nbsp;</p></td><td style=\"padding: 10px 20px; border: 1px solid rgb(11, 100, 54);\"><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\">278</p></td><td style=\"padding: 10px 20px; border: 1px solid rgb(11, 100, 54);\"><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\">18</p></td></tr><tr style=\"background-color: rgb(249, 249, 249);\"><td style=\"padding: 10px 20px; border: 1px solid rgb(11, 100, 54); width: 120px;\"><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\">2</p></td><td style=\"padding: 10px 20px; border: 1px solid rgb(11, 100, 54);\"><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\">KLGD b&igrave;nh qu&acirc;n/phi&ecirc;n</p></td><td style=\"padding: 10px 20px; border: 1px solid rgb(11, 100, 54);\"><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\">h&#7907;p &#273;&#7891;ng</p></td><td style=\"padding: 10px 20px; border: 1px solid rgb(11, 100, 54);\"><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\">&nbsp;</p></td><td style=\"padding: 10px 20px; border: 1px solid rgb(11, 100, 54);\"><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\">&nbsp;</p></td><td style=\"padding: 10px 20px; border: 1px solid rgb(11, 100, 54);\"><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\">2,17</p></td><td style=\"padding: 10px 20px; border: 1px solid rgb(11, 100, 54);\"><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\">&nbsp;</p></td></tr><tr><td style=\"padding: 10px 20px; border: 1px solid rgb(11, 100, 54); width: 120px;\"><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\">3</p></td><td style=\"padding: 10px 20px; border: 1px solid rgb(11, 100, 54);\"><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\">Kh&#7889;i l&#432;&#7907;ng OI (cu&#7889;i k&#7923;)</p></td><td style=\"padding: 10px 20px; border: 1px solid rgb(11, 100, 54);\"><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\">h&#7907;p &#273;&#7891;ng</p></td><td style=\"padding: 10px 20px; border: 1px solid rgb(11, 100, 54);\"><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\">&nbsp;</p></td><td style=\"padding: 10px 20px; border: 1px solid rgb(11, 100, 54);\"><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\">&nbsp;</p></td><td style=\"padding: 10px 20px; border: 1px solid rgb(11, 100, 54);\"><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\">0</p></td><td style=\"padding: 10px 20px; border: 1px solid rgb(11, 100, 54);\"><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px;\">0</p></td></tr></tbody></table><p style=\'margin-right: 0px; margin-bottom: 15px; margin-left: 0px; max-width: 100%; font-family: opensans, \"San Francisco\", \"Helvetica Neue\", Helvetica, Arial, sans-serif; font-size: 15px;\'><br></p><p style=\'text-align: justify; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; max-width: 100%; font-family: opensans, \"San Francisco\", \"Helvetica Neue\", Helvetica, Arial, sans-serif; font-size: 15px;\'>C&oacute; th&#7875; n&oacute;i, TTCK ph&aacute;i sinh d&ugrave; m&#7899;i ra &#273;&#7901;i nh&#432;ng c&oacute; s&#7921; t&#259;ng tr&#432;&#7903;ng m&#7841;nh m&#7869;, t&#7889;c &#273;&#7897; ph&aacute;t tri&#7875;n t&#432;&#417;ng &#273;&#7889;i t&#7889;t, v&#7899;i m&#7913;c t&#259;ng tr&#432;&#7903;ng n&#259;m sau cao h&#417;n n&#259;m tr&#432;&#7899;c. Trong v&ograve;ng 3 n&#259;m qua, t&iacute;nh &#273;&#7871;n h&#7871;t th&aacute;ng 7/2020, &#273;&atilde; c&oacute; t&#7893;ng s&#7889; h&#417;n 67,9 tri&#7879;u h&#7907;p &#273;&#7891;ng t&#432;&#417;ng lai &#273;&#432;&#7907;c giao d&#7883;ch. Ho&#7841;t &#273;&#7897;ng tr&ecirc;n th&#7883; tr&#432;&#7901;ng ph&aacute;i sinh &#273;&#7863;c bi&#7879;t s&ocirc;i &#273;&#7897;ng v&agrave;o nh&#7919;ng th&#7901;i &#273;i&#7875;m th&#7883; tr&#432;&#7901;ng c&#417; s&#7903; c&oacute; bi&#7871;n &#273;&#7897;ng m&#7841;nh.</p><p style=\'text-align: justify; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; max-width: 100%; font-family: opensans, \"San Francisco\", \"Helvetica Neue\", Helvetica, Arial, sans-serif; font-size: 15px;\'>Thanh kho&#7843;n tr&ecirc;n th&#7883; tr&#432;&#7901;ng li&ecirc;n t&#7909;c v&#432;&#7907;t qua c&aacute;c m&#7889;c &#273;&atilde; &#273;&#7841;t &#273;&#432;&#7907;c tr&#432;&#7899;c &#273;&oacute;. N&#7871;u nh&#432; n&#259;m 2019, kh&#7889;i l&#432;&#7907;ng giao d&#7883;ch b&igrave;nh qu&acirc;n tr&ecirc;n TTCK ph&aacute;i sinh &#273;&#7841;t 88.740 h&#7907;p &#273;&#7891;ng/phi&ecirc;n, t&#259;ng 12,6% so v&#7899;i n&#259;m tr&#432;&#7899;c &#273;&oacute;, th&igrave; ch&#7881; t&iacute;nh ri&ecirc;ng trong 7 th&aacute;ng &#273;&#7847;u n&#259;m 2020, kh&#7889;i l&#432;&#7907;ng giao d&#7883;ch b&igrave;nh qu&acirc;n &#273;&atilde; t&#259;ng x&#7845;p x&#7881; 95% so v&#7899;i n&#259;m 2019, &#273;&#7841;t 173.009 h&#7907;p &#273;&#7891;ng/phi&ecirc;n. M&#7913;c kh&#7889;i l&#432;&#7907;ng giao d&#7883;ch k&#7927; l&#7909;c n&#259;m 2019 l&agrave; 191.707 h&#7907;p &#273;&#7891;ng &#273;&atilde; li&ecirc;n t&#7909;c b&#7883; ph&aacute; v&#7905; v&agrave; k&#7927; l&#7909;c m&#7899;i nh&#7845;t &#273;&#432;&#7907;c thi&#7871;t l&#7853;p l&agrave; m&#7889;c 356.033 h&#7907;p &#273;&#7891;ng t&#7841;i phi&ecirc;n giao d&#7883;ch ng&agrave;y 29/7/2020.</p><p style=\'text-align: justify; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; max-width: 100%; font-family: opensans, \"San Francisco\", \"Helvetica Neue\", Helvetica, Arial, sans-serif; font-size: 15px;\'>Theo &#273;&aacute;nh gi&aacute; c&#7911;a gi&#7899;i chuy&ecirc;n gia, m&#432;&#769;c t&#259;ng tr&#432;&#417;&#777;ng ngoa&#803;n mu&#803;c v&ecirc;&#768; doanh s&ocirc;&#769; giao di&#803;ch cu&#777;a thi&#803; tr&#432;&#417;&#768;ng pha&#769;i sinh Vi&ecirc;&#803;t Nam nh&#432; tr&ecirc;n la&#768; con s&#7889; m&agrave; nhi&#7873;u th&#7883; tr&#432;&#7901;ng ph&aacute;t tri&#7875;n tr&#432;&#7899;c &#273;&oacute; ph&#7843;i m&#7845;t nhi&#7873;u n&#259;m m&#7899;i &#273;&#7841;t &#273;&#432;&#7907;c. Ch&#7859;ng h&#7841;n, S&#7903; Giao d&#7883;ch H&#7907;p &#273;&#7891;ng t&#432;&#417;ng lai &#272;&agrave;i Loan (TAIFEX) ph&#7843;i m&#7845;t 13 n&#259;m, S&#7903; Giao d&#7883;ch ch&#7913;ng kho&aacute;n ph&aacute;i sinh Th&aacute;i Lan (TFEX) ph&#7843;i m&#7845;t&nbsp; h&#417;n 7 n&#259;m m&#7899;i &#273;&#7841;t &#273;&#432;&#7907;c s&#7889; l&#432;&#7907;ng h&#7907;p &#273;&#7891;ng giao d&#7883;ch nh&#432; m&#7913;c HNX &#273;&#7841;t &#273;&#432;&#7907;c hi&#7879;n nay.</p><p class=\"aligncenter\" style=\'margin-right: 0px; margin-bottom: 15px; margin-left: 0px; max-width: 100%; font-family: opensans, \"San Francisco\", \"Helvetica Neue\", Helvetica, Arial, sans-serif; font-size: 15px; text-align: center !important;\'><span style=\"font-weight: bolder; color: rgb(0, 128, 0);\">H&igrave;nh 1: Bi&#7875;u &#273;&#7891; giao d&#7883;ch H&#7907;p &#273;&#7891;ng t&#432;&#417;ng lai ch&#7881; s&#7889; VN30</span></p><p class=\"aligncenter\" style=\'margin-right: 0px; margin-bottom: 15px; margin-left: 0px; max-width: 100%; font-family: opensans, \"San Francisco\", \"Helvetica Neue\", Helvetica, Arial, sans-serif; font-size: 15px; text-align: center !important;\'><img src=\"http://static.tapchitaichinh.vn/w800/images/upload/phunganhtuan/08102020/hnx1.jpg\" alt=\"Ngu&#7891;n: hnx.vn\"><span style=\"font-weight: bolder; color: rgb(0, 128, 0);\"><br></span></p><p class=\"aligncenter\" style=\'margin-right: 0px; margin-bottom: 15px; margin-left: 0px; max-width: 100%; font-family: opensans, \"San Francisco\", \"Helvetica Neue\", Helvetica, Arial, sans-serif; font-size: 15px; text-align: center !important;\'><span style=\"color: rgb(160, 160, 160); font-size: 13.5px; font-style: italic;\">Ngu&#7891;n: hnx.vn</span></p><p style=\'text-align: justify; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; max-width: 100%; font-family: opensans, \"San Francisco\", \"Helvetica Neue\", Helvetica, Arial, sans-serif; font-size: 15px;\'><span style=\"font-weight: bolder;\">T&#259;ng tr&#432;&#7903;ng b&#7845;t ch&#7845;p d&#7883;ch b&#7879;nh to&agrave;n c&#7847;u</span></p><p style=\'text-align: justify; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; max-width: 100%; font-family: opensans, \"San Francisco\", \"Helvetica Neue\", Helvetica, Arial, sans-serif; font-size: 15px;\'><span style=\"text-align: start;\">C&ugrave;ng v&#7899;i s&#7921; gia t&#259;ng nhanh ch&oacute;ng s&#7889; l&#432;&#7907;ng h&#7907;p &#273;&#7891;ng giao d&#7883;ch, kh&#7889;i l&#432;&#7907;ng h&#7907;p &#273;&#7891;ng m&#7903; (open interest - OI) c&#361;ng &#273;&atilde; t&#259;ng g&#7845;p 4,7 l&#7847;n t&#7915; 8.077 h&#7907;p &#273;&#7891;ng v&agrave;o th&#7901;i &#273;i&#7875;m cu&#7889;i n&#259;m 2017 l&ecirc;n 38.001 h&#7907;p &#273;&#7891;ng ng&agrave;y 31/7/2020. Trong c&aacute;c giai &#273;o&#7841;n th&#7883; tr&#432;&#7901;ng c&#7893; phi&#7871;u trong n&#432;&#7899;c v&agrave; qu&#7889;c t&#7871; ph&#7843;i h&#7913;ng ch&#7883;u nh&#7919;ng &#273;&#7907;t gi&#7843;m &#273;i&#7875;m m&#7841;nh, nh&#7845;t l&agrave; gi&#7919;a th&#7901;i &#273;i&#7875;m n&#7873;n kinh t&#7871; chung b&#7883; &#7843;nh h&#432;&#7903;ng n&#7863;ng n&#7873; b&#7903;i d&#7883;ch b&#7879;nh Covid 19 trong quy&#769; I/2020, hay khi gi&aacute; d&#7847;u th&ocirc; tr&ecirc;n th&#7871; gi&#7899;i gi&#7843;m xu&#7889;ng m&#7913;c k&#7881; l&#7909;c d&#432;&#7899;i 0 USD v&agrave;o th&aacute;ng 4/2020, OI to&agrave;n th&#7883; tr&#432;&#7901;ng ph&aacute;i sinh &#273;&atilde; c&oacute; s&#7921; gia t&#259;ng ma&#803;nh so v&#7899;i c&aacute;c th&#7901;i &#273;i&#7875;m tr&#432;&#7899;c &#273;&oacute;.</span></p><p style=\'text-align: justify; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; max-width: 100%; font-family: opensans, \"San Francisco\", \"Helvetica Neue\", Helvetica, Arial, sans-serif; font-size: 15px;\'><span style=\"text-align: start;\">S&#7889; li&#7879;u th&#7889;ng k&ecirc; cho th&#7845;y, trong giai &#273;o&#7841;n t&#7915; th&aacute;ng 3 &#273;&#7871;n th&aacute;ng 5/2020, khi th&#7883; tr&#432;&#7901;ng c&#7893; phi&#7871;u c&oacute; nhi&#7873;u bi&#7871;n &#273;&#7897;ng, th&#7883; tr&#432;&#7901;ng ch&#7913;ng kho&aacute;n ph&aacute;i sinh v&#7851;n c&oacute; &#273;&#432;&#7907;c s&#7921; t&#259;ng tr&#432;&#7903;ng &#273;&aacute;ng k&#7875;, kh&#7889;i l&#432;&#7907;ng giao d&#7883;ch s&#7843;n ph&#7849;m h&#7907;p &#273;&#7891;ng t&#432;&#417;ng lai tr&ecirc;n ch&#7881; s&#7889; VN30 t&#259;ng g&#7847;n 30% v&agrave; OI t&#259;ng 12% so v&#7899;i th&aacute;ng tr&#432;&#7899;c &#273;&oacute;. Trong th&aacute;ng 4/2020, kh&#7889;i l&#432;&#7907;ng giao d&#7883;ch ph&aacute;i sinh t&#259;ng 19% v&agrave; OI t&#259;ng 70% so v&#7899;i th&aacute;ng 3/2020. M&#7899;i &#273;&acirc;y nh&#7845;t, sau &#273;&#7907;t s&#7909;t gi&#7843;m m&#7841;nh c&#7911;a th&#7883; tr&#432;&#7901;ng c&#417; s&#7903; do t&aacute;c &#273;&#7897;ng c&#7911;a d&#7883;ch Covid 19 l&#7847;n 2 v&agrave;o cu&#7889;i th&aacute;ng 7, &#273;&#7847;u th&aacute;ng 8/2020, ng&agrave;y 05/8/2020, OI to&agrave;n th&#7883; tr&#432;&#7901;ng ph&aacute;i sinh &#273;&atilde; &#273;&#7841;t 38.817 h&#7907;p &#273;&#7891;ng, m&#7913;c cao nh&#7845;t t&#7915; tr&#432;&#7899;c &#273;&#7871;n nay.</span></p><p style=\'text-align: justify; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; max-width: 100%; font-family: opensans, \"San Francisco\", \"Helvetica Neue\", Helvetica, Arial, sans-serif; font-size: 15px;\'><span style=\"text-align: start;\">T&#7915; nh&#7919;ng s&#7889; li&#7879;u v&#7873; thanh kho&#7843;n &#273;&oacute;, c&oacute; th&#7875; th&#7845;y TTCK ph&aacute;i sinh Vi&#7879;t Nam &#273;&atilde; v&agrave; &#273;ang g&oacute;p ph&#7847;n &#7893;n &#273;&#7883;nh t&acirc;m l&yacute; nh&agrave; &#273;&#7847;u t&#432;, &#273;&#7863;c bi&#7879;t khi th&#7883; tr&#432;&#7901;ng c&#417; s&#7903; bi&#7871;n &#273;&#7897;ng m&#7841;nh, l&agrave; m&#7897;t c&ocirc;ng c&#7909; ph&ograve;ng ng&#7915;a r&#7911;i ro &#273;&#7889;i v&#7899;i danh m&#7909;c ch&#7913;ng kho&aacute;n c&#417; s&#7903; v&agrave; l&agrave; gi&#7843;i ph&aacute;p h&#7919;u hi&#7879;u &#273;&#7875; gi&#7919; ch&acirc;n d&ograve;ng v&#7889;n &#7903; l&#7841;i th&#7883; tr&#432;&#7901;ng nh&#7919;ng khi th&#7883; tr&#432;&#7901;ng c&#417; s&#7903; s&#7909;t gi&#7843;m m&#7841;nh.</span></p><p class=\"aligncenter\" style=\'margin-right: 0px; margin-bottom: 15px; margin-left: 0px; max-width: 100%; font-family: opensans, \"San Francisco\", \"Helvetica Neue\", Helvetica, Arial, sans-serif; font-size: 15px; text-align: center !important;\'><span style=\"color: rgb(0, 128, 0);\"><span style=\"font-weight: bolder;\">H&igrave;nh&nbsp;</span><span style=\"font-weight: bolder;\">2</span><span style=\"font-weight: bolder;\">:&nbsp;</span><span style=\"font-weight: bolder;\">Bi&#7875;u &#273;&#7891; t&#259;ng tr&#432;&#7903;ng kh&#7889;i l&#432;&#7907;ng&nbsp;</span><span style=\"font-weight: bolder;\">OI&nbsp;</span><span style=\"font-weight: bolder;\">c&#7911;a H&#272;TL tr&ecirc;n ch&#7881; s&#7889; VN30</span></span></p><p class=\"alignright\" style=\'margin-right: 0px; margin-bottom: 15px; margin-left: 0px; max-width: 100%; font-family: opensans, \"San Francisco\", \"Helvetica Neue\", Helvetica, Arial, sans-serif; font-size: 15px; text-align: right !important;\'><em>&nbsp;</em><em>(&#272;&#417;n v&#7883;: h&#7907;p &#273;&#7891;ng)</em></p><p style=\'text-align: justify; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; max-width: 100%; font-family: opensans, \"San Francisco\", \"Helvetica Neue\", Helvetica, Arial, sans-serif; font-size: 15px;\'><img src=\"http://static.tapchitaichinh.vn/w800/images/upload/phunganhtuan/08102020/hnx2.png\" alt=\"Ngu&#7891;n: hnx.vn\"></p><p style=\'text-align: justify; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; max-width: 100%; font-family: opensans, \"San Francisco\", \"Helvetica Neue\", Helvetica, Arial, sans-serif; font-size: 15px;\'><span style=\"color: rgb(160, 160, 160); font-size: 13.5px; font-style: italic; text-align: center;\">Ngu&#7891;n: hnx.vn</span></p><p style=\'margin-right: 0px; margin-bottom: 15px; margin-left: 0px; max-width: 100%; font-family: opensans, \"San Francisco\", \"Helvetica Neue\", Helvetica, Arial, sans-serif; font-size: 15px;\'>V&#7899;i s&#7843;n ph&#7849;m h&#7907;p &#273;&#7891;ng t&#432;&#417;ng lai TPCP, nh&agrave; &#273;&#7847;u t&#432; t&#7893; ch&#7913;c c&oacute; th&ecirc;m m&#7897;t l&#7921;a ch&#7885;n &#273;&#7875; &#273;&#7847;u t&#432; v&agrave; ph&ograve;ng ng&#7915;a r&#7911;i ro tr&ecirc;n th&#7883; tr&#432;&#7901;ng tr&aacute;i phi&#7871;u. V&#7899;i &#273;&#7863;c th&ugrave; l&agrave; s&#7843;n ph&#7849;m d&agrave;nh ri&ecirc;ng cho nh&agrave; &#273;&#7847;u t&#432; t&#7893; ch&#7913;c n&ecirc;n giao d&#7883;ch c&#7911;a s&#7843;n ph&#7849;m n&agrave;y ch&#432;a th&acirc;&#803;t s&#432;&#803; s&ocirc;i &#273;&#7897;ng. Sau 1 n&#259;m ra m&#7855;t, &#273;&atilde; c&oacute; 296 h&#7907;p &#273;&#7891;ng t&#432;&#417;ng lai TPCP &#273;&#432;&#7907;c giao d&#7883;ch.</p><p class=\"aligncenter\" style=\'margin-right: 0px; margin-bottom: 15px; margin-left: 0px; max-width: 100%; font-family: opensans, \"San Francisco\", \"Helvetica Neue\", Helvetica, Arial, sans-serif; font-size: 15px; text-align: center !important;\'><span style=\"color: rgb(0, 128, 0);\"><span style=\"font-weight: bolder;\">H&igrave;nh 3: Bi&#7875;u &#273;&#7891; giao d&#7883;ch H&#7907;p &#273;&#7891;ng t&#432;&#417;ng lai TPCP</span></span></p><p style=\'text-align: justify; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; max-width: 100%; font-family: opensans, \"San Francisco\", \"Helvetica Neue\", Helvetica, Arial, sans-serif; font-size: 15px;\'><img src=\"http://static.tapchitaichinh.vn/w800/images/upload/phunganhtuan/08102020/hnx3.png\" alt=\"Ngu&#7891;n: hnx.vn\"></p><p style=\'text-align: justify; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; max-width: 100%; font-family: opensans, \"San Francisco\", \"Helvetica Neue\", Helvetica, Arial, sans-serif; font-size: 15px;\'><span style=\"color: rgb(160, 160, 160); font-size: 13.5px; font-style: italic; text-align: center;\">Ngu&#7891;n: hnx.vn</span></p><p style=\'text-align: justify; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; max-width: 100%; font-family: opensans, \"San Francisco\", \"Helvetica Neue\", Helvetica, Arial, sans-serif; font-size: 15px;\'></p><div style=\"text-align: justify;\"><span style=\"text-align: start;\">S&#7889; l&#432;&#7907;ng t&agrave;i kho&#7843;n giao d&#7883;ch ph&aacute;i sinh v&#7851;n li&ecirc;n t&#7909;c gia t&#259;ng h&agrave;ng th&aacute;ng. &#272;&#7871;n cu&#7889;i th&aacute;ng 7/2020, &#273;&atilde; c&oacute; 132.274 t&agrave;i kho&#7843;n giao d&#7883;ch ph&aacute;i sinh &#273;&#432;&#7907;c m&#7903;, t&#259;ng g&#7845;p 1,5 l&#7847;n so v&#7899;i cu&#7889;i n&#259;m 2019. H&#7879; th&#7889;ng th&agrave;nh vi&ecirc;n giao d&#7883;ch v&agrave; b&ugrave; tr&#7915; c&#7911;a TTCK ph&aacute;i sinh &#273;&#7871;n nay &#273;&atilde; c&oacute; 19 CTCK, t&#259;ng 5 th&agrave;nh vi&ecirc;n so v&#7899;i n&#259;m 2019. Vi&#7879;c gia t&#259;ng c&aacute;c th&agrave;nh vi&ecirc;n c&#361;ng &#273;&#432;&#7907;c xem l&agrave; m&#7897;t y&#7871;u t&#7889; t&iacute;ch c&#7921;c gi&uacute;p gia t&#259;ng t&iacute;nh c&#7841;nh tranh, th&uacute;c &#273;&#7849;y vi&#7879;c ho&agrave;n thi&#7879;n ch&#7845;t l&#432;&#7907;ng d&#7883;ch v&#7909; cung c&#7845;p tr&ecirc;n th&#7883; tr&#432;&#7901;ng n&agrave;y.&nbsp;</span></div><div style=\"text-align: justify;\"><span style=\"text-align: start;\"><br></span></div><div style=\"text-align: justify;\"><p class=\"aligncenter\" style=\'margin-right: 0px; margin-bottom: 15px; margin-left: 0px; max-width: 100%; font-family: opensans, \"San Francisco\", \"Helvetica Neue\", Helvetica, Arial, sans-serif; font-size: 15px; text-align: center !important;\'><span style=\"color: rgb(0, 128, 0);\"><span style=\"font-weight: bolder;\">H&igrave;nh 4: Bi&#7875;u &#273;&#7891; t&#259;ng tr&#432;&#7903;ng s&#7889; l&#432;&#7907;ng t&agrave;i kho&#7843;n c&#7911;a nh&agrave; &#273;&#7847;u t&#432; tr&ecirc;n TTCK ph&aacute;i sinh</span></span></p><p class=\"alignright\" style=\'margin-right: 0px; margin-bottom: 15px; margin-left: 0px; max-width: 100%; font-family: opensans, \"San Francisco\", \"Helvetica Neue\", Helvetica, Arial, sans-serif; font-size: 15px; text-align: right !important;\'><em>(&#272;&#417;n v&#7883;: t&agrave;i kho&#7843;n)</em></p></div><img src=\"http://static.tapchitaichinh.vn/w800/images/upload/phunganhtuan/08102020/hnx4.jpg\" alt=\"Ngu&#7891;n: hnx.vn\"></div><div><p style=\'margin-right: 0px; margin-bottom: 15px; margin-left: 0px; max-width: 100%; font-family: opensans, \"San Francisco\", \"Helvetica Neue\", Helvetica, Arial, sans-serif; font-size: 15px;\'><span style=\"color: rgb(160, 160, 160); font-size: 13.5px; font-style: italic; text-align: center;\">Ngu&#7891;n: hnx.vn</span><span style=\"font-weight: bolder;\"><br></span></p><p style=\'text-align: justify; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; max-width: 100%; font-family: opensans, \"San Francisco\", \"Helvetica Neue\", Helvetica, Arial, sans-serif; font-size: 15px;\'><span style=\"font-weight: bolder;\">Ti&#7871;p t&#7909;c m&#7903; r&#7897;ng quy m&ocirc; c&#7911;a th&#7883; tr&#432;&#7901;ng ph&aacute;i sinh</span></p><p style=\'text-align: justify; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; max-width: 100%; font-family: opensans, \"San Francisco\", \"Helvetica Neue\", Helvetica, Arial, sans-serif; font-size: 15px;\'>Trong th&#7901;i gian t&#7899;i, HNX ti&#7871;p t&#7909;c &#273;&#432;&#7907;c c&aacute;c c&#417; quan qu&#7843;n l&yacute; &#273;&#7883;nh h&#432;&#7899;ng m&#7903; r&#7897;ng quy m&ocirc; c&#7911;a th&#7883; tr&#432;&#7901;ng ph&aacute;i sinh &#273;&#7911; l&#7899;n &#273;&#7875; thu h&uacute;t th&ecirc;m c&aacute;c nh&agrave; &#273;&#7847;u t&#432; t&#7893; ch&#7913;c trong v&agrave; ngo&agrave;i n&#432;&#7899;c.</p><p style=\'text-align: justify; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; max-width: 100%; font-family: opensans, \"San Francisco\", \"Helvetica Neue\", Helvetica, Arial, sans-serif; font-size: 15px;\'>Theo &#273;&oacute;, tr&#432;&#7899;c m&#7855;t, HNX s&#7869; nghi&ecirc;n c&#7913;u ph&aacute;t tri&#7875;n &#273;a d&#7841;ng h&oacute;a c&aacute;c s&#7843;n ph&#7849;m, &#273;&aacute;p &#7913;ng nhu c&#7847;u c&#7911;a ng&#432;&#7901;i &#273;&#7847;u t&#432; v&agrave; theo &#273;&uacute;ng ch&#7911; tr&#432;&#417;ng, &#273;&#7883;nh h&#432;&#7899;ng c&#7911;a Ch&iacute;nh ph&#7911;. B&ecirc;n c&#7841;nh c&aacute;c s&#7843;n ph&#7849;m ph&aacute;i sinh d&#7921;a tr&ecirc;n ch&#7881; s&#7889;, HNX c&#361;ng c&oacute; k&#7871; ho&#7841;ch nghi&ecirc;n c&#7913;u ph&aacute;t tri&#7875;n c&aacute;c s&#7843;n ph&#7849;m h&#7907;p &#273;&#7891;ng t&#432;&#417;ng lai d&#7921;a tr&ecirc;n c&aacute;c c&#7893; phi&#7871;u &#273;&#417;n l&#7867; (SSF) v&agrave; h&#7907;p &#273;&#7891;ng quy&#7873;n ch&#7885;n tr&ecirc;n c&#7893; phi&#7871;u &#273;&#417;n l&#7867; (SSO).</p><p style=\'text-align: justify; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; max-width: 100%; font-family: opensans, \"San Francisco\", \"Helvetica Neue\", Helvetica, Arial, sans-serif; font-size: 15px;\'>&#272;&#7891;ng th&#7901;i, HNX &#273;ang ti&#7871;p t&#7909;c ph&#7889;i h&#7907;p v&#7899;i c&aacute;c c&#417; quan qu&#7843;n l&yacute; v&agrave; &#273;&#417;n v&#7883; t&#7893; ch&#7913;c th&#7883; tr&#432;&#7901;ng c&oacute; li&ecirc;n quan &#273;&#7875; x&acirc;y d&#7921;ng khung ph&aacute;p l&yacute; chu&#7849;n b&#7883; cho vi&#7879;c ra m&#7855;t c&aacute;c s&#7843;n ph&#7849;m m&#7899;i, c&oacute; th&#7875; &aacute;p d&#7909;ng t&#7915; sau n&#259;m 2020. HNX c&#361;ng kh&ocirc;ng ng&#7915;ng n&#7895; l&#7921;c t&igrave;m ki&#7871;m c&aacute;c gi&#7843;i ph&aacute;p th&uacute;c &#273;&#7849;y &#273;a d&#7841;ng h&oacute;a c&#417; s&#7903; nh&agrave; &#273;&#7847;u t&#432;, &#273;&#7863;c bi&#7879;t l&agrave; ph&aacute;t tri&#7875;n h&#7879; th&#7889;ng nh&agrave; &#273;&#7847;u t&#432; t&#7893; ch&#7913;c tr&ecirc;n th&#7883; tr&#432;&#7901;ng ph&aacute;i sinh.</p><p style=\'text-align: justify; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; max-width: 100%; font-family: opensans, \"San Francisco\", \"Helvetica Neue\", Helvetica, Arial, sans-serif; font-size: 15px;\'>Song song v&#7899;i &#273;&oacute;, HNX ti&#7871;p t&#7909;c ph&#7889;i h&#7907;p c&aacute;c c&#417; quan qu&#7843;n l&yacute; &#273;&#7875; t&#259;ng c&#432;&#7901;ng c&ocirc;ng t&aacute;c gi&aacute;m s&aacute;t tr&ecirc;n th&#7883; tr&#432;&#7901;ng ph&aacute;i sinh c&#361;ng nh&#432; gi&aacute;m s&aacute;t li&ecirc;n th&#7883; tr&#432;&#7901;ng, &#273;&#7843;m b&#7843;o th&#7883; tr&#432;&#7901;ng v&#7853;n h&agrave;nh th&ocirc;ng su&#7889;t, hi&#7879;u qu&#7843;, v&agrave; an to&agrave;n cho nh&agrave; &#273;&#7847;u t&#432;.</p><p></p></div><div><div class=\"parent-adv advInpageDetail clearfix\" style=\'max-width: 100%; overflow: hidden; margin-bottom: 15px; font-family: opensans, \"San Francisco\", \"Helvetica Neue\", Helvetica, Arial, sans-serif; font-size: 15px; margin-top: 15px !important;\'><div id=\"zone-jsb8x8wv\" style=\"margin-bottom: 0px !important;\"><div id=\"share-jsbigw69\" style=\"margin-bottom: 0px !important;\"><div id=\"placement-jsbigw75\" revenue=\"pb\" style=\"float: left; margin-bottom: 0px !important;\"><div id=\"banner-jsb8x8wv-jsbigw7f\" style=\"min-height: 0px; min-width: 0px; margin-bottom: 0px !important;\"><div id=\"slot-1-jsb8x8wv-jsbigw7f\" style=\"margin-bottom: 0px !important;\"><div id=\"adnzone_508966\" data-admssprqid=\"2b7c3b7e-cead-4072-9867-43e949a33ec1-5f3109c9\" data-width=\"300\" data-height=\"250\" data-ssp=\"sspbid_2010649\" style=\"margin: 0px auto; clear: both;\"></div></div></div></div></div></div></div></div></body></html>\n', 'Việc phát triển thị trường phái sinh là xu thế tất yếu không chỉ với thị trường chứng khoán Việt Nam mà đó là xu thế chung của thế giới. Tại Việt Nam, sau 3 năm chính thức đi vào hoạt động, thị trường chứng khoán phái sinh tiếp tục gây ấn tượng với những con số tăng trưởng mà thị trường phái sinh các quốc gia khác phải mơ ước.', 'upload/images/1597050356_chứng-khoán-phái-sinh[1].jpg', 1, 1, '2020-08-10 15:50:40', '2020-08-10 16:05:56');

-- --------------------------------------------------------

--
-- Table structure for table `post_type`
--

CREATE TABLE `post_type` (
  `id` int(11) NOT NULL,
  `title` varchar(110) NOT NULL,
  `slug` varchar(110) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `post_type`
--

INSERT INTO `post_type` (`id`, `title`, `slug`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Kinh Tế', 'kinh-te', 'upload/images/1577680087_1577602758_1577599255_15658564000.png', 1, '2019-12-30 04:26:25', '2020-07-30 14:49:01'),
(2, 'Thị Trường', 'thi-truong', 'upload/images/1577681179_1577374232_2-2-happy-girl-png-pic.png', 0, '2019-12-30 04:46:19', '2020-07-30 15:29:36');

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
(2, 'nguyễn dương', 'Việt Nam', 'hà nam', '0886008525', 'resetdola@gmail.com', '80208', '123456', '2020-10-27 16:23:41', '2020-10-27 16:23:41'),
(3, 'huỳnh chí hảo', 'Việt Nam', 'cà mau', '037380417', 'huynhhao1804@gmail.com', '80319', '123456', '2020-11-02 10:39:36', '2020-11-02 10:39:36'),
(4, 'Trang', 'Việt Nam', 'Hồ Chí Minh', '0372420892', 'thutrang.d26@gmail.com', '80005', '123456', '2020-11-02 14:09:14', '2020-11-02 14:09:14');

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `id` int(10) NOT NULL,
  `title` varchar(110) NOT NULL,
  `slug` varchar(110) NOT NULL,
  `description` text,
  `price` int(10) DEFAULT NULL,
  `duration` varchar(110) DEFAULT NULL,
  `service_type_id` int(10) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
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
  `status` int(1) NOT NULL DEFAULT '1',
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
  `description` text,
  `image` varchar(255) DEFAULT NULL,
  `link` varchar(255) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `slides`
--

INSERT INTO `slides` (`id`, `title`, `description`, `image`, `link`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Title', 'This is a description', 'upload/images/1596380361_stock-market-electronic-chart-increase-uhd-4k-wallpaper_qnba.jpg', '#', 0, '2019-12-10 17:00:00', '2020-08-05 15:13:47'),
(2, 'Title', 'This is a description', 'upload/images/1595872036_TLC_Web-Banner-03.jpg', '#', 0, '2019-12-09 17:00:00', '2020-08-05 11:10:16'),
(3, 'test 3', 'sdaf', 'upload/images/1580798763_slider2.png', 'ewewqe', 0, '2019-12-09 17:00:00', '2020-02-04 07:16:53'),
(4, 'sáđáa', 'đâssad', 'upload/images/1577374928_1577372044_xuu.jpg', 'ádâsd', 0, '2019-12-26 09:14:09', '2020-02-04 06:46:07'),
(5, 'Title', 'Mô Tả', 'upload/images/1596380472_2412_hong_kong.jpg', '#', 0, '2020-07-27 17:47:54', '2020-08-05 15:13:42'),
(6, 'Title', 'Mô Tả', 'upload/images/1595872095_TLC_Web-Banner-05.jpg', '#', 0, '2020-07-27 17:48:15', '2020-08-05 11:10:19'),
(7, '1', NULL, 'upload/images/1596600326_shutterstock_495349657.jpg', '#', 1, '2020-08-05 11:03:52', '2020-08-05 11:05:26'),
(8, '2', NULL, 'upload/images/1596621672_1920x980-chart-with-volatility.jpg', '#', 1, '2020-08-05 17:01:12', '2020-08-05 17:01:12');

-- --------------------------------------------------------

--
-- Table structure for table `slide_title`
--

CREATE TABLE `slide_title` (
  `id` int(10) NOT NULL,
  `title` varchar(110) NOT NULL,
  `description` text,
  `status` int(1) NOT NULL DEFAULT '1',
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

-- --------------------------------------------------------

--
-- Table structure for table `step`
--

CREATE TABLE `step` (
  `id` int(11) NOT NULL,
  `image` text COLLATE utf8_unicode_ci,
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
(1, 'upload/images/1604046878_images-content.png', 'MỞ TÀI KHOẢN', 'NHẬN ƯU ĐÃI', 'GIAO DỊCH NGAY', 'Nhanh chóng và dễ dàng', 'Nhiều chương trình hấp dẫn', 'Làm chủ giao dịch', '2020-10-30 15:34:38', NULL);

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
  `description` text,
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
  `user_status` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `fullname`, `birthday`, `start_date`, `city_address`, `state_address`, `image`, `phone`, `user_position_id`, `user_department_id`, `created_at`, `updated_at`, `user_status`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, '$2y$10$dX5.6dJWu8E5aVxXhEHB9u8qWPXcR/b5ZU88U.da30wgUIyT/Wck.', 'o33AOkvbFHr1mFMz45yGjYAaO4J40ZY8r7N3TaAVmAySTK4VH54DVp4V1NoY', 'Superadmin', '2019-05-23', '2019-05-31', '234234', '3123', '2gIi-photo.jpg', 0, 2, 2, NULL, '2020-02-04 07:31:10', 1),
(3, '123', '123@gmail.com', NULL, '$2y$10$pyoGo1g7uy7rlbd/YpTqfeRYSnnQjRTzJBuLCotaqqQ5s/wCBsCCK', NULL, 'hieu', '2019-05-24', '2019-05-24', 'Select City', 'hieu', 'BvIX-anh-bia-dep-ve-phong-canh-thien-nhien-30.jpg', 1626832288, 1, 0, '2019-05-31 02:34:02', '2019-06-06 01:55:19', 0),
(4, 'dsffsdf', 'test@test.com', NULL, '$2y$10$N9j1AP3G27Ek6nBVkkFsu.EMNExYfFSffI8KQ6p865idVuCHdtzPC', NULL, 'test', '2019-06-20', '2019-06-20', 'Select City', 'testt aa', 'null', 12121, 3, 1, '2019-06-03 21:47:29', '2019-06-04 00:38:28', 1),
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
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `financing`
--
ALTER TABLE `financing`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `home_services`
--
ALTER TABLE `home_services`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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

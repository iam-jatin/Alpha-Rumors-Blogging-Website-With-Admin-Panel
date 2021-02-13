-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 13, 2021 at 07:22 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `alpharumors`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `id` int(11) NOT NULL,
  `AdminUserName` varchar(255) NOT NULL,
  `AdminPassword` varchar(255) NOT NULL,
  `AdminEmailId` varchar(255) NOT NULL,
  `Is_Active` int(11) NOT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`id`, `AdminUserName`, `AdminPassword`, `AdminEmailId`, `Is_Active`, `CreationDate`, `UpdationDate`) VALUES
(1, 'Kai', '$2y$10$CFB.QveaZRu0O3PGcP6MgOL9pUSkOxmGQKXkvmoPlMHTB4UxVx8bG', 'kai@example.com', 1, '2021-02-10 18:00:34', '2021-02-12 07:24:40');

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `id` int(11) NOT NULL,
  `CategoryName` varchar(200) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL,
  `Is_Active` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`id`, `CategoryName`, `Description`, `PostingDate`, `UpdationDate`, `Is_Active`) VALUES
(3, 'Sports', 'Related to Sports News', '2018-06-06 10:35:09', '2018-06-14 11:11:55', 1),
(5, 'Entertainment', 'Related to Entertainment News', '2018-06-14 05:32:58', '2018-06-14 05:33:41', 1),
(6, 'Technology', 'Related to Technology News', '2018-06-22 15:46:09', '0000-00-00 00:00:00', 1),
(7, 'Business', 'Business', '2018-06-22 15:46:22', '0000-00-00 00:00:00', 1),
(8, 'Science', 'Related to Science News', '2021-02-13 04:15:25', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblcomments`
--

CREATE TABLE `tblcomments` (
  `id` int(11) NOT NULL,
  `postId` char(11) DEFAULT NULL,
  `name` varchar(120) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `comment` mediumtext DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcomments`
--

INSERT INTO `tblcomments` (`id`, `postId`, `name`, `email`, `comment`, `postingDate`, `status`) VALUES
(1, '12', 'Anuj', 'anuj@gmail.com', 'Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis.', '2018-11-21 11:06:22', 0),
(2, '12', 'Test user', 'test@gmail.com', 'This is sample text for testing.', '2018-11-21 11:25:56', 1),
(3, '7', 'ABC', 'abc@test.com', 'This is sample text for testing.', '2018-11-21 11:27:06', 1),
(4, '7', '', '', '', '2021-02-13 03:56:39', 0),
(5, '15', 'Kai', 'kai@example.com', 'This article is taken from XDA Developers. This is for demo purposes so don\'t take it seriously.', '2021-02-13 04:00:40', 1),
(6, '16', 'Kai', 'kai@example.com', 'This article is taken from astromy.com. This is for demo purposes so don\'t take it seriously.', '2021-02-13 04:00:40', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext DEFAULT NULL,
  `Description` longtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `PageTitle`, `Description`, `PostingDate`, `UpdationDate`) VALUES
(1, 'aboutus', 'About Alpha Rumors', '<div style=\"text-align: center;\"><br></div><div style=\"text-align: center;\"><span style=\"font-size: 26px; color: rgb(123, 136, 152); font-family: &quot;Mercury SSm A&quot;, &quot;Mercury SSm B&quot;, Georgia, Times, &quot;Times New Roman&quot;, &quot;Microsoft YaHei New&quot;, &quot;Microsoft Yahei&quot;, å¾®è½¯é›…é»‘, å®‹ä½“, SimSun, STXihei, åŽæ–‡ç»†é»‘, serif;\"><br></span></div><div style=\"text-align: center;\"><span style=\"font-size: 26px; color: rgb(123, 136, 152); font-family: &quot;Mercury SSm A&quot;, &quot;Mercury SSm B&quot;, Georgia, Times, &quot;Times New Roman&quot;, &quot;Microsoft YaHei New&quot;, &quot;Microsoft Yahei&quot;, å¾®è½¯é›…é»‘, å®‹ä½“, SimSun, STXihei, åŽæ–‡ç»†é»‘, serif;\"><br></span></div><div style=\"text-align: center;\"><span style=\"font-size: 26px; color: rgb(123, 136, 152); font-family: &quot;Mercury SSm A&quot;, &quot;Mercury SSm B&quot;, Georgia, Times, &quot;Times New Roman&quot;, &quot;Microsoft YaHei New&quot;, &quot;Microsoft Yahei&quot;, å¾®è½¯é›…é»‘, å®‹ä½“, SimSun, STXihei, åŽæ–‡ç»†é»‘, serif;\"><br></span></div><div style=\"text-align: center;\"><span style=\"font-size: 26px; color: rgb(123, 136, 152); font-family: &quot;Mercury SSm A&quot;, &quot;Mercury SSm B&quot;, Georgia, Times, &quot;Times New Roman&quot;, &quot;Microsoft YaHei New&quot;, &quot;Microsoft Yahei&quot;, å¾®è½¯é›…é»‘, å®‹ä½“, SimSun, STXihei, åŽæ–‡ç»†é»‘, serif;\">Alpha Rumors</span></div><div style=\"text-align: center;\"><span style=\"font-size: 26px; color: rgb(123, 136, 152); font-family: &quot;Mercury SSm A&quot;, &quot;Mercury SSm B&quot;, Georgia, Times, &quot;Times New Roman&quot;, &quot;Microsoft YaHei New&quot;, &quot;Microsoft Yahei&quot;, å¾®è½¯é›…é»‘, å®‹ä½“, SimSun, STXihei, åŽæ–‡ç»†é»‘, serif;\"><br></span></div><div style=\"text-align: center;\"><span style=\"font-size: 26px; color: rgb(123, 136, 152); font-family: &quot;Mercury SSm A&quot;, &quot;Mercury SSm B&quot;, Georgia, Times, &quot;Times New Roman&quot;, &quot;Microsoft YaHei New&quot;, &quot;Microsoft Yahei&quot;, å¾®è½¯é›…é»‘, å®‹ä½“, SimSun, STXihei, åŽæ–‡ç»†é»‘, serif;\"><br></span></div><div style=\"text-align: center;\"><span style=\"font-size: 26px; color: rgb(123, 136, 152); font-family: &quot;Mercury SSm A&quot;, &quot;Mercury SSm B&quot;, Georgia, Times, &quot;Times New Roman&quot;, &quot;Microsoft YaHei New&quot;, &quot;Microsoft Yahei&quot;, å¾®è½¯é›…é»‘, å®‹ä½“, SimSun, STXihei, åŽæ–‡ç»†é»‘, serif;\"><br></span></div><div style=\"text-align: center;\"><span style=\"font-size: 26px; color: rgb(123, 136, 152); font-family: &quot;Mercury SSm A&quot;, &quot;Mercury SSm B&quot;, Georgia, Times, &quot;Times New Roman&quot;, &quot;Microsoft YaHei New&quot;, &quot;Microsoft Yahei&quot;, å¾®è½¯é›…é»‘, å®‹ä½“, SimSun, STXihei, åŽæ–‡ç»†é»‘, serif;\"><br></span></div><div style=\"text-align: center;\"><span style=\"font-size: 26px; color: rgb(123, 136, 152); font-family: &quot;Mercury SSm A&quot;, &quot;Mercury SSm B&quot;, Georgia, Times, &quot;Times New Roman&quot;, &quot;Microsoft YaHei New&quot;, &quot;Microsoft Yahei&quot;, å¾®è½¯é›…é»‘, å®‹ä½“, SimSun, STXihei, åŽæ–‡ç»†é»‘, serif;\"><br></span></div>', '2018-06-30 18:01:03', '2021-02-13 06:02:21'),
(2, 'contactus', 'Contact Details', '<p><br></p><p style=\"text-align: center; \"><b><br></b></p><p style=\"text-align: center; \"><b><br></b></p><p style=\"text-align: center; \"><b><br></b></p><p style=\"text-align: center; \"><b><br></b></p><p style=\"text-align: center; \"><b>Address :&nbsp; </b>Uttar Pradesh, India</p><p style=\"text-align: center; \"><b>Phone Number : </b>+91 -01234567890</p><p style=\"text-align: center; \"><b>Email -Id : </b>kai@example.com</p><p style=\"text-align: center; \"><br></p><p style=\"text-align: center; \"><br></p><p style=\"text-align: center; \"><br></p><p style=\"text-align: center; \"><br></p><p style=\"text-align: center; \"><br></p>', '2018-06-30 18:01:36', '2021-02-13 06:03:50');

-- --------------------------------------------------------

--
-- Table structure for table `tblposts`
--

CREATE TABLE `tblposts` (
  `id` int(11) NOT NULL,
  `PostTitle` longtext DEFAULT NULL,
  `CategoryId` int(11) DEFAULT NULL,
  `SubCategoryId` int(11) DEFAULT NULL,
  `PostDetails` longtext CHARACTER SET utf8 DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `Is_Active` int(1) DEFAULT NULL,
  `PostUrl` mediumtext DEFAULT NULL,
  `PostImage` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblposts`
--

INSERT INTO `tblposts` (`id`, `PostTitle`, `CategoryId`, `SubCategoryId`, `PostDetails`, `PostingDate`, `UpdationDate`, `Is_Active`, `PostUrl`, `PostImage`) VALUES
(15, 'Xiaomi Redmi K40, Redmi K40 Pro, new Mi 10 looks revealed on TENAA', 6, 15, '<p class=\"dropcap\" style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Titillium Web&quot;, sans-serif; font-size: 17px; background-color: rgb(253, 253, 253);\">Since last month, we know that Xiaomi is gearing up to launch the new Redmi K40 series in China. The company itself&nbsp;<font color=\"#de7300\">confirmed the launch date</font>. There have been multiple reports and leak surrounding the K40 series, with reports suggesting there will at least be two devices: the Redmi K40 and Redmi K40 Pro. Now ahead of the official launch, three Xiaomi smartphones, including the Redmi K40, K40 Pro, and an unreleased Mi device, have been spotted on TENAA, giving us our best look yet at these upcoming smartphones.</p><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Titillium Web&quot;, sans-serif; font-size: 17px; background-color: rgb(253, 253, 253);\">Starting with the device with the model number&nbsp;<font color=\"#de7300\">M2012K11AC</font>, this is likely to be the Redmi K40 and hence&nbsp;will succeed the last year’s&nbsp;<font color=\"#de7300\">Redmi K30</font>&nbsp;4G. Although the TENAA listing didn’t reveal any specifications, leaks so far hint at the device packing a triple camera setup with a 48MP primary camera, the new<font color=\"#de7300\">&nbsp;</font><font color=\"#de7300\">Snapdragon 870 chipset</font>, a 4,520 mAh battery, and an AMOLED display.</p><div id=\"gallery-1\" class=\"gallery galleryid-394283 gallery-columns-5 gallery-size-large\" style=\"margin: auto; color: rgb(102, 102, 102); font-family: &quot;Titillium Web&quot;, sans-serif; font-size: 17px; background-color: rgb(253, 253, 253);\"><dl class=\"gallery-item\" style=\"margin-bottom: 10px; float: left; margin-top: 10px; text-align: center; width: 161.156px;\"><dt class=\"gallery-icon portrait\"><a href=\"https://www.xda-developers.com/files/2021/02/Redmi-K40-M2012K11AC-Render-5.jpg\" style=\"color: rgb(222, 115, 0);\"><img width=\"480\" height=\"640\" src=\"https://www.xda-developers.com/files/2021/02/Redmi-K40-M2012K11AC-Render-5.jpg\" data-src=\"https://www.xda-developers.com/files/2021/02/Redmi-K40-M2012K11AC-Render-5.jpg\" class=\"attachment-large size-large ls-is-cached lazyloaded\" alt=\"\" data-srcset=\"https://www.xda-developers.com/files/2021/02/Redmi-K40-M2012K11AC-Render-5.jpg 480w, https://www.xda-developers.com/files/2021/02/Redmi-K40-M2012K11AC-Render-5-225x300.jpg 225w\" data-sizes=\"(max-width: 480px) 100vw, 480px\" sizes=\"(max-width: 480px) 100vw, 480px\" srcset=\"https://www.xda-developers.com/files/2021/02/Redmi-K40-M2012K11AC-Render-5.jpg 480w, https://www.xda-developers.com/files/2021/02/Redmi-K40-M2012K11AC-Render-5-225x300.jpg 225w\" style=\"outline-style: initial; outline-width: 0px; border-width: 2px; border-style: solid; border-color: rgb(207, 207, 207); max-width: 100%; height: auto !important;\"></a></dt></dl><dl class=\"gallery-item\" style=\"margin-bottom: 10px; float: left; margin-top: 10px; text-align: center; width: 161.156px;\"><dt class=\"gallery-icon portrait\"><a href=\"https://www.xda-developers.com/files/2021/02/Redmi-K40-M2012K11AC-Render-1.jpg\" style=\"color: rgb(222, 115, 0);\"><img width=\"480\" height=\"640\" src=\"https://www.xda-developers.com/files/2021/02/Redmi-K40-M2012K11AC-Render-1.jpg\" data-src=\"https://www.xda-developers.com/files/2021/02/Redmi-K40-M2012K11AC-Render-1.jpg\" class=\"attachment-large size-large lazyloaded\" alt=\"\" data-srcset=\"https://www.xda-developers.com/files/2021/02/Redmi-K40-M2012K11AC-Render-1.jpg 480w, https://www.xda-developers.com/files/2021/02/Redmi-K40-M2012K11AC-Render-1-225x300.jpg 225w\" data-sizes=\"(max-width: 480px) 100vw, 480px\" sizes=\"(max-width: 480px) 100vw, 480px\" srcset=\"https://www.xda-developers.com/files/2021/02/Redmi-K40-M2012K11AC-Render-1.jpg 480w, https://www.xda-developers.com/files/2021/02/Redmi-K40-M2012K11AC-Render-1-225x300.jpg 225w\" style=\"outline-style: initial; outline-width: 0px; border-width: 2px; border-style: solid; border-color: rgb(207, 207, 207); max-width: 100%; height: auto !important;\"></a></dt></dl><dl class=\"gallery-item\" style=\"margin-bottom: 10px; float: left; margin-top: 10px; text-align: center; width: 161.156px;\"><dt class=\"gallery-icon portrait\"><a href=\"https://www.xda-developers.com/files/2021/02/Redmi-K40-M2012K11AC-Render-4.jpg\" style=\"color: rgb(222, 115, 0);\"><img width=\"480\" height=\"640\" src=\"https://www.xda-developers.com/files/2021/02/Redmi-K40-M2012K11AC-Render-4.jpg\" data-src=\"https://www.xda-developers.com/files/2021/02/Redmi-K40-M2012K11AC-Render-4.jpg\" class=\"attachment-large size-large lazyloaded\" alt=\"\" data-srcset=\"https://www.xda-developers.com/files/2021/02/Redmi-K40-M2012K11AC-Render-4.jpg 480w, https://www.xda-developers.com/files/2021/02/Redmi-K40-M2012K11AC-Render-4-225x300.jpg 225w\" data-sizes=\"(max-width: 480px) 100vw, 480px\" sizes=\"(max-width: 480px) 100vw, 480px\" srcset=\"https://www.xda-developers.com/files/2021/02/Redmi-K40-M2012K11AC-Render-4.jpg 480w, https://www.xda-developers.com/files/2021/02/Redmi-K40-M2012K11AC-Render-4-225x300.jpg 225w\" style=\"outline-style: initial; outline-width: 0px; border-width: 2px; border-style: solid; border-color: rgb(207, 207, 207); max-width: 100%; height: auto !important;\"></a></dt></dl><dl class=\"gallery-item\" style=\"margin-bottom: 10px; float: left; margin-top: 10px; text-align: center; width: 161.156px;\"><dt class=\"gallery-icon portrait\"><a href=\"https://www.xda-developers.com/files/2021/02/Redmi-K40-M2012K11AC-Render-3.jpg\" style=\"color: rgb(222, 115, 0);\"><img width=\"480\" height=\"640\" src=\"https://www.xda-developers.com/files/2021/02/Redmi-K40-M2012K11AC-Render-3.jpg\" data-src=\"https://www.xda-developers.com/files/2021/02/Redmi-K40-M2012K11AC-Render-3.jpg\" class=\"attachment-large size-large lazyloaded\" alt=\"\" data-srcset=\"https://www.xda-developers.com/files/2021/02/Redmi-K40-M2012K11AC-Render-3.jpg 480w, https://www.xda-developers.com/files/2021/02/Redmi-K40-M2012K11AC-Render-3-225x300.jpg 225w\" data-sizes=\"(max-width: 480px) 100vw, 480px\" sizes=\"(max-width: 480px) 100vw, 480px\" srcset=\"https://www.xda-developers.com/files/2021/02/Redmi-K40-M2012K11AC-Render-3.jpg 480w, https://www.xda-developers.com/files/2021/02/Redmi-K40-M2012K11AC-Render-3-225x300.jpg 225w\" style=\"outline-style: initial; outline-width: 0px; border-width: 2px; border-style: solid; border-color: rgb(207, 207, 207); max-width: 100%; height: auto !important;\"></a></dt></dl><dl class=\"gallery-item\" style=\"margin-bottom: 10px; float: left; margin-top: 10px; text-align: center; width: 161.156px;\"><dt class=\"gallery-icon portrait\"><a href=\"https://www.xda-developers.com/files/2021/02/Redmi-K40-M2012K11AC-Render-2.jpg\" style=\"color: rgb(222, 115, 0);\"></a></dt></dl><br style=\"clear: both;\"></div><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Titillium Web&quot;, sans-serif; font-size: 17px; background-color: rgb(253, 253, 253);\">Meanwhile, the device with model number&nbsp;<font color=\"#de7300\">M2012K11C</font>&nbsp;is expected to be the Redmi K40 Pro, and it will be a direct successor to the Redmi K30 5G. Xiaomi has already confirmed that the device will be powered by the Snapdragon 888. In terms of specifications, a recent Weibo leak (via&nbsp;<em style=\"color: rgb(222, 115, 0);\">GSMArena</em>) suggests that the K40 Pro might feature a 6.81-inch AMOLED display with a 120Hz refresh rate, up to 12GB of RAM, triple cameras, and a bigger 5,000 mAh battery.</p><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Titillium Web&quot;, sans-serif; font-size: 17px; background-color: rgb(253, 253, 253);\">There are conflicting reports about the camera hardware of both the devices. According to known Xiaomi tipster and XDA Senior Member&nbsp;<font color=\"#de7300\">Deic</font>, the Redmi K40 and K40 Pro will feature a 48MP and a 64MP sensor, respectively. However, the most recent Weibo leak claims both phones will have a 108MP primary sensor.</p><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Titillium Web&quot;, sans-serif; font-size: 17px; background-color: rgb(253, 253, 253);\">Finally, the third phone spotted on TENAA has a model number&nbsp;<font color=\"#de7300\">M2102J2SC</font>. According to Digital Chat Station on Weibo, this Mi smartphone will be a new variant of the&nbsp;<font color=\"#de7300\">Mi 10 5G</font>, with the only change being the switch to the new Snapdragon 870 SoC from the old Snapdragon 865 chipset.</p><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Titillium Web&quot;, sans-serif; font-size: 17px; background-color: rgb(253, 253, 253);\">Xiaomi is set to launch the Redmi K40 series in China on February 25, so we won’t have to wait for more to learn about the company’s latest affordable flagship phones.</p>', '2021-02-13 04:40:27', '2021-02-13 06:14:59', 1, 'Xiaomi-Redmi-K40,-Redmi-K40-Pro,-new-Mi-10-looks-revealed-on-TENAA', '108bbcfcb20d17a027d596ef3a959578.jpg'),
(16, 'Outer space is a treasure chest of gemstones', 8, 17, '<p><span style=\"font-family: Helvetica, Arial, sans-serif;\">In 2012, scientists announced they’d found a planet, 55 Cancri e, that was&nbsp;</span><a href=\"https://news.yale.edu/2012/10/11/nearby-super-earth-likely-diamond-planet\" style=\"color: rgb(0, 126, 168); font-family: Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);\">made out of diamond</a><span style=\"font-family: Helvetica, Arial, sans-serif;\">. The idea was based on estimates of the planet’s size and density.</span><br style=\"font-family: Helvetica, Arial, sans-serif;\"><br style=\"font-family: Helvetica, Arial, sans-serif;\"><span style=\"font-family: Helvetica, Arial, sans-serif;\">Soon after their work was published, however,&nbsp;</span><a href=\"https://iopscience.iop.org/article/10.1088/0004-637X/778/2/132\" style=\"color: rgb(0, 126, 168); font-family: Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);\">other research</a><span style=\"font-family: Helvetica, Arial, sans-serif;\">&nbsp;suggested they’d been wrong.</span><br style=\"font-family: Helvetica, Arial, sans-serif;\"><br style=\"font-family: Helvetica, Arial, sans-serif;\"><a href=\"https://www.psi.edu/about/staffpage/rclark\" style=\"color: rgb(0, 126, 168); font-family: Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);\">Roger Clark</a><span style=\"font-family: Helvetica, Arial, sans-serif;\">, a senior scientist at the Planetary Science Institute in Tucson, explains that to come to these kinds of conclusions, scientists work backward, starting with the size and mass of a planet. They use that information to estimate density, and then work to determine what kind of materials could produce that density. But, he says, “it’s not proof that those materials are there.”</span><br style=\"font-family: Helvetica, Arial, sans-serif;\"><br style=\"font-family: Helvetica, Arial, sans-serif;\"><span style=\"font-family: Helvetica, Arial, sans-serif;\">While the entire planet of 55 Cancri e may not be made of diamond, there is good reason to believe that diamonds do exist outside of Earth, throughout the universe, along with other precious stones like opal, rubies, and sapphires.</span><br style=\"font-family: Helvetica, Arial, sans-serif;\"><br style=\"font-family: Helvetica, Arial, sans-serif;\"><span style=\"font-family: Helvetica, Arial, sans-serif;\">“We can form all sorts of gemstones potentially in space, as long as you have the right chemistry in the right temperature and conditions,” says&nbsp;</span><a href=\"https://profiles.stanford.edu/wendy-mao\" style=\"color: rgb(0, 126, 168); font-family: Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);\">Wendy Mao</a><span style=\"font-family: Helvetica, Arial, sans-serif;\">, a professor of geological sciences at Stanford University.</span><br style=\"font-family: Helvetica, Arial, sans-serif;\"></p><h2 style=\"font-size: 1.5em; margin-top: 0.83em; margin-bottom: 0.83em; line-height: 24.15px; color: rgb(0, 0, 0); font-family: Helvetica, Arial, sans-serif;\">Diamonds</h2><p style=\"margin-bottom: 25px; padding: 0px; font-family: Helvetica, Arial, sans-serif;\">“Diamonds are just pure carbon,” says Mao. And carbon is abundant in the universe. However, diamonds don’t just spontaneously form anywhere there’s carbon; a particular set of circumstances must exist. Along with extremely high temperatures and pressures, diamonds form in environments that lack oxygen.<br><br>Diamonds shouldn’t even really exist on the Earth’s surface. “It’s not stable,” explains Mao, adding that a pure diamond would not survive a house fire because the heat would help it react with oxygen in the atmosphere. “If it’s able to react with oxygen, it would turn to carbon dioxide or graphite and destroy the diamond.”<br><br>In 1987, scientists found nanodiamonds — tiny microscopic pieces of diamonds — in meteorites. Inside those nanodiamonds, researchers have since found trapped gasses and minerals that give clues about when and where they formed. For example, ureilite meteorites — a type of meteorite with a high percentage of carbon, named for Novy Urey, a village hit by a meteor in 1886 — contain diamonds. In those diamonds, researchers found materials that suggested that the gems were&nbsp;<a href=\"https://www.smithsonianmag.com/smart-news/diamonds-trapped-strange-meteorite-came-solar-systems-earliest-planets-180968821/\" style=\"color: rgb(0, 126, 168);\">created inside a planetary body</a>&nbsp;as old as the solar system. However, some scientists still dispute this, and suggest these diamonds could be the results of&nbsp;<a href=\"https://www.chemistryviews.org/details/ezine/11268504/The_Origin_of_Diamonds_in_Meteorites.html\" style=\"color: rgb(0, 126, 168);\">powerful collisions</a>&nbsp;between smaller objects.<br><br>Researchers also suspect that it could be “raining diamonds” on Neptune and Uranus. The scientists conducted&nbsp;<a href=\"https://www.nature.com/articles/s41550-017-0219-9\" style=\"color: rgb(0, 126, 168);\">experiments here on Earth</a>&nbsp;mimicking the temperatures and pressures on these planets and found that they are intense enough to form diamonds. Then, because the diamonds are heavier than the environments surrounding them, they’d sink into the planet — a little like rain. The sinking diamonds&nbsp;<a href=\"https://www.theguardian.com/science/2017/aug/21/astro-bling-scientists-recreate-diamond-rain-of-neptune-and-uranus\" style=\"color: rgb(0, 126, 168);\">generate friction</a>, which the researchers say may help explain why these icy planets generate more heat than we would expect.</p>', '2021-02-13 05:12:03', NULL, 1, 'Outer-space-is-a-treasure-chest-of-gemstones', 'e778323d1df4c8fb7717865b80dc2bfd.jpg'),
(17, 'Top 2 The Strongest Anime Characters, Officially Ranked', 5, 10, '<p style=\"box-sizing: inherit; margin-bottom: 3.5rem; line-height: 1.7; padding: 0px; font-size: 1.8em; color: rgb(46, 44, 43); font-family: Georgia, Times, &quot;Times New Roman&quot;, serif;\"><span style=\"box-sizing: inherit;\">Anime is pretty great by itself and talking with other anime fans in digital or physical spaces can greatly enhance the experience. Some of the longest running conversations in the anime fandom center on which characters are stronger than other characters, or who would win in a fight. Even with the upcoming&nbsp;<em style=\"box-sizing: inherit;\">Jump Force</em>&nbsp;game and countless crossover specials, these debates are likely to go on for as long as new anime air every season.</span></p><p style=\"box-sizing: inherit; margin-bottom: 3.5rem; line-height: 1.7; padding: 0px; font-size: 1.8em; color: rgb(46, 44, 43); font-family: Georgia, Times, &quot;Times New Roman&quot;, serif;\"><span style=\"box-sizing: inherit;\">While anime can tell a broad range of stories and the affordances of animation allow anime to tackle just about every genre of fiction, combat-focused anime usually in the shounen category tend to be some of the most popular and commercially successful anime around. With so much combat focused content in anime, it’s no surprise that debates about which character is stronger than another are a staple of the fandom. Of course, this conversation is always in flux since there’s currently more anime airing than ever before and everyone’s favorite protagonists are getting stronger all the time.</span></p><p style=\"box-sizing: inherit; margin-bottom: 3.5rem; line-height: 1.7; padding: 0px; font-size: 1.8em; color: rgb(46, 44, 43); font-family: Georgia, Times, &quot;Times New Roman&quot;, serif;\"><span style=\"box-sizing: inherit;\">It may be impossible to say for sure who would win in a one on one fight, this list will attempt to definitively rank the strongest characters in anime when they are at their strongest and most capable. These 25 characters are by far some of the strongest in all of anime and while we may never actually see any of them duke it out, this list attempts to argue who is definitively the strongest of the bunch.</span></p><h2 style=\"box-sizing: inherit; font-family: Khand; font-weight: 700; line-height: 1.3; color: rgb(46, 44, 43); margin-top: 0px; margin-bottom: 1.75rem; font-size: 3em; padding: 0px; text-transform: capitalize; clear: both;\"><span class=\"item-num\" style=\"box-sizing: inherit; display: block; font-size: 50px; color: rgb(157, 157, 157);\">2</span>Naruto Uzumaki - Naruto</h2><figure class=\"item-img\" style=\"box-sizing: inherit; margin-bottom: 3.5rem; padding: 0px; position: relative; font-family: arial, helvetica, clean, sans-serif; font-size: 10px;\"><div style=\"box-sizing: inherit; margin: 0px auto; padding: 0px; max-width: 1280px;\"><div class=\"responsive-img img-article-item\" style=\"box-sizing: inherit; margin: 0px; padding: 0px 0px 421.875px; position: relative; overflow: hidden;\"><picture style=\"box-sizing: inherit;\"><source media=\"(min-width: 1024px) and (-webkit-min-device-pixel-ratio: 1.25), (min-width: 1024px) and (min-resolution: 120dpi)\" sizes=\"740px\" data-srcset=\"https://static3.srcdn.com/wordpress/wp-content/uploads/2018/12/Naruto.jpg?q=50&amp;fit=crop&amp;w=740&amp;h=416&amp;dpr=1.5 1110w\" srcset=\"https://static3.srcdn.com/wordpress/wp-content/uploads/2018/12/Naruto.jpg?q=50&amp;fit=crop&amp;w=740&amp;h=416&amp;dpr=1.5 1110w\" style=\"box-sizing: inherit;\"><source media=\"(min-width: 1024px)\" sizes=\"740px\" data-srcset=\"https://static3.srcdn.com/wordpress/wp-content/uploads/2018/12/Naruto.jpg?q=50&amp;fit=crop&amp;w=740&amp;h=416 740w\" srcset=\"https://static3.srcdn.com/wordpress/wp-content/uploads/2018/12/Naruto.jpg?q=50&amp;fit=crop&amp;w=740&amp;h=416 740w\" style=\"box-sizing: inherit;\"><source media=\"(min-width: 768px) and (-webkit-min-device-pixel-ratio: 1.25), (min-width: 768px) and (min-resolution: 120dpi)\" sizes=\"963px\" data-srcset=\"https://static3.srcdn.com/wordpress/wp-content/uploads/2018/12/Naruto.jpg?q=50&amp;fit=crop&amp;w=963&amp;h=541&amp;dpr=1.5 1444w\" srcset=\"https://static3.srcdn.com/wordpress/wp-content/uploads/2018/12/Naruto.jpg?q=50&amp;fit=crop&amp;w=963&amp;h=541&amp;dpr=1.5 1444w\" style=\"box-sizing: inherit;\"><source media=\"(min-width: 768px)\" sizes=\"963px\" data-srcset=\"https://static3.srcdn.com/wordpress/wp-content/uploads/2018/12/Naruto.jpg?q=50&amp;fit=crop&amp;w=963&amp;h=541 963w\" srcset=\"https://static3.srcdn.com/wordpress/wp-content/uploads/2018/12/Naruto.jpg?q=50&amp;fit=crop&amp;w=963&amp;h=541 963w\" style=\"box-sizing: inherit;\"><source media=\"(min-width: 481px) and (-webkit-min-device-pixel-ratio: 1.25), (min-width: 481px) and (min-resolution: 120dpi)\" sizes=\"737px\" data-srcset=\"https://static3.srcdn.com/wordpress/wp-content/uploads/2018/12/Naruto.jpg?q=50&amp;fit=crop&amp;w=737&amp;h=414&amp;dpr=1.5 1105w\" srcset=\"https://static3.srcdn.com/wordpress/wp-content/uploads/2018/12/Naruto.jpg?q=50&amp;fit=crop&amp;w=737&amp;h=414&amp;dpr=1.5 1105w\" style=\"box-sizing: inherit;\"><source media=\"(min-width: 481px)\" sizes=\"737px\" data-srcset=\"https://static3.srcdn.com/wordpress/wp-content/uploads/2018/12/Naruto.jpg?q=50&amp;fit=crop&amp;w=737&amp;h=414 737w\" srcset=\"https://static3.srcdn.com/wordpress/wp-content/uploads/2018/12/Naruto.jpg?q=50&amp;fit=crop&amp;w=737&amp;h=414 737w\" style=\"box-sizing: inherit;\"><source media=\"(min-width: 0px) and (-webkit-min-device-pixel-ratio: 1.25), (min-width: 0px) and (min-resolution: 120dpi)\" sizes=\"450px\" data-srcset=\"https://static3.srcdn.com/wordpress/wp-content/uploads/2018/12/Naruto.jpg?q=50&amp;fit=crop&amp;w=450&amp;h=253&amp;dpr=1.5 675w\" srcset=\"https://static3.srcdn.com/wordpress/wp-content/uploads/2018/12/Naruto.jpg?q=50&amp;fit=crop&amp;w=450&amp;h=253&amp;dpr=1.5 675w\" style=\"box-sizing: inherit;\"><source media=\"(min-width: 0px)\" sizes=\"450px\" data-srcset=\"https://static3.srcdn.com/wordpress/wp-content/uploads/2018/12/Naruto.jpg?q=50&amp;fit=crop&amp;w=450&amp;h=253 450w\" srcset=\"https://static3.srcdn.com/wordpress/wp-content/uploads/2018/12/Naruto.jpg?q=50&amp;fit=crop&amp;w=450&amp;h=253 450w\" style=\"box-sizing: inherit;\"><img class=\" lazyloaded\" alt=\"\" style=\"box-sizing: inherit; position: absolute; top: 0px; left: 0px; width: 750px; height: 421.875px; display: block;\"></picture></div></div></figure><p style=\"box-sizing: inherit; margin-bottom: 3.5rem; line-height: 1.7; padding: 0px; font-size: 1.8em; color: rgb(46, 44, 43); font-family: Georgia, Times, &quot;Times New Roman&quot;, serif;\"><span style=\"box-sizing: inherit;\">Everyone\'s favorite loudmouth ninja, Naruto can go toe to toe with nearly any other character in anime. His ability to enter Sage Mode and his control over the Nine-Tailed Demon Fox grant him impossible strength and the ability to form massive monsters out of chakra.</span></p><p style=\"box-sizing: inherit; margin-bottom: 3.5rem; line-height: 1.7; padding: 0px; font-size: 1.8em; color: rgb(46, 44, 43); font-family: Georgia, Times, &quot;Times New Roman&quot;, serif;\"><span style=\"box-sizing: inherit;\">Furthermore, his relationship to the other tailed beasts lets him wield every element of chakra and even combine them for greater devastation. Even without these abilities, he can still create an army of clones that allow him to overpower any foe that tries to fight him or do harm to his friends.</span></p><h2 style=\"box-sizing: inherit; font-family: Khand; font-weight: 700; line-height: 1.3; color: rgb(46, 44, 43); margin-top: 0px; margin-bottom: 1.75rem; font-size: 3em; padding: 0px; text-transform: capitalize; clear: both;\"><span class=\"item-num\" style=\"box-sizing: inherit; display: block; font-size: 50px; color: rgb(157, 157, 157);\">1<br></span></h2><h2 style=\"box-sizing: inherit; font-family: Khand; font-weight: 700; line-height: 1.3; color: rgb(46, 44, 43); margin-top: 0px; margin-bottom: 1.75rem; font-size: 3em; padding: 0px; text-transform: capitalize; clear: both;\">Saitama - One Punch Man</h2><figure class=\"item-img\" style=\"box-sizing: inherit; margin-bottom: 3.5rem; padding: 0px; position: relative; font-family: arial, helvetica, clean, sans-serif; font-size: 10px;\"><div style=\"box-sizing: inherit; margin: 0px auto; padding: 0px; max-width: 1280px;\"><div class=\"responsive-img img-article-item\" style=\"box-sizing: inherit; margin: 0px; padding: 0px 0px 421.875px; position: relative; overflow: hidden;\"><picture style=\"box-sizing: inherit;\"><source media=\"(min-width: 1024px) and (-webkit-min-device-pixel-ratio: 1.25), (min-width: 1024px) and (min-resolution: 120dpi)\" sizes=\"740px\" data-srcset=\"https://static2.srcdn.com/wordpress/wp-content/uploads/2018/12/Saitama.jpg?q=50&amp;fit=crop&amp;w=740&amp;h=416&amp;dpr=1.5 1110w\" srcset=\"https://static2.srcdn.com/wordpress/wp-content/uploads/2018/12/Saitama.jpg?q=50&amp;fit=crop&amp;w=740&amp;h=416&amp;dpr=1.5 1110w\" style=\"box-sizing: inherit;\"><source media=\"(min-width: 1024px)\" sizes=\"740px\" data-srcset=\"https://static2.srcdn.com/wordpress/wp-content/uploads/2018/12/Saitama.jpg?q=50&amp;fit=crop&amp;w=740&amp;h=416 740w\" srcset=\"https://static2.srcdn.com/wordpress/wp-content/uploads/2018/12/Saitama.jpg?q=50&amp;fit=crop&amp;w=740&amp;h=416 740w\" style=\"box-sizing: inherit;\"><source media=\"(min-width: 768px) and (-webkit-min-device-pixel-ratio: 1.25), (min-width: 768px) and (min-resolution: 120dpi)\" sizes=\"963px\" data-srcset=\"https://static2.srcdn.com/wordpress/wp-content/uploads/2018/12/Saitama.jpg?q=50&amp;fit=crop&amp;w=963&amp;h=541&amp;dpr=1.5 1444w\" srcset=\"https://static2.srcdn.com/wordpress/wp-content/uploads/2018/12/Saitama.jpg?q=50&amp;fit=crop&amp;w=963&amp;h=541&amp;dpr=1.5 1444w\" style=\"box-sizing: inherit;\"><source media=\"(min-width: 768px)\" sizes=\"963px\" data-srcset=\"https://static2.srcdn.com/wordpress/wp-content/uploads/2018/12/Saitama.jpg?q=50&amp;fit=crop&amp;w=963&amp;h=541 963w\" srcset=\"https://static2.srcdn.com/wordpress/wp-content/uploads/2018/12/Saitama.jpg?q=50&amp;fit=crop&amp;w=963&amp;h=541 963w\" style=\"box-sizing: inherit;\"><source media=\"(min-width: 481px) and (-webkit-min-device-pixel-ratio: 1.25), (min-width: 481px) and (min-resolution: 120dpi)\" sizes=\"737px\" data-srcset=\"https://static2.srcdn.com/wordpress/wp-content/uploads/2018/12/Saitama.jpg?q=50&amp;fit=crop&amp;w=737&amp;h=414&amp;dpr=1.5 1105w\" srcset=\"https://static2.srcdn.com/wordpress/wp-content/uploads/2018/12/Saitama.jpg?q=50&amp;fit=crop&amp;w=737&amp;h=414&amp;dpr=1.5 1105w\" style=\"box-sizing: inherit;\"><source media=\"(min-width: 481px)\" sizes=\"737px\" data-srcset=\"https://static2.srcdn.com/wordpress/wp-content/uploads/2018/12/Saitama.jpg?q=50&amp;fit=crop&amp;w=737&amp;h=414 737w\" srcset=\"https://static2.srcdn.com/wordpress/wp-content/uploads/2018/12/Saitama.jpg?q=50&amp;fit=crop&amp;w=737&amp;h=414 737w\" style=\"box-sizing: inherit;\"><source media=\"(min-width: 0px) and (-webkit-min-device-pixel-ratio: 1.25), (min-width: 0px) and (min-resolution: 120dpi)\" sizes=\"450px\" data-srcset=\"https://static2.srcdn.com/wordpress/wp-content/uploads/2018/12/Saitama.jpg?q=50&amp;fit=crop&amp;w=450&amp;h=253&amp;dpr=1.5 675w\" srcset=\"https://static2.srcdn.com/wordpress/wp-content/uploads/2018/12/Saitama.jpg?q=50&amp;fit=crop&amp;w=450&amp;h=253&amp;dpr=1.5 675w\" style=\"box-sizing: inherit;\"><source media=\"(min-width: 0px)\" sizes=\"450px\" data-srcset=\"https://static2.srcdn.com/wordpress/wp-content/uploads/2018/12/Saitama.jpg?q=50&amp;fit=crop&amp;w=450&amp;h=253 450w\" srcset=\"https://static2.srcdn.com/wordpress/wp-content/uploads/2018/12/Saitama.jpg?q=50&amp;fit=crop&amp;w=450&amp;h=253 450w\" style=\"box-sizing: inherit;\"><img class=\" lazyloaded\" alt=\"\" style=\"box-sizing: inherit; position: absolute; top: 0px; left: 0px; width: 750px; height: 421.875px; display: block;\"></picture></div></div></figure><p style=\"box-sizing: inherit; margin-bottom: 3.5rem; line-height: 1.7; padding: 0px; font-size: 1.8em; color: rgb(46, 44, 43); font-family: Georgia, Times, &quot;Times New Roman&quot;, serif;\"><span style=\"box-sizing: inherit;\">Saitama from<em style=\"box-sizing: inherit;\">&nbsp;One Punch Man</em>&nbsp;is the strongest character in anime.&nbsp;<em style=\"box-sizing: inherit;\">One Punch Man</em>&nbsp;is different from most other combat anime, in that the protagonist is already the strongest person around, rather than striving to reach that goal. After three years of rigorous training, he can withstand any blow and defeat any enemy with a single serious strike.</span></p><p style=\"box-sizing: inherit; margin-bottom: 3.5rem; line-height: 1.7; padding: 0px; font-size: 1.8em; color: rgb(46, 44, 43); font-family: Georgia, Times, &quot;Times New Roman&quot;, serif;\"><span style=\"box-sizing: inherit;\">However, this unbeatable strength leaves Sitama depressed, and the series explores the emptiness that follows achieving a lifelong goal. Saitama is the most powerful character in anime because the entire point the character is that the pursuit of strength or one’s goal is more fulfilling than holding such a position.</span></p>', '2021-02-13 05:12:03', '2021-02-13 05:40:57', 1, 'Top-2-The-Strongest-Anime-Characters', '50eda0515cd39653f2a57f100aa46db7.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubcategory`
--

CREATE TABLE `tblsubcategory` (
  `SubCategoryId` int(11) NOT NULL,
  `CategoryId` int(11) DEFAULT NULL,
  `Subcategory` varchar(255) DEFAULT NULL,
  `SubCatDescription` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL,
  `Is_Active` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsubcategory`
--

INSERT INTO `tblsubcategory` (`SubCategoryId`, `CategoryId`, `Subcategory`, `SubCatDescription`, `PostingDate`, `UpdationDate`, `Is_Active`) VALUES
(9, 7, 'India', 'India News', '2018-06-30 19:08:42', '0000-00-00 00:00:00', 1),
(10, 5, 'Anime', 'Anime News', '2021-02-13 04:16:15', NULL, 1),
(11, 5, 'Bollywood', 'Bollywood News', '2021-02-13 04:16:46', NULL, 1),
(12, 5, 'Hollywood', 'Hollywood News', '2021-02-13 04:17:06', NULL, 1),
(13, 3, 'Cricket', 'Cricket News', '2021-02-13 04:18:29', NULL, 1),
(14, 3, 'Football', 'Football News', '2021-02-13 04:18:51', NULL, 1),
(15, 6, 'Smartphone', 'Smartphone News', '2021-02-13 04:19:12', NULL, 1),
(16, 6, 'Gadgets', 'Gadgets News', '2021-02-13 04:19:38', NULL, 1),
(17, 8, 'Space', 'Space News', '2021-02-13 04:20:37', NULL, 1),
(18, 8, 'Physics', 'Physics News', '2021-02-13 04:21:10', NULL, 1),
(19, 7, 'Economy', 'Economy News', '2021-02-13 04:21:48', NULL, 1),
(20, 7, 'Jobs', 'Jobs News', '2021-02-13 04:22:06', NULL, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcomments`
--
ALTER TABLE `tblcomments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblposts`
--
ALTER TABLE `tblposts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblsubcategory`
--
ALTER TABLE `tblsubcategory`
  ADD PRIMARY KEY (`SubCategoryId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblcomments`
--
ALTER TABLE `tblcomments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblposts`
--
ALTER TABLE `tblposts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tblsubcategory`
--
ALTER TABLE `tblsubcategory`
  MODIFY `SubCategoryId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

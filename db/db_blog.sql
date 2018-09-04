-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 05, 2018 at 07:12 AM
-- Server version: 5.6.26
-- PHP Version: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `body` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `name`, `body`) VALUES
(1, 'About Us', '<p><span>Faisal About ome text&nbsp;carip&nbsp;will&nbsp;be go&nbsp;here. Some text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Sometextwill&nbsp;be go here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here</span><span>ome text&nbsp;carip&nbsp;will&nbsp;be go&nbsp;here. Some text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Sometextwill&nbsp;be go here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here</span><span>ome text&nbsp;carip&nbsp;will&nbsp;be go&nbsp;here. Some text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Sometextwill&nbsp;be go here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here</span><span>ome text&nbsp;carip&nbsp;will&nbsp;be go&nbsp;here. Some text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Sometextwill&nbsp;be go here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here</span><span>ome text&nbsp;carip&nbsp;will&nbsp;be go&nbsp;here. Some text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Sometextwill&nbsp;be go here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here</span></p>'),
(2, 'Our Service', '<p>We are provide the <a href="#">services</a> text&nbsp;carip&nbsp;will&nbsp;be go&nbsp;here. Some text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Sometextwill&nbsp;be go here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;hereome text&nbsp;carip&nbsp;will&nbsp;be go&nbsp;here. Some text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Sometextwill&nbsp;be go here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;hereome text&nbsp;carip&nbsp;will&nbsp;be go&nbsp;here. Some text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Sometextwill&nbsp;be go here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;hereome text&nbsp;carip&nbsp;will&nbsp;be go&nbsp;here. Some text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Sometextwill&nbsp;be go here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here</p>');

-- --------------------------------------------------------

--
-- Table structure for table `sloganlogo`
--

CREATE TABLE IF NOT EXISTS `sloganlogo` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sloganlogo`
--

INSERT INTO `sloganlogo` (`id`, `title`, `description`, `logo`) VALUES
(1, 'Prime University', 'Leading private universities of the Bangladesh', 'upload/421d601efd.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE IF NOT EXISTS `tbl_category` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `name`) VALUES
(1, 'JAVA'),
(2, 'PHP'),
(3, 'HTML'),
(4, 'CSS'),
(8, 'Health'),
(9, 'Services');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contact`
--

CREATE TABLE IF NOT EXISTS `tbl_contact` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_contact`
--

INSERT INTO `tbl_contact` (`id`, `firstname`, `lastname`, `email`, `body`, `status`, `date`) VALUES
(2, 'Rafiq', 'Alam', 'sofiq3327@gmail.com', 'Some text carip will be go here. Some text will be go here.Some text..', 1, '2018-06-10 09:03:25'),
(5, 'Arif', 'Khan', 'arif@gmail.com', 'Some text carip will be go here. Some text will be go here.Some text', 1, '2018-06-11 07:34:05'),
(6, 'Kobir', 'Khan', 'kabir@gmail.com', 'Some text carip will be go here. Some text will be go here.Some text...', 1, '2018-06-11 07:34:26'),
(7, 'Maruf', 'Mia', 'mareuf@gmail.com', 'Some text carip will be go here. Some text will be go here.Some text...', 1, '2018-06-11 07:34:47'),
(8, 'Sobuj', 'Ali', 'sobuj@gmail.com', 'Some text carip will be go here. Some text will be go here.Some text...', 1, '2018-06-11 07:35:05'),
(9, 'forid', 'sheak', 'foridujjaman@gmail.com', 'Some text carip will be go here. Some text will be go here.Some text.....', 0, '2018-06-11 12:15:16'),
(10, 'habib', 'khan', 'habib@gmail.com', 'Hey I have a website', 0, '2018-06-26 10:08:28');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_footer`
--

CREATE TABLE IF NOT EXISTS `tbl_footer` (
  `id` int(11) NOT NULL,
  `coppyright` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_footer`
--

INSERT INTO `tbl_footer` (`id`, `coppyright`) VALUES
(1, 'Copyright Training with live project.');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_post`
--

CREATE TABLE IF NOT EXISTS `tbl_post` (
  `id` int(11) NOT NULL,
  `cat` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `author` varchar(50) NOT NULL,
  `tags` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `userid` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_post`
--

INSERT INTO `tbl_post` (`id`, `cat`, `title`, `body`, `image`, `author`, `tags`, `date`, `userid`) VALUES
(13, 3, 'Html latest post', '<p><span><span>Some text&nbsp;carip&nbsp;will&nbsp;be go&nbsp;here. Some text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Sometextwill&nbsp;be go here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be.</span><span>Some text&nbsp;carip&nbsp;will&nbsp;be go&nbsp;here. Some text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Sometextwill&nbsp;be go here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be.</span><span>Some text&nbsp;carip&nbsp;will&nbsp;be go&nbsp;here. Some text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Sometextwill&nbsp;be go here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be.<span>Some text&nbsp;carip&nbsp;will&nbsp;be go&nbsp;here. Some text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Sometextwill&nbsp;be go here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be.</span><span>Some text&nbsp;carip&nbsp;will&nbsp;be go&nbsp;here. Some text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Sometextwill&nbsp;be go here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be.</span></span>Some text&nbsp;carip&nbsp;will&nbsp;be go&nbsp;here. Some text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Sometextwill&nbsp;be go here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be.</span></p>', 'upload/795df1a921.jpg', 'Faisal', 'html', '2018-06-05 07:20:18', 0),
(14, 1, 'Java Title here', '<p><span><span>Some text&nbsp;carip&nbsp;will&nbsp;be go&nbsp;here. Some text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Sometextwill&nbsp;be go here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be.</span>Some text&nbsp;carip&nbsp;will&nbsp;be go&nbsp;here. Some text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Sometextwill&nbsp;be go here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be.</span><span>Some text&nbsp;carip&nbsp;will&nbsp;be go&nbsp;here. Some text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Sometextwill&nbsp;be go here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be.</span><span>Some text&nbsp;carip&nbsp;will&nbsp;be go&nbsp;here. Some text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Sometextwill&nbsp;be go here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be.</span><span>Some text&nbsp;carip&nbsp;will&nbsp;be go&nbsp;here. Some text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Sometextwill&nbsp;be go here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be.</span></p>', 'upload/297c03ae13.jpg', 'Faisal', 'java', '2018-06-05 07:20:37', 0),
(15, 2, 'PHP Title here', '<p><span>Some text&nbsp;carip&nbsp;will&nbsp;be go&nbsp;here. Some text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Sometextwill&nbsp;be go here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be.</span><span>Some text&nbsp;carip&nbsp;will&nbsp;be go&nbsp;here. Some text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Sometextwill&nbsp;be go here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be.</span><span>Some text&nbsp;carip&nbsp;will&nbsp;be go&nbsp;here. Some text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Sometextwill&nbsp;be go here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be.</span><span>Some text&nbsp;carip&nbsp;will&nbsp;be go&nbsp;here. Some text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Sometextwill&nbsp;be go here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be.</span><span>Some text&nbsp;carip&nbsp;will&nbsp;be go&nbsp;here. Some text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Sometextwill&nbsp;be go here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be.</span></p>', 'upload/deab44d12a.jpg', 'Faisal', 'php', '2018-06-05 07:20:54', 5),
(17, 9, 'Services Latest Post', '<p><span>Some text&nbsp;carip&nbsp;will&nbsp;be go&nbsp;here. Some text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Sometextwill&nbsp;be go here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be.</span><span>Some text&nbsp;carip&nbsp;will&nbsp;be go&nbsp;here. Some text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Sometextwill&nbsp;be go here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be.</span><span>Some text&nbsp;carip&nbsp;will&nbsp;be go&nbsp;here. Some text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Sometextwill&nbsp;be go here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be.</span><span>Some text&nbsp;carip&nbsp;will&nbsp;be go&nbsp;here. Some text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Sometextwill&nbsp;be go here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be.</span><span>Some text&nbsp;carip&nbsp;will&nbsp;be go&nbsp;here. Some text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Sometextwill&nbsp;be go here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be.</span><span>Some text&nbsp;carip&nbsp;will&nbsp;be go&nbsp;here. Some text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Sometextwill&nbsp;be go here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be.</span></p>', 'upload/3e7b16ba02.jpg', 'Faisal', 'service, visit, care', '2018-06-05 07:22:45', 6),
(18, 9, 'Our Latest Business', '<p><span><span>Some text&nbsp;carip&nbsp;will&nbsp;be go&nbsp;here. Some text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Sometextwill&nbsp;be go here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be.</span><span>Some text&nbsp;carip&nbsp;will&nbsp;be go&nbsp;here. Some text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Sometextwill&nbsp;be go here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be.<span>Some text&nbsp;carip&nbsp;will&nbsp;be go&nbsp;here. Some text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Sometextwill&nbsp;be go here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be.</span></span>Some text&nbsp;carip&nbsp;will&nbsp;be go&nbsp;here. Some text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Sometextwill&nbsp;be go here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be.</span><span>Some text&nbsp;carip&nbsp;will&nbsp;be go&nbsp;here. Some text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Sometextwill&nbsp;be go here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be.</span><span>Some text&nbsp;carip&nbsp;will&nbsp;be go&nbsp;here. Some text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Sometextwill&nbsp;be go here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be.</span></p>', 'upload/a247246460.jpg', 'Faisal', 'service', '2018-06-05 07:23:26', 0),
(19, 1, 'Our Latest Ship', '<p><span><span>Some text&nbsp;carip&nbsp;will&nbsp;be go&nbsp;here. Some text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Sometextwill&nbsp;be go here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be.</span><span>Some text&nbsp;carip&nbsp;will&nbsp;be go&nbsp;here. Some text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Sometextwill&nbsp;be go here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be.</span><span>Some text&nbsp;carip&nbsp;will&nbsp;be go&nbsp;here. Some text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Sometextwill&nbsp;be go here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be.</span>Some text&nbsp;carip&nbsp;will&nbsp;be go&nbsp;here. Some text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Sometextwill&nbsp;be go here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be.</span><span>Some text&nbsp;carip&nbsp;will&nbsp;be go&nbsp;here. Some text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Sometextwill&nbsp;be go here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be.</span></p>', 'upload/d6caac70c8.jpg', 'Faisal', 'Ship', '2018-06-05 07:25:42', 0),
(20, 3, 'Our Latest House', '<p><span><span>Some text&nbsp;carip&nbsp;will&nbsp;be go&nbsp;here. Some text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Sometextwill&nbsp;be go here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be.</span><span>Some text&nbsp;carip&nbsp;will&nbsp;be go&nbsp;here. Some text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Sometextwill&nbsp;be go here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be<span>Some text&nbsp;carip&nbsp;will&nbsp;be go&nbsp;here. Some text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Sometextwill&nbsp;be go here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be.</span><span>Some text&nbsp;carip&nbsp;will&nbsp;be go&nbsp;here. Some text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Sometextwill&nbsp;be go here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be.</span>.</span>Some text&nbsp;carip&nbsp;will&nbsp;be go&nbsp;here. Some text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Sometextwill&nbsp;be go here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be.</span><span>Some text&nbsp;carip&nbsp;will&nbsp;be go&nbsp;here. Some text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Sometextwill&nbsp;be go here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be.</span></p>', 'upload/bb83ad5d69.jpg', 'Faisal', 'house', '2018-06-05 07:26:57', 0),
(21, 2, 'Our Latest Rrestaurent', '<p><span>Some text&nbsp;carip&nbsp;will&nbsp;be go&nbsp;here. Some text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Sometextwill&nbsp;be go here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be.</span><span>Some text&nbsp;carip&nbsp;will&nbsp;be go&nbsp;here. Some text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Sometextwill&nbsp;be go here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be.</span><span>Some text&nbsp;carip&nbsp;will&nbsp;be go&nbsp;here. Some text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Sometextwill&nbsp;be go here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be.</span><span>Some text&nbsp;carip&nbsp;will&nbsp;be go&nbsp;here. Some text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Sometextwill&nbsp;be go here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be.</span><span>Some text&nbsp;carip&nbsp;will&nbsp;be go&nbsp;here. Some text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Sometextwill&nbsp;be go here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be.</span></p>', 'upload/9952a3753d.jpg', 'Faisal', 'restaurant', '2018-06-05 07:27:30', 0),
(22, 2, 'Our Latest Rrestaurent', '<p><span>Some text&nbsp;carip&nbsp;will&nbsp;be go&nbsp;here. Some text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Sometextwill&nbsp;be go here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be.</span><span>Some text&nbsp;carip&nbsp;will&nbsp;be go&nbsp;here. Some text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Sometextwill&nbsp;be go here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be.</span><span>Some text&nbsp;carip&nbsp;will&nbsp;be go&nbsp;here. Some text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Sometextwill&nbsp;be go here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be.</span><span>Some text&nbsp;carip&nbsp;will&nbsp;be go&nbsp;here. Some text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Sometextwill&nbsp;be go here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be.</span><span>Some text&nbsp;carip&nbsp;will&nbsp;be go&nbsp;here. Some text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Sometextwill&nbsp;be go here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be.</span></p>', 'upload/3bb733655c.jpg', 'Faisal', 'restaurant', '2018-06-05 07:28:24', 5),
(23, 9, 'Our Latest houses Touar', '<p><span>Some text&nbsp;carip&nbsp;will&nbsp;be go&nbsp;here. Some text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Sometextwill&nbsp;be go here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be.</span><span>Some text&nbsp;carip&nbsp;will&nbsp;be go&nbsp;here. Some text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Sometextwill&nbsp;be go here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be.</span><span>Some text&nbsp;carip&nbsp;will&nbsp;be go&nbsp;here. Some text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Sometextwill&nbsp;be go here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be.</span><span>Some text&nbsp;carip&nbsp;will&nbsp;be go&nbsp;here. Some text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Sometextwill&nbsp;be go here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be.</span><span>Some text&nbsp;carip&nbsp;will&nbsp;be go&nbsp;here. Some text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Sometextwill&nbsp;be go here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be.</span></p>', 'upload/1c651ac880.jpg', 'Faisal', 'entertainment', '2018-06-05 07:29:07', 0),
(24, 9, 'Our Latest Entertainment', '<p><span>Some text&nbsp;carip&nbsp;will&nbsp;be go&nbsp;here. Some text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Sometextwill&nbsp;be go here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be.</span><span>Some text&nbsp;carip&nbsp;will&nbsp;be go&nbsp;here. Some text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Sometextwill&nbsp;be go here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be.</span><span>Some text&nbsp;carip&nbsp;will&nbsp;be go&nbsp;here. Some text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Sometextwill&nbsp;be go here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be.</span><span>Some text&nbsp;carip&nbsp;will&nbsp;be go&nbsp;here. Some text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Sometextwill&nbsp;be go here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be.</span><span>Some text&nbsp;carip&nbsp;will&nbsp;be go&nbsp;here. Some text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Sometextwill&nbsp;be go here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be.</span><span>Some text&nbsp;carip&nbsp;will&nbsp;be go&nbsp;here. Some text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Sometextwill&nbsp;be go here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be.</span></p>', 'upload/827e52ea6d.jpg', 'Faisal', 'entertainment', '2018-06-05 07:29:57', 5),
(25, 2, 'Proxcy Title here', '<p><span>Some text&nbsp;carip&nbsp;will&nbsp;be go&nbsp;here. Some text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Sometextwill&nbsp;be go here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be.</span><span>Some text&nbsp;carip&nbsp;will&nbsp;be go&nbsp;here. Some text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Sometextwill&nbsp;be go here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be.</span><span>Some text&nbsp;carip&nbsp;will&nbsp;be go&nbsp;here. Some text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Sometextwill&nbsp;be go here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be.</span><span>Some text&nbsp;carip&nbsp;will&nbsp;be go&nbsp;here. Some text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Sometextwill&nbsp;be go here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be.</span><span>Some text&nbsp;carip&nbsp;will&nbsp;be go&nbsp;here. Some text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Sometextwill&nbsp;be go here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be go&nbsp;here.Some&nbsp;text will&nbsp;be.</span></p>', 'upload/558b41bbdb.jpg', 'Faisal', 'care', '2018-06-05 07:30:26', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slider`
--

CREATE TABLE IF NOT EXISTS `tbl_slider` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_slider`
--

INSERT INTO `tbl_slider` (`id`, `title`, `image`) VALUES
(6, 'Latest Slider Title go', 'upload/slider/af077670a8.jpg'),
(8, 'Prime ', 'upload/slider/2efd67928e.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_social`
--

CREATE TABLE IF NOT EXISTS `tbl_social` (
  `id` int(11) NOT NULL,
  `facebook` varchar(255) NOT NULL,
  `twitter` varchar(255) NOT NULL,
  `linkedin` varchar(255) NOT NULL,
  `googleplus` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_social`
--

INSERT INTO `tbl_social` (`id`, `facebook`, `twitter`, `linkedin`, `googleplus`) VALUES
(1, 'https://www.facebook.com/', 'https://twitter.com/', 'https://twitter.com/', 'https://www.google.com/');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_theme`
--

CREATE TABLE IF NOT EXISTS `tbl_theme` (
  `id` int(11) NOT NULL,
  `theme` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_theme`
--

INSERT INTO `tbl_theme` (`id`, `theme`) VALUES
(1, 'green');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE IF NOT EXISTS `tbl_user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `details` text NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(32) NOT NULL,
  `role` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `name`, `email`, `details`, `username`, `password`, `role`) VALUES
(3, '', '', '', 'faisal', '1f89e20a5effa2da0bdfa07a05acaf4c', 2),
(4, '', '', '', 'Editot', 'e10adc3949ba59abbe56e057f20f883e', 2),
(5, 'Sumon ahmed', 'sofiq3327@gmail.com', '<p>Hey Admin</p>', 'sumon', 'd0a0d58d45a45451279236d9ec070e74', 1),
(6, '', '', '', 'admin', 'e10adc3949ba59abbe56e057f20f883e', 0),
(7, '', 'faisalamirmostafa@gmail.com', '', 'sumon', 'f5380d5fadb12441b9b1f0c7c83eafc3', 0),
(8, '', 'sojib46@gmail.com', '', 'faisalamir', 'd41d8cd98f00b204e9800998ecf8427e', 0),
(9, '', 'frofiq@gmail.com', '', 'admin', 'd41d8cd98f00b204e9800998ecf8427e', 0),
(10, '', 'sojib446@gmail.com', '', 'sumon', 'd41d8cd98f00b204e9800998ecf8427e', 0),
(12, '', 'sorif@gmail.com', '', 'sorif', 'e10adc3949ba59abbe56e057f20f883e', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sloganlogo`
--
ALTER TABLE `sloganlogo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_footer`
--
ALTER TABLE `tbl_footer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_post`
--
ALTER TABLE `tbl_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_social`
--
ALTER TABLE `tbl_social`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_theme`
--
ALTER TABLE `tbl_theme`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `sloganlogo`
--
ALTER TABLE `sloganlogo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `tbl_footer`
--
ALTER TABLE `tbl_footer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_post`
--
ALTER TABLE `tbl_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `tbl_social`
--
ALTER TABLE `tbl_social`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_theme`
--
ALTER TABLE `tbl_theme`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

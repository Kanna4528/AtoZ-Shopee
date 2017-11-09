-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 09, 2017 at 03:50 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecom3`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `uid` int(10) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `upassword` varchar(50) NOT NULL,
  `uemail` varchar(50) NOT NULL,
  `log` datetime NOT NULL,
  `time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`uid`, `uname`, `upassword`, `uemail`, `log`, `time`) VALUES
(1, 'admin', 'admin', 'admin@admin.com', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `color`
--

CREATE TABLE `color` (
  `cid` int(10) NOT NULL,
  `pid` varchar(20) NOT NULL,
  `scid` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `color`
--

INSERT INTO `color` (`cid`, `pid`, `scid`) VALUES
(1, 'yellow', 0),
(2, 'green', 0),
(3, 'red', 0),
(4, 'blue', 0),
(5, 'black', 0),
(6, 'pink', 0),
(7, 'white', 0),
(8, 'orange', 0),
(9, 'brown', 0),
(18, '12349', 3),
(19, '12349', 6),
(20, '12357', 4),
(21, '12357', 2),
(22, '12358', 1),
(23, '12358', 2),
(24, '12358', 5),
(25, '12358', 6),
(26, '12359', 4),
(27, '12359', 1),
(28, '12359', 2),
(29, '12351', 1),
(30, '12351', 2),
(31, '12351', 5),
(32, '12351', 6),
(33, '12361', 4),
(34, '12361', 1),
(35, '12361', 2),
(36, '12361', 5),
(39, '', 1),
(40, '', 2),
(41, '', 5),
(42, '', 6),
(43, '', 7),
(44, '12347', 1),
(45, '12347', 2),
(46, '12347', 5),
(47, '12347', 6),
(48, '12347', 7),
(49, '12347', 8),
(55, '12348', 4),
(56, '12348', 1),
(57, '12363', 4),
(58, '12363', 6),
(59, '12363', 7),
(60, '12363', 9);

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(6) NOT NULL,
  `pid` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `pid`, `status`) VALUES
(111222, 123123, 1);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `pid` int(10) NOT NULL,
  `name` varchar(30) NOT NULL,
  `price` double NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `colors` varchar(15) NOT NULL,
  `sizes` varchar(15) NOT NULL,
  `rate` float(2,1) NOT NULL,
  `review` varchar(300) NOT NULL,
  `img` varchar(30) NOT NULL,
  `qunt` int(3) NOT NULL,
  `uid` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`pid`, `name`, `price`, `description`, `status`, `time`, `colors`, `sizes`, `rate`, `review`, `img`, `qunt`, `uid`) VALUES
(12345, 'Baby Red Dress 2', 2017, 'abcdyryryry', 1, '2017-07-22 07:48:08', '1', 'size[0]', 0.9, '12345', '9.jpg', 3, 4),
(12346, 'Jeans', 1600, 'abcd', 1, '2017-11-09 09:03:52', '', '', 0.9, 'sjjflg', 'jeans2.jpg', 5, 1),
(12347, 'Trendy Bag', 2000, 'anchfhyryyryryryryryyryryryry', 1, '2017-11-09 09:05:28', '1', 'size[0]', 3.6, 'abcd', 'bags2.jpg', 3, 4),
(12348, 'Men''s Watch', 1700, 'three222', 1, '2017-11-09 09:07:08', '4', '1', 4.6, 'abcre', 'menwatch5.jpg', 3, 1),
(12349, 'Night Wear', 2320, 'abcde', 1, '2017-11-09 09:08:25', 'green', 'S-M', 3.2, 'abcdef', 'mennight4.jpg', 5, 4),
(12362, 'Women''s Dress', 12321, 'vbvbvbv', 1, '2017-11-09 09:09:23', 'red', '1234M', 0.0, '', 'womendress2.jpg', 3, 1),
(12363, 'Rain Wear', 5454, 'gfdfhgfdfghjkkl', 1, '2017-11-09 09:10:02', '4', '2', 0.0, '', 'rainwear2.jpg', 6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `products2`
--

CREATE TABLE `products2` (
  `pid` int(10) NOT NULL,
  `name` varchar(30) NOT NULL,
  `price` double NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `colors` varchar(15) NOT NULL,
  `sizes` varchar(15) NOT NULL,
  `rate` float(2,1) NOT NULL,
  `review` varchar(300) NOT NULL,
  `img` varchar(30) NOT NULL,
  `qunt` int(3) NOT NULL,
  `uid` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products2`
--

INSERT INTO `products2` (`pid`, `name`, `price`, `description`, `status`, `time`, `colors`, `sizes`, `rate`, `review`, `img`, `qunt`, `uid`) VALUES
(12350, 'Cool Tshirt', 650, 'cool light coloured shirt.', 1, '2017-11-09 09:44:25', 'blue', '', 0.0, 'vrey satisfied', 'tshirt4.jpg', 3, 2),
(12351, 'Foot Wear', 800, 'kjddfjsdkf', 1, '2017-11-09 09:51:32', '', '', 0.0, '', 'womenfootwear3.jpg', 4, 12),
(12352, 'Capri', 400, 'dsfs', 1, '2017-11-09 09:52:38', '', '', 0.0, '', 'womencapri2.jpg', 1, 13),
(12353, 'Set of 3 Hair Bands', 150, 'dgfdgfsdg', 1, '2017-11-09 09:54:31', '', '', 0.0, '', 'hairband4.jpg', 5, 14),
(12354, 'mens watch', 450, 'dgdsgdsfg', 1, '2017-11-09 09:55:49', '', '', 0.0, '', 'menwatch2.jpg', 1, 15),
(12355, 'men shoes', 600, 'asgsfdgdf', 1, '2017-11-09 09:56:49', '', '', 0.0, '', 'menshoe3.jpg', 2, 16),
(12356, 'skirt', 450, 'fagafga', 1, '2017-11-09 09:57:47', '', '', 0.0, '', 'womenskirt4.jpg', 4, 17);

-- --------------------------------------------------------

--
-- Table structure for table `size`
--

CREATE TABLE `size` (
  `sid` int(5) NOT NULL,
  `pid` varchar(15) NOT NULL,
  `scid` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `size`
--

INSERT INTO `size` (`sid`, `pid`, `scid`) VALUES
(1, '1-6M', 0),
(2, '6-12M', 0),
(3, '1-2Y', 0),
(4, '2-3Y', 0),
(5, '3-4Y', 0),
(11, '12349', 5),
(15, '12349', 2),
(16, '12358', 2),
(17, '12358', 3),
(18, '12358', 4),
(19, '12359', 2),
(20, '12359', 3),
(21, '12359', 4),
(22, '12359', 5),
(23, '12351', 2),
(24, '12351', 3),
(25, '12351', 4),
(26, '12361', 2),
(27, '12361', 3),
(28, '12361', 4),
(29, '12362', 2),
(30, '12362', 3),
(31, '', 2),
(32, '', 3),
(33, '', 4),
(34, '', 5),
(35, '12347', 1),
(36, '12347', 2),
(37, '12347', 3),
(38, '12347', 4),
(45, '12348', 1),
(46, '12348', 2),
(47, '12363', 2),
(48, '12363', 3),
(49, '12363', 4);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `uid` int(10) NOT NULL,
  `uname` varchar(60) NOT NULL,
  `upass` varchar(60) NOT NULL,
  `uemail` varchar(60) NOT NULL,
  `created` datetime NOT NULL,
  `ip` varchar(30) NOT NULL,
  `phone` bigint(15) NOT NULL,
  `ugroup` smallint(2) NOT NULL DEFAULT '1',
  `addrass` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`uid`, `uname`, `upass`, `uemail`, `created`, `ip`, `phone`, `ugroup`, `addrass`) VALUES
(1, 'admin', 'admin', 'admin', '0000-00-00 00:00:00', '123.123.123.123', 1231231231, 2, ''),
(2, 'gourav', 'asd123', 'kadfk@gmail.com', '2017-11-09 19:52:56', '::1', 9545454646, 1, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `color`
--
ALTER TABLE `color`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `products2`
--
ALTER TABLE `products2`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `size`
--
ALTER TABLE `size`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `uid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `color`
--
ALTER TABLE `color`
  MODIFY `cid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111223;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `pid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12364;
--
-- AUTO_INCREMENT for table `products2`
--
ALTER TABLE `products2`
  MODIFY `pid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12357;
--
-- AUTO_INCREMENT for table `size`
--
ALTER TABLE `size`
  MODIFY `sid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `uid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 13, 2019 at 05:35 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `AdminEmail` varchar(120) DEFAULT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `FullName`, `AdminEmail`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'Supun', 'supun@gmail.com', 'admin', 'ef9831f5edb5cfcf1faf892a390a983d', '2019-05-13 10:20:43');

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext,
  `date` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `description`, `date`) VALUES
(8, 'jhjhjh', 'grehgarjgefrw', '2019-05-16'),
(9, 'aaa', 'zasd', '2019-01-02');

-- --------------------------------------------------------

--
-- Table structure for table `digital`
--

CREATE TABLE `digital` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(45) NOT NULL,
  `path` mediumtext,
  `details` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `digital`
--

INSERT INTO `digital` (`id`, `name`, `type`, `path`, `details`) VALUES
(37, 'hjn', 'papers', 'papers/hjnread me.txt', 'ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff'),
(39, 'vhjwwd', 'reference', 'http://localhost/library/admin/add-reference.php', 'yuduwsg7'),
(40, 'xccvn', 'papers', 'papers/xccvnread me.txt', 'feghrh');

-- --------------------------------------------------------

--
-- Table structure for table `tblauthors`
--

CREATE TABLE `tblauthors` (
  `id` int(11) NOT NULL,
  `AuthorName` varchar(159) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblauthors`
--

INSERT INTO `tblauthors` (`id`, `AuthorName`, `creationDate`, `UpdationDate`) VALUES
(1, 'Anuj kumar', '2017-07-08 12:49:09', '2017-07-08 15:16:59'),
(2, 'Chetan Bhagatt', '2017-07-08 14:30:23', '2017-07-08 15:15:09'),
(3, 'Anita Desai', '2017-07-08 14:35:08', NULL),
(4, 'HC Verma', '2017-07-08 14:35:21', NULL),
(5, 'R.D. Sharma ', '2017-07-08 14:35:36', NULL),
(9, 'fwdfrwer', '2017-07-08 15:22:03', NULL),
(10, 'Ann', '2019-03-30 17:06:07', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblbooks`
--

CREATE TABLE `tblbooks` (
  `id` int(11) NOT NULL,
  `BookName` varchar(255) DEFAULT NULL,
  `CatId` int(11) DEFAULT NULL,
  `AuthorId` int(11) DEFAULT NULL,
  `ISBNNumber` int(11) DEFAULT NULL,
  `copies` int(11) NOT NULL,
  `BookPrice` int(11) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbooks`
--

INSERT INTO `tblbooks` (`id`, `BookName`, `CatId`, `AuthorId`, `ISBNNumber`, `copies`, `BookPrice`, `RegDate`, `UpdationDate`) VALUES
(1, 'PHP And MySql programming', 5, 1, 222333, 3, 20, '2017-07-08 20:04:55', '2019-03-16 17:35:01'),
(3, 'physics', 6, 4, 1111, 3, 15, '2017-07-08 20:17:31', '2019-03-16 17:35:07'),
(4, 'PHP', 8, 4, 2147483647, 3, 12000, '2019-03-14 18:39:20', '2019-03-16 17:35:13'),
(5, 'art skills', 4, 1, 5667, 0, 1000, '2019-03-19 07:56:02', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `id` int(11) NOT NULL,
  `CategoryName` varchar(150) DEFAULT NULL,
  `Status` int(1) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`id`, `CategoryName`, `Status`, `CreationDate`, `UpdationDate`) VALUES
(4, 'Romantic', 1, '2017-07-04 18:35:25', '2017-07-06 16:00:42'),
(5, 'Technology', 1, '2017-07-04 18:35:39', '2017-07-08 17:13:03'),
(6, 'Science', 1, '2017-07-04 18:35:55', '2019-03-31 08:57:26'),
(7, 'Management', 1, '2017-07-04 18:36:16', '2019-03-31 08:57:08'),
(8, 'Information Technology', 1, '2019-03-14 17:58:59', '2019-03-31 08:57:40'),
(9, 'music_one', 1, '2019-03-19 05:50:32', '2019-03-19 05:52:27');

-- --------------------------------------------------------

--
-- Table structure for table `tblissuedbookdetails`
--

CREATE TABLE `tblissuedbookdetails` (
  `id` int(11) NOT NULL,
  `BookId` int(11) DEFAULT NULL,
  `StudentID` varchar(150) DEFAULT NULL,
  `IssuesDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `ReturnDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `RetrunStatus` int(1) DEFAULT NULL,
  `fine` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblissuedbookdetails`
--

INSERT INTO `tblissuedbookdetails` (`id`, `BookId`, `StudentID`, `IssuesDate`, `ReturnDate`, `RetrunStatus`, `fine`) VALUES
(1, 1, 'MID002', '2017-07-15 06:09:47', '2019-03-20 07:06:47', 1, 0),
(2, 1, 'MID002', '2017-07-15 06:12:27', '2019-03-20 07:06:58', 1, 5),
(3, 3, 'MID002', '2017-07-15 06:13:40', '2019-03-20 07:07:05', 1, NULL),
(4, 3, 'MID002', '2017-07-15 06:23:23', '2019-03-20 07:07:09', 1, 2),
(5, 1, 'MID009', '2017-07-15 10:59:26', '2019-03-20 07:07:14', 1, 100),
(6, 3, 'MID011', '2017-07-15 18:02:55', '2019-03-20 07:07:19', 1, 0),
(7, 3, 'MID013', '2019-03-14 17:52:37', '2019-03-20 07:07:22', 1, 0),
(8, 3, 'MID012', '2019-03-16 17:44:50', '2019-03-20 07:07:26', 1, 0),
(9, 3, 'MID012', '2019-03-16 19:03:21', '2019-03-20 07:07:30', NULL, NULL),
(10, 1, 'MID012', '2019-03-18 06:22:42', '2019-03-20 07:07:34', NULL, NULL),
(11, 3, 'MID012', '2019-03-19 06:04:42', '2019-03-19 07:37:55', 1, 50),
(12, NULL, 'MID012', '2019-03-19 06:09:33', NULL, NULL, NULL),
(13, NULL, 'MID013', '2019-03-19 06:21:35', NULL, NULL, NULL),
(14, 3, 'MID012', '2019-03-19 07:58:31', '2019-03-19 07:58:49', 1, 790),
(15, 5, 'MID012', '2019-03-30 17:23:55', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblmessages`
--

CREATE TABLE `tblmessages` (
  `msgid` int(11) NOT NULL,
  `StudentId` varchar(100) NOT NULL,
  `susername` varchar(20) NOT NULL,
  `dusername` varchar(20) NOT NULL,
  `title` varchar(50) NOT NULL,
  `msg` varchar(500) NOT NULL,
  `read1` varchar(10) NOT NULL,
  `senddate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblstudents`
--

CREATE TABLE `tblstudents` (
  `id` int(11) NOT NULL,
  `StudentId` varchar(100) DEFAULT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `MobileNumber` char(11) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `Status` int(1) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblstudents`
--

INSERT INTO `tblstudents` (`id`, `StudentId`, `FullName`, `EmailId`, `MobileNumber`, `Password`, `Status`, `RegDate`, `UpdationDate`) VALUES
(11, 'MID012', 'Supun Weerasekara', 'supunkavvi1996@gmail.com', '0710833533', '81dc9bdb52d04dc20036dbd8313ed055', 1, '2019-03-14 06:38:41', '2019-03-19 04:48:26'),
(12, 'MID013', 'Kavindu Supun', 'hello@gmail.com', '0716353353', '8055caf0f2b8de6bdf327fa7db0d319c\n', 1, '2019-03-14 17:34:52', '2019-05-09 16:30:30'),
(13, 'MID014', 'Kavi', 'kavi@gmail.com', '0772244343', '81dc9bdb52d04dc20036dbd8313ed055', 1, '2019-03-18 18:41:51', NULL),
(14, 'MID015', 'iresha ganegala', 'iresha@gmail.com', '0770407772', 'f5ca2d0fea818f7c46b004aa04214791', 1, '2019-03-19 07:47:58', '2019-03-20 08:43:04'),
(15, 'MID016', 'niran', 'peiris@gmail.com', '0750879005', '25f9e794323b453885f5181f1b624d0b', 1, '2019-05-09 08:08:50', NULL),
(16, '1', 'kanishka', 'anishkasrinath2@gmail.com', '0776150352', '709c9806e5c8653058e1bffc7974bc91', 1, '2019-05-09 16:23:55', NULL),
(17, '2', 'test', 'test@yahoo.lk', '0112365478', '25f9e794323b453885f5181f1b624d0b', 1, '2019-05-09 16:31:59', NULL),
(18, '3', 'srinath', 'kanishkasrinath2@gmail.com', '0776150352', '6974f79226e959a9e86f854bf51e4665', 1, '2019-05-13 10:08:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblsuppliers`
--

CREATE TABLE `tblsuppliers` (
  `supid` int(11) NOT NULL,
  `supname` char(20) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `tpno` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsuppliers`
--

INSERT INTO `tblsuppliers` (`supid`, `supname`, `address`, `tpno`) VALUES
(4, 'sarasavi bookshop', 'colombo', 111233545),
(5, 'sarasavi bookshop', 'colombo', 111233545),
(6, 'Wasana Book Shop', 'Colombo', 1186473636),
(7, 'Sarasa', '15, Kandy', 812275461),
(8, 'zah', 'amtr', 24751);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `digital`
--
ALTER TABLE `digital`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblauthors`
--
ALTER TABLE `tblauthors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooks`
--
ALTER TABLE `tblbooks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblissuedbookdetails`
--
ALTER TABLE `tblissuedbookdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblmessages`
--
ALTER TABLE `tblmessages`
  ADD PRIMARY KEY (`msgid`),
  ADD UNIQUE KEY `StudentId` (`StudentId`);

--
-- Indexes for table `tblstudents`
--
ALTER TABLE `tblstudents`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `StudentId` (`StudentId`);

--
-- Indexes for table `tblsuppliers`
--
ALTER TABLE `tblsuppliers`
  ADD PRIMARY KEY (`supid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `digital`
--
ALTER TABLE `digital`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `tblauthors`
--
ALTER TABLE `tblauthors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `tblbooks`
--
ALTER TABLE `tblbooks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `tblissuedbookdetails`
--
ALTER TABLE `tblissuedbookdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `tblmessages`
--
ALTER TABLE `tblmessages`
  MODIFY `msgid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tblstudents`
--
ALTER TABLE `tblstudents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `tblsuppliers`
--
ALTER TABLE `tblsuppliers`
  MODIFY `supid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

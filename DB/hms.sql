-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 30, 2021 at 06:56 AM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 5.6.37

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `updationDate`) VALUES
(1, 'admin', '123457', '28-12-2016 11:42:05 AM');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `id` int(11) NOT NULL,
  `doctorSpecialization` varchar(255) DEFAULT NULL,
  `doctorId` int(11) DEFAULT NULL,
  `userId` varchar(30) DEFAULT NULL,
  `appointmentDate` varchar(255) DEFAULT NULL,
  `appointmentTime` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `doctorStatus` int(11) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `doctorSpecialization`, `doctorId`, `userId`, `appointmentDate`, `appointmentTime`, `postingDate`, `doctorStatus`, `updationDate`) VALUES
(16, 'Night duty', 10, 'ENG/15/COM/00008', '2021-07-28', '2:15 PM', '2021-07-16 13:06:29', 1, NULL),
(17, 'Night duty', 10, 'CST/17/IFT/00029', '2021-07-26', '2:15 PM', '2021-07-16 13:06:58', 1, '2021-07-29 04:12:06'),
(18, 'Morning duty', 1, 'ENG/15/COM/00008', '2021-07-13', '3:15 PM', '2021-07-16 14:13:18', 1, NULL),
(19, 'Morning duty', 4, 'ENG/15/CIV/00052', '2021-07-26', '3:30 PM', '2021-07-16 14:16:44', 1, '2021-07-29 08:23:17'),
(20, 'Night duty', 10, 'ENG/15/COM/00032', '2021-07-31', '4:45 AM', '2021-07-29 04:06:04', 0, '2021-07-29 09:52:22'),
(21, 'Morning duty', 1, 'ENG/15/COM/00008', '2021-08-02', '11:15 AM', '2021-07-30 03:09:39', 0, NULL),
(22, 'Morning duty', 1, 'CST/17/IFT/00029', '2021-08-02', '10:15 AM', '2021-07-30 03:12:00', 0, NULL),
(23, 'Morning duty', 1, 'ENG/15/CIV/00052', '2021-08-02', '11: AM', '2021-07-30 03:13:31', 0, NULL),
(24, 'Morning duty', 0, 'ENG/18/COM/00072', '2021-08-02', '4:15 AM', '2021-07-30 03:14:25', 0, NULL),
(25, 'Morning duty', 1, 'ENG/15/ELE/00098', '2021-08-02', '8:15 AM', '2021-07-30 03:16:17', 0, NULL),
(26, 'Morning duty', 1, 'ENG/18/COM/00072', '2021-08-02', '11:15 AM', '2021-07-30 03:17:55', 0, NULL),
(27, 'Afternoon duty', 2, 'ENG/18/COM/00057', '2021-08-02', '12:30 PM', '2021-07-30 03:18:42', 0, NULL),
(28, 'Afternoon duty', 2, 'AIS/17/ARA/00045', '2021-08-02', '1:30 PM', '2021-07-30 03:19:41', 0, NULL),
(29, 'Afternoon duty', 2, 'SMS/POL/18/00098', '2021-08-02', '2:30 PM', '2021-07-30 03:20:39', 0, NULL),
(30, 'Afternoon duty', 0, 'ENG/15/ELE/00008', '2021-08-02', '3:30 PM', '2021-07-30 03:21:19', 0, NULL),
(31, 'Afternoon duty', 2, 'AIS/15/HIS/00052', '2021-08-02', '4:30 PM', '2021-07-30 03:22:07', 0, NULL),
(32, 'Afternoon duty', 2, 'ENG/15/ELE/00008', '2021-08-02', '2:45 PM', '2021-07-30 03:24:34', 0, NULL),
(33, 'Night duty', 3, 'AIS/19/ENG/00008', '2021-08-02', '6:00 PM', '2021-07-30 03:26:19', 0, NULL),
(35, 'Night duty', 3, 'SMS/POL/17/00098', '2021-08-02', '9:30 PM', '2021-07-30 03:28:31', 0, NULL),
(36, 'Night duty', 3, 'CST/19/IFT/00029', '2021-08-02', '11:30 PM', '2021-07-30 03:29:20', 0, NULL),
(37, 'Night duty', 3, 'AIS/18/ARA/00045', '2021-08-02', '11:45 PM', '2021-07-30 03:30:09', 0, NULL),
(38, 'Night duty', 3, 'EDU/17/ECO/00011', '2021-08-02', '11:45 PM', '2021-07-30 03:34:07', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `doctorduty`
--

CREATE TABLE `doctorduty` (
  `id` int(11) NOT NULL,
  `duty` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctorduty`
--

INSERT INTO `doctorduty` (`id`, `duty`, `creationDate`, `updationDate`) VALUES
(1, 'Morning duty', '2016-12-28 06:37:25', '2021-07-15 05:23:50'),
(2, 'Afternoon duty', '2016-12-28 06:38:12', '2021-07-15 05:23:36'),
(3, 'Night duty', '2016-12-28 06:38:48', '2021-07-15 05:23:29');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` int(11) NOT NULL,
  `duty` varchar(255) DEFAULT NULL,
  `doctorName` varchar(255) DEFAULT NULL,
  `address` longtext,
  `contactno` bigint(11) DEFAULT NULL,
  `docEmail` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `duty`, `doctorName`, `address`, `contactno`, `docEmail`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'Morning duty', 'Dr. Fauz Uthman', 'BUK NEW CAMPUS', 234810345989, 'fauz@gmail.com', '11111111', '2017-01-07 07:45:09', '2021-07-29 12:42:01'),
(2, 'Afternoon duty', 'Dr. Muhammad Nur', 'BUK NEW CAMPUS', 234810453222, 'Mnur@gmail.com', '22222222', '2017-01-07 07:47:07', '2021-07-29 12:42:16'),
(3, 'Night duty', 'Dr. Musa Musa', 'BUK NEW CAMPUS', 234819900998, 'musa@gmail.com', '33333333', '2021-05-30 19:57:56', '2021-07-29 12:42:32');

-- --------------------------------------------------------

--
-- Table structure for table `doctorslog`
--

CREATE TABLE `doctorslog` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctorslog`
--

INSERT INTO `doctorslog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(20, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2021-05-05 21:46:25', '06-05-2021 03:27:33 AM', 1),
(21, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2021-05-25 10:49:26', '25-05-2021 04:23:45 PM', 1),
(22, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2021-05-25 19:29:16', NULL, 1),
(23, NULL, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-25 19:41:36', NULL, 0),
(24, NULL, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-25 19:41:39', NULL, 0),
(25, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2021-05-25 19:41:45', NULL, 1),
(26, NULL, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-25 20:16:38', NULL, 0),
(27, NULL, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-30 19:54:02', NULL, 0),
(28, 10, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-30 19:58:52', NULL, 1),
(29, 10, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-30 20:08:52', NULL, 1),
(30, 10, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-30 20:20:29', NULL, 1),
(31, 10, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-30 22:02:47', NULL, 1),
(32, 10, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-30 22:26:36', NULL, 1),
(33, 10, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-30 23:15:34', NULL, 1),
(34, 10, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-06 20:57:30', NULL, 1),
(35, 10, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-07 05:23:50', '07-07-2021 10:54:25 AM', 1),
(36, 10, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-15 17:49:38', NULL, 1),
(37, 10, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-15 19:01:04', NULL, 1),
(38, 10, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-15 19:08:03', NULL, 1),
(39, 10, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-16 12:39:28', '16-07-2021 06:09:47 PM', 1),
(40, 10, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-16 12:42:50', '16-07-2021 06:14:00 PM', 1),
(41, 10, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-16 12:50:25', NULL, 1),
(42, 10, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-16 13:08:33', '16-07-2021 07:40:59 PM', 1),
(43, 10, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-16 14:14:13', '16-07-2021 07:44:42 PM', 1),
(44, 10, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-16 14:17:38', '16-07-2021 07:48:25 PM', 1),
(45, 10, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-16 14:19:53', '16-07-2021 07:51:50 PM', 1),
(46, 4, 'fauz@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-16 14:22:29', '16-07-2021 07:53:18 PM', 1),
(47, 10, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-16 14:23:26', '16-07-2021 08:41:25 PM', 1),
(48, 10, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-16 15:11:34', '17-07-2021 12:21:07 PM', 1),
(49, 4, 'fauz@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-18 02:08:07', NULL, 1),
(50, 5, 'Mnur@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-18 16:56:55', '18-07-2021 11:35:50 PM', 1),
(51, 4, 'fauz@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-18 18:07:07', NULL, 1),
(52, 4, 'fauz@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-20 18:07:14', '20-07-2021 11:51:16 PM', 1),
(53, 10, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-20 18:37:30', '21-07-2021 12:07:39 AM', 1),
(54, 10, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-23 19:26:40', NULL, 1),
(55, 10, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-27 13:43:03', '27-07-2021 07:14:11 PM', 1),
(56, 10, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-27 15:05:24', '27-07-2021 08:36:06 PM', 1),
(57, 10, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-27 20:51:57', '28-07-2021 02:22:44 AM', 1),
(58, 10, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-28 18:18:12', '28-07-2021 11:49:59 PM', 1),
(59, 10, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-29 03:08:35', NULL, 1),
(60, NULL, 'ma@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-29 03:11:51', NULL, 0),
(61, 10, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-29 03:11:57', NULL, 1),
(62, 10, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-29 03:46:26', '29-07-2021 09:21:00 AM', 1),
(63, 10, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-29 03:51:12', '29-07-2021 09:21:33 AM', 1),
(64, 10, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-29 03:51:40', '29-07-2021 09:21:49 AM', 1),
(65, NULL, 'ma@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-29 03:57:56', NULL, 0),
(66, 10, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-29 03:58:01', NULL, 1),
(67, 10, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-29 05:33:30', '29-07-2021 11:21:23 AM', 1),
(68, 10, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-29 06:17:27', NULL, 1),
(69, 4, 'fauz@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-29 06:28:00', '29-07-2021 11:58:23 AM', 1),
(70, 10, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-29 06:28:33', '29-07-2021 12:51:30 PM', 1),
(71, 4, 'fauz@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-29 07:21:38', NULL, 1),
(72, 4, 'fauz@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-29 07:32:38', NULL, 1),
(73, 4, 'fauz@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-29 07:38:07', NULL, 1),
(74, 10, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-29 08:34:51', NULL, 1),
(75, 10, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-29 09:54:09', NULL, 1),
(76, 4, 'fauz@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-29 11:20:23', '29-07-2021 06:01:47 PM', 1),
(77, NULL, 'fauz@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-29 12:45:44', NULL, 0),
(78, 1, 'fauz@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-29 12:45:55', '29-07-2021 06:17:41 PM', 1),
(79, 2, 'Mnur@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-29 12:47:58', '29-07-2021 06:18:16 PM', 1),
(80, 3, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-29 12:48:44', NULL, 1),
(81, NULL, 'ma@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-29 14:13:23', NULL, 0),
(82, 1, 'fauz@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-29 14:13:28', NULL, 1),
(83, 1, 'fauz@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-29 18:45:29', NULL, 1),
(84, 1, 'fauz@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-30 03:10:25', NULL, 1),
(85, 1, 'fauz@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-30 03:14:48', NULL, 1),
(86, 1, 'fauz@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-30 03:16:37', NULL, 1),
(87, 1, 'fauz@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-30 03:22:44', '30-07-2021 08:52:54 AM', 1),
(88, 2, 'Mnur@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-30 03:23:05', NULL, 1),
(89, 2, 'Mnur@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-30 03:24:56', NULL, 1),
(90, NULL, 'aj@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-30 03:30:45', NULL, 0),
(91, NULL, 'aj@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-30 03:30:50', NULL, 0),
(92, NULL, 'aj@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-30 03:31:04', NULL, 0),
(93, 3, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-30 03:31:40', NULL, 1),
(94, 3, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-30 03:34:59', NULL, 1),
(95, NULL, 'aj@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-30 04:36:19', NULL, 0),
(96, 3, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-30 04:36:25', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pharmacy`
--

CREATE TABLE `pharmacy` (
  `id` int(11) NOT NULL,
  `PharmName` varchar(100) DEFAULT NULL,
  `contactNo` int(15) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updateDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pharmacy`
--

INSERT INTO `pharmacy` (`id`, `PharmName`, `contactNo`, `address`, `email`, `password`, `creationDate`, `updateDate`) VALUES
(1, 'Ajibola Kunle', 903324899, 'Kano BUK', 'aj@gmail.com', '123457', '2021-07-29 01:09:11', '2021-07-29 18:50:43');

-- --------------------------------------------------------

--
-- Table structure for table `pharmacylog`
--

CREATE TABLE `pharmacylog` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(250) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pharmacylog`
--

INSERT INTO `pharmacylog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(1, NULL, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-29 05:05:21', NULL, 0),
(2, 1, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-29 05:07:18', NULL, 1),
(3, 1, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-29 05:07:25', NULL, 1),
(4, 1, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-29 05:07:28', NULL, 1),
(5, NULL, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-29 05:09:47', NULL, 0),
(6, 1, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-29 05:10:15', NULL, 1),
(7, 1, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-29 05:51:27', NULL, 1),
(8, NULL, 'fauz@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-29 08:24:09', NULL, 0),
(9, 1, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-29 08:24:39', NULL, 1),
(10, 1, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-29 09:17:07', NULL, 1),
(11, 1, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-29 10:05:42', NULL, 1),
(12, 1, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-29 10:11:31', NULL, 1),
(13, NULL, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-29 18:47:22', NULL, 0),
(14, NULL, 'fauz@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-29 18:49:48', NULL, 0),
(15, NULL, 'Aj@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-29 18:50:20', NULL, 0),
(16, NULL, 'fauz@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-29 18:51:06', NULL, 0),
(17, NULL, 'aj@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-29 18:51:30', NULL, 0),
(18, NULL, 'fauz@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-29 18:51:36', NULL, 0),
(19, NULL, 'aj@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-29 18:52:07', NULL, 0),
(20, 1, 'aj@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-29 18:53:02', NULL, 1),
(21, 1, 'aj@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-30 03:35:51', NULL, 1),
(22, NULL, 'ma@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-30 03:36:20', NULL, 0),
(23, 1, 'aj@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-30 04:37:09', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactus`
--

CREATE TABLE `tblcontactus` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(12) DEFAULT NULL,
  `message` mediumtext,
  `PostingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `AdminRemark` mediumtext,
  `LastupdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `IsRead` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactus`
--

INSERT INTO `tblcontactus` (`id`, `fullname`, `email`, `contactno`, `message`, `PostingDate`, `AdminRemark`, `LastupdationDate`, `IsRead`) VALUES
(1, 'test user', 'test@gmail.com', 2523523522523523, ' This is sample text for the test.', '2019-06-29 19:03:08', 'Test Admin Remark', '2021-07-29 02:10:53', 1),
(2, 'Anuj kumar', 'phpgurukulofficial@gmail.com', 1111111111111111, ' This is sample text for testing.  This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing.', '2019-06-30 13:06:50', 'htfukhekhiehflkhjkl', '2021-06-06 21:39:33', 1),
(3, 'fdsfsdf', 'fsdfsd@ghashhgs.com', 3264826346, 'sample text   sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  ', '2019-11-10 18:53:48', 'vfdsfgfd', '2019-11-10 18:54:04', 1),
(4, 'Yunus', 'yunusisah123@gmail.com', 9033248408, ' love the site!!!!!', '2021-07-29 02:14:32', 'Done', '2021-07-29 02:18:47', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblmedicalhistory`
--

CREATE TABLE `tblmedicalhistory` (
  `ID` int(10) NOT NULL,
  `PatientID` int(10) DEFAULT NULL,
  `docName` varchar(250) DEFAULT NULL,
  `BloodPressure` varchar(200) DEFAULT NULL,
  `BloodSugar` varchar(200) NOT NULL,
  `Weight` varchar(100) DEFAULT NULL,
  `Temperature` varchar(200) DEFAULT NULL,
  `MedicalCon` mediumtext,
  `MedicalPres` mediumtext,
  `PharmStatus` int(11) DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblmedicalhistory`
--

INSERT INTO `tblmedicalhistory` (`ID`, `PatientID`, `docName`, `BloodPressure`, `BloodSugar`, `Weight`, `Temperature`, `MedicalCon`, `MedicalPres`, `PharmStatus`, `CreationDate`) VALUES
(2, 3, NULL, '120/185', '80/120', '85 Kg', '101 degree', '#Fever, #BP high\r\n1.Paracetamol\r\n2.jocib tab\r\n', NULL, NULL, '2019-11-06 04:20:07'),
(3, 2, NULL, '90/120', '92/190', '86 kg', '99 deg', '#Sugar High\r\n1.Petz 30', NULL, NULL, '2019-11-06 04:31:24'),
(4, 1, NULL, '125/200', '86/120', '56 kg', '98 deg', '# blood pressure is high\r\n1.koil cipla', NULL, NULL, '2019-11-06 04:52:42'),
(5, 1, NULL, '96/120', '98/120', '57 kg', '102 deg', '#Viral\r\n1.gjgjh-1Ml\r\n2.kjhuiy-2M', NULL, NULL, '2019-11-06 04:56:55'),
(6, 4, NULL, '90/120', '120', '56', '98 F', '#blood sugar high\r\n#Asthma problem', NULL, NULL, '2019-11-06 14:38:33'),
(7, 5, NULL, '80/120', '120', '85', '98.6', 'Rx\r\n\r\nAbc tab\r\nxyz Syrup', NULL, NULL, '2019-11-10 18:50:23'),
(8, 3, NULL, '1000', '10', '13', '0', 'having headache', NULL, NULL, '2021-05-05 21:49:39'),
(9, 3, NULL, '457', '21', '0', '0', 'FEVER', NULL, NULL, '2021-05-25 19:33:11'),
(10, 22, NULL, '20', '5', '70', '0', 'Panadol, Vitamin C, Glucose', NULL, NULL, '2021-07-16 15:04:46'),
(11, 23, NULL, '120', '10', '70', '37', 'Headache,fever', NULL, NULL, '2021-07-29 07:10:53'),
(12, 22, NULL, '20', '5', '13', '37', 'Pandol', NULL, NULL, '2021-07-16 15:07:45'),
(13, 23, NULL, '20', '5', '13', '0', 'hey', NULL, NULL, '2021-07-29 04:11:50'),
(14, 24, 'Dr. Musa Musa', '20', '10', '70', '30', 'Headache\r\n', 'hdgkyudwhdlu', 1, '2021-07-29 10:17:43'),
(15, 25, 'Dr. Musa Musa', '20', '5', '13', '30', 'good', 'fit', 1, '2021-07-29 10:15:54'),
(16, 25, 'Dr. Musa Musa', '20', '5', '70', '30', 'last', 'fever', 1, '2021-07-29 10:29:11');

-- --------------------------------------------------------

--
-- Table structure for table `tblpatient`
--

CREATE TABLE `tblpatient` (
  `ID` int(10) NOT NULL,
  `PatientName` varchar(200) DEFAULT NULL,
  `PatientReg` varchar(50) NOT NULL,
  `PatientDept` varchar(50) NOT NULL,
  `PatientContno` bigint(10) DEFAULT NULL,
  `PatientGender` varchar(50) DEFAULT NULL,
  `PatientAdd` mediumtext,
  `PatientAge` int(11) DEFAULT NULL,
  `PatientMedhis` mediumtext,
  `KinName` varchar(50) NOT NULL,
  `KinCon` varchar(50) NOT NULL,
  `kinRel` varchar(50) NOT NULL,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpatient`
--

INSERT INTO `tblpatient` (`ID`, `PatientName`, `PatientReg`, `PatientDept`, `PatientContno`, `PatientGender`, `PatientAdd`, `PatientAge`, `PatientMedhis`, `KinName`, `KinCon`, `kinRel`, `CreationDate`, `UpdationDate`) VALUES
(26, 'OLA ADEKUNLE', 'ENG/15/COM/00008', 'COMPUTER ENGINEERING', 8104751573, 'male', 'RIMINGATA KANO', 25, 'NORMAL', 'SEUN ADEKUNLE', '0810751573', 'BROTHER', '2021-07-30 00:20:43', NULL),
(27, 'YUNUSA ISAH', 'CST/17/IFT/00029', 'INFORMATION TECHNOLOGY', 9033248408, 'male', 'JAMBULO KANO', 23, 'NORMAL', 'YAKUB ISAH', '0810851573', 'BROTHER', '2021-07-30 00:22:46', NULL),
(28, 'IDRIS ABDULLAHI', 'ENG/15/CIV/00052', 'CIVIL ENGINEERING', 9055557785, 'male', 'RIMINGATA KANO', 24, 'NORMAL', 'IDRIS AISHAT', '08104751573', 'SISTER', '2021-07-30 00:24:24', NULL),
(29, 'OSANSANI AHMAD TIJJANI', 'ENG/18/COM/00072', 'COMPUTER ENGINEERING', 90977788909, 'male', 'RIJIYAHZAKI KANO', 22, 'NORMAL', 'OSANSANI ABDULKABIR', '07098785432', 'BROTHER', '2021-07-30 00:26:52', NULL),
(30, 'MARIAM AHMAD', 'ENG/15/ELE/00098', 'ELECTRICAL ENGINEERING', 9087543278, 'female', 'BUK NEWCAMPUS', 20, 'NORMAL', 'IDRIS AISHAT', '07098785789', 'SISTER', '2021-07-30 00:29:42', NULL),
(31, 'RUKAYYA ADEGOKE', 'ENG/18/COM/00057', 'COMPUTER ENGINEERING', 8141374845, 'female', 'BUK NEWCAMPUS', 22, 'NORMAL', 'ADEGOKE ZAINAB', '08099777879', 'SISTER', '2021-07-30 00:33:09', NULL),
(32, 'MUHAMMAD AISHAT', 'AIS/17/ARA/00045', 'ARABIC', 9089787543, 'female', 'BUK NEWCAMPUS', 18, 'ASMATIC PATIENT', 'YUSUF MUHAMMAD', '90134527890', 'BROTHER', '2021-07-30 00:42:38', NULL),
(33, 'HUSSIEN BAKO', 'SMS/POL/18/00098', 'POLITICAL SCIENCE', 9075432198, 'male', 'BUK OLDCAMPUS', 20, 'NORMAL', 'SADIQ BAKO', '08099775432', 'BROTHER', '2021-07-30 00:45:19', NULL),
(34, 'AMINU ABDULLAHI', 'ENG/15/ELE/00008', 'ELECTRICAL ENGINEERING', 917789085, 'male', 'BUK NEWCAMPUS', 24, 'NORMAL', 'AMINU ZAINAB', '09177890543', 'SISTER', '2021-07-30 00:47:35', NULL),
(35, 'IDRIS ABDULLAHI', 'AIS/15/HIS/00052', 'HISTORY', 9055557790, 'male', 'DAMBARI ', 21, 'NORMAL', 'IDRIS AISHAT', '0810851578', 'SISTER', '2021-07-30 00:49:28', NULL),
(36, 'ADEKUNLE JOY ABIGAIL', 'AIS/19/ENG/00008', 'ENGLISH', 903324878, 'female', 'BUK NEWCAMPUS', 22, 'NORMAL', 'OLA ADEKUNLE', '08107515737', 'BROTHER', '2021-07-30 00:52:30', NULL),
(37, 'JOY FELIX', 'EDU/17/ECO/00011', 'ECONOMICS EDUCATION', 9088757445, 'female', 'DAMBARI KANO', 23, 'NORMAL', ' ISAQ FELIX', '09087744445', 'BROTHER', '2021-07-30 03:01:15', NULL),
(38, 'AISHAT IBRAHIM', 'SMS/POL/17/00098', 'POLITICAL SCIENCE', 9087543231, 'female', 'BUK NEWCAMPUS', 22, 'NORMAL', 'IBRAHIM MUSA', '08099778854', 'BROTHER', '2021-07-30 03:03:49', NULL),
(39, 'MARIAM  YUSUF', 'CST/19/IFT/00029', 'INFORMATION TECHNOLOGY', 9088775432, 'female', 'RIMINGATA', 25, 'NORMAL', 'MUHAMMAD MUSA', '08107515000', 'BROTHER', '2021-07-30 03:05:45', NULL),
(40, 'OLA  AJIBOLA', 'AIS/18/ARA/00045', 'ARABIC', 8077889900, 'male', 'RIMINGATA', 18, 'NORMAL', 'OLUWADAMILOLA  AJIBOLA', '08099777800', 'SISTER', '2021-07-30 03:07:57', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblpatienttest`
--

CREATE TABLE `tblpatienttest` (
  `ID` int(10) NOT NULL,
  `PatientName` varchar(200) DEFAULT NULL,
  `PatientContno` bigint(10) DEFAULT NULL,
  `PatientEmail` varchar(200) DEFAULT NULL,
  `PatientGender` varchar(50) DEFAULT NULL,
  `PatientAdd` mediumtext,
  `PatientAge` int(10) DEFAULT NULL,
  `PatientMedhis` mediumtext,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpatienttest`
--

INSERT INTO `tblpatienttest` (`ID`, `PatientName`, `PatientContno`, `PatientEmail`, `PatientGender`, `PatientAdd`, `PatientAge`, `PatientMedhis`, `CreationDate`, `UpdationDate`) VALUES
(1, 'Yunus Isah', 903324840, 'yuunx@gmail.com', '', 'BUK', 12, 'GOOD', '2021-07-07 06:24:14', NULL),
(8, 'Test2 Test2', 9034435, 'test2@gmail.com', 'female', 'wokk', 23, 'no', '2021-07-07 06:49:16', NULL),
(9, 'Test Test', 485477, 'work@gmail.com', 'female', 'nnnnn', 23, 'mmm', '2021-07-07 06:52:29', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(24, 2, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-05 21:43:18', '06-05-2021 03:15:39 AM', 1),
(25, NULL, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2021-05-25 10:53:54', NULL, 0),
(26, NULL, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2021-05-25 19:34:21', NULL, 0),
(27, 2, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-25 19:34:28', NULL, 1),
(28, NULL, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-25 19:44:52', NULL, 0),
(29, NULL, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2021-05-25 19:44:55', NULL, 0),
(30, NULL, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2021-05-25 19:45:06', NULL, 0),
(31, NULL, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-25 19:45:42', NULL, 0),
(32, NULL, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-25 19:48:23', NULL, 0),
(33, 8, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-25 19:50:19', NULL, 1),
(34, 8, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-30 19:46:47', NULL, 1),
(35, NULL, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-30 20:07:37', NULL, 0),
(36, 8, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-30 20:07:46', NULL, 1),
(37, 8, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-30 21:15:50', NULL, 1),
(38, 8, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-30 22:11:16', NULL, 1),
(39, 8, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-30 22:30:10', NULL, 1),
(40, 8, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-30 23:14:21', NULL, 1),
(41, 8, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-30 23:14:39', NULL, 1),
(42, 8, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2021-05-30 23:15:47', NULL, 1),
(43, 8, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2021-06-06 20:48:20', NULL, 1),
(44, NULL, 'admin', 0x3a3a3100000000000000000000000000, '2021-07-05 02:22:30', NULL, 0),
(45, NULL, 'admin', 0x3a3a3100000000000000000000000000, '2021-07-05 02:22:49', NULL, 0),
(46, NULL, 'admin', 0x3a3a3100000000000000000000000000, '2021-07-05 02:23:47', NULL, 0),
(47, NULL, 'admin', 0x3a3a3100000000000000000000000000, '2021-07-05 02:24:09', NULL, 0),
(48, 8, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-07 05:21:54', '07-07-2021 10:53:37 AM', 1),
(49, 8, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-07 05:26:46', '07-07-2021 12:06:40 PM', 1),
(50, 8, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-07 06:36:51', NULL, 1),
(51, 8, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-12 19:07:51', NULL, 1),
(52, 8, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-12 20:19:57', NULL, 1),
(53, 8, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-12 21:26:09', NULL, 1),
(54, 8, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-14 17:40:11', '15-07-2021 11:19:20 PM', 1),
(55, 8, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-15 19:00:05', NULL, 1),
(56, 8, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-15 19:04:00', NULL, 1),
(57, 8, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-16 12:40:46', '16-07-2021 06:12:42 PM', 1),
(58, 8, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-16 13:05:24', NULL, 1),
(59, 8, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-16 14:11:08', '16-07-2021 07:44:05 PM', 1),
(60, 8, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-16 14:14:51', '16-07-2021 07:47:31 PM', 1),
(61, 8, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-17 06:51:41', '18-07-2021 07:33:17 AM', 1),
(62, NULL, 'fauz@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-20 18:22:37', NULL, 0),
(63, 8, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-20 18:22:43', '21-07-2021 12:07:22 AM', 1),
(64, 8, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-20 18:37:45', NULL, 1),
(65, 8, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-20 18:51:02', '21-07-2021 12:27:26 AM', 1),
(66, NULL, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-23 17:41:23', NULL, 0),
(67, NULL, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-23 17:41:36', NULL, 0),
(68, NULL, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-23 17:46:33', NULL, 0),
(69, 8, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-23 17:47:11', '24-07-2021 12:05:48 AM', 1),
(70, NULL, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-23 19:17:53', NULL, 0),
(71, NULL, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-23 19:18:02', NULL, 0),
(72, NULL, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-23 19:19:00', NULL, 0),
(73, NULL, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-23 19:19:15', NULL, 0),
(74, 8, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-23 19:20:24', '24-07-2021 12:56:30 AM', 1),
(75, 8, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-24 05:32:01', '24-07-2021 11:03:35 AM', 1),
(76, 8, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-27 13:18:10', NULL, 1),
(77, 8, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-27 15:03:27', '27-07-2021 08:35:06 PM', 1),
(78, NULL, 'admin', 0x3a3a3100000000000000000000000000, '2021-07-27 20:40:07', NULL, 0),
(79, 8, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-27 20:40:18', '28-07-2021 02:10:25 AM', 1),
(80, 8, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-27 20:50:42', '28-07-2021 02:21:45 AM', 1),
(81, 8, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-28 07:52:11', NULL, 1),
(82, 8, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-28 08:12:32', '28-07-2021 01:42:42 PM', 1),
(83, 8, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-28 10:41:37', NULL, 1),
(84, 8, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-28 18:15:07', '28-07-2021 11:48:04 PM', 1),
(85, NULL, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-29 03:06:13', NULL, 0),
(86, NULL, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-29 03:06:26', NULL, 0),
(87, NULL, 'fauz@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-29 03:06:35', NULL, 0),
(88, NULL, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-29 03:06:44', NULL, 0),
(89, NULL, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-29 03:10:08', NULL, 0),
(90, 11, 'ma@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-29 03:10:50', NULL, 1),
(91, NULL, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-29 03:42:23', NULL, 0),
(92, 11, 'ma@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-29 03:42:28', NULL, 1),
(93, 11, 'ma@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-29 03:51:58', NULL, 1),
(94, NULL, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-29 03:57:37', NULL, 0),
(95, 11, 'ma@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-29 03:57:45', NULL, 1),
(96, NULL, 'musa@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-29 10:55:46', NULL, 0),
(97, 11, 'ma@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-29 10:55:53', '29-07-2021 04:50:07 PM', 1),
(98, 11, 'ma@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-29 12:49:46', '29-07-2021 07:18:54 PM', 1),
(99, NULL, 'te@gmmail.com', 0x3a3a3100000000000000000000000000, '2021-07-29 17:11:37', NULL, 0),
(100, 11, 'ma@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-29 18:25:28', NULL, 1),
(101, 11, 'ma@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-29 18:58:03', '30-07-2021 08:40:15 AM', 1),
(102, 11, 'ma@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-30 03:11:10', NULL, 1),
(103, 11, 'ma@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-30 03:15:05', NULL, 1),
(104, 11, 'ma@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-30 03:17:00', NULL, 1),
(105, 11, 'ma@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-30 03:23:27', NULL, 1),
(106, 11, 'ma@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-30 03:25:22', NULL, 1),
(107, 11, 'ma@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-30 03:33:18', NULL, 1),
(108, 11, 'ma@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-30 03:36:38', NULL, 1),
(109, 11, 'ma@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-30 04:24:15', NULL, 1),
(110, NULL, 'admin', 0x3a3a3100000000000000000000000000, '2021-07-30 04:30:07', NULL, 0),
(111, 11, 'ma@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-30 04:30:20', '30-07-2021 10:01:06 AM', 1),
(112, NULL, 'admin', 0x3a3a3100000000000000000000000000, '2021-07-30 04:35:26', NULL, 0),
(113, 11, 'ma@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-30 04:35:36', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `address` longtext,
  `city` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `regDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullName`, `address`, `city`, `gender`, `email`, `password`, `regDate`, `updationDate`) VALUES
(11, 'Musa Ahmed', 'BUK NEW CAMPUS', 'Kano', 'male', 'ma@gmail.com', '123457', '2021-07-28 12:35:29', '2021-07-29 03:10:33');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctorduty`
--
ALTER TABLE `doctorduty`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctorslog`
--
ALTER TABLE `doctorslog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pharmacy`
--
ALTER TABLE `pharmacy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pharmacylog`
--
ALTER TABLE `pharmacylog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactus`
--
ALTER TABLE `tblcontactus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblmedicalhistory`
--
ALTER TABLE `tblmedicalhistory`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpatient`
--
ALTER TABLE `tblpatient`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpatienttest`
--
ALTER TABLE `tblpatienttest`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `doctorduty`
--
ALTER TABLE `doctorduty`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `doctorslog`
--
ALTER TABLE `doctorslog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `pharmacy`
--
ALTER TABLE `pharmacy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pharmacylog`
--
ALTER TABLE `pharmacylog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tblcontactus`
--
ALTER TABLE `tblcontactus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblmedicalhistory`
--
ALTER TABLE `tblmedicalhistory`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tblpatient`
--
ALTER TABLE `tblpatient`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `tblpatienttest`
--
ALTER TABLE `tblpatienttest`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

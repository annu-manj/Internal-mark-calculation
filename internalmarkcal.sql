-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: Feb 21, 2024 at 05:22 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `internalmarkcal`
--

-- --------------------------------------------------------

--
-- Table structure for table `studentmarks`
--

CREATE TABLE `studentmarks` (
  `id` int(11) NOT NULL,
  `regno` varchar(15) NOT NULL,
  `subcode` varchar(30) NOT NULL,
  `ss1` int(11) NOT NULL,
  `ss2` int(11) NOT NULL,
  `assign1` int(11) NOT NULL,
  `assign2` int(11) NOT NULL,
  `sem` int(11) NOT NULL,
  `atten` int(11) NOT NULL,
  `fullname` varchar(15) NOT NULL,
  `internalmarks` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `studentmarks`
--

INSERT INTO `studentmarks` (`id`, `regno`, `subcode`, `ss1`, `ss2`, `assign1`, `assign2`, `sem`, `atten`, `fullname`, `internalmarks`) VALUES
(35, 'mca202301', 'MC001CN', 7, 6, 5, 5, 2, 5, 'akshayasree', 30),
(36, 'mca202302', 'MC001CN', 10, 10, 3, 1, 2, 2, 'ananya manoj', 28),
(38, 'mca202304', 'MC001CN', 10, 6, 3, 5, 3, 4, 'asha merlin', 31),
(39, 'mca202305', 'MC001CN', 7, 8, 5, 5, 5, 5, 'Harini K', 35),
(40, 'mca202306', 'MC001CN', 9, 9, 4, 4, 4, 4, 'haripriya T', 34),
(41, 'mca202307', 'MC001CN', 10, 7, 5, 4, 5, 5, 'Akash E', 36),
(42, 'mca202308', 'MC001CN', 10, 10, 5, 5, 5, 5, 'Arun M', 40),
(43, 'mca202301', 'MC003WAD', 7, 6, 5, 5, 2, 5, 'akshayasree', 30),
(44, 'mca202302', 'MC003WAD', 10, 10, 3, 1, 2, 2, 'ananya manoj', 28),
(47, 'mca202303', 'MC003WAD', 10, 10, 5, 4, 3, 4, 'aswathi R', 36),
(48, 'mca202304', 'MC003WAD', 7, 7, 5, 5, 5, 5, 'asha merlin', 34),
(49, 'mca202305', 'MC003WAD', 10, 10, 5, 5, 5, 5, 'harini k', 40);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `regno` varchar(15) NOT NULL,
  `name` varchar(15) NOT NULL,
  `dob` date NOT NULL,
  `address` varchar(30) NOT NULL,
  `bg` varchar(5) NOT NULL,
  `contactno` int(10) NOT NULL,
  `internalmarks` float DEFAULT NULL,
  `subcode` varchar(15) NOT NULL,
  `ss1` float NOT NULL,
  `ss2` float NOT NULL,
  `ss3` float NOT NULL,
  `ss4` float NOT NULL,
  `ss5` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `regno`, `name`, `dob`, `address`, `bg`, `contactno`, `internalmarks`, `subcode`, `ss1`, `ss2`, `ss3`, `ss4`, `ss5`) VALUES
(4, 'mca202301', 'akshayasree', '2003-05-21', 'tambaram 600137', 'AB+', 214579630, NULL, 'MC001CN', 0, 0, 0, 0, 0),
(5, 'mca202302', 'ananya manoj', '2004-01-15', 'guindy 600137', 'AB-', 214685973, NULL, 'MC001CN', 0, 0, 0, 0, 0),
(6, 'mca202303', 'asha merlin', '2001-04-16', 'madurai 600137', 'B+', 217584963, NULL, 'MC001CN', 0, 0, 0, 0, 0),
(7, 'mca202304', 'aswathi R', '2001-08-10', 'tambaram 600137', 'B+', 2144859630, NULL, 'MC001CN', 0, 0, 0, 0, 0),
(8, 'mca202305', 'dharani ', '2000-05-09', 'guindy 600137', 'AB+', 2144568978, NULL, 'MC001CN', 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `stulogin`
--

CREATE TABLE `stulogin` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stulogin`
--

INSERT INTO `stulogin` (`id`, `username`, `password`) VALUES
(1, 'mca202301', 'mca202301'),
(2, 'mca202302', 'mca202302');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `id` int(11) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(15) NOT NULL,
  `subcode` varchar(15) NOT NULL,
  `subname` varchar(30) NOT NULL,
  `DOB` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`id`, `username`, `password`, `subcode`, `subname`, `DOB`) VALUES
(1, 'TUNOM0123', '789456123', 'MC001CN', 'Computer Networks', '12/04/2002'),
(2, 'TUNOM0123', '789456123', 'MC002DB', 'database management', ''),
(3, 'TUNOM0124', '789456123', 'MC003WAD', 'Web Application Development', ''),
(4, 'TUNOM0125', '789456123', 'MCA200CC', 'cloud computing', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `studentmarks`
--
ALTER TABLE `studentmarks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stulogin`
--
ALTER TABLE `stulogin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `studentmarks`
--
ALTER TABLE `studentmarks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `stulogin`
--
ALTER TABLE `stulogin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

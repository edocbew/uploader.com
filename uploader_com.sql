-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 17, 2017 at 08:37 AM
-- Server version: 10.1.22-MariaDB
-- PHP Version: 7.0.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uploader.com`
--
CREATE DATABASE IF NOT EXISTS `uploader.com` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `uploader.com`;

-- --------------------------------------------------------

--
-- Table structure for table `About`
--

DROP TABLE IF EXISTS `About`;
CREATE TABLE `About` (
  `Username` varchar(255) NOT NULL,
  `PP` varchar(255) DEFAULT NULL,
  `Desig` varchar(255) DEFAULT NULL,
  `Quote` varchar(255) DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `About`
--

INSERT INTO `About` (`Username`, `PP`, `Desig`, `Quote`, `Name`) VALUES
('amitabhbn', NULL, 'Web Developer', 'There\'s something about scripting!', 'Amitabh Banerjee'),
('tsapkota', NULL, 'Web Developer', 'Some Quote', 'Tejaswini Sapkota');

-- --------------------------------------------------------

--
-- Table structure for table `Files`
--

DROP TABLE IF EXISTS `Files`;
CREATE TABLE `Files` (
  `Username` varchar(255) NOT NULL,
  `DPath` varchar(255) DEFAULT NULL,
  `NFiles` int(10) NOT NULL DEFAULT '0',
  `FStatus` varchar(1) NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Files`
--

INSERT INTO `Files` (`Username`, `DPath`, `NFiles`, `FStatus`) VALUES
('amitabhbn', 'uploads/c9ee4afb7f31d582d184a0a48e44ba8dd4', 0, 'Y'),
('tsapkota', 'uploads/67d6ce531100421fee511e6886740481d3', 0, 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `Main`
--

DROP TABLE IF EXISTS `Main`;
CREATE TABLE `Main` (
  `ID` int(100) NOT NULL,
  `Username` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Hash` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Main`
--

INSERT INTO `Main` (`ID`, `Username`, `Email`, `Hash`) VALUES
(1, 'amo', 'amit@a.a', 'jjfhfj'),
(3, 'tsapkota', 'tejaswinisapkota997@gmail.com', '$2y$12$0ufqSOdEJ8hXjSYogiiFfOvPjwnX8JcMYbjlqS/3ITKXl1DcwPUxe'),
(4, 'amitabhbn', 'amitabhbnrj@gmail.com', '$2y$12$sra4kmL6B9JHTaSdgxmLueChVCzC./xuCuoNAnyJwFhXrEJgkDZlO');

-- --------------------------------------------------------

--
-- Table structure for table `Status`
--

DROP TABLE IF EXISTS `Status`;
CREATE TABLE `Status` (
  `Username` varchar(255) NOT NULL,
  `LStatus` varchar(2) NOT NULL DEFAULT 'N',
  `CStatus` varchar(2) NOT NULL DEFAULT 'N',
  `Code` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Status`
--

INSERT INTO `Status` (`Username`, `LStatus`, `CStatus`, `Code`) VALUES
('amitabhbn', 'Y', 'Y', 'be1d2bfb701c11ae926581420a0c68f8cf0f5d1d'),
('tsapkota', 'Y', 'Y', '9f41d032cd936b18e3730ee1fb29cb1f54f29152');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `About`
--
ALTER TABLE `About`
  ADD PRIMARY KEY (`Username`);

--
-- Indexes for table `Files`
--
ALTER TABLE `Files`
  ADD PRIMARY KEY (`Username`);

--
-- Indexes for table `Main`
--
ALTER TABLE `Main`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Username` (`Username`,`Email`);

--
-- Indexes for table `Status`
--
ALTER TABLE `Status`
  ADD PRIMARY KEY (`Username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Main`
--
ALTER TABLE `Main`
  MODIFY `ID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

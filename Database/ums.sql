-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 31, 2020 at 03:44 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ums`
--

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `COURSE_ID` varchar(15) NOT NULL,
  `COURSE_NAME` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`COURSE_ID`, `COURSE_NAME`) VALUES
('SENG 1111', 'Object Oriented Programming'),
('SENG 11112', 'Database Design & Development'),
('SENG 11113', 'Data Structures & Algorithms'),
('SENG 11114', 'Management for Software Engineering'),
('SENG 11115', 'Discrete Mathematics for Computing');

-- --------------------------------------------------------

--
-- Table structure for table `courseenrol`
--

CREATE TABLE `courseenrol` (
  `USERNAME` varchar(20) NOT NULL,
  `COURSE_ID` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `courseenrol`
--

INSERT INTO `courseenrol` (`USERNAME`, `COURSE_ID`) VALUES
('wvGithmi', 'SENG 11111 '),
('wvGithmi', 'SENG 11112 '),
('wvGithmi', 'SENG 11113 ');

-- --------------------------------------------------------

--
-- Table structure for table `lecturer`
--

CREATE TABLE `lecturer` (
  `LEC_ID` varchar(15) NOT NULL,
  `LEC_NAME` varchar(50) NOT NULL,
  `USERNAME` varchar(20) NOT NULL,
  `PASSWORD` varchar(20) NOT NULL,
  `AGE` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lecturer`
--

INSERT INTO `lecturer` (`LEC_ID`, `LEC_NAME`, `USERNAME`, `PASSWORD`, `AGE`) VALUES
('001', 'Nalin Warnajith', 'nWarnajith', '123W', 45),
('002', 'Lankeshwara Munasinghe', 'mLankeshwara', '123L', 45),
('003', 'Isuru Hewapathirana', 'hIsuru', '123I', 35),
('004', 'Tiroshan Madushanka', 'mTiroshan', '456TM', 0);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `INDEX_NO` varchar(20) NOT NULL,
  `STU_NAME` varchar(50) NOT NULL,
  `USERNAME` varchar(20) NOT NULL,
  `PASSWORD` varchar(20) NOT NULL,
  `AGE` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`INDEX_NO`, `STU_NAME`, `USERNAME`, `PASSWORD`, `AGE`) VALUES
('SE/2017/048', 'Bimali Chathunika', 'bChathu', '123B', 23),
('SE/2017/020', 'Chamodi Jayodya', 'chamo', '123CH', 24),
('SE/2017/004', 'Pasindu Chinthna', 'edpChinthana', '456p', 22),
('SE/2017/23', 'Sunanda Karunajeewa', 'Sunanda', '123S', 24),
('SE/2017/048', 'Githmi Anjana', 'wvGithmi', '123G', 22);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`COURSE_ID`);

--
-- Indexes for table `courseenrol`
--
ALTER TABLE `courseenrol`
  ADD PRIMARY KEY (`USERNAME`,`COURSE_ID`);

--
-- Indexes for table `lecturer`
--
ALTER TABLE `lecturer`
  ADD PRIMARY KEY (`LEC_ID`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`USERNAME`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

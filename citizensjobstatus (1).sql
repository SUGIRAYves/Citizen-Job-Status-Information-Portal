-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 23, 2022 at 07:03 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `citizensjobstatus`
--

-- --------------------------------------------------------

--
-- Table structure for table `citizen`
--

CREATE TABLE `citizen` (
  `id` int(11) NOT NULL,
  `cid` varchar(25) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `age` varchar(3) NOT NULL,
  `sex` varchar(11) NOT NULL,
  `status` varchar(50) NOT NULL,
  `company` varchar(50) NOT NULL,
  `salary` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `citizen`
--

INSERT INTO `citizen` (`id`, `cid`, `fullname`, `address`, `age`, `sex`, `status`, `company`, `salary`) VALUES
(16, '1199980143175007', 'YVES Sugira', 'Rubavu', '22', 'Male', 'Employed', '@rigus', '140,000 RWF'),
(17, '1199980143175001', 'UMWALI Yvette', 'Rubavu', '22', 'Female', 'Unemployed ', 'NONE', 'NONE'),
(18, '1199980143175002', 'UMUHIRE Prince', 'Kigali', '20', 'Male', 'Unemployed ', 'NONE', 'NONE'),
(19, '1199980143175003', 'UFITIMANA Steven  ', 'NYABIHU', '19', 'Male', 'Student', 'NONE', 'NONE'),
(20, '1199980143175004', 'UFITNEMA Kevin ', 'MUSANZE', '13', 'Female', 'Student', 'NONE', 'NONE'),
(21, '1199980143175005', 'ARINATWE Cedrick ', 'RUBAVU', '10', 'Male', 'Employed', 'NONE', 'NONE'),
(22, '1199980143175006', 'NISHIMWE Lucky ', 'Rubavu', '8', 'Male', 'Student', 'NONE', 'NONE'),
(23, '1199980143175008', 'IRAKOZE Pamela ', 'rubavu', '2', 'Female', 'Unemployed ', 'NONE', 'NONE'),
(24, '1199980143175009', 'TEGEKA Samson', 'Rubavu', '48', 'Male', 'Employed', 'URUMURI', '600,000RWF'),
(25, '1199980143175010', 'MUKANKUSI Jeannine', 'RUBAVU', '47', 'Female', 'Employed', 'Tailor ', '160,000RWF'),
(28, '1199980143175000', 'BAHIZI Phillipe ', 'BYAHI', '40', 'Male', 'Employed', 'FARMER', '30,000 RWF'),
(29, '1199980143175077', 'BYAMUNGU Lewis', 'Ruhango', '24', 'Male', 'Employed', 'BMG Group', '250,000RWF'),
(30, '1199980143175080', 'TURAHIRWA Djibril', 'NYAMYUMBA', '23', 'Male', 'Student', 'NONE', 'NONE');

-- --------------------------------------------------------

--
-- Table structure for table `collector`
--

CREATE TABLE `collector` (
  `id` int(11) NOT NULL,
  `FullName` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `collector`
--

INSERT INTO `collector` (`id`, `FullName`, `email`, `username`, `password`) VALUES
(1, 'Yves SUGIRA', 'yves445@gmail.com', 'sugira', 'sugira'),
(2, 'TURAHIRWA Djibril', 'djibril@gmail.com', 'djibu1000', 'jibu');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `citizen`
--
ALTER TABLE `citizen`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cid` (`cid`);

--
-- Indexes for table `collector`
--
ALTER TABLE `collector`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `citizen`
--
ALTER TABLE `citizen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `collector`
--
ALTER TABLE `collector`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

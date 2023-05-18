-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 06, 2022 at 11:36 AM
-- Server version: 5.7.23-23
-- PHP Version: 7.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecoviwhj_leaderexim`
--

-- --------------------------------------------------------

--
-- Table structure for table `hca_admin_login`
--

CREATE TABLE `hca_admin_login` (
  `ID` int(11) NOT NULL,
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(5) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hca_book_appointment`
--

CREATE TABLE `hca_book_appointment` (
  `ID` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `appointment_date` date NOT NULL,
  `appointment_reason` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `appointment_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hca_chat_db`
--

CREATE TABLE `hca_chat_db` (
  `ID` int(11) NOT NULL,
  `Disease` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Symptoms` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `Medicines` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `Remedies` varchar(1000) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hca_doctor_registration`
--

CREATE TABLE `hca_doctor_registration` (
  `ID` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `MobileNumber` varchar(10) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `Status` varchar(20) NOT NULL,
  `SpecializedIn` varchar(50) NOT NULL,
  `Experience` int(3) NOT NULL,
  `Address` varchar(1000) NOT NULL,
  `Pincode` varchar(100) NOT NULL,
  `City` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `hca_doctor_vc_link`
--

CREATE TABLE `hca_doctor_vc_link` (
  `ID` int(11) NOT NULL,
  `Doctor_ID` int(11) NOT NULL,
  `Link` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hca_govt_schemes`
--

CREATE TABLE `hca_govt_schemes` (
  `ID` int(11) NOT NULL,
  `Name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `StartDate` date NOT NULL,
  `EndDate` date NOT NULL,
  `Website` varchar(500) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hca_patient_registration`
--

CREATE TABLE `hca_patient_registration` (
  `ID` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `MobileNumber` varchar(10) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `Status` varchar(20) NOT NULL,
  `Address` varchar(1000) NOT NULL,
  `Pincode` varchar(100) NOT NULL,
  `City` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hca_admin_login`
--
ALTER TABLE `hca_admin_login`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `hca_book_appointment`
--
ALTER TABLE `hca_book_appointment`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `hca_chat_db`
--
ALTER TABLE `hca_chat_db`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `hca_doctor_registration`
--
ALTER TABLE `hca_doctor_registration`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `hca_doctor_vc_link`
--
ALTER TABLE `hca_doctor_vc_link`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `hca_govt_schemes`
--
ALTER TABLE `hca_govt_schemes`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `hca_patient_registration`
--
ALTER TABLE `hca_patient_registration`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hca_admin_login`
--
ALTER TABLE `hca_admin_login`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hca_book_appointment`
--
ALTER TABLE `hca_book_appointment`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hca_chat_db`
--
ALTER TABLE `hca_chat_db`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hca_doctor_registration`
--
ALTER TABLE `hca_doctor_registration`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hca_doctor_vc_link`
--
ALTER TABLE `hca_doctor_vc_link`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hca_govt_schemes`
--
ALTER TABLE `hca_govt_schemes`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hca_patient_registration`
--
ALTER TABLE `hca_patient_registration`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 18, 2024 at 01:32 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hospital_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `accountdept`
--

CREATE TABLE `accountdept` (
  `Patient_ID` int(10) NOT NULL,
  `Reference_ID` int(10) NOT NULL,
  `Amount` int(10) NOT NULL,
  `PaymentStatus` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `accountdept`
--

INSERT INTO `accountdept` (`Patient_ID`, `Reference_ID`, `Amount`, `PaymentStatus`) VALUES
(1, 1, 50000, 'Not_Paid');

-- --------------------------------------------------------

--
-- Table structure for table `acc_login`
--

CREATE TABLE `acc_login` (
  `AccDept_ID` int(6) NOT NULL,
  `Password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `acc_login`
--

INSERT INTO `acc_login` (`AccDept_ID`, `Password`) VALUES
(1012364, 'test1234');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `Patient_ID` int(50) NOT NULL,
  `Patient_Name` varchar(25) NOT NULL,
  `Appointment_DT` datetime NOT NULL,
  `Doctor_ID` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`Patient_ID`, `Patient_Name`, `Appointment_DT`, `Doctor_ID`) VALUES
(1, 'Ajay', '2024-03-20 11:00:00', 10011),
(2, 'Suresh', '2024-03-17 18:30:00', 10011),
(3, 'jaya', '2024-03-21 11:00:00', 10011);

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `Doctor_ID` int(11) NOT NULL,
  `Doctor_Name` varchar(50) NOT NULL,
  `Specialization` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`Doctor_ID`, `Doctor_Name`, `Specialization`) VALUES
(10011, 'Dr_Kishore', 'Cardiologist'),
(10012, 'Dr_Nagesh', 'Cardiologist'),
(10021, 'Dr_Keerthi', 'Nephrologist'),
(10022, 'Dr_Prasad', 'Nephrologist'),
(10031, 'Dr_Ganesh', 'Neurologist'),
(10032, 'Dr_Jaya', 'Neurologist'),
(10041, 'Dr_Dhrithi', 'Pulmonologist'),
(10042, 'Dr_Prakash', 'Pulmonologist'),
(10051, 'Dr_Geetha', 'Paediatrian'),
(10052, 'Dr_Parvathi', 'Paediatrian');

-- --------------------------------------------------------

--
-- Table structure for table `doctor_login`
--

CREATE TABLE `doctor_login` (
  `Doctor_ID` int(5) NOT NULL,
  `Password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `doctor_login`
--

INSERT INTO `doctor_login` (`Doctor_ID`, `Password`) VALUES
(10011, 'Kishore123'),
(10012, 'Nagesh123'),
(10021, 'KeerthiN05');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `Patient_ID` int(20) NOT NULL,
  `Password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`Patient_ID`, `Password`) VALUES
(1, 'ajay123'),
(2, 'sn1234'),
(3, 'jaya123');

-- --------------------------------------------------------

--
-- Table structure for table `medicalrecord`
--

CREATE TABLE `medicalrecord` (
  `Patient_ID` int(10) NOT NULL,
  `Patient_Name` varchar(25) NOT NULL,
  `Diagnosis` varchar(50) NOT NULL,
  `Drugs` varchar(50) NOT NULL,
  `Date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `medicalrecord`
--

INSERT INTO `medicalrecord` (`Patient_ID`, `Patient_Name`, `Diagnosis`, `Drugs`, `Date`) VALUES
(1, 'Ajay', 'Ischemia', 'Aspirin', '2024-03-05 13:52:45');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `Patient_ID` int(11) NOT NULL,
  `firstName` varchar(25) NOT NULL,
  `lastName` varchar(25) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `Phone_number` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`Patient_ID`, `firstName`, `lastName`, `Gender`, `Phone_number`) VALUES
(1, 'Ajay', 'Kumar', 'male', 990011445),
(2, 'Suresh', 'Narayan', 'male', 991122345),
(3, 'jaya', 'd', 'f', 990011223);

-- --------------------------------------------------------

--
-- Table structure for table `registerform`
--

CREATE TABLE `registerform` (
  `firstName` varchar(25) NOT NULL,
  `lastName` varchar(25) NOT NULL,
  `Patient_ID` int(11) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `Phone_number` int(10) NOT NULL,
  `Password` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `registerform`
--

INSERT INTO `registerform` (`firstName`, `lastName`, `Patient_ID`, `Gender`, `Phone_number`, `Password`) VALUES
('Ajay', 'Kumar', 1, 'm', 990015123, 'ajay123'),
('Suresh', 'Narayan', 2, 'm', 991122345, 'sn1234'),
('jaya', 'd', 3, 'f', 990011223, 'jaya123');

--
-- Triggers `registerform`
--
DELIMITER $$
CREATE TRIGGER `insert_login` AFTER INSERT ON `registerform` FOR EACH ROW INSERT INTO login VALUES(NEW.Patient_ID,NEW.Password)
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `insert_patient` AFTER INSERT ON `registerform` FOR EACH ROW INSERT INTO patient VALUES(NEW.Patient_ID,NEW.firstName,NEW.lastName,NEW.Gender,NEW.Phone_number)
$$
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accountdept`
--
ALTER TABLE `accountdept`
  ADD PRIMARY KEY (`Reference_ID`,`Patient_ID`);

--
-- Indexes for table `acc_login`
--
ALTER TABLE `acc_login`
  ADD PRIMARY KEY (`AccDept_ID`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`Patient_ID`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`Doctor_ID`);

--
-- Indexes for table `doctor_login`
--
ALTER TABLE `doctor_login`
  ADD PRIMARY KEY (`Doctor_ID`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`Patient_ID`);

--
-- Indexes for table `medicalrecord`
--
ALTER TABLE `medicalrecord`
  ADD PRIMARY KEY (`Patient_ID`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`Patient_ID`);

--
-- Indexes for table `registerform`
--
ALTER TABLE `registerform`
  ADD PRIMARY KEY (`Patient_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accountdept`
--
ALTER TABLE `accountdept`
  MODIFY `Reference_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `Doctor_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10053;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `Patient_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `registerform`
--
ALTER TABLE `registerform`
  MODIFY `Patient_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

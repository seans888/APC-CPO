-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 18, 2015 at 04:47 PM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `refstudent`
--

-- --------------------------------------------------------

--
-- Table structure for table `refstudent`
--

CREATE TABLE IF NOT EXISTS `refstudent` (
  `student_id` char(11) NOT NULL,
  `student_last_name` varchar(25) NOT NULL,
  `student_first_name` varchar(30) NOT NULL,
  `student_middle_name` varchar(25) NOT NULL,
  `birth_date` date NOT NULL DEFAULT '0000-00-00',
  `birth_place` varchar(35) CHARACTER SET utf8 NOT NULL,
  `admission_date` date NOT NULL DEFAULT '0000-00-00',
  `entry_level` enum('Freshman','Transferee','Cross Enrollee','2nd Degree','Graduate School') DEFAULT 'Freshman',
  `admission_credential` varchar(2500) DEFAULT NULL,
  `mail_grades_to` enum('Father','Mother','Guardian','Student') NOT NULL DEFAULT 'Father',
  `exit_level` enum('NA','Graduate','Transferred') DEFAULT 'NA',
  `nationality` enum('Filipino','Others') NOT NULL DEFAULT 'Filipino',
  `gender` enum('Male','Female') NOT NULL DEFAULT 'Male',
  `address` varchar(250) NOT NULL,
  `postal_code` varchar(250) DEFAULT NULL,
  `tel_num` varchar(250) DEFAULT NULL,
  `mobile_num` varchar(255) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `religion` varchar(25) DEFAULT NULL,
  `civil_status` enum('Single','Married','Separated','Widowed') NOT NULL DEFAULT 'Single',
  `box_num` varchar(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Masterlist of Student Main Profile';

--
-- Dumping data for table `refstudent`
--

INSERT INTO `refstudent` (`student_id`, `student_last_name`, `student_first_name`, `student_middle_name`, `birth_date`, `birth_place`, `admission_date`, `entry_level`, `admission_credential`, `mail_grades_to`, `exit_level`, `nationality`, `gender`, `address`, `postal_code`, `tel_num`, `mobile_num`, `email`, `religion`, `civil_status`, `box_num`) VALUES
('2012-100019', 'Hocosol', 'Liza', 'Bayeta', '1995-03-06', 'Pasay, Metro Manila', '2012-05-13', 'Freshman', NULL, 'Guardian', 'Graduate', 'Filipino', 'Female', 'B 5 L 30 Villa Sorteo, Carmona Cavite', '4114', '(046)4430557', '09056218749', 'lbhocosol68@ygmail.com', 'Catholic', 'Single', '616'),
('2012-100088', 'Trasmonte', 'Marie Kathleen', 'Aggabao', '1995-11-11', 'Metro Manila', '2012-05-15', 'Freshman', NULL, 'Mother', 'Graduate', 'Filipino', 'Female', '13 Malugay St., Pilar Village, Las Piñas City', '1740', '(02)801-91-58', '09439278433', 'matrasmonte@student.apc.edu.ph', 'Roman Catholic', 'Single', '611'),
('2012-100213', 'Olalo', 'Christine Mae', 'Velasco', '1996-06-02', 'Pasig City', '2012-05-13', 'Freshman', NULL, 'Mother', 'Graduate', 'Filipino', 'Female', '35 Ranger St. Zone 4 Signal Village Taguig City', '1631', '2382765', '09264484896', 'chrmaeolalo@gmail.com', 'Catholic', 'Single', '1608');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `refstudent`
--
ALTER TABLE `refstudent`
  ADD PRIMARY KEY (`student_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

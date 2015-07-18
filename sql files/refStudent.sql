-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 16, 2015 at 07:51 AM
-- Server version: 5.6.16
-- PHP Version: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `AREG`
--

-- --------------------------------------------------------

--
-- Table structure for table `refStudent`
--

CREATE TABLE IF NOT EXISTS `refStudent` (
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
  `box_num` varchar(250) NOT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Masterlist of Student Main Profile';

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

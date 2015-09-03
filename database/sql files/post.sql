-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 03, 2015 at 11:57 AM
-- Server version: 5.5.32
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `apc-cpo`
--

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE IF NOT EXISTS `post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `body` varchar(255) NOT NULL,
  `attach_file` varchar(255) DEFAULT NULL,
  `upload_file` varchar(255) DEFAULT NULL,
  `person_id` int(11) NOT NULL,
  `target_people` enum('Pre-interns','Intern1','Intern2','Both Intern1 and Intern2','All Interns') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `title`, `date`, `body`, `attach_file`, `upload_file`, `person_id`, `target_people`) VALUES
(1, 'Submission of Accomplishment Reports', '2015-08-31', 'The accomplishment reports should be submitted everyday.', 'a5661c55871c0ea848af5ca97e1cdae4d71a704bhj.png', 'upload file', 7, 'Intern1'),
(2, 'Submission of Attendance Reports', '2015-08-30', 'The attendance reports should be submitted everyday.', 'attach file', 'upload file', 7, 'Both Intern1 and Intern2');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

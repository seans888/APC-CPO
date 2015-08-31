-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 31, 2015 at 05:06 AM
-- Server version: 5.6.25
-- PHP Version: 5.6.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `apc-cpo`
--

-- --------------------------------------------------------

--
-- Table structure for table `accomplishment`
--

CREATE TABLE IF NOT EXISTS `accomplishment` (
  `id` int(11) NOT NULL,
  `student_id` char(11) NOT NULL,
  `date` date NOT NULL,
  `accomplishment` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE IF NOT EXISTS `attendance` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `time_in` time NOT NULL,
  `time_out` time NOT NULL,
  `student_id` char(11) NOT NULL,
  `hr_head` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cobalt_reporter`
--

CREATE TABLE IF NOT EXISTS `cobalt_reporter` (
  `module_name` varchar(255) NOT NULL,
  `report_name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `show_field` blob NOT NULL,
  `operator` blob NOT NULL,
  `text_field` blob NOT NULL,
  `sum_field` blob NOT NULL,
  `count_field` blob NOT NULL,
  `group_field` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE IF NOT EXISTS `comment` (
  `id` int(11) NOT NULL,
  `body` text NOT NULL,
  `date` date NOT NULL,
  `person_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eval_dtl`
--

CREATE TABLE IF NOT EXISTS `eval_dtl` (
  `id` int(11) NOT NULL,
  `questionnaire_id` int(11) NOT NULL,
  `eval_hdr_id` int(11) NOT NULL,
  `response_rating` int(11) NOT NULL,
  `response_detail` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `eval_hdr`
--

CREATE TABLE IF NOT EXISTS `eval_hdr` (
  `id` int(11) NOT NULL,
  `student_id` char(11) NOT NULL,
  `date_submit` date NOT NULL,
  `date_eval` date NOT NULL,
  `school_yr` varchar(255) NOT NULL,
  `date_discussed` date NOT NULL,
  `subj` varchar(45) NOT NULL,
  `industry_prof` varchar(255) NOT NULL,
  `rcv_by` varchar(255) NOT NULL,
  `rcv_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `final_paper_dtl`
--

CREATE TABLE IF NOT EXISTS `final_paper_dtl` (
  `id` int(11) NOT NULL,
  `final_paper_hdr_id` int(11) NOT NULL,
  `questionnaire_id` int(11) NOT NULL,
  `response` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `final_paper_hdr`
--

CREATE TABLE IF NOT EXISTS `final_paper_hdr` (
  `id` int(11) NOT NULL,
  `student_id` char(11) NOT NULL,
  `attachment` varchar(255) DEFAULT NULL,
  `date_submitted` date NOT NULL,
  `rating` int(11) DEFAULT NULL,
  `rcv_by` varchar(255) NOT NULL,
  `rcv_date` date NOT NULL,
  `subj` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `person`
--

CREATE TABLE IF NOT EXISTS `person` (
  `person_id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `middle_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `person`
--

INSERT INTO `person` (`person_id`, `first_name`, `middle_name`, `last_name`, `gender`) VALUES
(1, 'Super User', 'X', 'Root', 'Male'),
(4, 'Kathleen', 'Aggabao', 'Trasmonte', 'Female'),
(5, 'Liza', 'Bayeta', 'Hocosol', 'Female'),
(6, 'Christine', 'Velasco', 'Olalo', 'Female'),
(7, 'Johanna', 'G', 'Minglana', 'Female');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE IF NOT EXISTS `post` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `body` varchar(255) NOT NULL,
  `attach_file` varchar(255) DEFAULT NULL,
  `upload_file` varchar(255) DEFAULT NULL,
  `person_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `questionnaire`
--

CREATE TABLE IF NOT EXISTS `questionnaire` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `type` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `resume_dtl`
--

CREATE TABLE IF NOT EXISTS `resume_dtl` (
  `id` int(11) NOT NULL,
  `response` text NOT NULL,
  `resume_hdr_id` int(11) NOT NULL,
  `questionnaire_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `resume_hdr`
--

CREATE TABLE IF NOT EXISTS `resume_hdr` (
  `id` int(11) NOT NULL,
  `student_id` char(11) NOT NULL,
  `mobile_num` char(11) NOT NULL,
  `personal_email` varchar(255) NOT NULL,
  `website` varchar(255) DEFAULT NULL,
  `picture` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `system_log`
--

CREATE TABLE IF NOT EXISTS `system_log` (
  `entry_id` bigint(20) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user` varchar(255) NOT NULL,
  `datetime` int(11) NOT NULL,
  `action` mediumtext NOT NULL,
  `module` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `system_log`
--

INSERT INTO `system_log` (`entry_id`, `ip_address`, `user`, `datetime`, `action`, `module`) VALUES
(1, '::1', 'root', 1440985253, 'Logged in', '/CPO/login.php'),
(2, '::1', 'root', 1440985255, 'Query Executed: UPDATE user SET `password`=?, `salt`=?, `iteration`=?, `method`=? WHERE username=?\r\nArray\n(\n    [0] => ssiss\n    [1] => $2y$12$1z4ULx8D7FTdd27YVweIeeT7fFe1tOkyEciB5fIFnWH0psLafvWiK\n    [2] => 1z4ULx8D7FTdd27YVweIeg\n    [3] => 12\n    [4] => blowfish\n    [5] => root\n)\n', '/CPO/login.php'),
(3, '::1', 'root', 1440985783, 'Pressed submit button', '/CPO/sysadmin/add_person.php'),
(4, '::1', 'root', 1440985784, 'Query Executed: INSERT INTO person(person_id, first_name, middle_name, last_name, gender) VALUES(?,?,?,?,?)\r\nArray\n(\n    [0] => issss\n    [1] => \n    [2] => Kathleen\n    [3] => Aggabao\n    [4] => Trasmonte\n    [5] => Female\n)\n', '/CPO/sysadmin/add_person.php'),
(5, '::1', 'root', 1440985908, 'Pressed submit button', '/CPO/sysadmin/add_person.php'),
(6, '::1', 'root', 1440985908, 'Query Executed: INSERT INTO person(person_id, first_name, middle_name, last_name, gender) VALUES(?,?,?,?,?)\r\nArray\n(\n    [0] => issss\n    [1] => \n    [2] => Liza\n    [3] => Bayeta\n    [4] => Hocosol\n    [5] => Female\n)\n', '/CPO/sysadmin/add_person.php'),
(7, '::1', 'root', 1440985944, 'Pressed submit button', '/CPO/sysadmin/add_person.php'),
(8, '::1', 'root', 1440985944, 'Query Executed: INSERT INTO person(person_id, first_name, middle_name, last_name, gender) VALUES(?,?,?,?,?)\r\nArray\n(\n    [0] => issss\n    [1] => \n    [2] => Christine\n    [3] => Velasco\n    [4] => Olalo\n    [5] => Female\n)\n', '/CPO/sysadmin/add_person.php'),
(9, '::1', 'root', 1440986635, 'Pressed submit button', '/CPO/sysadmin/add_person.php'),
(10, '::1', 'root', 1440986636, 'Query Executed: INSERT INTO person(person_id, first_name, middle_name, last_name, gender) VALUES(?,?,?,?,?)\r\nArray\n(\n    [0] => issss\n    [1] => \n    [2] => Johanna\n    [3] => G\n    [4] => Minglana\n    [5] => Female\n)\n', '/CPO/sysadmin/add_person.php'),
(11, '::1', 'root', 1440986732, 'Pressed cancel button', '/CPO/sysadmin/listview_person.php'),
(12, '::1', 'root', 1440986912, 'Pressed submit button', '/CPO/sysadmin/add_user_role.php'),
(13, '::1', 'root', 1440986913, 'Query Executed: INSERT INTO user_role(role_id, role, description) VALUES(?,?,?)\r\nArray\n(\n    [0] => iss\n    [1] => \n    [2] => Student\n    [3] => student of apc\n)\n', '/CPO/sysadmin/add_user_role.php'),
(14, '::1', 'root', 1440986940, 'Pressed submit button', '/CPO/sysadmin/add_user_role.php'),
(15, '::1', 'root', 1440986940, 'Query Executed: INSERT INTO user_role(role_id, role, description) VALUES(?,?,?)\r\nArray\n(\n    [0] => iss\n    [1] => \n    [2] => io\n    [3] => internship officer of apc\n)\n', '/CPO/sysadmin/add_user_role.php'),
(16, '::1', 'root', 1440986947, 'Pressed cancel button', '/CPO/sysadmin/listview_user_role.php'),
(17, '::1', 'root', 1440987000, 'Pressed submit button', '/CPO/sysadmin/add_user.php'),
(18, '::1', 'root', 1440987002, 'Query Executed: INSERT INTO user(username, password, salt, iteration, method, person_id, role_id, skin_id) VALUES(?,?,?,?,?,?,?,?)\r\nArray\n(\n    [0] => sssisiii\n    [1] => matrasmonte\n    [2] => $2y$12$rMOLpfr6suaU6J0XRmqe0OgoilU8/0Z4syzVdZwW/ig5n.bt46bAq\n    [3] => rMOLpfr6suaU6J0XRmqe0Q\n    [4] => 12\n    [5] => blowfish\n    [6] => 4\n    [7] => 3\n    [8] => 6\n)\n', '/CPO/sysadmin/add_user.php'),
(19, '::1', 'root', 1440987003, 'Query executed: INSERT `user_passport` SELECT ''matrasmonte'', `link_id` FROM user_role_links WHERE role_id=''3''', '/CPO/sysadmin/add_user.php'),
(20, '::1', 'root', 1440987035, 'Pressed submit button', '/CPO/sysadmin/edit_user_role.php'),
(21, '::1', 'root', 1440987036, 'Query Executed: UPDATE user_role SET role = ?, description = ? WHERE role_id = ?\r\nArray\n(\n    [0] => ssi\n    [1] => IO\n    [2] => internship officer of apc\n    [3] => 4\n)\n', '/CPO/sysadmin/edit_user_role.php'),
(22, '::1', 'root', 1440987122, 'Pressed submit button', '/CPO/sysadmin/add_user.php'),
(23, '::1', 'root', 1440987124, 'Query Executed: INSERT INTO user(username, password, salt, iteration, method, person_id, role_id, skin_id) VALUES(?,?,?,?,?,?,?,?)\r\nArray\n(\n    [0] => sssisiii\n    [1] => lbhocosol\n    [2] => $2y$12$/6sJMgp1dofFpScB6JyISOuHM5xV/pRFZSniuIYRQfeviPVEC/bFy\n    [3] => /6sJMgp1dofFpScB6JyISQ\n    [4] => 12\n    [5] => blowfish\n    [6] => 5\n    [7] => 3\n    [8] => 4\n)\n', '/CPO/sysadmin/add_user.php'),
(24, '::1', 'root', 1440987124, 'Query executed: INSERT `user_passport` SELECT ''lbhocosol'', `link_id` FROM user_role_links WHERE role_id=''3''', '/CPO/sysadmin/add_user.php'),
(25, '::1', 'root', 1440987138, 'Pressed cancel button', '/CPO/sysadmin/edit_user.php'),
(26, '::1', 'root', 1440987146, 'Pressed delete button', '/CPO/sysadmin/delete_user.php'),
(27, '::1', 'root', 1440987146, 'Query Executed: DELETE FROM user WHERE username = ?\r\nArray\n(\n    [0] => s\n    [1] => lbhocosol\n)\n', '/CPO/sysadmin/delete_user.php'),
(28, '::1', 'root', 1440987154, 'Pressed cancel button', '/CPO/sysadmin/delete_user.php'),
(29, '::1', 'root', 1440987160, 'Pressed delete button', '/CPO/sysadmin/delete_user.php'),
(30, '::1', 'root', 1440987160, 'Query Executed: DELETE FROM user WHERE username = ?\r\nArray\n(\n    [0] => s\n    [1] => matrasmonte\n)\n', '/CPO/sysadmin/delete_user.php'),
(31, '::1', 'root', 1440987201, 'Pressed submit button', '/CPO/sysadmin/add_user.php'),
(32, '::1', 'root', 1440987203, 'Query Executed: INSERT INTO user(username, password, salt, iteration, method, person_id, role_id, skin_id) VALUES(?,?,?,?,?,?,?,?)\r\nArray\n(\n    [0] => sssisiii\n    [1] => matrasmonte\n    [2] => $2y$12$CPI6084i0Q0RmC4rXxcPQeF4rt4DzK1qoFkmkUOiUWBeacqH9BSfK\n    [3] => CPI6084i0Q0RmC4rXxcPQg\n    [4] => 12\n    [5] => blowfish\n    [6] => 4\n    [7] => 3\n    [8] => 6\n)\n', '/CPO/sysadmin/add_user.php'),
(33, '::1', 'root', 1440987203, 'Query executed: INSERT `user_passport` SELECT ''matrasmonte'', `link_id` FROM user_role_links WHERE role_id=''3''', '/CPO/sysadmin/add_user.php'),
(34, '::1', 'root', 1440987240, 'Pressed submit button', '/CPO/sysadmin/add_user.php'),
(35, '::1', 'root', 1440987242, 'Query Executed: INSERT INTO user(username, password, salt, iteration, method, person_id, role_id, skin_id) VALUES(?,?,?,?,?,?,?,?)\r\nArray\n(\n    [0] => sssisiii\n    [1] => lbhocosol\n    [2] => $2y$12$paWnV0rFjAf3t2Ls37mnJugyvN11.1EYbvrYuL6Sre9hPc5d6PWY2\n    [3] => paWnV0rFjAf3t2Ls37mnJw\n    [4] => 12\n    [5] => blowfish\n    [6] => 5\n    [7] => 3\n    [8] => 4\n)\n', '/CPO/sysadmin/add_user.php'),
(36, '::1', 'root', 1440987242, 'Query executed: INSERT `user_passport` SELECT ''lbhocosol'', `link_id` FROM user_role_links WHERE role_id=''3''', '/CPO/sysadmin/add_user.php'),
(37, '::1', 'root', 1440987312, 'Pressed submit button', '/CPO/sysadmin/add_user.php'),
(38, '::1', 'root', 1440987314, 'Query Executed: INSERT INTO user(username, password, salt, iteration, method, person_id, role_id, skin_id) VALUES(?,?,?,?,?,?,?,?)\r\nArray\n(\n    [0] => sssisiii\n    [1] => cvolalo\n    [2] => $2y$12$mN8OUO.S/LG.mgFEgAEggOmhwtdKbAuEgIm4SBfY.hFLfks9GfLTa\n    [3] => mN8OUO+S/LG+mgFEgAEggQ\n    [4] => 12\n    [5] => blowfish\n    [6] => 6\n    [7] => 3\n    [8] => 4\n)\n', '/CPO/sysadmin/add_user.php'),
(39, '::1', 'root', 1440987314, 'Query executed: INSERT `user_passport` SELECT ''cvolalo'', `link_id` FROM user_role_links WHERE role_id=''3''', '/CPO/sysadmin/add_user.php'),
(40, '::1', 'root', 1440987387, 'Pressed submit button', '/CPO/sysadmin/add_user.php'),
(41, '::1', 'root', 1440987389, 'Query Executed: INSERT INTO user(username, password, salt, iteration, method, person_id, role_id, skin_id) VALUES(?,?,?,?,?,?,?,?)\r\nArray\n(\n    [0] => sssisiii\n    [1] => apcinternhead\n    [2] => $2y$12$f0HvbG5RdYVrgO84wKWt2O1BJ1pPu2u8J4sOJwlIvWH/WajAwwXua\n    [3] => f0HvbG5RdYVrgO84wKWt2Q\n    [4] => 12\n    [5] => blowfish\n    [6] => 7\n    [7] => 4\n    [8] => 9\n)\n', '/CPO/sysadmin/add_user.php'),
(42, '::1', 'root', 1440987389, 'Query executed: INSERT `user_passport` SELECT ''apcinternhead'', `link_id` FROM user_role_links WHERE role_id=''4''', '/CPO/sysadmin/add_user.php'),
(43, '::1', 'root', 1440988281, 'Query executed: DELETE FROM user_passport WHERE username=''matrasmonte''', '/CPO/sysadmin/set_user_passports.php'),
(44, '::1', 'root', 1440988281, 'Query executed: INSERT INTO user_passport(username, link_id) VALUES(''matrasmonte'', ''35''),(''matrasmonte'', ''33''),(''matrasmonte'', ''61''),(''matrasmonte'', ''65''),(''matrasmonte'', ''89''),(''matrasmonte'', ''93''),(''matrasmonte'', ''97''),(''matrasmonte'', ''101''),(''matrasmonte'', ''125''),(''matrasmonte'', ''129''),(''matrasmonte'', ''63''),(''matrasmonte'', ''67''),(''matrasmonte'', ''71''),(''matrasmonte'', ''62''),(''matrasmonte'', ''66''),(''matrasmonte'', ''90''),(''matrasmonte'', ''94''),(''matrasmonte'', ''98''),(''matrasmonte'', ''102''),(''matrasmonte'', ''126''),(''matrasmonte'', ''130''),(''matrasmonte'', ''91''),(''matrasmonte'', ''95''),(''matrasmonte'', ''99''),(''matrasmonte'', ''103''),(''matrasmonte'', ''115''),(''matrasmonte'', ''127''),(''matrasmonte'', ''131'')', '/CPO/sysadmin/set_user_passports.php'),
(45, '::1', 'root', 1440988282, 'Query executed: UPDATE user SET role_id=''0'' WHERE username=''matrasmonte''', '/CPO/sysadmin/set_user_passports.php'),
(46, '::1', 'root', 1440988441, 'Query executed: DELETE FROM user_passport WHERE username=''lbhocosol''', '/CPO/sysadmin/set_user_passports.php'),
(47, '::1', 'root', 1440988441, 'Query executed: INSERT INTO user_passport(username, link_id) VALUES(''lbhocosol'', ''35''),(''lbhocosol'', ''33''),(''lbhocosol'', ''61''),(''lbhocosol'', ''89''),(''lbhocosol'', ''93''),(''lbhocosol'', ''97''),(''lbhocosol'', ''101''),(''lbhocosol'', ''125''),(''lbhocosol'', ''129''),(''lbhocosol'', ''63''),(''lbhocosol'', ''67''),(''lbhocosol'', ''71''),(''lbhocosol'', ''34''),(''lbhocosol'', ''62''),(''lbhocosol'', ''66''),(''lbhocosol'', ''90''),(''lbhocosol'', ''94''),(''lbhocosol'', ''98''),(''lbhocosol'', ''102''),(''lbhocosol'', ''126''),(''lbhocosol'', ''130''),(''lbhocosol'', ''91''),(''lbhocosol'', ''95''),(''lbhocosol'', ''99''),(''lbhocosol'', ''103''),(''lbhocosol'', ''115''),(''lbhocosol'', ''127''),(''lbhocosol'', ''131'')', '/CPO/sysadmin/set_user_passports.php'),
(48, '::1', 'root', 1440988442, 'Query executed: UPDATE user SET role_id=''0'' WHERE username=''lbhocosol''', '/CPO/sysadmin/set_user_passports.php'),
(49, '::1', 'root', 1440988737, 'Query executed: DELETE FROM user_passport WHERE username=''cvolalo''', '/CPO/sysadmin/set_user_passports.php'),
(50, '::1', 'root', 1440988737, 'Query executed: INSERT INTO user_passport(username, link_id) VALUES(''cvolalo'', ''35''),(''cvolalo'', ''33''),(''cvolalo'', ''61''),(''cvolalo'', ''65''),(''cvolalo'', ''89''),(''cvolalo'', ''93''),(''cvolalo'', ''97''),(''cvolalo'', ''101''),(''cvolalo'', ''125''),(''cvolalo'', ''129''),(''cvolalo'', ''63''),(''cvolalo'', ''67''),(''cvolalo'', ''71''),(''cvolalo'', ''34''),(''cvolalo'', ''62''),(''cvolalo'', ''66''),(''cvolalo'', ''90''),(''cvolalo'', ''94''),(''cvolalo'', ''98''),(''cvolalo'', ''102''),(''cvolalo'', ''126''),(''cvolalo'', ''130''),(''cvolalo'', ''91''),(''cvolalo'', ''95''),(''cvolalo'', ''99''),(''cvolalo'', ''103''),(''cvolalo'', ''115''),(''cvolalo'', ''127''),(''cvolalo'', ''131'')', '/CPO/sysadmin/set_user_passports.php'),
(51, '::1', 'root', 1440988737, 'Query executed: UPDATE user SET role_id=''0'' WHERE username=''cvolalo''', '/CPO/sysadmin/set_user_passports.php'),
(52, '::1', 'root', 1440989285, 'Query executed: DELETE FROM user_passport WHERE username=''apcinternhead''', '/CPO/sysadmin/set_user_passports.php'),
(53, '::1', 'root', 1440989285, 'Query executed: INSERT INTO user_passport(username, link_id) VALUES(''apcinternhead'', ''35''),(''apcinternhead'', ''69''),(''apcinternhead'', ''73''),(''apcinternhead'', ''77''),(''apcinternhead'', ''81''),(''apcinternhead'', ''109''),(''apcinternhead'', ''113''),(''apcinternhead'', ''117''),(''apcinternhead'', ''63''),(''apcinternhead'', ''67''),(''apcinternhead'', ''71''),(''apcinternhead'', ''75''),(''apcinternhead'', ''79''),(''apcinternhead'', ''83''),(''apcinternhead'', ''72''),(''apcinternhead'', ''76''),(''apcinternhead'', ''80''),(''apcinternhead'', ''84''),(''apcinternhead'', ''116''),(''apcinternhead'', ''120''),(''apcinternhead'', ''34''),(''apcinternhead'', ''62''),(''apcinternhead'', ''66''),(''apcinternhead'', ''70''),(''apcinternhead'', ''74''),(''apcinternhead'', ''78''),(''apcinternhead'', ''82''),(''apcinternhead'', ''90''),(''apcinternhead'', ''94''),(''apcinternhead'', ''102''),(''apcinternhead'', ''106''),(''apcinternhead'', ''110''),(''apcinternhead'', ''114''),(''apcinternhead'', ''118''),(''apcinternhead'', ''126''),(''apcinternhead'', ''91''),(''apcinternhead'', ''95''),(''apcinternhead'', ''99''),(''apcinternhead'', ''103''),(''apcinternhead'', ''107''),(''apcinternhead'', ''111''),(''apcinternhead'', ''115''),(''apcinternhead'', ''119''),(''apcinternhead'', ''123''),(''apcinternhead'', ''127''),(''apcinternhead'', ''131''),(''apcinternhead'', ''135''),(''apcinternhead'', ''30'')', '/CPO/sysadmin/set_user_passports.php'),
(54, '::1', 'root', 1440989285, 'Query executed: UPDATE user SET role_id=''0'' WHERE username=''apcinternhead''', '/CPO/sysadmin/set_user_passports.php'),
(55, '::1', 'root', 1440989334, 'Pressed cancel button', '/CPO/sysadmin/listview_user.php'),
(56, '::1', 'root', 1440989343, 'Pressed cancel button', '/CPO/sysadmin/listview_user_role.php'),
(57, '::1', 'root', 1440989365, 'Query executed: DELETE FROM user_passport WHERE username=''apcinternhead''', '/CPO/sysadmin/set_user_passports.php'),
(58, '::1', 'root', 1440989365, 'Query executed: INSERT INTO user_passport(username, link_id) VALUES(''apcinternhead'', ''35''),(''apcinternhead'', ''69''),(''apcinternhead'', ''73''),(''apcinternhead'', ''77''),(''apcinternhead'', ''81''),(''apcinternhead'', ''109''),(''apcinternhead'', ''113''),(''apcinternhead'', ''117''),(''apcinternhead'', ''63''),(''apcinternhead'', ''67''),(''apcinternhead'', ''71''),(''apcinternhead'', ''75''),(''apcinternhead'', ''79''),(''apcinternhead'', ''83''),(''apcinternhead'', ''72''),(''apcinternhead'', ''76''),(''apcinternhead'', ''80''),(''apcinternhead'', ''84''),(''apcinternhead'', ''116''),(''apcinternhead'', ''120''),(''apcinternhead'', ''34''),(''apcinternhead'', ''62''),(''apcinternhead'', ''66''),(''apcinternhead'', ''70''),(''apcinternhead'', ''74''),(''apcinternhead'', ''78''),(''apcinternhead'', ''82''),(''apcinternhead'', ''90''),(''apcinternhead'', ''94''),(''apcinternhead'', ''102''),(''apcinternhead'', ''106''),(''apcinternhead'', ''110''),(''apcinternhead'', ''114''),(''apcinternhead'', ''118''),(''apcinternhead'', ''126''),(''apcinternhead'', ''91''),(''apcinternhead'', ''95''),(''apcinternhead'', ''99''),(''apcinternhead'', ''103''),(''apcinternhead'', ''107''),(''apcinternhead'', ''111''),(''apcinternhead'', ''115''),(''apcinternhead'', ''119''),(''apcinternhead'', ''123''),(''apcinternhead'', ''127''),(''apcinternhead'', ''131''),(''apcinternhead'', ''135'')', '/CPO/sysadmin/set_user_passports.php'),
(59, '::1', 'root', 1440989366, 'Query executed: UPDATE user SET role_id=''0'' WHERE username=''apcinternhead''', '/CPO/sysadmin/set_user_passports.php'),
(60, '::1', 'root', 1440989394, 'Pressed cancel button', '/CPO/sysadmin/listview_user.php'),
(61, '::1', 'root', 1440989401, 'Pressed cancel button', '/CPO/sysadmin/listview_user_role.php'),
(62, '::1', 'root', 1440989409, 'Pressed cancel button', '/CPO/sysadmin/listview_person.php'),
(63, '::1', 'root', 1440989457, 'Pressed cancel button', '/CPO/sysadmin/listview_user_role.php'),
(64, '::1', 'root', 1440989509, 'Pressed cancel button', '/CPO/sysadmin/listview_user.php'),
(65, '::1', 'root', 1440989536, 'Pressed submit button', '/CPO/sysadmin/edit_user.php'),
(66, '::1', 'root', 1440989537, 'Query Executed: UPDATE user SET username = ?, person_id = ?, role_id = ?, skin_id = ? WHERE username = ?\r\nArray\n(\n    [0] => siiis\n    [1] => root\n    [2] => 1\n    [3] => 1\n    [4] => 3\n    [5] => root\n)\n', '/CPO/sysadmin/edit_user.php'),
(67, '::1', 'root', 1440989537, 'Query executed: DELETE FROM user_passport WHERE username = ''root''', '/CPO/sysadmin/edit_user.php'),
(68, '::1', 'root', 1440989537, 'Query executed: INSERT `user_passport` SELECT ''root'', `link_id` FROM user_role_links WHERE role_id=''1''', '/CPO/sysadmin/edit_user.php'),
(69, '::1', 'root', 1440989556, 'Pressed submit button', '/CPO/sysadmin/edit_user.php'),
(70, '::1', 'root', 1440989556, 'Query Executed: UPDATE user SET username = ?, person_id = ?, role_id = ?, skin_id = ? WHERE username = ?\r\nArray\n(\n    [0] => siiis\n    [1] => root\n    [2] => 1\n    [3] => 1\n    [4] => 5\n    [5] => root\n)\n', '/CPO/sysadmin/edit_user.php'),
(71, '::1', 'root', 1440989556, 'Query executed: DELETE FROM user_passport WHERE username = ''root''', '/CPO/sysadmin/edit_user.php'),
(72, '::1', 'root', 1440989556, 'Query executed: INSERT `user_passport` SELECT ''root'', `link_id` FROM user_role_links WHERE role_id=''1''', '/CPO/sysadmin/edit_user.php'),
(73, '::1', 'root', 1440989591, 'Pressed submit button', '/CPO/sysadmin/edit_user.php'),
(74, '::1', 'root', 1440989592, 'Query Executed: UPDATE user SET username = ?, person_id = ?, role_id = ?, skin_id = ? WHERE username = ?\r\nArray\n(\n    [0] => siiis\n    [1] => root\n    [2] => 1\n    [3] => 1\n    [4] => 3\n    [5] => root\n)\n', '/CPO/sysadmin/edit_user.php'),
(75, '::1', 'root', 1440989592, 'Query executed: DELETE FROM user_passport WHERE username = ''root''', '/CPO/sysadmin/edit_user.php'),
(76, '::1', 'root', 1440989592, 'Query executed: INSERT `user_passport` SELECT ''root'', `link_id` FROM user_role_links WHERE role_id=''1''', '/CPO/sysadmin/edit_user.php'),
(77, '::1', 'root', 1440989599, 'Logged out', '/CPO/end.php'),
(78, '::1', 'root', 1440989612, 'Logged in', '/CPO/login.php');

-- --------------------------------------------------------

--
-- Table structure for table `system_settings`
--

CREATE TABLE IF NOT EXISTS `system_settings` (
  `setting` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `system_settings`
--

INSERT INTO `system_settings` (`setting`, `value`) VALUES
('Max Attachment Size (MB)', '0'),
('Security Level', 'HIGH');

-- --------------------------------------------------------

--
-- Table structure for table `system_skins`
--

CREATE TABLE IF NOT EXISTS `system_skins` (
  `skin_id` int(11) NOT NULL,
  `skin_name` varchar(255) NOT NULL,
  `header` varchar(255) NOT NULL,
  `footer` varchar(255) NOT NULL,
  `master_css` varchar(255) NOT NULL,
  `colors_css` varchar(255) NOT NULL,
  `fonts_css` varchar(255) NOT NULL,
  `override_css` varchar(255) NOT NULL,
  `icon_set` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `system_skins`
--

INSERT INTO `system_skins` (`skin_id`, `skin_name`, `header`, `footer`, `master_css`, `colors_css`, `fonts_css`, `override_css`, `icon_set`) VALUES
(1, 'Cobalt Default', 'skins/default_header.php', 'skins/default_footer.php', 'cobalt_master.css', 'cobalt_colors.css', 'cobalt_fonts.css', 'cobalt_override.css', 'cobalt'),
(2, 'Cobalt Minimal', 'skins/minimal_header.php', 'skins/minimal_footer.php', 'cobalt_minimal.css', 'cobalt_minimal.css', 'cobalt_minimal.css', 'cobalt_minimal.css', 'cobalt'),
(3, 'After Sunset', 'skins/default_header.php', 'skins/default_footer.php', 'after_sunset_master.css', 'after_sunset_colors.css', 'after_sunset_fonts.css', 'after_sunset_override.css', 'cobalt'),
(4, 'Hello There', 'skins/default_header.php', 'skins/default_footer.php', 'hello_there_master.css', 'hello_there_colors.css', 'hello_there_fonts.css', 'hello_there_override.css', 'cobalt'),
(5, 'Gold Titanium', 'skins/default_header.php', 'skins/default_footer.php', 'gold_titanium_master.css', 'gold_titanium_colors.css', 'gold_titanium_fonts.css', 'gold_titanium_override.css', 'cobalt'),
(6, 'Summer Rain', 'skins/default_header.php', 'skins/default_footer.php', 'summer_rain_master.css', 'summer_rain_colors.css', 'summer_rain_fonts.css', 'summer_rain_override.css', 'cobalt'),
(7, 'Salmon Impression', 'skins/default_header.php', 'skins/default_footer.php', 'salmon_impression_master.css', 'salmon_impression_colors.css', 'salmon_impression_fonts.css', 'salmon_impression_override.css', 'cobalt'),
(8, 'Royal Amethyst', 'skins/default_header.php', 'skins/default_footer.php', 'royal_amethyst_master.css', 'royal_amethyst_colors.css', 'royal_amethyst_fonts.css', 'royal_amethyst_override.css', 'cobalt'),
(9, 'Red Decadence', 'skins/default_header.php', 'skins/default_footer.php', 'red_decadence_master.css', 'red_decadence_colors.css', 'red_decadence_fonts.css', 'red_decadence_override.css', 'cobalt'),
(10, 'Modern Eden', 'skins/default_header.php', 'skins/default_footer.php', 'modern_eden_master.css', 'modern_eden_colors.css', 'modern_eden_fonts.css', 'modern_eden_override.css', 'cobalt');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `salt` varchar(255) NOT NULL,
  `iteration` int(11) NOT NULL,
  `method` varchar(255) NOT NULL,
  `person_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `skin_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `password`, `salt`, `iteration`, `method`, `person_id`, `role_id`, `skin_id`) VALUES
('apcinternhead', '$2y$12$f0HvbG5RdYVrgO84wKWt2O1BJ1pPu2u8J4sOJwlIvWH/WajAwwXua', 'f0HvbG5RdYVrgO84wKWt2Q', 12, 'blowfish', 7, 0, 9),
('cvolalo', '$2y$12$mN8OUO.S/LG.mgFEgAEggOmhwtdKbAuEgIm4SBfY.hFLfks9GfLTa', 'mN8OUO+S/LG+mgFEgAEggQ', 12, 'blowfish', 6, 0, 4),
('lbhocosol', '$2y$12$paWnV0rFjAf3t2Ls37mnJugyvN11.1EYbvrYuL6Sre9hPc5d6PWY2', 'paWnV0rFjAf3t2Ls37mnJw', 12, 'blowfish', 5, 0, 4),
('matrasmonte', '$2y$12$CPI6084i0Q0RmC4rXxcPQeF4rt4DzK1qoFkmkUOiUWBeacqH9BSfK', 'CPI6084i0Q0RmC4rXxcPQg', 12, 'blowfish', 4, 0, 6),
('root', '$2y$12$1z4ULx8D7FTdd27YVweIeeT7fFe1tOkyEciB5fIFnWH0psLafvWiK', '1z4ULx8D7FTdd27YVweIeg', 12, 'blowfish', 1, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `user_links`
--

CREATE TABLE IF NOT EXISTS `user_links` (
  `link_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `target` varchar(255) NOT NULL,
  `descriptive_title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `passport_group_id` int(11) NOT NULL,
  `show_in_tasklist` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `priority` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_links`
--

INSERT INTO `user_links` (`link_id`, `name`, `target`, `descriptive_title`, `description`, `passport_group_id`, `show_in_tasklist`, `status`, `icon`, `priority`) VALUES
(1, 'Module Control', 'sysadmin/module_control.php', 'Module Control', 'Enable or disable system modules', 2, 'Yes', 'On', 'modulecontrol.png', 0),
(2, 'Set User Passports', 'sysadmin/set_user_passports.php', 'Set User Passports', 'Change the passport settings of system users', 2, 'Yes', 'On', 'passport.png', 0),
(3, 'Security Monitor', 'sysadmin/security_monitor.php', 'Security Monitor', 'Examine the system log', 2, 'Yes', 'On', 'security3.png', 0),
(4, 'Add person', 'sysadmin/add_person.php', 'Add Person', '', 2, 'No', 'On', 'form.png', 0),
(5, 'Edit person', 'sysadmin/edit_person.php', 'Edit Person', '', 2, 'No', 'On', 'form.png', 0),
(6, 'View person', 'sysadmin/listview_person.php', 'Person', '', 2, 'Yes', 'On', 'persons.png', 0),
(7, 'Delete person', 'sysadmin/delete_person.php', 'Delete Person', '', 2, 'No', 'On', 'form.png', 0),
(8, 'Add user', 'sysadmin/add_user.php', 'Add User', '', 2, 'No', 'On', 'form.png', 0),
(9, 'Edit user', 'sysadmin/edit_user.php', 'Edit User', '', 2, 'No', 'On', 'form.png', 0),
(10, 'View user', 'sysadmin/listview_user.php', 'User', '', 2, 'Yes', 'On', 'card.png', 0),
(11, 'Delete user', 'sysadmin/delete_user.php', 'Delete User', '', 2, 'No', 'On', 'form.png', 0),
(12, 'Add user role', 'sysadmin/add_user_role.php', 'Add User Role', '', 2, 'No', 'On', 'form.png', 0),
(13, 'Edit user role', 'sysadmin/edit_user_role.php', 'Edit User Role', '', 2, 'No', 'On', 'form.png', 0),
(14, 'View user role', 'sysadmin/listview_user_role.php', 'User Roles', '', 2, 'Yes', 'On', 'roles.png', 0),
(15, 'Delete user role', 'sysadmin/delete_user_role.php', 'Delete User Role', '', 2, 'No', 'On', 'form.png', 0),
(16, 'Add system settings', 'sysadmin/add_system_settings.php', 'Add System Settings', '', 2, 'No', 'On', 'form.png', 0),
(17, 'Edit system settings', 'sysadmin/edit_system_settings.php', 'Edit System Settings', '', 2, 'No', 'On', 'form.png', 0),
(18, 'View system settings', 'sysadmin/listview_system_settings.php', 'System Settings', '', 2, 'Yes', 'On', 'system_settings.png', 0),
(19, 'Delete system settings', 'sysadmin/delete_system_settings.php', 'Delete System Settings', '', 2, 'No', 'On', 'form.png', 0),
(20, 'Add user links', 'sysadmin/add_user_links.php', 'Add User Links', '', 2, 'No', 'On', 'form.png', 0),
(21, 'Edit user links', 'sysadmin/edit_user_links.php', 'Edit User Links', '', 2, 'No', 'On', 'form.png', 0),
(22, 'View user links', 'sysadmin/listview_user_links.php', 'User Links', '', 2, 'Yes', 'On', 'links.png', 0),
(23, 'Delete user links', 'sysadmin/delete_user_links.php', 'Delete User Links', '', 2, 'No', 'On', 'form.png', 0),
(24, 'Add user passport groups', 'sysadmin/add_user_passport_groups.php', 'Add User Passport Groups', '', 2, 'No', 'On', 'form.png', 0),
(25, 'Edit user passport groups', 'sysadmin/edit_user_passport_groups.php', 'Edit User Passport Groups', '', 2, 'No', 'On', 'form.png', 0),
(26, 'View user passport groups', 'sysadmin/listview_user_passport_groups.php', 'User Passport Groups', '', 2, 'Yes', 'On', 'passportgroup.png', 0),
(27, 'Delete user passport groups', 'sysadmin/delete_user_passport_groups.php', 'Delete User Passport Groups', '', 2, 'No', 'On', 'form.png', 0),
(28, 'Add system skins', 'sysadmin/add_system_skins.php', 'Add System Skins', '', 2, 'No', 'On', 'form.png', 0),
(29, 'Edit system skins', 'sysadmin/edit_system_skins.php', 'Edit System Skins', '', 2, 'No', 'On', 'form.png', 0),
(30, 'View system skins', 'sysadmin/listview_system_skins.php', 'System Skins', '', 2, 'Yes', 'On', 'system_skins.png', 0),
(31, 'Delete system skins', 'sysadmin/delete_system_skins.php', 'Delete System Skins', '', 2, 'No', 'On', 'form.png', 0),
(32, 'Reset Password', 'sysadmin/reset_password.php', 'Reset Password', '', 2, 'Yes', 'On', 'lock_big.png', 0),
(33, 'Add accomplishment', 'modules/add_accomplishment.php', 'Add Accomplishment', '', 1, 'No', 'On', 'form3.png', 0),
(34, 'Edit accomplishment', 'modules/edit_accomplishment.php', 'Edit Accomplishment', '', 1, 'No', 'On', 'form3.png', 0),
(35, 'View accomplishment', 'modules/listview_accomplishment.php', 'Accomplishment', '', 1, 'Yes', 'On', 'form3.png', 0),
(36, 'Delete accomplishment', 'modules/delete_accomplishment.php', 'Delete Accomplishment', '', 1, 'No', 'On', 'form3.png', 0),
(37, 'Add alumniaddress', 'modules/add_alumniaddress.php', 'Add Alumniaddress', '', 1, 'No', 'On', 'form3.png', 0),
(38, 'Edit alumniaddress', 'modules/edit_alumniaddress.php', 'Edit Alumniaddress', '', 1, 'No', 'On', 'form3.png', 0),
(39, 'View alumniaddress', 'modules/listview_alumniaddress.php', 'Alumniaddress', '', 1, 'Yes', 'On', 'form3.png', 0),
(40, 'Delete alumniaddress', 'modules/delete_alumniaddress.php', 'Delete Alumniaddress', '', 1, 'No', 'On', 'form3.png', 0),
(41, 'Add alumniemplmove', 'modules/add_alumniemplmove.php', 'Add Alumniemplmove', '', 1, 'No', 'On', 'form3.png', 0),
(42, 'Edit alumniemplmove', 'modules/edit_alumniemplmove.php', 'Edit Alumniemplmove', '', 1, 'No', 'On', 'form3.png', 0),
(43, 'View alumniemplmove', 'modules/listview_alumniemplmove.php', 'Alumniemplmove', '', 1, 'Yes', 'On', 'form3.png', 0),
(44, 'Delete alumniemplmove', 'modules/delete_alumniemplmove.php', 'Delete Alumniemplmove', '', 1, 'No', 'On', 'form3.png', 0),
(45, 'Add alumniemplrecord', 'modules/add_alumniemplrecord.php', 'Add Alumniemplrecord', '', 1, 'No', 'On', 'form3.png', 0),
(46, 'Edit alumniemplrecord', 'modules/edit_alumniemplrecord.php', 'Edit Alumniemplrecord', '', 1, 'No', 'On', 'form3.png', 0),
(47, 'View alumniemplrecord', 'modules/listview_alumniemplrecord.php', 'Alumniemplrecord', '', 1, 'Yes', 'On', 'form3.png', 0),
(48, 'Delete alumniemplrecord', 'modules/delete_alumniemplrecord.php', 'Delete Alumniemplrecord', '', 1, 'No', 'On', 'form3.png', 0),
(49, 'Add alumnifurtherstudies', 'modules/add_alumnifurtherstudies.php', 'Add Alumnifurtherstudies', '', 1, 'No', 'On', 'form3.png', 0),
(50, 'Edit alumnifurtherstudies', 'modules/edit_alumnifurtherstudies.php', 'Edit Alumnifurtherstudies', '', 1, 'No', 'On', 'form3.png', 0),
(51, 'View alumnifurtherstudies', 'modules/listview_alumnifurtherstudies.php', 'Alumnifurtherstudies', '', 1, 'Yes', 'On', 'form3.png', 0),
(52, 'Delete alumnifurtherstudies', 'modules/delete_alumnifurtherstudies.php', 'Delete Alumnifurtherstudies', '', 1, 'No', 'On', 'form3.png', 0),
(53, 'Add alumniinfo', 'modules/add_alumniinfo.php', 'Add Alumniinfo', '', 1, 'No', 'On', 'form3.png', 0),
(54, 'Edit alumniinfo', 'modules/edit_alumniinfo.php', 'Edit Alumniinfo', '', 1, 'No', 'On', 'form3.png', 0),
(55, 'View alumniinfo', 'modules/listview_alumniinfo.php', 'Alumniinfo', '', 1, 'Yes', 'On', 'form3.png', 0),
(56, 'Delete alumniinfo', 'modules/delete_alumniinfo.php', 'Delete Alumniinfo', '', 1, 'No', 'On', 'form3.png', 0),
(57, 'Add alumniprofqualification', 'modules/add_alumniprofqualification.php', 'Add Alumniprofqualification', '', 1, 'No', 'On', 'form3.png', 0),
(58, 'Edit alumniprofqualification', 'modules/edit_alumniprofqualification.php', 'Edit Alumniprofqualification', '', 1, 'No', 'On', 'form3.png', 0),
(59, 'View alumniprofqualification', 'modules/listview_alumniprofqualification.php', 'Alumniprofqualification', '', 1, 'Yes', 'On', 'form3.png', 0),
(60, 'Delete alumniprofqualification', 'modules/delete_alumniprofqualification.php', 'Delete Alumniprofqualification', '', 1, 'No', 'On', 'form3.png', 0),
(61, 'Add attendance', 'modules/add_attendance.php', 'Add Attendance', '', 1, 'No', 'On', 'form3.png', 0),
(62, 'Edit attendance', 'modules/edit_attendance.php', 'Edit Attendance', '', 1, 'No', 'On', 'form3.png', 0),
(63, 'View attendance', 'modules/listview_attendance.php', 'Attendance', '', 1, 'Yes', 'On', 'form3.png', 0),
(64, 'Delete attendance', 'modules/delete_attendance.php', 'Delete Attendance', '', 1, 'No', 'On', 'form3.png', 0),
(65, 'Add comment', 'modules/add_comment.php', 'Add Comment', '', 1, 'No', 'On', 'form3.png', 0),
(66, 'Edit comment', 'modules/edit_comment.php', 'Edit Comment', '', 1, 'No', 'On', 'form3.png', 0),
(67, 'View comment', 'modules/listview_comment.php', 'Comment', '', 1, 'Yes', 'On', 'form3.png', 0),
(68, 'Delete comment', 'modules/delete_comment.php', 'Delete Comment', '', 1, 'No', 'On', 'form3.png', 0),
(69, 'Add company', 'modules/add_company.php', 'Add Company', '', 1, 'No', 'On', 'form3.png', 0),
(70, 'Edit company', 'modules/edit_company.php', 'Edit Company', '', 1, 'No', 'On', 'form3.png', 0),
(71, 'View company', 'modules/listview_company.php', 'Company', '', 1, 'Yes', 'On', 'form3.png', 0),
(72, 'Delete company', 'modules/delete_company.php', 'Delete Company', '', 1, 'No', 'On', 'form3.png', 0),
(73, 'Add companybranch', 'modules/add_companybranch.php', 'Add Companybranch', '', 1, 'No', 'On', 'form3.png', 0),
(74, 'Edit companybranch', 'modules/edit_companybranch.php', 'Edit Companybranch', '', 1, 'No', 'On', 'form3.png', 0),
(75, 'View companybranch', 'modules/listview_companybranch.php', 'Companybranch', '', 1, 'Yes', 'On', 'form3.png', 0),
(76, 'Delete companybranch', 'modules/delete_companybranch.php', 'Delete Companybranch', '', 1, 'No', 'On', 'form3.png', 0),
(77, 'Add companycontact', 'modules/add_companycontact.php', 'Add Companycontact', '', 1, 'No', 'On', 'form3.png', 0),
(78, 'Edit companycontact', 'modules/edit_companycontact.php', 'Edit Companycontact', '', 1, 'No', 'On', 'form3.png', 0),
(79, 'View companycontact', 'modules/listview_companycontact.php', 'Companycontact', '', 1, 'Yes', 'On', 'form3.png', 0),
(80, 'Delete companycontact', 'modules/delete_companycontact.php', 'Delete Companycontact', '', 1, 'No', 'On', 'form3.png', 0),
(81, 'Add contact', 'modules/add_contact.php', 'Add Contact', '', 1, 'No', 'On', 'form3.png', 0),
(82, 'Edit contact', 'modules/edit_contact.php', 'Edit Contact', '', 1, 'No', 'On', 'form3.png', 0),
(83, 'View contact', 'modules/listview_contact.php', 'Contact', '', 1, 'Yes', 'On', 'form3.png', 0),
(84, 'Delete contact', 'modules/delete_contact.php', 'Delete Contact', '', 1, 'No', 'On', 'form3.png', 0),
(85, 'Add employmentstatus', 'modules/add_employmentstatus.php', 'Add Employmentstatus', '', 1, 'No', 'On', 'form3.png', 0),
(86, 'Edit employmentstatus', 'modules/edit_employmentstatus.php', 'Edit Employmentstatus', '', 1, 'No', 'On', 'form3.png', 0),
(87, 'View employmentstatus', 'modules/listview_employmentstatus.php', 'Employmentstatus', '', 1, 'Yes', 'On', 'form3.png', 0),
(88, 'Delete employmentstatus', 'modules/delete_employmentstatus.php', 'Delete Employmentstatus', '', 1, 'No', 'On', 'form3.png', 0),
(89, 'Add eval dtl', 'modules/add_eval_dtl.php', 'Add Eval Dtl', '', 1, 'No', 'On', 'form3.png', 0),
(90, 'Edit eval dtl', 'modules/edit_eval_dtl.php', 'Edit Eval Dtl', '', 1, 'No', 'On', 'form3.png', 0),
(91, 'View eval dtl', 'modules/listview_eval_dtl.php', 'Eval Dtl', '', 1, 'Yes', 'On', 'form3.png', 0),
(92, 'Delete eval dtl', 'modules/delete_eval_dtl.php', 'Delete Eval Dtl', '', 1, 'No', 'On', 'form3.png', 0),
(93, 'Add eval hdr', 'modules/add_eval_hdr.php', 'Add Eval Hdr', '', 1, 'No', 'On', 'form3.png', 0),
(94, 'Edit eval hdr', 'modules/edit_eval_hdr.php', 'Edit Eval Hdr', '', 1, 'No', 'On', 'form3.png', 0),
(95, 'View eval hdr', 'modules/listview_eval_hdr.php', 'Eval Hdr', '', 1, 'Yes', 'On', 'form3.png', 0),
(96, 'Delete eval hdr', 'modules/delete_eval_hdr.php', 'Delete Eval Hdr', '', 1, 'No', 'On', 'form3.png', 0),
(97, 'Add final paper dtl', 'modules/add_final_paper_dtl.php', 'Add Final Paper Dtl', '', 1, 'No', 'On', 'form3.png', 0),
(98, 'Edit final paper dtl', 'modules/edit_final_paper_dtl.php', 'Edit Final Paper Dtl', '', 1, 'No', 'On', 'form3.png', 0),
(99, 'View final paper dtl', 'modules/listview_final_paper_dtl.php', 'Final Paper Dtl', '', 1, 'Yes', 'On', 'form3.png', 0),
(100, 'Delete final paper dtl', 'modules/delete_final_paper_dtl.php', 'Delete Final Paper Dtl', '', 1, 'No', 'On', 'form3.png', 0),
(101, 'Add final paper hdr', 'modules/add_final_paper_hdr.php', 'Add Final Paper Hdr', '', 1, 'No', 'On', 'form3.png', 0),
(102, 'Edit final paper hdr', 'modules/edit_final_paper_hdr.php', 'Edit Final Paper Hdr', '', 1, 'No', 'On', 'form3.png', 0),
(103, 'View final paper hdr', 'modules/listview_final_paper_hdr.php', 'Final Paper Hdr', '', 1, 'Yes', 'On', 'form3.png', 0),
(104, 'Delete final paper hdr', 'modules/delete_final_paper_hdr.php', 'Delete Final Paper Hdr', '', 1, 'No', 'On', 'form3.png', 0),
(105, 'Add industrysector', 'modules/add_industrysector.php', 'Add Industrysector', '', 1, 'No', 'On', 'form3.png', 0),
(106, 'Edit industrysector', 'modules/edit_industrysector.php', 'Edit Industrysector', '', 1, 'No', 'On', 'form3.png', 0),
(107, 'View industrysector', 'modules/listview_industrysector.php', 'Industrysector', '', 1, 'Yes', 'On', 'form3.png', 0),
(108, 'Delete industrysector', 'modules/delete_industrysector.php', 'Delete Industrysector', '', 1, 'No', 'On', 'form3.png', 0),
(109, 'Add internassignment', 'modules/add_internassignment.php', 'Add Internassignment', '', 1, 'No', 'On', 'form3.png', 0),
(110, 'Edit internassignment', 'modules/edit_internassignment.php', 'Edit Internassignment', '', 1, 'No', 'On', 'form3.png', 0),
(111, 'View internassignment', 'modules/listview_internassignment.php', 'Internassignment', '', 1, 'Yes', 'On', 'form3.png', 0),
(112, 'Delete internassignment', 'modules/delete_internassignment.php', 'Delete Internassignment', '', 1, 'No', 'On', 'form3.png', 0),
(113, 'Add post', 'modules/add_post.php', 'Add Post', '', 1, 'No', 'On', 'form3.png', 0),
(114, 'Edit post', 'modules/edit_post.php', 'Edit Post', '', 1, 'No', 'On', 'form3.png', 0),
(115, 'View post', 'modules/listview_post.php', 'Post', '', 1, 'Yes', 'On', 'form3.png', 0),
(116, 'Delete post', 'modules/delete_post.php', 'Delete Post', '', 1, 'No', 'On', 'form3.png', 0),
(117, 'Add questionnaire', 'modules/add_questionnaire.php', 'Add Questionnaire', '', 1, 'No', 'On', 'form3.png', 0),
(118, 'Edit questionnaire', 'modules/edit_questionnaire.php', 'Edit Questionnaire', '', 1, 'No', 'On', 'form3.png', 0),
(119, 'View questionnaire', 'modules/listview_questionnaire.php', 'Questionnaire', '', 1, 'Yes', 'On', 'form3.png', 0),
(120, 'Delete questionnaire', 'modules/delete_questionnaire.php', 'Delete Questionnaire', '', 1, 'No', 'On', 'form3.png', 0),
(121, 'Add refstudent', 'modules/add_refstudent.php', 'Add Refstudent', '', 1, 'No', 'On', 'form3.png', 0),
(122, 'Edit refstudent', 'modules/edit_refstudent.php', 'Edit Refstudent', '', 1, 'No', 'On', 'form3.png', 0),
(123, 'View refstudent', 'modules/listview_refstudent.php', 'Refstudent', '', 1, 'Yes', 'On', 'form3.png', 0),
(124, 'Delete refstudent', 'modules/delete_refstudent.php', 'Delete Refstudent', '', 1, 'No', 'On', 'form3.png', 0),
(125, 'Add resume dtl', 'modules/add_resume_dtl.php', 'Add Resume Dtl', '', 1, 'No', 'On', 'form3.png', 0),
(126, 'Edit resume dtl', 'modules/edit_resume_dtl.php', 'Edit Resume Dtl', '', 1, 'No', 'On', 'form3.png', 0),
(127, 'View resume dtl', 'modules/listview_resume_dtl.php', 'Resume Dtl', '', 1, 'Yes', 'On', 'form3.png', 0),
(128, 'Delete resume dtl', 'modules/delete_resume_dtl.php', 'Delete Resume Dtl', '', 1, 'No', 'On', 'form3.png', 0),
(129, 'Add resume hdr', 'modules/add_resume_hdr.php', 'Add Resume Hdr', '', 1, 'No', 'On', 'form3.png', 0),
(130, 'Edit resume hdr', 'modules/edit_resume_hdr.php', 'Edit Resume Hdr', '', 1, 'No', 'On', 'form3.png', 0),
(131, 'View resume hdr', 'modules/listview_resume_hdr.php', 'Resume Hdr', '', 1, 'Yes', 'On', 'form3.png', 0),
(132, 'Delete resume hdr', 'modules/delete_resume_hdr.php', 'Delete Resume Hdr', '', 1, 'No', 'On', 'form3.png', 0),
(133, 'Add schoolcourse', 'modules/add_schoolcourse.php', 'Add Schoolcourse', '', 1, 'No', 'On', 'form3.png', 0),
(134, 'Edit schoolcourse', 'modules/edit_schoolcourse.php', 'Edit Schoolcourse', '', 1, 'No', 'On', 'form3.png', 0),
(135, 'View schoolcourse', 'modules/listview_schoolcourse.php', 'Schoolcourse', '', 1, 'Yes', 'On', 'form3.png', 0),
(136, 'Delete schoolcourse', 'modules/delete_schoolcourse.php', 'Delete Schoolcourse', '', 1, 'No', 'On', 'form3.png', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_passport`
--

CREATE TABLE IF NOT EXISTS `user_passport` (
  `username` varchar(255) NOT NULL,
  `link_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_passport`
--

INSERT INTO `user_passport` (`username`, `link_id`) VALUES
('apcinternhead', 34),
('apcinternhead', 35),
('apcinternhead', 62),
('apcinternhead', 63),
('apcinternhead', 66),
('apcinternhead', 67),
('apcinternhead', 69),
('apcinternhead', 70),
('apcinternhead', 71),
('apcinternhead', 72),
('apcinternhead', 73),
('apcinternhead', 74),
('apcinternhead', 75),
('apcinternhead', 76),
('apcinternhead', 77),
('apcinternhead', 78),
('apcinternhead', 79),
('apcinternhead', 80),
('apcinternhead', 81),
('apcinternhead', 82),
('apcinternhead', 83),
('apcinternhead', 84),
('apcinternhead', 90),
('apcinternhead', 91),
('apcinternhead', 94),
('apcinternhead', 95),
('apcinternhead', 99),
('apcinternhead', 102),
('apcinternhead', 103),
('apcinternhead', 106),
('apcinternhead', 107),
('apcinternhead', 109),
('apcinternhead', 110),
('apcinternhead', 111),
('apcinternhead', 113),
('apcinternhead', 114),
('apcinternhead', 115),
('apcinternhead', 116),
('apcinternhead', 117),
('apcinternhead', 118),
('apcinternhead', 119),
('apcinternhead', 120),
('apcinternhead', 123),
('apcinternhead', 126),
('apcinternhead', 127),
('apcinternhead', 131),
('apcinternhead', 135),
('cvolalo', 33),
('cvolalo', 34),
('cvolalo', 35),
('cvolalo', 61),
('cvolalo', 62),
('cvolalo', 63),
('cvolalo', 65),
('cvolalo', 66),
('cvolalo', 67),
('cvolalo', 71),
('cvolalo', 89),
('cvolalo', 90),
('cvolalo', 91),
('cvolalo', 93),
('cvolalo', 94),
('cvolalo', 95),
('cvolalo', 97),
('cvolalo', 98),
('cvolalo', 99),
('cvolalo', 101),
('cvolalo', 102),
('cvolalo', 103),
('cvolalo', 115),
('cvolalo', 125),
('cvolalo', 126),
('cvolalo', 127),
('cvolalo', 129),
('cvolalo', 130),
('cvolalo', 131),
('lbhocosol', 33),
('lbhocosol', 34),
('lbhocosol', 35),
('lbhocosol', 61),
('lbhocosol', 62),
('lbhocosol', 63),
('lbhocosol', 66),
('lbhocosol', 67),
('lbhocosol', 71),
('lbhocosol', 89),
('lbhocosol', 90),
('lbhocosol', 91),
('lbhocosol', 93),
('lbhocosol', 94),
('lbhocosol', 95),
('lbhocosol', 97),
('lbhocosol', 98),
('lbhocosol', 99),
('lbhocosol', 101),
('lbhocosol', 102),
('lbhocosol', 103),
('lbhocosol', 115),
('lbhocosol', 125),
('lbhocosol', 126),
('lbhocosol', 127),
('lbhocosol', 129),
('lbhocosol', 130),
('lbhocosol', 131),
('matrasmonte', 33),
('matrasmonte', 35),
('matrasmonte', 61),
('matrasmonte', 62),
('matrasmonte', 63),
('matrasmonte', 65),
('matrasmonte', 66),
('matrasmonte', 67),
('matrasmonte', 71),
('matrasmonte', 89),
('matrasmonte', 90),
('matrasmonte', 91),
('matrasmonte', 93),
('matrasmonte', 94),
('matrasmonte', 95),
('matrasmonte', 97),
('matrasmonte', 98),
('matrasmonte', 99),
('matrasmonte', 101),
('matrasmonte', 102),
('matrasmonte', 103),
('matrasmonte', 115),
('matrasmonte', 125),
('matrasmonte', 126),
('matrasmonte', 127),
('matrasmonte', 129),
('matrasmonte', 130),
('matrasmonte', 131),
('root', 1),
('root', 2),
('root', 3),
('root', 4),
('root', 5),
('root', 6),
('root', 7),
('root', 8),
('root', 9),
('root', 10),
('root', 11),
('root', 12),
('root', 13),
('root', 14),
('root', 15),
('root', 16),
('root', 17),
('root', 18),
('root', 19),
('root', 20),
('root', 21),
('root', 22),
('root', 23),
('root', 24),
('root', 25),
('root', 26),
('root', 27),
('root', 28),
('root', 29),
('root', 30),
('root', 31),
('root', 32),
('root', 33),
('root', 34),
('root', 35),
('root', 36),
('root', 37),
('root', 38),
('root', 39),
('root', 40),
('root', 41),
('root', 42),
('root', 43),
('root', 44),
('root', 45),
('root', 46),
('root', 47),
('root', 48),
('root', 49),
('root', 50),
('root', 51),
('root', 52),
('root', 53),
('root', 54),
('root', 55),
('root', 56),
('root', 57),
('root', 58),
('root', 59),
('root', 60),
('root', 61),
('root', 62),
('root', 63),
('root', 64),
('root', 65),
('root', 66),
('root', 67),
('root', 68),
('root', 69),
('root', 70),
('root', 71),
('root', 72),
('root', 73),
('root', 74),
('root', 75),
('root', 76),
('root', 77),
('root', 78),
('root', 79),
('root', 80),
('root', 81),
('root', 82),
('root', 83),
('root', 84),
('root', 85),
('root', 86),
('root', 87),
('root', 88),
('root', 89),
('root', 90),
('root', 91),
('root', 92),
('root', 93),
('root', 94),
('root', 95),
('root', 96),
('root', 97),
('root', 98),
('root', 99),
('root', 100),
('root', 101),
('root', 102),
('root', 103),
('root', 104),
('root', 105),
('root', 106),
('root', 107),
('root', 108),
('root', 109),
('root', 110),
('root', 111),
('root', 112),
('root', 113),
('root', 114),
('root', 115),
('root', 116),
('root', 117),
('root', 118),
('root', 119),
('root', 120),
('root', 121),
('root', 122),
('root', 123),
('root', 124),
('root', 125),
('root', 126),
('root', 127),
('root', 128),
('root', 129),
('root', 130),
('root', 131),
('root', 132),
('root', 133),
('root', 134),
('root', 135),
('root', 136);

-- --------------------------------------------------------

--
-- Table structure for table `user_passport_groups`
--

CREATE TABLE IF NOT EXISTS `user_passport_groups` (
  `passport_group_id` int(11) NOT NULL,
  `passport_group` varchar(255) NOT NULL,
  `priority` int(11) NOT NULL,
  `icon` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_passport_groups`
--

INSERT INTO `user_passport_groups` (`passport_group_id`, `passport_group`, `priority`, `icon`) VALUES
(1, 'Default', 0, 'blue_folder3.png'),
(2, 'Admin', 0, 'preferences-system.png');

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE IF NOT EXISTS `user_role` (
  `role_id` int(11) NOT NULL,
  `role` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`role_id`, `role`, `description`) VALUES
(1, 'Super Admin', 'Super admin role with 100% system privileges'),
(2, 'System Admin', 'System admin role with all sysadmin permissions'),
(3, 'Student', 'student of apc'),
(4, 'IO', 'internship officer of apc');

-- --------------------------------------------------------

--
-- Table structure for table `user_role_links`
--

CREATE TABLE IF NOT EXISTS `user_role_links` (
  `role_id` int(11) NOT NULL,
  `link_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_role_links`
--

INSERT INTO `user_role_links` (`role_id`, `link_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(1, 13),
(1, 14),
(1, 15),
(1, 16),
(1, 17),
(1, 18),
(1, 19),
(1, 20),
(1, 21),
(1, 22),
(1, 23),
(1, 24),
(1, 25),
(1, 26),
(1, 27),
(1, 28),
(1, 29),
(1, 30),
(1, 31),
(1, 32),
(1, 33),
(1, 34),
(1, 35),
(1, 36),
(1, 37),
(1, 38),
(1, 39),
(1, 40),
(1, 41),
(1, 42),
(1, 43),
(1, 44),
(1, 45),
(1, 46),
(1, 47),
(1, 48),
(1, 49),
(1, 50),
(1, 51),
(1, 52),
(1, 53),
(1, 54),
(1, 55),
(1, 56),
(1, 57),
(1, 58),
(1, 59),
(1, 60),
(1, 61),
(1, 62),
(1, 63),
(1, 64),
(1, 65),
(1, 66),
(1, 67),
(1, 68),
(1, 69),
(1, 70),
(1, 71),
(1, 72),
(1, 73),
(1, 74),
(1, 75),
(1, 76),
(1, 77),
(1, 78),
(1, 79),
(1, 80),
(1, 81),
(1, 82),
(1, 83),
(1, 84),
(1, 85),
(1, 86),
(1, 87),
(1, 88),
(1, 89),
(1, 90),
(1, 91),
(1, 92),
(1, 93),
(1, 94),
(1, 95),
(1, 96),
(1, 97),
(1, 98),
(1, 99),
(1, 100),
(1, 101),
(1, 102),
(1, 103),
(1, 104),
(1, 105),
(1, 106),
(1, 107),
(1, 108),
(1, 109),
(1, 110),
(1, 111),
(1, 112),
(1, 113),
(1, 114),
(1, 115),
(1, 116),
(1, 117),
(1, 118),
(1, 119),
(1, 120),
(1, 121),
(1, 122),
(1, 123),
(1, 124),
(1, 125),
(1, 126),
(1, 127),
(1, 128),
(1, 129),
(1, 130),
(1, 131),
(1, 132),
(1, 133),
(1, 134),
(1, 135),
(1, 136),
(2, 1),
(2, 2),
(2, 3),
(2, 4),
(2, 5),
(2, 6),
(2, 7),
(2, 8),
(2, 9),
(2, 10),
(2, 11),
(2, 12),
(2, 13),
(2, 14),
(2, 15),
(2, 16),
(2, 17),
(2, 18),
(2, 19),
(2, 20),
(2, 21),
(2, 22),
(2, 23),
(2, 24),
(2, 25),
(2, 26),
(2, 27),
(2, 28),
(2, 29),
(2, 30),
(2, 31),
(2, 32);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accomplishment`
--
ALTER TABLE `accomplishment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cobalt_reporter`
--
ALTER TABLE `cobalt_reporter`
  ADD PRIMARY KEY (`module_name`,`report_name`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_comment_post1_idx` (`post_id`);

--
-- Indexes for table `eval_dtl`
--
ALTER TABLE `eval_dtl`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_eval_dtl_questionnaire1_idx` (`questionnaire_id`),
  ADD KEY `fk_eval_dtl_eval_hdr1_idx` (`eval_hdr_id`);

--
-- Indexes for table `eval_hdr`
--
ALTER TABLE `eval_hdr`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `final_paper_dtl`
--
ALTER TABLE `final_paper_dtl`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_final_paper_dtl_final_paper_hdr1_idx` (`final_paper_hdr_id`),
  ADD KEY `fk_final_paper_dtl_questionnaire1_idx` (`questionnaire_id`);

--
-- Indexes for table `final_paper_hdr`
--
ALTER TABLE `final_paper_hdr`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`person_id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questionnaire`
--
ALTER TABLE `questionnaire`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `resume_dtl`
--
ALTER TABLE `resume_dtl`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_resume_dtl_resume_hdr1_idx` (`resume_hdr_id`),
  ADD KEY `fk_resume_dtl_questionnaire1_idx` (`questionnaire_id`);

--
-- Indexes for table `resume_hdr`
--
ALTER TABLE `resume_hdr`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_log`
--
ALTER TABLE `system_log`
  ADD PRIMARY KEY (`entry_id`);

--
-- Indexes for table `system_settings`
--
ALTER TABLE `system_settings`
  ADD PRIMARY KEY (`setting`);

--
-- Indexes for table `system_skins`
--
ALTER TABLE `system_skins`
  ADD PRIMARY KEY (`skin_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `user_links`
--
ALTER TABLE `user_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `user_passport`
--
ALTER TABLE `user_passport`
  ADD PRIMARY KEY (`username`,`link_id`);

--
-- Indexes for table `user_passport_groups`
--
ALTER TABLE `user_passport_groups`
  ADD PRIMARY KEY (`passport_group_id`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `user_role_links`
--
ALTER TABLE `user_role_links`
  ADD PRIMARY KEY (`role_id`,`link_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accomplishment`
--
ALTER TABLE `accomplishment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `eval_dtl`
--
ALTER TABLE `eval_dtl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `eval_hdr`
--
ALTER TABLE `eval_hdr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `final_paper_dtl`
--
ALTER TABLE `final_paper_dtl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `final_paper_hdr`
--
ALTER TABLE `final_paper_hdr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `person`
--
ALTER TABLE `person`
  MODIFY `person_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `questionnaire`
--
ALTER TABLE `questionnaire`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `resume_dtl`
--
ALTER TABLE `resume_dtl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `resume_hdr`
--
ALTER TABLE `resume_hdr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `system_log`
--
ALTER TABLE `system_log`
  MODIFY `entry_id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=79;
--
-- AUTO_INCREMENT for table `system_skins`
--
ALTER TABLE `system_skins`
  MODIFY `skin_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `user_links`
--
ALTER TABLE `user_links`
  MODIFY `link_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=137;
--
-- AUTO_INCREMENT for table `user_passport_groups`
--
ALTER TABLE `user_passport_groups`
  MODIFY `passport_group_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `fk_comment_post1` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `eval_dtl`
--
ALTER TABLE `eval_dtl`
  ADD CONSTRAINT `fk_eval_dtl_eval_hdr1` FOREIGN KEY (`eval_hdr_id`) REFERENCES `eval_hdr` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_eval_dtl_questionnaire1` FOREIGN KEY (`questionnaire_id`) REFERENCES `questionnaire` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `final_paper_dtl`
--
ALTER TABLE `final_paper_dtl`
  ADD CONSTRAINT `fk_final_paper_dtl_final_paper_hdr1` FOREIGN KEY (`final_paper_hdr_id`) REFERENCES `final_paper_hdr` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_final_paper_dtl_questionnaire1` FOREIGN KEY (`questionnaire_id`) REFERENCES `questionnaire` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `resume_dtl`
--
ALTER TABLE `resume_dtl`
  ADD CONSTRAINT `fk_resume_dtl_questionnaire1` FOREIGN KEY (`questionnaire_id`) REFERENCES `questionnaire` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_resume_dtl_resume_hdr1` FOREIGN KEY (`resume_hdr_id`) REFERENCES `resume_hdr` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

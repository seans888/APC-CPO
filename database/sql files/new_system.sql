-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 03, 2015 at 06:56 AM
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
  `group_field1` blob NOT NULL,
  `group_field2` blob NOT NULL,
  `group_field3` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `person`
--

INSERT INTO `person` (`person_id`, `first_name`, `middle_name`, `last_name`, `gender`) VALUES
(1, 'Super User', 'X', 'Root', 'Male'),
(2, 'Marie Kathleen', 'Aggabao', 'Trasmonte', 'Female'),
(3, 'Liza', 'Bayeta', 'Hocosol', 'Female'),
(4, 'Christine Mae', 'Velasco', 'Olalo', 'Female'),
(5, 'Michelle Kim', 'S', 'Asban', 'Female');

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
) ENGINE=InnoDB AUTO_INCREMENT=251 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `system_log`
--

INSERT INTO `system_log` (`entry_id`, `ip_address`, `user`, `datetime`, `action`, `module`) VALUES
(1, '::1', 'root', 1441208258, 'Logged in', '/apc-io/login.php'),
(2, '::1', 'root', 1441208261, 'Query Executed: UPDATE user SET `password`=?, `salt`=?, `iteration`=?, `method`=? WHERE username=?\r\nArray\n(\n    [0] => ssiss\n    [1] => $2y$12$A6X3nloe7l7xKk/tBIt2aOsXxy8ZGIzdKfPSKAU8hVco5vBsPU80G\n    [2] => A6X3nloe7l7xKk/tBIt2aQ\n    [3] => 12\n    [4] => blowfish\n    [5] => root\n)\n', '/apc-io/login.php'),
(3, '::1', 'root', 1441208397, 'Pressed submit button', '/apc-io/sysadmin/add_person.php'),
(4, '::1', 'root', 1441208397, 'Query Executed: INSERT INTO person(person_id, first_name, middle_name, last_name, gender) VALUES(?,?,?,?,?)\r\nArray\n(\n    [0] => issss\n    [1] => \n    [2] => Marie Kathleen\n    [3] => Aggabao\n    [4] => Trasmonte\n    [5] => Female\n)\n', '/apc-io/sysadmin/add_person.php'),
(5, '::1', 'root', 1441208414, 'Pressed submit button', '/apc-io/sysadmin/add_person.php'),
(6, '::1', 'root', 1441208414, 'Query Executed: INSERT INTO person(person_id, first_name, middle_name, last_name, gender) VALUES(?,?,?,?,?)\r\nArray\n(\n    [0] => issss\n    [1] => \n    [2] => Liza\n    [3] => Bayeta\n    [4] => Hocosol\n    [5] => Female\n)\n', '/apc-io/sysadmin/add_person.php'),
(7, '::1', 'root', 1441212474, 'Pressed submit button', '/apc-io/modules/resume_hdr/add_resume_hdr.php'),
(8, '::1', 'root', 1441212597, 'Pressed submit button', '/apc-io/modules/resume_hdr/add_resume_hdr.php'),
(9, '::1', 'root', 1441212597, 'Query Executed: INSERT INTO resume_hdr(id, student_id, mobile_num, personal_email, website, picture) VALUES(?,?,?,?,?,?)\r\nArray\n(\n    [0] => isssss\n    [1] => \n    [2] => 2012-100088\n    [3] => 09439278433\n    [4] => mkatrasmonte.111@gmail.com\n    [5] => hhgg@ggjk.com\n    [6] => ffg\n)\n', '/apc-io/modules/resume_hdr/add_resume_hdr.php'),
(10, '::1', 'root', 1441212598, 'Query Executed: INSERT INTO resume_dtl(id, response, resume_hdr_id, questionnaire_id) VALUES(?,?,?,?)\r\nArray\n(\n    [0] => isii\n    [1] => \n    [2] => adkjaklflka\n    [3] => 1\n    [4] => 1\n)\n', '/apc-io/modules/resume_hdr/add_resume_hdr.php'),
(11, '::1', 'root', 1441212598, 'Query Executed: INSERT INTO resume_dtl(id, response, resume_hdr_id, questionnaire_id) VALUES(?,?,?,?)\r\nArray\n(\n    [0] => isii\n    [1] => \n    [2] => kasldla\n    [3] => 1\n    [4] => 2\n)\n', '/apc-io/modules/resume_hdr/add_resume_hdr.php'),
(12, '::1', 'root', 1441212656, 'Pressed cancel button', '/apc-io/modules/resume_hdr/edit_resume_hdr.php'),
(13, '::1', 'root', 1441212666, 'Pressed cancel button', '/apc-io/modules/resume_hdr/detailview_resume_hdr.php'),
(14, '::1', 'root', 1441212753, 'Pressed submit button', '/apc-io/modules/resume_hdr/edit_resume_hdr.php'),
(15, '::1', 'root', 1441212754, 'Query Executed: UPDATE resume_hdr SET student_id = ?, mobile_num = ?, personal_email = ?, website = ?, picture = ? WHERE id = ?\r\nArray\n(\n    [0] => sssssi\n    [1] => 2012-100088\n    [2] => 09439278433\n    [3] => mkatrasmonte.111@gmail.com\n    [4] => katetrasmonte.com\n    [5] => ffg\n    [6] => 1\n)\n', '/apc-io/modules/resume_hdr/edit_resume_hdr.php'),
(16, '::1', 'root', 1441212754, 'Query Executed: DELETE FROM resume_dtl WHERE resume_hdr_id = ?\r\nArray\n(\n    [0] => i\n    [1] => \n)\n', '/apc-io/modules/resume_hdr/edit_resume_hdr.php'),
(17, '::1', 'root', 1441212754, 'Query Executed: INSERT INTO resume_dtl(id, response, resume_hdr_id, questionnaire_id) VALUES(?,?,?,?)\r\nArray\n(\n    [0] => isii\n    [1] => \n    [2] => adkjaklflka\n    [3] => 1\n    [4] => 1\n)\n', '/apc-io/modules/resume_hdr/edit_resume_hdr.php'),
(18, '::1', 'root', 1441212754, 'Query Executed: INSERT INTO resume_dtl(id, response, resume_hdr_id, questionnaire_id) VALUES(?,?,?,?)\r\nArray\n(\n    [0] => isii\n    [1] => \n    [2] => kasldla\n    [3] => 1\n    [4] => 2\n)\n', '/apc-io/modules/resume_hdr/edit_resume_hdr.php'),
(19, '::1', 'root', 1441249595, 'Logged in', '/apc-io/login.php'),
(20, '::1', 'root', 1441249687, 'Pressed submit button', '/apc-io/sysadmin/add_person.php'),
(21, '::1', 'root', 1441249687, 'Query Executed: INSERT INTO person(person_id, first_name, middle_name, last_name, gender) VALUES(?,?,?,?,?)\r\nArray\n(\n    [0] => issss\n    [1] => \n    [2] => Christine Mae\n    [3] => Velasco\n    [4] => Olalo\n    [5] => Female\n)\n', '/apc-io/sysadmin/add_person.php'),
(22, '::1', 'root', 1441249746, 'Pressed submit button', '/apc-io/sysadmin/add_person.php'),
(23, '::1', 'root', 1441249747, 'Query Executed: INSERT INTO person(person_id, first_name, middle_name, last_name, gender) VALUES(?,?,?,?,?)\r\nArray\n(\n    [0] => issss\n    [1] => \n    [2] => Michelle Kim\n    [3] => S\n    [4] => Asban\n    [5] => Female\n)\n', '/apc-io/sysadmin/add_person.php'),
(24, '::1', 'root', 1441249812, 'Pressed submit button', '/apc-io/sysadmin/add_user_role.php'),
(25, '::1', 'root', 1441249812, 'Query Executed: INSERT INTO user_role(role_id, role, description) VALUES(?,?,?)\r\nArray\n(\n    [0] => iss\n    [1] => \n    [2] => apcih\n    [3] => Internship Head of APC\n)\n', '/apc-io/sysadmin/add_user_role.php'),
(26, '::1', 'root', 1441249839, 'Pressed submit button', '/apc-io/sysadmin/add_user_role.php'),
(27, '::1', 'root', 1441249839, 'Query Executed: INSERT INTO user_role(role_id, role, description) VALUES(?,?,?)\r\nArray\n(\n    [0] => iss\n    [1] => \n    [2] => student\n    [3] => Student of APC\n)\n', '/apc-io/sysadmin/add_user_role.php'),
(28, '::1', 'root', 1441249895, 'Pressed submit button', '/apc-io/sysadmin/add_user.php'),
(29, '::1', 'root', 1441249897, 'Query Executed: INSERT INTO user(username, password, salt, iteration, method, person_id, role_id, skin_id) VALUES(?,?,?,?,?,?,?,?)\r\nArray\n(\n    [0] => sssisiii\n    [1] => matrasmonte\n    [2] => $2y$12$MRKfQeA1lRoa57o.0kepluyX2pi4sEBD.Jz2xmUSwlCNKx/U3i3S2\n    [3] => MRKfQeA1lRoa57o+0keplw\n    [4] => 12\n    [5] => blowfish\n    [6] => 2\n    [7] => 4\n    [8] => 9\n)\n', '/apc-io/sysadmin/add_user.php'),
(30, '::1', 'root', 1441249897, 'Query executed: INSERT `user_passport` SELECT ''matrasmonte'', `link_id` FROM user_role_links WHERE role_id=''4''', '/apc-io/sysadmin/add_user.php'),
(31, '::1', 'root', 1441249967, 'Pressed submit button', '/apc-io/sysadmin/add_user.php'),
(32, '::1', 'root', 1441249969, 'Query Executed: INSERT INTO user(username, password, salt, iteration, method, person_id, role_id, skin_id) VALUES(?,?,?,?,?,?,?,?)\r\nArray\n(\n    [0] => sssisiii\n    [1] => lbhocosol\n    [2] => $2y$12$0Q2v8W7VmrEwAFbLTKdab.7DlOlzayICYys/Bp0.32BmN0xrQ/l7y\n    [3] => 0Q2v8W7VmrEwAFbLTKdabA\n    [4] => 12\n    [5] => blowfish\n    [6] => 3\n    [7] => 4\n    [8] => 4\n)\n', '/apc-io/sysadmin/add_user.php'),
(33, '::1', 'root', 1441249969, 'Query executed: INSERT `user_passport` SELECT ''lbhocosol'', `link_id` FROM user_role_links WHERE role_id=''4''', '/apc-io/sysadmin/add_user.php'),
(34, '::1', 'root', 1441249994, 'Pressed submit button', '/apc-io/sysadmin/add_user.php'),
(35, '::1', 'root', 1441249995, 'Query Executed: INSERT INTO user(username, password, salt, iteration, method, person_id, role_id, skin_id) VALUES(?,?,?,?,?,?,?,?)\r\nArray\n(\n    [0] => sssisiii\n    [1] => cvolalo\n    [2] => $2y$12$dpofDe1MI.Jus5Vtlgcbqe3gumHYTCUwBRZ139rVYhAI2178ElvEO\n    [3] => dpofDe1MI+Jus5Vtlgcbqg\n    [4] => 12\n    [5] => blowfish\n    [6] => 4\n    [7] => 4\n    [8] => 8\n)\n', '/apc-io/sysadmin/add_user.php'),
(36, '::1', 'root', 1441249996, 'Query executed: INSERT `user_passport` SELECT ''cvolalo'', `link_id` FROM user_role_links WHERE role_id=''4''', '/apc-io/sysadmin/add_user.php'),
(37, '::1', 'root', 1441250028, 'Pressed submit button', '/apc-io/sysadmin/add_user.php'),
(38, '::1', 'root', 1441250029, 'Query Executed: INSERT INTO user(username, password, salt, iteration, method, person_id, role_id, skin_id) VALUES(?,?,?,?,?,?,?,?)\r\nArray\n(\n    [0] => sssisiii\n    [1] => apcih\n    [2] => $2y$12$Jt7zIGUiIvCnT1saPfB.YOMqd3h2ZDwdf3QLXM/jNissZhZRu2K7m\n    [3] => Jt7zIGUiIvCnT1saPfB+YQ\n    [4] => 12\n    [5] => blowfish\n    [6] => 5\n    [7] => 3\n    [8] => 1\n)\n', '/apc-io/sysadmin/add_user.php'),
(39, '::1', 'root', 1441250029, 'Query executed: INSERT `user_passport` SELECT ''apcih'', `link_id` FROM user_role_links WHERE role_id=''3''', '/apc-io/sysadmin/add_user.php'),
(40, '::1', 'root', 1441250038, 'Logged out', '/apc-io/end.php'),
(41, '::1', 'matrasmonte', 1441250049, 'Logged in', '/apc-io/login.php'),
(42, '::1', 'matrasmonte', 1441250062, 'Logged out', '/apc-io/end.php'),
(43, '::1', 'apcih', 1441250069, 'Logged in', '/apc-io/login.php'),
(44, '::1', 'apcih', 1441250076, 'Logged out', '/apc-io/end.php'),
(45, '::1', 'cvolalo', 1441250084, 'Logged in', '/apc-io/login.php'),
(46, '::1', 'cvolalo', 1441250089, 'Logged out', '/apc-io/end.php'),
(47, '::1', 'lbhocosol', 1441250104, 'Logged in', '/apc-io/login.php'),
(48, '::1', 'lbhocosol', 1441250111, 'Logged out', '/apc-io/end.php'),
(49, '::1', 'root', 1441250117, 'Logged in', '/apc-io/login.php'),
(50, '::1', 'root', 1441250750, 'Query executed: DELETE FROM user_passport WHERE username=''apcih''', '/apc-io/sysadmin/set_user_passports.php'),
(51, '::1', 'root', 1441250750, 'Query executed: INSERT INTO user_passport(username, link_id) VALUES(''apcih'', ''35''),(''apcih'', ''65''),(''apcih'', ''69''),(''apcih'', ''73''),(''apcih'', ''77''),(''apcih'', ''81''),(''apcih'', ''105''),(''apcih'', ''109''),(''apcih'', ''113''),(''apcih'', ''117''),(''apcih'', ''63''),(''apcih'', ''67''),(''apcih'', ''71''),(''apcih'', ''75''),(''apcih'', ''79''),(''apcih'', ''83''),(''apcih'', ''72''),(''apcih'', ''76''),(''apcih'', ''80''),(''apcih'', ''84''),(''apcih'', ''108''),(''apcih'', ''116''),(''apcih'', ''66''),(''apcih'', ''70''),(''apcih'', ''74''),(''apcih'', ''78''),(''apcih'', ''82''),(''apcih'', ''106''),(''apcih'', ''110''),(''apcih'', ''114''),(''apcih'', ''118''),(''apcih'', ''91''),(''apcih'', ''95''),(''apcih'', ''99''),(''apcih'', ''103''),(''apcih'', ''107''),(''apcih'', ''111''),(''apcih'', ''115''),(''apcih'', ''119''),(''apcih'', ''123''),(''apcih'', ''127''),(''apcih'', ''131'')', '/apc-io/sysadmin/set_user_passports.php'),
(52, '::1', 'root', 1441250750, 'Query executed: UPDATE user SET role_id=''0'' WHERE username=''apcih''', '/apc-io/sysadmin/set_user_passports.php'),
(53, '::1', 'root', 1441251120, 'Query executed: DELETE FROM user_role_links WHERE role_id=''3''', '/apc-io/sysadmin/role_permissions.php'),
(54, '::1', 'root', 1441251120, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''35'')', '/apc-io/sysadmin/role_permissions.php'),
(55, '::1', 'root', 1441251120, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''65'')', '/apc-io/sysadmin/role_permissions.php'),
(56, '::1', 'root', 1441251120, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''69'')', '/apc-io/sysadmin/role_permissions.php'),
(57, '::1', 'root', 1441251120, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''73'')', '/apc-io/sysadmin/role_permissions.php'),
(58, '::1', 'root', 1441251120, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''77'')', '/apc-io/sysadmin/role_permissions.php'),
(59, '::1', 'root', 1441251120, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''81'')', '/apc-io/sysadmin/role_permissions.php'),
(60, '::1', 'root', 1441251120, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''105'')', '/apc-io/sysadmin/role_permissions.php'),
(61, '::1', 'root', 1441251120, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''109'')', '/apc-io/sysadmin/role_permissions.php'),
(62, '::1', 'root', 1441251120, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''113'')', '/apc-io/sysadmin/role_permissions.php'),
(63, '::1', 'root', 1441251120, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''117'')', '/apc-io/sysadmin/role_permissions.php'),
(64, '::1', 'root', 1441251120, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''63'')', '/apc-io/sysadmin/role_permissions.php'),
(65, '::1', 'root', 1441251120, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''67'')', '/apc-io/sysadmin/role_permissions.php'),
(66, '::1', 'root', 1441251120, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''71'')', '/apc-io/sysadmin/role_permissions.php'),
(67, '::1', 'root', 1441251120, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''75'')', '/apc-io/sysadmin/role_permissions.php'),
(68, '::1', 'root', 1441251120, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''79'')', '/apc-io/sysadmin/role_permissions.php'),
(69, '::1', 'root', 1441251120, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''83'')', '/apc-io/sysadmin/role_permissions.php'),
(70, '::1', 'root', 1441251120, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''72'')', '/apc-io/sysadmin/role_permissions.php'),
(71, '::1', 'root', 1441251121, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''76'')', '/apc-io/sysadmin/role_permissions.php'),
(72, '::1', 'root', 1441251121, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''80'')', '/apc-io/sysadmin/role_permissions.php'),
(73, '::1', 'root', 1441251121, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''84'')', '/apc-io/sysadmin/role_permissions.php'),
(74, '::1', 'root', 1441251121, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''108'')', '/apc-io/sysadmin/role_permissions.php'),
(75, '::1', 'root', 1441251121, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''116'')', '/apc-io/sysadmin/role_permissions.php'),
(76, '::1', 'root', 1441251121, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''62'')', '/apc-io/sysadmin/role_permissions.php'),
(77, '::1', 'root', 1441251121, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''66'')', '/apc-io/sysadmin/role_permissions.php'),
(78, '::1', 'root', 1441251121, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''70'')', '/apc-io/sysadmin/role_permissions.php'),
(79, '::1', 'root', 1441251121, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''74'')', '/apc-io/sysadmin/role_permissions.php'),
(80, '::1', 'root', 1441251121, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''78'')', '/apc-io/sysadmin/role_permissions.php'),
(81, '::1', 'root', 1441251121, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''82'')', '/apc-io/sysadmin/role_permissions.php'),
(82, '::1', 'root', 1441251121, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''110'')', '/apc-io/sysadmin/role_permissions.php'),
(83, '::1', 'root', 1441251121, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''114'')', '/apc-io/sysadmin/role_permissions.php'),
(84, '::1', 'root', 1441251121, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''118'')', '/apc-io/sysadmin/role_permissions.php'),
(85, '::1', 'root', 1441251121, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''91'')', '/apc-io/sysadmin/role_permissions.php'),
(86, '::1', 'root', 1441251121, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''95'')', '/apc-io/sysadmin/role_permissions.php'),
(87, '::1', 'root', 1441251121, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''99'')', '/apc-io/sysadmin/role_permissions.php'),
(88, '::1', 'root', 1441251121, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''103'')', '/apc-io/sysadmin/role_permissions.php'),
(89, '::1', 'root', 1441251121, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''107'')', '/apc-io/sysadmin/role_permissions.php'),
(90, '::1', 'root', 1441251121, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''111'')', '/apc-io/sysadmin/role_permissions.php'),
(91, '::1', 'root', 1441251121, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''6'')', '/apc-io/sysadmin/role_permissions.php'),
(92, '::1', 'root', 1441251121, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''115'')', '/apc-io/sysadmin/role_permissions.php'),
(93, '::1', 'root', 1441251121, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''119'')', '/apc-io/sysadmin/role_permissions.php'),
(94, '::1', 'root', 1441251121, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''123'')', '/apc-io/sysadmin/role_permissions.php'),
(95, '::1', 'root', 1441251121, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''127'')', '/apc-io/sysadmin/role_permissions.php'),
(96, '::1', 'root', 1441251121, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''131'')', '/apc-io/sysadmin/role_permissions.php'),
(97, '::1', 'root', 1441251139, 'Pressed cancel button', '/apc-io/sysadmin/add_user.php'),
(98, '::1', 'root', 1441251151, 'Pressed submit button', '/apc-io/sysadmin/edit_user.php'),
(99, '::1', 'root', 1441251151, 'Query Executed: UPDATE user SET username = ?, person_id = ?, role_id = ?, skin_id = ? WHERE username = ?\r\nArray\n(\n    [0] => siiis\n    [1] => apcih\n    [2] => 5\n    [3] => 3\n    [4] => 1\n    [5] => apcih\n)\n', '/apc-io/sysadmin/edit_user.php'),
(100, '::1', 'root', 1441251151, 'Query executed: DELETE FROM user_passport WHERE username = ''apcih''', '/apc-io/sysadmin/edit_user.php'),
(101, '::1', 'root', 1441251151, 'Query executed: INSERT `user_passport` SELECT ''apcih'', `link_id` FROM user_role_links WHERE role_id=''3''', '/apc-io/sysadmin/edit_user.php'),
(102, '::1', 'root', 1441251424, 'Query executed: DELETE FROM user_role_links WHERE role_id=''4''', '/apc-io/sysadmin/role_permissions.php'),
(103, '::1', 'root', 1441251424, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''4'', ''35'')', '/apc-io/sysadmin/role_permissions.php'),
(104, '::1', 'root', 1441251424, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''4'', ''33'')', '/apc-io/sysadmin/role_permissions.php'),
(105, '::1', 'root', 1441251424, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''4'', ''61'')', '/apc-io/sysadmin/role_permissions.php'),
(106, '::1', 'root', 1441251424, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''4'', ''65'')', '/apc-io/sysadmin/role_permissions.php'),
(107, '::1', 'root', 1441251424, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''4'', ''97'')', '/apc-io/sysadmin/role_permissions.php'),
(108, '::1', 'root', 1441251424, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''4'', ''101'')', '/apc-io/sysadmin/role_permissions.php'),
(109, '::1', 'root', 1441251424, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''4'', ''129'')', '/apc-io/sysadmin/role_permissions.php'),
(110, '::1', 'root', 1441251424, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''4'', ''63'')', '/apc-io/sysadmin/role_permissions.php'),
(111, '::1', 'root', 1441251424, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''4'', ''67'')', '/apc-io/sysadmin/role_permissions.php'),
(112, '::1', 'root', 1441251424, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''4'', ''34'')', '/apc-io/sysadmin/role_permissions.php'),
(113, '::1', 'root', 1441251424, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''4'', ''62'')', '/apc-io/sysadmin/role_permissions.php'),
(114, '::1', 'root', 1441251424, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''4'', ''66'')', '/apc-io/sysadmin/role_permissions.php'),
(115, '::1', 'root', 1441251424, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''4'', ''98'')', '/apc-io/sysadmin/role_permissions.php'),
(116, '::1', 'root', 1441251424, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''4'', ''102'')', '/apc-io/sysadmin/role_permissions.php'),
(117, '::1', 'root', 1441251424, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''4'', ''126'')', '/apc-io/sysadmin/role_permissions.php'),
(118, '::1', 'root', 1441251424, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''4'', ''130'')', '/apc-io/sysadmin/role_permissions.php'),
(119, '::1', 'root', 1441251424, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''4'', ''91'')', '/apc-io/sysadmin/role_permissions.php'),
(120, '::1', 'root', 1441251424, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''4'', ''95'')', '/apc-io/sysadmin/role_permissions.php'),
(121, '::1', 'root', 1441251424, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''4'', ''99'')', '/apc-io/sysadmin/role_permissions.php'),
(122, '::1', 'root', 1441251424, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''4'', ''103'')', '/apc-io/sysadmin/role_permissions.php'),
(123, '::1', 'root', 1441251424, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''4'', ''115'')', '/apc-io/sysadmin/role_permissions.php'),
(124, '::1', 'root', 1441251425, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''4'', ''127'')', '/apc-io/sysadmin/role_permissions.php'),
(125, '::1', 'root', 1441251425, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''4'', ''131'')', '/apc-io/sysadmin/role_permissions.php'),
(126, '::1', 'root', 1441251490, 'Query executed: DELETE FROM user_passport WHERE username IN (''cvolalo'',''lbhocosol'',''matrasmonte'')', '/apc-io/sysadmin/role_permissions_cascade.php'),
(127, '::1', 'root', 1441251490, 'Query executed: INSERT `user_passport` SELECT ''cvolalo'', `link_id` FROM user_role_links WHERE role_id=''4''', '/apc-io/sysadmin/role_permissions_cascade.php'),
(128, '::1', 'root', 1441251490, 'Query executed: INSERT `user_passport` SELECT ''lbhocosol'', `link_id` FROM user_role_links WHERE role_id=''4''', '/apc-io/sysadmin/role_permissions_cascade.php'),
(129, '::1', 'root', 1441251490, 'Query executed: INSERT `user_passport` SELECT ''matrasmonte'', `link_id` FROM user_role_links WHERE role_id=''4''', '/apc-io/sysadmin/role_permissions_cascade.php'),
(130, '::1', 'root', 1441251493, 'Pressed cancel button', '/apc-io/sysadmin/role_permissions_cascade.php'),
(131, '::1', 'root', 1441251504, 'Query executed: DELETE FROM user_passport WHERE username IN (''cvolalo'',''lbhocosol'',''matrasmonte'')', '/apc-io/sysadmin/role_permissions_cascade.php'),
(132, '::1', 'root', 1441251504, 'Query executed: INSERT `user_passport` SELECT ''cvolalo'', `link_id` FROM user_role_links WHERE role_id=''4''', '/apc-io/sysadmin/role_permissions_cascade.php'),
(133, '::1', 'root', 1441251504, 'Query executed: INSERT `user_passport` SELECT ''lbhocosol'', `link_id` FROM user_role_links WHERE role_id=''4''', '/apc-io/sysadmin/role_permissions_cascade.php'),
(134, '::1', 'root', 1441251504, 'Query executed: INSERT `user_passport` SELECT ''matrasmonte'', `link_id` FROM user_role_links WHERE role_id=''4''', '/apc-io/sysadmin/role_permissions_cascade.php'),
(135, '::1', 'root', 1441251506, 'Pressed cancel button', '/apc-io/sysadmin/role_permissions_cascade.php'),
(136, '::1', 'root', 1441251537, 'Query executed: DELETE FROM user_passport WHERE username IN (''apcih'')', '/apc-io/sysadmin/role_permissions_cascade.php'),
(137, '::1', 'root', 1441251537, 'Query executed: INSERT `user_passport` SELECT ''apcih'', `link_id` FROM user_role_links WHERE role_id=''3''', '/apc-io/sysadmin/role_permissions_cascade.php'),
(138, '::1', 'root', 1441251545, 'Pressed cancel button', '/apc-io/sysadmin/role_permissions_cascade.php'),
(139, '::1', 'root', 1441251588, 'Logged out', '/apc-io/end.php'),
(140, '::1', 'matrasmonte', 1441251601, 'Logged in', '/apc-io/login.php'),
(141, '::1', 'matrasmonte', 1441251627, 'Logged out', '/apc-io/end.php'),
(142, '::1', 'apcih', 1441253871, 'Logged in', '/apc-io/login.php'),
(143, '::1', 'apcih', 1441253889, 'Logged out', '/apc-io/end.php'),
(144, '::1', 'root', 1441253903, 'Logged in', '/apc-io/login.php'),
(145, '::1', 'root', 1441253943, 'Query executed: DELETE FROM user_passport WHERE username=''apcih''', '/apc-io/sysadmin/set_user_passports.php'),
(146, '::1', 'root', 1441253943, 'Query executed: INSERT INTO user_passport(username, link_id) VALUES(''apcih'', ''35''),(''apcih'', ''65''),(''apcih'', ''69''),(''apcih'', ''73''),(''apcih'', ''77''),(''apcih'', ''81''),(''apcih'', ''105''),(''apcih'', ''109''),(''apcih'', ''113''),(''apcih'', ''117''),(''apcih'', ''63''),(''apcih'', ''67''),(''apcih'', ''71''),(''apcih'', ''75''),(''apcih'', ''79''),(''apcih'', ''83''),(''apcih'', ''72''),(''apcih'', ''76''),(''apcih'', ''80''),(''apcih'', ''84''),(''apcih'', ''108''),(''apcih'', ''116''),(''apcih'', ''62''),(''apcih'', ''66''),(''apcih'', ''70''),(''apcih'', ''74''),(''apcih'', ''78''),(''apcih'', ''82''),(''apcih'', ''110''),(''apcih'', ''114''),(''apcih'', ''118''),(''apcih'', ''91''),(''apcih'', ''95''),(''apcih'', ''99''),(''apcih'', ''103''),(''apcih'', ''107''),(''apcih'', ''111''),(''apcih'', ''115''),(''apcih'', ''119''),(''apcih'', ''123''),(''apcih'', ''127''),(''apcih'', ''131'')', '/apc-io/sysadmin/set_user_passports.php'),
(147, '::1', 'root', 1441253944, 'Query executed: UPDATE user SET role_id=''0'' WHERE username=''apcih''', '/apc-io/sysadmin/set_user_passports.php'),
(148, '::1', 'root', 1441253978, 'Query executed: DELETE FROM user_role_links WHERE role_id=''3''', '/apc-io/sysadmin/role_permissions.php'),
(149, '::1', 'root', 1441253978, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''35'')', '/apc-io/sysadmin/role_permissions.php'),
(150, '::1', 'root', 1441253978, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''65'')', '/apc-io/sysadmin/role_permissions.php'),
(151, '::1', 'root', 1441253978, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''69'')', '/apc-io/sysadmin/role_permissions.php'),
(152, '::1', 'root', 1441253978, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''73'')', '/apc-io/sysadmin/role_permissions.php'),
(153, '::1', 'root', 1441253978, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''77'')', '/apc-io/sysadmin/role_permissions.php'),
(154, '::1', 'root', 1441253978, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''81'')', '/apc-io/sysadmin/role_permissions.php'),
(155, '::1', 'root', 1441253978, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''105'')', '/apc-io/sysadmin/role_permissions.php'),
(156, '::1', 'root', 1441253979, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''109'')', '/apc-io/sysadmin/role_permissions.php'),
(157, '::1', 'root', 1441253979, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''113'')', '/apc-io/sysadmin/role_permissions.php'),
(158, '::1', 'root', 1441253979, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''117'')', '/apc-io/sysadmin/role_permissions.php'),
(159, '::1', 'root', 1441253979, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''63'')', '/apc-io/sysadmin/role_permissions.php'),
(160, '::1', 'root', 1441253979, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''67'')', '/apc-io/sysadmin/role_permissions.php'),
(161, '::1', 'root', 1441253979, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''71'')', '/apc-io/sysadmin/role_permissions.php'),
(162, '::1', 'root', 1441253979, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''75'')', '/apc-io/sysadmin/role_permissions.php'),
(163, '::1', 'root', 1441253979, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''79'')', '/apc-io/sysadmin/role_permissions.php'),
(164, '::1', 'root', 1441253979, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''83'')', '/apc-io/sysadmin/role_permissions.php'),
(165, '::1', 'root', 1441253979, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''72'')', '/apc-io/sysadmin/role_permissions.php'),
(166, '::1', 'root', 1441253979, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''76'')', '/apc-io/sysadmin/role_permissions.php'),
(167, '::1', 'root', 1441253979, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''80'')', '/apc-io/sysadmin/role_permissions.php'),
(168, '::1', 'root', 1441253979, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''84'')', '/apc-io/sysadmin/role_permissions.php'),
(169, '::1', 'root', 1441253979, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''108'')', '/apc-io/sysadmin/role_permissions.php'),
(170, '::1', 'root', 1441253979, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''116'')', '/apc-io/sysadmin/role_permissions.php'),
(171, '::1', 'root', 1441253979, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''62'')', '/apc-io/sysadmin/role_permissions.php'),
(172, '::1', 'root', 1441253979, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''66'')', '/apc-io/sysadmin/role_permissions.php'),
(173, '::1', 'root', 1441253979, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''70'')', '/apc-io/sysadmin/role_permissions.php'),
(174, '::1', 'root', 1441253979, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''74'')', '/apc-io/sysadmin/role_permissions.php'),
(175, '::1', 'root', 1441253979, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''78'')', '/apc-io/sysadmin/role_permissions.php'),
(176, '::1', 'root', 1441253979, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''82'')', '/apc-io/sysadmin/role_permissions.php'),
(177, '::1', 'root', 1441253979, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''110'')', '/apc-io/sysadmin/role_permissions.php'),
(178, '::1', 'root', 1441253979, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''114'')', '/apc-io/sysadmin/role_permissions.php'),
(179, '::1', 'root', 1441253979, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''118'')', '/apc-io/sysadmin/role_permissions.php'),
(180, '::1', 'root', 1441253979, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''91'')', '/apc-io/sysadmin/role_permissions.php'),
(181, '::1', 'root', 1441253979, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''95'')', '/apc-io/sysadmin/role_permissions.php'),
(182, '::1', 'root', 1441253980, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''99'')', '/apc-io/sysadmin/role_permissions.php'),
(183, '::1', 'root', 1441253980, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''103'')', '/apc-io/sysadmin/role_permissions.php'),
(184, '::1', 'root', 1441253980, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''107'')', '/apc-io/sysadmin/role_permissions.php'),
(185, '::1', 'root', 1441253980, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''111'')', '/apc-io/sysadmin/role_permissions.php'),
(186, '::1', 'root', 1441253980, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''115'')', '/apc-io/sysadmin/role_permissions.php'),
(187, '::1', 'root', 1441253980, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''119'')', '/apc-io/sysadmin/role_permissions.php'),
(188, '::1', 'root', 1441253980, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''123'')', '/apc-io/sysadmin/role_permissions.php'),
(189, '::1', 'root', 1441253980, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''127'')', '/apc-io/sysadmin/role_permissions.php'),
(190, '::1', 'root', 1441253980, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''131'')', '/apc-io/sysadmin/role_permissions.php'),
(191, '::1', 'root', 1441254003, 'Pressed submit button', '/apc-io/sysadmin/edit_user.php'),
(192, '::1', 'root', 1441254003, 'Query Executed: UPDATE user SET username = ?, person_id = ?, role_id = ?, skin_id = ? WHERE username = ?\r\nArray\n(\n    [0] => siiis\n    [1] => apcih\n    [2] => 5\n    [3] => 3\n    [4] => 1\n    [5] => apcih\n)\n', '/apc-io/sysadmin/edit_user.php'),
(193, '::1', 'root', 1441254003, 'Query executed: DELETE FROM user_passport WHERE username = ''apcih''', '/apc-io/sysadmin/edit_user.php'),
(194, '::1', 'root', 1441254003, 'Query executed: INSERT `user_passport` SELECT ''apcih'', `link_id` FROM user_role_links WHERE role_id=''3''', '/apc-io/sysadmin/edit_user.php'),
(195, '::1', 'root', 1441254015, 'Pressed cancel button', '/apc-io/sysadmin/edit_user.php'),
(196, '::1', 'root', 1441254072, 'Query executed: DELETE FROM user_passport WHERE username IN (''apcih'')', '/apc-io/sysadmin/role_permissions_cascade.php'),
(197, '::1', 'root', 1441254072, 'Query executed: INSERT `user_passport` SELECT ''apcih'', `link_id` FROM user_role_links WHERE role_id=''3''', '/apc-io/sysadmin/role_permissions_cascade.php'),
(198, '::1', 'root', 1441254076, 'Pressed cancel button', '/apc-io/sysadmin/role_permissions_cascade.php'),
(199, '::1', 'root', 1441254181, 'Logged out', '/apc-io/end.php'),
(200, '::1', 'root', 1441254543, 'Logged in', '/apc-io/login.php'),
(201, '::1', 'root', 1441255299, 'Logged out', '/apc-io/end.php'),
(202, '::1', 'apcih', 1441255309, 'Logged in', '/apc-io/login.php'),
(203, '::1', 'apcih', 1441255468, 'Pressed submit button', '/apc-io/modules/comment/add_comment.php'),
(204, '::1', 'apcih', 1441255469, 'Query Executed: INSERT INTO comment(id, body, date, person_id, post_id) VALUES(?,?,?,?,?)\r\nArray\n(\n    [0] => issii\n    [1] => \n    [2] => jlfsjl\n    [3] => 2015-09-03\n    [4] => 1\n    [5] => 1\n)\n', '/apc-io/modules/comment/add_comment.php'),
(205, '::1', 'root', 1441255764, 'Logged in', '/apc-io/login.php'),
(206, '::1', 'root', 1441255836, 'Query executed: DELETE FROM user_role_links WHERE role_id=''3''', '/apc-io/sysadmin/role_permissions.php'),
(207, '::1', 'root', 1441255836, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''35'')', '/apc-io/sysadmin/role_permissions.php'),
(208, '::1', 'root', 1441255836, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''65'')', '/apc-io/sysadmin/role_permissions.php'),
(209, '::1', 'root', 1441255836, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''69'')', '/apc-io/sysadmin/role_permissions.php'),
(210, '::1', 'root', 1441255836, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''73'')', '/apc-io/sysadmin/role_permissions.php'),
(211, '::1', 'root', 1441255836, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''77'')', '/apc-io/sysadmin/role_permissions.php'),
(212, '::1', 'root', 1441255837, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''81'')', '/apc-io/sysadmin/role_permissions.php'),
(213, '::1', 'root', 1441255837, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''105'')', '/apc-io/sysadmin/role_permissions.php'),
(214, '::1', 'root', 1441255837, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''109'')', '/apc-io/sysadmin/role_permissions.php'),
(215, '::1', 'root', 1441255837, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''113'')', '/apc-io/sysadmin/role_permissions.php'),
(216, '::1', 'root', 1441255837, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''117'')', '/apc-io/sysadmin/role_permissions.php'),
(217, '::1', 'root', 1441255837, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''63'')', '/apc-io/sysadmin/role_permissions.php'),
(218, '::1', 'root', 1441255837, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''67'')', '/apc-io/sysadmin/role_permissions.php'),
(219, '::1', 'root', 1441255837, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''71'')', '/apc-io/sysadmin/role_permissions.php'),
(220, '::1', 'root', 1441255837, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''75'')', '/apc-io/sysadmin/role_permissions.php'),
(221, '::1', 'root', 1441255837, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''79'')', '/apc-io/sysadmin/role_permissions.php'),
(222, '::1', 'root', 1441255837, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''83'')', '/apc-io/sysadmin/role_permissions.php'),
(223, '::1', 'root', 1441255837, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''72'')', '/apc-io/sysadmin/role_permissions.php'),
(224, '::1', 'root', 1441255837, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''76'')', '/apc-io/sysadmin/role_permissions.php'),
(225, '::1', 'root', 1441255837, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''80'')', '/apc-io/sysadmin/role_permissions.php'),
(226, '::1', 'root', 1441255837, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''84'')', '/apc-io/sysadmin/role_permissions.php'),
(227, '::1', 'root', 1441255838, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''108'')', '/apc-io/sysadmin/role_permissions.php'),
(228, '::1', 'root', 1441255838, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''116'')', '/apc-io/sysadmin/role_permissions.php'),
(229, '::1', 'root', 1441255838, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''66'')', '/apc-io/sysadmin/role_permissions.php'),
(230, '::1', 'root', 1441255838, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''70'')', '/apc-io/sysadmin/role_permissions.php'),
(231, '::1', 'root', 1441255838, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''74'')', '/apc-io/sysadmin/role_permissions.php'),
(232, '::1', 'root', 1441255838, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''78'')', '/apc-io/sysadmin/role_permissions.php'),
(233, '::1', 'root', 1441255838, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''82'')', '/apc-io/sysadmin/role_permissions.php'),
(234, '::1', 'root', 1441255838, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''110'')', '/apc-io/sysadmin/role_permissions.php'),
(235, '::1', 'root', 1441255838, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''114'')', '/apc-io/sysadmin/role_permissions.php'),
(236, '::1', 'root', 1441255838, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''118'')', '/apc-io/sysadmin/role_permissions.php'),
(237, '::1', 'root', 1441255838, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''91'')', '/apc-io/sysadmin/role_permissions.php'),
(238, '::1', 'root', 1441255838, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''95'')', '/apc-io/sysadmin/role_permissions.php'),
(239, '::1', 'root', 1441255838, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''99'')', '/apc-io/sysadmin/role_permissions.php'),
(240, '::1', 'root', 1441255838, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''103'')', '/apc-io/sysadmin/role_permissions.php'),
(241, '::1', 'root', 1441255838, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''107'')', '/apc-io/sysadmin/role_permissions.php'),
(242, '::1', 'root', 1441255838, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''111'')', '/apc-io/sysadmin/role_permissions.php'),
(243, '::1', 'root', 1441255839, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''115'')', '/apc-io/sysadmin/role_permissions.php'),
(244, '::1', 'root', 1441255839, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''119'')', '/apc-io/sysadmin/role_permissions.php'),
(245, '::1', 'root', 1441255839, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''123'')', '/apc-io/sysadmin/role_permissions.php'),
(246, '::1', 'root', 1441255839, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''127'')', '/apc-io/sysadmin/role_permissions.php'),
(247, '::1', 'root', 1441255839, 'Query executed: INSERT INTO user_role_links(role_id, link_id) VALUES(''3'', ''131'')', '/apc-io/sysadmin/role_permissions.php'),
(248, '::1', 'root', 1441255858, 'Query executed: DELETE FROM user_passport WHERE username IN (''apcih'')', '/apc-io/sysadmin/role_permissions_cascade.php'),
(249, '::1', 'root', 1441255858, 'Query executed: INSERT `user_passport` SELECT ''apcih'', `link_id` FROM user_role_links WHERE role_id=''3''', '/apc-io/sysadmin/role_permissions_cascade.php'),
(250, '::1', 'root', 1441255859, 'Pressed cancel button', '/apc-io/sysadmin/role_permissions_cascade.php');

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
('apcih', '$2y$12$Jt7zIGUiIvCnT1saPfB.YOMqd3h2ZDwdf3QLXM/jNissZhZRu2K7m', 'Jt7zIGUiIvCnT1saPfB+YQ', 12, 'blowfish', 5, 3, 1),
('cvolalo', '$2y$12$dpofDe1MI.Jus5Vtlgcbqe3gumHYTCUwBRZ139rVYhAI2178ElvEO', 'dpofDe1MI+Jus5Vtlgcbqg', 12, 'blowfish', 4, 4, 8),
('lbhocosol', '$2y$12$0Q2v8W7VmrEwAFbLTKdab.7DlOlzayICYys/Bp0.32BmN0xrQ/l7y', '0Q2v8W7VmrEwAFbLTKdabA', 12, 'blowfish', 3, 4, 4),
('matrasmonte', '$2y$12$MRKfQeA1lRoa57o.0kepluyX2pi4sEBD.Jz2xmUSwlCNKx/U3i3S2', 'MRKfQeA1lRoa57o+0keplw', 12, 'blowfish', 2, 4, 9),
('root', '$2y$12$A6X3nloe7l7xKk/tBIt2aOsXxy8ZGIzdKfPSKAU8hVco5vBsPU80G', 'A6X3nloe7l7xKk/tBIt2aQ', 12, 'blowfish', 1, 1, 1);

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
(33, 'Add accomplishment', 'modules/accomplishment/add_accomplishment.php', 'Add Accomplishment', '', 1, 'No', 'On', 'form3.png', 0),
(34, 'Edit accomplishment', 'modules/accomplishment/edit_accomplishment.php', 'Edit Accomplishment', '', 1, 'No', 'On', 'form3.png', 0),
(35, 'View accomplishment', 'modules/accomplishment/listview_accomplishment.php', 'Accomplishment', '', 1, 'Yes', 'On', 'form3.png', 0),
(36, 'Delete accomplishment', 'modules/accomplishment/delete_accomplishment.php', 'Delete Accomplishment', '', 1, 'No', 'On', 'form3.png', 0),
(37, 'Add alumniaddress', 'modules/alumniaddress/add_alumniaddress.php', 'Add Alumniaddress', '', 1, 'No', 'On', 'form3.png', 0),
(38, 'Edit alumniaddress', 'modules/alumniaddress/edit_alumniaddress.php', 'Edit Alumniaddress', '', 1, 'No', 'On', 'form3.png', 0),
(39, 'View alumniaddress', 'modules/alumniaddress/listview_alumniaddress.php', 'Alumniaddress', '', 1, 'Yes', 'On', 'form3.png', 0),
(40, 'Delete alumniaddress', 'modules/alumniaddress/delete_alumniaddress.php', 'Delete Alumniaddress', '', 1, 'No', 'On', 'form3.png', 0),
(41, 'Add alumniemplmove', 'modules/alumniemplmove/add_alumniemplmove.php', 'Add Alumniemplmove', '', 1, 'No', 'On', 'form3.png', 0),
(42, 'Edit alumniemplmove', 'modules/alumniemplmove/edit_alumniemplmove.php', 'Edit Alumniemplmove', '', 1, 'No', 'On', 'form3.png', 0),
(43, 'View alumniemplmove', 'modules/alumniemplmove/listview_alumniemplmove.php', 'Alumniemplmove', '', 1, 'Yes', 'On', 'form3.png', 0),
(44, 'Delete alumniemplmove', 'modules/alumniemplmove/delete_alumniemplmove.php', 'Delete Alumniemplmove', '', 1, 'No', 'On', 'form3.png', 0),
(45, 'Add alumniemplrecord', 'modules/alumniemplrecord/add_alumniemplrecord.php', 'Add Alumniemplrecord', '', 1, 'No', 'On', 'form3.png', 0),
(46, 'Edit alumniemplrecord', 'modules/alumniemplrecord/edit_alumniemplrecord.php', 'Edit Alumniemplrecord', '', 1, 'No', 'On', 'form3.png', 0),
(47, 'View alumniemplrecord', 'modules/alumniemplrecord/listview_alumniemplrecord.php', 'Alumniemplrecord', '', 1, 'Yes', 'On', 'form3.png', 0),
(48, 'Delete alumniemplrecord', 'modules/alumniemplrecord/delete_alumniemplrecord.php', 'Delete Alumniemplrecord', '', 1, 'No', 'On', 'form3.png', 0),
(49, 'Add alumnifurtherstudies', 'modules/alumnifurtherstudies/add_alumnifurtherstudies.php', 'Add Alumnifurtherstudies', '', 1, 'No', 'On', 'form3.png', 0),
(50, 'Edit alumnifurtherstudies', 'modules/alumnifurtherstudies/edit_alumnifurtherstudies.php', 'Edit Alumnifurtherstudies', '', 1, 'No', 'On', 'form3.png', 0),
(51, 'View alumnifurtherstudies', 'modules/alumnifurtherstudies/listview_alumnifurtherstudies.php', 'Alumnifurtherstudies', '', 1, 'Yes', 'On', 'form3.png', 0),
(52, 'Delete alumnifurtherstudies', 'modules/alumnifurtherstudies/delete_alumnifurtherstudies.php', 'Delete Alumnifurtherstudies', '', 1, 'No', 'On', 'form3.png', 0),
(53, 'Add alumniinfo', 'modules/alumniinfo/add_alumniinfo.php', 'Add Alumniinfo', '', 1, 'No', 'On', 'form3.png', 0),
(54, 'Edit alumniinfo', 'modules/alumniinfo/edit_alumniinfo.php', 'Edit Alumniinfo', '', 1, 'No', 'On', 'form3.png', 0),
(55, 'View alumniinfo', 'modules/alumniinfo/listview_alumniinfo.php', 'Alumniinfo', '', 1, 'Yes', 'On', 'form3.png', 0),
(56, 'Delete alumniinfo', 'modules/alumniinfo/delete_alumniinfo.php', 'Delete Alumniinfo', '', 1, 'No', 'On', 'form3.png', 0),
(57, 'Add alumniprofqualification', 'modules/alumniprofqualification/add_alumniprofqualification.php', 'Add Alumniprofqualification', '', 1, 'No', 'On', 'form3.png', 0),
(58, 'Edit alumniprofqualification', 'modules/alumniprofqualification/edit_alumniprofqualification.php', 'Edit Alumniprofqualification', '', 1, 'No', 'On', 'form3.png', 0),
(59, 'View alumniprofqualification', 'modules/alumniprofqualification/listview_alumniprofqualification.php', 'Alumniprofqualification', '', 1, 'Yes', 'On', 'form3.png', 0),
(60, 'Delete alumniprofqualification', 'modules/alumniprofqualification/delete_alumniprofqualification.php', 'Delete Alumniprofqualification', '', 1, 'No', 'On', 'form3.png', 0),
(61, 'Add attendance', 'modules/attendance/add_attendance.php', 'Add Attendance', '', 1, 'No', 'On', 'form3.png', 0),
(62, 'Edit attendance', 'modules/attendance/edit_attendance.php', 'Edit Attendance', '', 1, 'No', 'On', 'form3.png', 0),
(63, 'View attendance', 'modules/attendance/listview_attendance.php', 'Attendance', '', 1, 'Yes', 'On', 'form3.png', 0),
(64, 'Delete attendance', 'modules/attendance/delete_attendance.php', 'Delete Attendance', '', 1, 'No', 'On', 'form3.png', 0),
(65, 'Add comment', 'modules/comment/add_comment.php', 'Add Comment', '', 1, 'No', 'On', 'form3.png', 0),
(66, 'Edit comment', 'modules/comment/edit_comment.php', 'Edit Comment', '', 1, 'No', 'On', 'form3.png', 0),
(67, 'View comment', 'modules/comment/listview_comment.php', 'Comment', '', 1, 'Yes', 'On', 'form3.png', 0),
(68, 'Delete comment', 'modules/comment/delete_comment.php', 'Delete Comment', '', 1, 'No', 'On', 'form3.png', 0),
(69, 'Add company', 'modules/company/add_company.php', 'Add Company', '', 1, 'No', 'On', 'form3.png', 0),
(70, 'Edit company', 'modules/company/edit_company.php', 'Edit Company', '', 1, 'No', 'On', 'form3.png', 0),
(71, 'View company', 'modules/company/listview_company.php', 'Company', '', 1, 'Yes', 'On', 'form3.png', 0),
(72, 'Delete company', 'modules/company/delete_company.php', 'Delete Company', '', 1, 'No', 'On', 'form3.png', 0),
(73, 'Add companybranch', 'modules/companybranch/add_companybranch.php', 'Add Companybranch', '', 1, 'No', 'On', 'form3.png', 0),
(74, 'Edit companybranch', 'modules/companybranch/edit_companybranch.php', 'Edit Companybranch', '', 1, 'No', 'On', 'form3.png', 0),
(75, 'View companybranch', 'modules/companybranch/listview_companybranch.php', 'Companybranch', '', 1, 'Yes', 'On', 'form3.png', 0),
(76, 'Delete companybranch', 'modules/companybranch/delete_companybranch.php', 'Delete Companybranch', '', 1, 'No', 'On', 'form3.png', 0),
(77, 'Add companycontact', 'modules/companycontact/add_companycontact.php', 'Add Companycontact', '', 1, 'No', 'On', 'form3.png', 0),
(78, 'Edit companycontact', 'modules/companycontact/edit_companycontact.php', 'Edit Companycontact', '', 1, 'No', 'On', 'form3.png', 0),
(79, 'View companycontact', 'modules/companycontact/listview_companycontact.php', 'Companycontact', '', 1, 'Yes', 'On', 'form3.png', 0),
(80, 'Delete companycontact', 'modules/companycontact/delete_companycontact.php', 'Delete Companycontact', '', 1, 'No', 'On', 'form3.png', 0),
(81, 'Add contact', 'modules/contact/add_contact.php', 'Add Contact', '', 1, 'No', 'On', 'form3.png', 0),
(82, 'Edit contact', 'modules/contact/edit_contact.php', 'Edit Contact', '', 1, 'No', 'On', 'form3.png', 0),
(83, 'View contact', 'modules/contact/listview_contact.php', 'Contact', '', 1, 'Yes', 'On', 'form3.png', 0),
(84, 'Delete contact', 'modules/contact/delete_contact.php', 'Delete Contact', '', 1, 'No', 'On', 'form3.png', 0),
(85, 'Add employmentstatus', 'modules/employmentstatus/add_employmentstatus.php', 'Add Employmentstatus', '', 1, 'No', 'On', 'form3.png', 0),
(86, 'Edit employmentstatus', 'modules/employmentstatus/edit_employmentstatus.php', 'Edit Employmentstatus', '', 1, 'No', 'On', 'form3.png', 0),
(87, 'View employmentstatus', 'modules/employmentstatus/listview_employmentstatus.php', 'Employmentstatus', '', 1, 'Yes', 'On', 'form3.png', 0),
(88, 'Delete employmentstatus', 'modules/employmentstatus/delete_employmentstatus.php', 'Delete Employmentstatus', '', 1, 'No', 'On', 'form3.png', 0),
(89, 'Add eval dtl', 'modules/eval_dtl/add_eval_dtl.php', 'Add Eval Dtl', '', 1, 'No', 'On', 'form3.png', 0),
(90, 'Edit eval dtl', 'modules/eval_dtl/edit_eval_dtl.php', 'Edit Eval Dtl', '', 1, 'No', 'On', 'form3.png', 0),
(91, 'View eval dtl', 'modules/eval_dtl/listview_eval_dtl.php', 'Eval Dtl', '', 1, 'Yes', 'On', 'form3.png', 0),
(92, 'Delete eval dtl', 'modules/eval_dtl/delete_eval_dtl.php', 'Delete Eval Dtl', '', 1, 'No', 'On', 'form3.png', 0),
(93, 'Add eval hdr', 'modules/eval_hdr/add_eval_hdr.php', 'Add Eval Hdr', '', 1, 'No', 'On', 'form3.png', 0),
(94, 'Edit eval hdr', 'modules/eval_hdr/edit_eval_hdr.php', 'Edit Eval Hdr', '', 1, 'No', 'On', 'form3.png', 0),
(95, 'View eval hdr', 'modules/eval_hdr/listview_eval_hdr.php', 'Eval Hdr', '', 1, 'Yes', 'On', 'form3.png', 0),
(96, 'Delete eval hdr', 'modules/eval_hdr/delete_eval_hdr.php', 'Delete Eval Hdr', '', 1, 'No', 'On', 'form3.png', 0),
(97, 'Add final paper dtl', 'modules/final_paper_dtl/add_final_paper_dtl.php', 'Add Final Paper Dtl', '', 1, 'No', 'On', 'form3.png', 0),
(98, 'Edit final paper dtl', 'modules/final_paper_dtl/edit_final_paper_dtl.php', 'Edit Final Paper Dtl', '', 1, 'No', 'On', 'form3.png', 0),
(99, 'View final paper dtl', 'modules/final_paper_dtl/listview_final_paper_dtl.php', 'Final Paper Dtl', '', 1, 'Yes', 'On', 'form3.png', 0),
(100, 'Delete final paper dtl', 'modules/final_paper_dtl/delete_final_paper_dtl.php', 'Delete Final Paper Dtl', '', 1, 'No', 'On', 'form3.png', 0),
(101, 'Add final paper hdr', 'modules/final_paper_hdr/add_final_paper_hdr.php', 'Add Final Paper Hdr', '', 1, 'No', 'On', 'form3.png', 0),
(102, 'Edit final paper hdr', 'modules/final_paper_hdr/edit_final_paper_hdr.php', 'Edit Final Paper Hdr', '', 1, 'No', 'On', 'form3.png', 0),
(103, 'View final paper hdr', 'modules/final_paper_hdr/listview_final_paper_hdr.php', 'Final Paper Hdr', '', 1, 'Yes', 'On', 'form3.png', 0),
(104, 'Delete final paper hdr', 'modules/final_paper_hdr/delete_final_paper_hdr.php', 'Delete Final Paper Hdr', '', 1, 'No', 'On', 'form3.png', 0),
(105, 'Add industrysector', 'modules/industrysector/add_industrysector.php', 'Add Industrysector', '', 1, 'No', 'On', 'form3.png', 0),
(106, 'Edit industrysector', 'modules/industrysector/edit_industrysector.php', 'Edit Industrysector', '', 1, 'No', 'On', 'form3.png', 0),
(107, 'View industrysector', 'modules/industrysector/listview_industrysector.php', 'Industrysector', '', 1, 'Yes', 'On', 'form3.png', 0),
(108, 'Delete industrysector', 'modules/industrysector/delete_industrysector.php', 'Delete Industrysector', '', 1, 'No', 'On', 'form3.png', 0),
(109, 'Add internassignment', 'modules/internassignment/add_internassignment.php', 'Add Internassignment', '', 1, 'No', 'On', 'form3.png', 0),
(110, 'Edit internassignment', 'modules/internassignment/edit_internassignment.php', 'Edit Internassignment', '', 1, 'No', 'On', 'form3.png', 0),
(111, 'View internassignment', 'modules/internassignment/listview_internassignment.php', 'Internassignment', '', 1, 'Yes', 'On', 'form3.png', 0),
(112, 'Delete internassignment', 'modules/internassignment/delete_internassignment.php', 'Delete Internassignment', '', 1, 'No', 'On', 'form3.png', 0),
(113, 'Add post', 'modules/post/add_post.php', 'Add Post', '', 1, 'No', 'On', 'form3.png', 0),
(114, 'Edit post', 'modules/post/edit_post.php', 'Edit Post', '', 1, 'No', 'On', 'form3.png', 0),
(115, 'View post', 'modules/post/listview_post.php', 'Post', '', 1, 'Yes', 'On', 'form3.png', 0),
(116, 'Delete post', 'modules/post/delete_post.php', 'Delete Post', '', 1, 'No', 'On', 'form3.png', 0),
(117, 'Add questionnaire', 'modules/questionnaire/add_questionnaire.php', 'Add Questionnaire', '', 1, 'No', 'On', 'form3.png', 0),
(118, 'Edit questionnaire', 'modules/questionnaire/edit_questionnaire.php', 'Edit Questionnaire', '', 1, 'No', 'On', 'form3.png', 0),
(119, 'View questionnaire', 'modules/questionnaire/listview_questionnaire.php', 'Questionnaire', '', 1, 'Yes', 'On', 'form3.png', 0),
(120, 'Delete questionnaire', 'modules/questionnaire/delete_questionnaire.php', 'Delete Questionnaire', '', 1, 'No', 'On', 'form3.png', 0),
(121, 'Add refstudent', 'modules/refstudent/add_refstudent.php', 'Add Refstudent', '', 1, 'No', 'On', 'form3.png', 0),
(122, 'Edit refstudent', 'modules/refstudent/edit_refstudent.php', 'Edit Refstudent', '', 1, 'No', 'On', 'form3.png', 0),
(123, 'View refstudent', 'modules/refstudent/listview_refstudent.php', 'Refstudent', '', 1, 'Yes', 'On', 'form3.png', 0),
(124, 'Delete refstudent', 'modules/refstudent/delete_refstudent.php', 'Delete Refstudent', '', 1, 'No', 'On', 'form3.png', 0),
(125, 'Add resume dtl', 'modules/resume_dtl/add_resume_dtl.php', 'Add Resume Dtl', '', 1, 'No', 'On', 'form3.png', 0),
(126, 'Edit resume dtl', 'modules/resume_dtl/edit_resume_dtl.php', 'Edit Resume Dtl', '', 1, 'No', 'On', 'form3.png', 0),
(127, 'View resume dtl', 'modules/resume_dtl/listview_resume_dtl.php', 'Resume Dtl', '', 1, 'Yes', 'On', 'form3.png', 0),
(128, 'Delete resume dtl', 'modules/resume_dtl/delete_resume_dtl.php', 'Delete Resume Dtl', '', 1, 'No', 'On', 'form3.png', 0),
(129, 'Add resume hdr', 'modules/resume_hdr/add_resume_hdr.php', 'Add Resume Hdr', '', 1, 'No', 'On', 'form3.png', 0),
(130, 'Edit resume hdr', 'modules/resume_hdr/edit_resume_hdr.php', 'Edit Resume Hdr', '', 1, 'No', 'On', 'form3.png', 0),
(131, 'View resume hdr', 'modules/resume_hdr/listview_resume_hdr.php', 'Resume Hdr', '', 1, 'Yes', 'On', 'form3.png', 0),
(132, 'Delete resume hdr', 'modules/resume_hdr/delete_resume_hdr.php', 'Delete Resume Hdr', '', 1, 'No', 'On', 'form3.png', 0),
(133, 'Add schoolcourse', 'modules/schoolcourse/add_schoolcourse.php', 'Add Schoolcourse', '', 1, 'No', 'On', 'form3.png', 0),
(134, 'Edit schoolcourse', 'modules/schoolcourse/edit_schoolcourse.php', 'Edit Schoolcourse', '', 1, 'No', 'On', 'form3.png', 0),
(135, 'View schoolcourse', 'modules/schoolcourse/listview_schoolcourse.php', 'Schoolcourse', '', 1, 'Yes', 'On', 'form3.png', 0),
(136, 'Delete schoolcourse', 'modules/schoolcourse/delete_schoolcourse.php', 'Delete Schoolcourse', '', 1, 'No', 'On', 'form3.png', 0);

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
('apcih', 35),
('apcih', 63),
('apcih', 65),
('apcih', 66),
('apcih', 67),
('apcih', 69),
('apcih', 70),
('apcih', 71),
('apcih', 72),
('apcih', 73),
('apcih', 74),
('apcih', 75),
('apcih', 76),
('apcih', 77),
('apcih', 78),
('apcih', 79),
('apcih', 80),
('apcih', 81),
('apcih', 82),
('apcih', 83),
('apcih', 84),
('apcih', 91),
('apcih', 95),
('apcih', 99),
('apcih', 103),
('apcih', 105),
('apcih', 107),
('apcih', 108),
('apcih', 109),
('apcih', 110),
('apcih', 111),
('apcih', 113),
('apcih', 114),
('apcih', 115),
('apcih', 116),
('apcih', 117),
('apcih', 118),
('apcih', 119),
('apcih', 123),
('apcih', 127),
('apcih', 131),
('cvolalo', 33),
('cvolalo', 34),
('cvolalo', 35),
('cvolalo', 61),
('cvolalo', 62),
('cvolalo', 63),
('cvolalo', 65),
('cvolalo', 66),
('cvolalo', 67),
('cvolalo', 91),
('cvolalo', 95),
('cvolalo', 97),
('cvolalo', 98),
('cvolalo', 99),
('cvolalo', 101),
('cvolalo', 102),
('cvolalo', 103),
('cvolalo', 115),
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
('lbhocosol', 65),
('lbhocosol', 66),
('lbhocosol', 67),
('lbhocosol', 91),
('lbhocosol', 95),
('lbhocosol', 97),
('lbhocosol', 98),
('lbhocosol', 99),
('lbhocosol', 101),
('lbhocosol', 102),
('lbhocosol', 103),
('lbhocosol', 115),
('lbhocosol', 126),
('lbhocosol', 127),
('lbhocosol', 129),
('lbhocosol', 130),
('lbhocosol', 131),
('matrasmonte', 33),
('matrasmonte', 34),
('matrasmonte', 35),
('matrasmonte', 61),
('matrasmonte', 62),
('matrasmonte', 63),
('matrasmonte', 65),
('matrasmonte', 66),
('matrasmonte', 67),
('matrasmonte', 91),
('matrasmonte', 95),
('matrasmonte', 97),
('matrasmonte', 98),
('matrasmonte', 99),
('matrasmonte', 101),
('matrasmonte', 102),
('matrasmonte', 103),
('matrasmonte', 115),
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
(3, 'apcih', 'Internship Head of APC'),
(4, 'student', 'Student of APC');

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
(2, 32),
(3, 35),
(3, 63),
(3, 65),
(3, 66),
(3, 67),
(3, 69),
(3, 70),
(3, 71),
(3, 72),
(3, 73),
(3, 74),
(3, 75),
(3, 76),
(3, 77),
(3, 78),
(3, 79),
(3, 80),
(3, 81),
(3, 82),
(3, 83),
(3, 84),
(3, 91),
(3, 95),
(3, 99),
(3, 103),
(3, 105),
(3, 107),
(3, 108),
(3, 109),
(3, 110),
(3, 111),
(3, 113),
(3, 114),
(3, 115),
(3, 116),
(3, 117),
(3, 118),
(3, 119),
(3, 123),
(3, 127),
(3, 131),
(4, 33),
(4, 34),
(4, 35),
(4, 61),
(4, 62),
(4, 63),
(4, 65),
(4, 66),
(4, 67),
(4, 91),
(4, 95),
(4, 97),
(4, 98),
(4, 99),
(4, 101),
(4, 102),
(4, 103),
(4, 115),
(4, 126),
(4, 127),
(4, 129),
(4, 130),
(4, 131);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cobalt_reporter`
--
ALTER TABLE `cobalt_reporter`
  ADD PRIMARY KEY (`module_name`,`report_name`);

--
-- Indexes for table `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`person_id`);

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
-- AUTO_INCREMENT for table `person`
--
ALTER TABLE `person`
  MODIFY `person_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `system_log`
--
ALTER TABLE `system_log`
  MODIFY `entry_id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=251;
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
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

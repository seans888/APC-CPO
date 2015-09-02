-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 02, 2015 at 07:24 AM
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accomplishment`
--

INSERT INTO `accomplishment` (`id`, `student_id`, `date`, `accomplishment`) VALUES
(1, '2012-100088', '2015-08-29', 'Filing of Documents'),
(2, '2012-100088', '2015-08-30', 'Troubleshooting PCs'),
(3, '2012-100088', '2015-08-31', 'Reviewing the submitted Data Flow Diagrams'),
(4, '2012-100088', '2015-09-01', 'Quality testing of the inventory system'),
(5, '2012-100088', '2015-09-02', 'Writing quality reports');

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`id`, `date`, `time_in`, `time_out`, `student_id`, `hr_head`) VALUES
(1, '2015-08-29', '08:00:00', '17:00:00', '2012-100088', 'Mr. Roberto Diaz'),
(2, '2015-08-30', '08:00:00', '17:00:00', '2012-100088', 'Mr. Roberto Diaz'),
(3, '2015-08-31', '08:00:00', '12:00:00', '2012-100088', 'Mr. Roberto Diaz'),
(4, '2015-09-01', '08:00:00', '17:00:00', '2012-100088', 'Mr. Roberto Diaz'),
(5, '2015-09-02', '08:00:00', '17:00:00', '2012-100088', 'Mr. Roberto Diaz');

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

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
(4, 'Marie Kathleen', 'Aggabao', 'Trasmonte', 'Female'),
(5, 'Liza', 'Bayeta', 'Hocosol', 'Female'),
(6, 'Christine', 'Velasco', 'Olalo', 'Female'),
(7, 'Michelle Kim', 'S', 'Asban', 'Female');

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `title`, `date`, `body`, `attach_file`, `upload_file`, `person_id`) VALUES
(1, 'Submission of Accomplishment Reports', '2015-08-31', 'The accomplishment reports should be submitted everyday.', 'attach file', 'upload file', 7),
(2, 'Submission of Attendance Reports', '2015-08-30', 'The attendance reports should be submitted everyday.', 'attach file', 'upload file', 7);

-- --------------------------------------------------------

--
-- Table structure for table `questionnaire`
--

CREATE TABLE IF NOT EXISTS `questionnaire` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `type` varchar(45) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questionnaire`
--

INSERT INTO `questionnaire` (`id`, `question`, `type`) VALUES
(1, 'Job Objectives', 'Resume'),
(2, 'Education', 'Resume'),
(3, 'Work-Related Courses', 'Resume'),
(4, 'Academic Projects', 'Resume'),
(5, 'Technical Skills', 'Resume'),
(6, 'Certifications', 'Resume'),
(7, 'Seminars & Trainings Attended', 'Resume'),
(8, 'Extra-Curricular Activities', 'Resume'),
(9, 'Academic Standing', 'Resume'),
(10, 'Internship Experience\r\n(Give your general evaluation of your Intern1 experience – tasks and projects done, the people you worked with, and memorable experiences.)', 'INTERN1 Final Paper'),
(11, 'Lessons Learned \r\n(These should be realizations made during your internship like, for example, using a new software, attending training courses. Indicate how these lessons can help you in the future.)', 'INTERN1 Final Paper'),
(12, 'Other Comments & Recommendations \r\n(These may be addressed to APC, CPO, to your Internship Company/IP, or to other parties who may have relevance in your internship experience.)', 'INTERN1 Final Paper'),
(13, 'Sample Work Output/Visual Attachments \r\n(If sample work is confidential, then insert pictures of you working on site or with your IP  / colleagues in a neutral area like the reception, hallway, or pantry. Do NOT leave this section blank.)', 'INTERN1 Final Paper'),
(14, 'What would you have changed or done better throughout your internship?\r\nWork related only, not addressed to CPO (e.g. do not include “I wish internship was 3 months long, instead of 6.”) Please explain why you would change these and what you would actually have done to change it.', 'INTERN2 Final Paper'),
(15, 'What was your greatest achievement throughout your internship?\r\n(Explain in depth why you think this is your greatest achievement.)', 'INTERN2 Final Paper'),
(16, 'Other Comments & Recommendations\r\n(These may be addressed to APC, CPO, to your Internship Company/IP, or to other parties who may have relevance in your internship experience. You can also include software, programs, seminars/training, etc you think would help future professionals like you.)', 'INTERN2 Final Paper'),
(17, 'Sample Work Output/Visual Attachments\r\n(If sample work is confidential, then insert pictures of you working on site or with your IP / colleagues in a neutral area like the reception, hallway or pantry of the company. Do not leave this section blank.)', 'INTERN2 Final Paper'),
(18, 'The intern reports to the office with regular punctuality.', 'Midterm Evaluation'),
(19, 'The intern submits reports on or before the deadline.', 'Midterm Evaluation'),
(20, 'The intern enjoys a comfortable working relationship with the supervisor and colleagues.', 'Midterm Evaluation'),
(21, 'The intern can confidently present recommendations, suggestions and criticisms to the supervisor/peers.', 'Midterm Evaluation'),
(22, 'The intern is comfortable in airing problems and difficulties to the supervisor.', 'Midterm Evaluation'),
(23, 'The intern seeks to improve their skills by taking initiative to learn new paradigms and methodologies.', 'Midterm Evaluation'),
(24, 'The intern makes productive use of the resources (e.g. terminals and or workstations) assigned to them.', 'Midterm Evaluation'),
(25, 'The intern realizes the significance of the tasks assigned to them in the light of the objectives of the entire project.', 'Midterm Evaluation'),
(26, 'The intern demonstrates a sense of independence at work and can work   with less supervision.', 'Midterm Evaluation'),
(27, 'The intern can communicate ideas in oral or written form using concise statements and correct grammar.', 'Midterm Evaluation'),
(28, 'The intern is capable of updating him or herself with new technology through self-study.', 'Midterm Evaluation'),
(29, 'The intern regularly informs their supervisor of any deviation from the set project schedules.', 'Midterm Evaluation'),
(30, 'The intern is capable of making appropriate decisions to problems they encounter in the fulfillment of their tasks.', 'Midterm Evaluation'),
(31, 'The intern reports for work in the prescribed company dress code.', 'Midterm Evaluation'),
(32, 'The intern comes to the office well groomed and presentable.', 'Midterm Evaluation'),
(33, 'The intern informs in advance their supervisor when they have to be absent or late.', 'Midterm Evaluation'),
(34, 'The intern accepts miscellaneous jobs and tasks with the right attitude.', 'Midterm Evaluation'),
(35, 'The intern is reliable and imbues a sense of responsibility in handling the tasks assigned to them.', 'Midterm Evaluation'),
(36, 'The intern applies the virtues of integrity in all aspects of their work.', 'Midterm Evaluation'),
(37, 'The trainee possesses the needed technical skills to efficiently and effectively perform their tasks in the following specific areas: (Pls. enumerate here the task items as purported in the Intern’s Job Description.)\r\n	a.\r\n\r\n	b.\r\n\r\n	c.\r\n\r\n	d.\r\n\r\n	e.', 'Midterm Evaluation'),
(38, 'Since your previous evaluation, did the Intern improve in his/her over-all performance? Yes or No? Why? (provide justification) What are his/her strong and weak points?', 'Midterm Evaluation'),
(39, 'Given the opportunity, would you be willing to absorb this intern as an employee of your company? Yes or No? If so, why? (please elaborate)', 'Midterm Evaluation'),
(40, 'The trainee reports to the office with regular punctuality.', 'Final Evaluation'),
(41, 'The trainee submits his/her reports on or before the set deadline.', 'Final Evaluation'),
(42, 'The trainee enjoys a comfortable working relationship with their supervisor and peers.', 'Final Evaluation'),
(43, 'The trainee is comfortable in presenting recommendations, suggestions and criticisms to their supervisor/peers and is open to accommodate them with an objective and positive point of view.', 'Final Evaluation'),
(44, 'The trainee is comfortable in airing their problems and difficulties with their supervisor.', 'Final Evaluation'),
(45, 'The trainee seeks to improve their skills by taking initiative to learn new paradigms and methodologies.', 'Final Evaluation'),
(46, 'The trainee makes productive use of the resources (e.g. terminals and or workstations) assigned to them.', 'Final Evaluation'),
(47, 'The trainee realizes the significance of the tasks assigned to them in the light of the objectives of the entire project.', 'Final Evaluation'),
(48, 'The trainee demonstrates a sense of independence at work and can work with less supervision.', 'Final Evaluation'),
(49, 'The trainee is capable of communicating their ideas in oral/ written form using concise statements and correct grammar.', 'Final Evaluation'),
(50, 'The trainee is capable of updating him or herself with new technology through self-study.', 'Final Evaluation'),
(51, 'The trainee regularly informs their supervisor of any deviation from the set project schedules.', 'Final Evaluation'),
(52, 'The trainee is capable of making appropriate decisions to problems they encounter in the fulfillment of their tasks.', 'Final Evaluation'),
(53, 'The trainee reports for work in attire compliant with proper office decorum.', 'Final Evaluation'),
(54, 'The trainee comes to the office well groomed and presentable.', 'Final Evaluation'),
(55, 'The trainee informs their supervisor in advance when they have to be absent or late.', 'Final Evaluation'),
(56, 'The trainee accepts miscellaneous jobs and tasks with the proper attitude without complaining.', 'Final Evaluation'),
(57, 'The trainee maintains a professional stance by being a team player and having the ability to synergize with fellow trainees/ peers.', 'Final Evaluation'),
(58, 'The trainee applies the virtues of integrity and honesty in all aspects of their work.', 'Final Evaluation'),
(59, 'The trainee is reliable and imbues a sense of responsibility in handling the tasks assigned to them.', 'Final Evaluation'),
(60, 'The trainee possesses the needed technical skills to efficiently and effectively perform their tasks in the following specific areas: (Enumerate here the task items as purported in the Intern’s Job Description.)\r\n	a.\r\n	b.\r\n	c.\r\n	d.\r\n	e.', 'Final Evaluation'),
(61, 'Since your previous evaluation, did the Intern improve in his/her over-all performance? Yes or No? Why? (provide justification) What are his/her strong and weak points?', 'Final Evaluation'),
(62, 'Given the opportunity, would you be willing to absorb this intern as an employee of your company? Yes or No? If so, why? (please elaborate)', 'Final Evaluation');

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
) ENGINE=InnoDB AUTO_INCREMENT=314 DEFAULT CHARSET=utf8;

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
(78, '::1', 'root', 1440989612, 'Logged in', '/CPO/login.php'),
(79, '::1', 'root', 1441006159, 'Logged out', '/CPO/end.php'),
(80, '::1', 'root', 1441008484, 'Logged in', '/CPO/login.php'),
(81, '::1', 'root', 1441015625, 'Pressed submit button', '/CPO/modules/add_final_paper_hdr.php'),
(82, '::1', 'root', 1441015648, 'Pressed submit button', '/CPO/modules/add_final_paper_hdr.php'),
(83, '::1', 'root', 1441015648, 'Query Executed: INSERT INTO final_paper_hdr(id, student_id, attachment, date_submitted, rating, rcv_by, rcv_date, subj) VALUES(?,?,?,?,?,?,?,?)\r\nArray\n(\n    [0] => isssisss\n    [1] => \n    [2] => 2012-100088\n    [3] => nsfnmszbmg\n    [4] => 2015-08-31\n    [5] => 90\n    [6] => haldahlhla\n    [7] => 2015-08-31\n    [8] => adadasf\n)\n', '/CPO/modules/add_final_paper_hdr.php'),
(84, '::1', 'root', 1441015649, 'Query Executed: INSERT INTO final_paper_dtl(id, final_paper_hdr_id, questionnaire_id, response) VALUES(?,?,?,?)\r\nArray\n(\n    [0] => iiis\n    [1] => 1\n    [2] => 1\n    [3] => 1\n    [4] => ajdjslfglksd\n)\n', '/CPO/modules/add_final_paper_hdr.php'),
(85, '::1', 'root', 1441017435, 'Logged out', '/CPO/end.php'),
(86, '::1', 'root', 1441017470, 'Logged in', '/CPO/login.php'),
(87, '::1', 'root', 1441017716, 'Pressed submit button', '/CPO/modules/add_post.php'),
(88, '::1', 'root', 1441017727, 'Pressed submit button', '/CPO/modules/add_post.php'),
(89, '::1', 'root', 1441017728, 'Query Executed: INSERT INTO post(id, title, date, body, attach_file, upload_file, person_id) VALUES(?,?,?,?,?,?,?)\r\nArray\n(\n    [0] => isssssi\n    [1] => \n    [2] => lkjjllfda\n    [3] => 2015-08-31\n    [4] => zadlkajldjl\n    [5] => kmggkjhkj\n    [6] => hjgjgj\n    [7] => 1\n)\n', '/CPO/modules/add_post.php'),
(90, '::1', 'root', 1441027503, 'Pressed submit button', '/CPO/modules/add_refstudent.php'),
(91, '::1', 'root', 1441027505, 'Query Executed: INSERT INTO refstudent(student_id, student_last_name, student_first_name, student_middle_name, birth_date, birth_place, admission_date, entry_level, admission_credential, mail_grades_to, exit_level, nationality, gender, address, postal_code, tel_num, mobile_num, email, religion, civil_status, box_num) VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)\r\nArray\n(\n    [0] => sssssssssssssssssssss\n    [1] => 2012-100088\n    [2] => Trasmonte\n    [3] => Marie Kathleen\n    [4] => Aggabao\n    [5] => 1995-11-11\n    [6] => Metro Manila\n    [7] => 2012-05-15\n    [8] => Freshman\n    [9] => hello\n    [10] => Mother\n    [11] => NA\n    [12] => Filipino\n    [13] => Female\n    [14] => 13 Malugay St., Pilar Village, Las Pinas City\n    [15] => 1740\n    [16] => 801-9158\n    [17] => 09439278433\n    [18] => mkat_11@yahoo.com\n    [19] => Roman Catholic\n    [20] => Single\n    [21] => 13\n)\n', '/CPO/modules/add_refstudent.php'),
(92, '::1', 'root', 1441033179, 'Pressed cancel button', '/CPO/modules/edit_questionnaire.php'),
(93, '::1', 'root', 1441067834, 'Logged in', '/CPO/login.php'),
(94, '::1', 'root', 1441109177, 'Pressed submit button', '/CPO/modules/add_final_paper_hdr.php'),
(95, '::1', 'root', 1441109739, 'Pressed submit button', '/CPO/modules/add_final_paper_hdr.php'),
(96, '::1', 'root', 1441113274, 'Pressed submit button', '/CPO/modules/add_questionnaire.php'),
(97, '::1', 'root', 1441113275, 'Query Executed: INSERT INTO questionnaire(id, question, type) VALUES(?,?,?)\r\nArray\n(\n    [0] => iss\n    [1] => \n    [2] => Internship Experience\r\n(Give your general evaluation of your Intern1 experience – tasks and projects done, the people you worked with, and memorable experiences.)\n    [3] => INTERN1\n)\n', '/CPO/modules/add_questionnaire.php'),
(98, '::1', 'root', 1441113316, 'Pressed submit button', '/CPO/modules/add_questionnaire.php'),
(99, '::1', 'root', 1441113317, 'Query Executed: INSERT INTO questionnaire(id, question, type) VALUES(?,?,?)\r\nArray\n(\n    [0] => iss\n    [1] => \n    [2] => Lessons Learned (These should be realizations made during your internship like, for example, using a new software, attending training courses. Indicate how these lessons can help you in the future.)\n    [3] => INTERN1\n)\n', '/CPO/modules/add_questionnaire.php'),
(100, '::1', 'root', 1441113986, 'Pressed submit button', '/CPO/modules/add_questionnaire.php'),
(101, '::1', 'root', 1441113987, 'Query Executed: INSERT INTO questionnaire(id, question, type) VALUES(?,?,?)\r\nArray\n(\n    [0] => iss\n    [1] => \n    [2] => Other Comments & Recommendations (These may be addressed to APC, CPO, to your Internship Company/IP, or to other parties who may have relevance in your internship experience.)\n    [3] => INTERN1\n)\n', '/CPO/modules/add_questionnaire.php'),
(102, '::1', 'root', 1441114041, 'Pressed submit button', '/CPO/modules/add_questionnaire.php'),
(103, '::1', 'root', 1441114041, 'Query Executed: INSERT INTO questionnaire(id, question, type) VALUES(?,?,?)\r\nArray\n(\n    [0] => iss\n    [1] => \n    [2] => Sample Work Output/Visual Attachments (If sample work is confidential, then insert pictures of you working on site or with your IP  / colleagues in a neutral area like the reception, hallway, or pantry. Do NOT leave this section blank.)\n    [3] => INTERN1\n)\n', '/CPO/modules/add_questionnaire.php'),
(104, '::1', 'root', 1441114066, 'Pressed submit button', '/CPO/modules/edit_questionnaire.php'),
(105, '::1', 'root', 1441114066, 'Query Executed: UPDATE questionnaire SET question = ?, type = ? WHERE id = ?\r\nArray\n(\n    [0] => ssi\n    [1] => Internship Experience\r\n(Give your general evaluation of your Intern1 experience – tasks and projects done, the people you worked with, and memorable experiences.)\n    [2] => INTERN1\n    [3] => 10\n)\n', '/CPO/modules/edit_questionnaire.php'),
(106, '::1', 'root', 1441114081, 'Pressed submit button', '/CPO/modules/edit_questionnaire.php'),
(107, '::1', 'root', 1441114081, 'Query Executed: UPDATE questionnaire SET question = ?, type = ? WHERE id = ?\r\nArray\n(\n    [0] => ssi\n    [1] => Lessons Learned \r\n(These should be realizations made during your internship like, for example, using a new software, attending training courses. Indicate how these lessons can help you in the future.)\n    [2] => INTERN1\n    [3] => 11\n)\n', '/CPO/modules/edit_questionnaire.php'),
(108, '::1', 'root', 1441114096, 'Pressed submit button', '/CPO/modules/edit_questionnaire.php'),
(109, '::1', 'root', 1441114096, 'Query Executed: UPDATE questionnaire SET question = ?, type = ? WHERE id = ?\r\nArray\n(\n    [0] => ssi\n    [1] => Other Comments & Recommendations \r\n(These may be addressed to APC, CPO, to your Internship Company/IP, or to other parties who may have relevance in your internship experience.)\n    [2] => INTERN1\n    [3] => 12\n)\n', '/CPO/modules/edit_questionnaire.php'),
(110, '::1', 'root', 1441114110, 'Pressed submit button', '/CPO/modules/edit_questionnaire.php'),
(111, '::1', 'root', 1441114110, 'Query Executed: UPDATE questionnaire SET question = ?, type = ? WHERE id = ?\r\nArray\n(\n    [0] => ssi\n    [1] => Sample Work Output/Visual Attachments \r\n(If sample work is confidential, then insert pictures of you working on site or with your IP  / colleagues in a neutral area like the reception, hallway, or pantry. Do NOT leave this section blank.)\n    [2] => INTERN1\n    [3] => 13\n)\n', '/CPO/modules/edit_questionnaire.php'),
(112, '::1', 'root', 1441114162, 'Pressed submit button', '/CPO/modules/add_questionnaire.php'),
(113, '::1', 'root', 1441114162, 'Query Executed: INSERT INTO questionnaire(id, question, type) VALUES(?,?,?)\r\nArray\n(\n    [0] => iss\n    [1] => \n    [2] => What would you have changed or done better throughout your internship?\r\nWork related only, not addressed to CPO (e.g. do not include “I wish internship was 3 months long, instead of 6.”) Please explain why you would change these and what you would actually have done to change it.\n    [3] => INTERN2\n)\n', '/CPO/modules/add_questionnaire.php'),
(114, '::1', 'root', 1441114204, 'Pressed submit button', '/CPO/modules/add_questionnaire.php'),
(115, '::1', 'root', 1441114204, 'Query Executed: INSERT INTO questionnaire(id, question, type) VALUES(?,?,?)\r\nArray\n(\n    [0] => iss\n    [1] => \n    [2] => What was your greatest achievement throughout your internship?\r\n(Explain in depth why you think this is your greatest achievement.)\n    [3] => INTERN2\n)\n', '/CPO/modules/add_questionnaire.php'),
(116, '::1', 'root', 1441114249, 'Pressed submit button', '/CPO/modules/add_questionnaire.php'),
(117, '::1', 'root', 1441114249, 'Query Executed: INSERT INTO questionnaire(id, question, type) VALUES(?,?,?)\r\nArray\n(\n    [0] => iss\n    [1] => \n    [2] => Other Comments & Recommendations\r\n(These may be addressed to APC, CPO, to your Internship Company/IP, or to other parties who may have relevance in your internship experience. You can also include software, programs, seminars/training, etc you think would help future professionals like you.)\n    [3] => INTERN2\n)\n', '/CPO/modules/add_questionnaire.php'),
(118, '::1', 'root', 1441116474, 'Pressed submit button', '/CPO/modules/add_questionnaire.php'),
(119, '::1', 'root', 1441116476, 'Query Executed: INSERT INTO questionnaire(id, question, type) VALUES(?,?,?)\r\nArray\n(\n    [0] => iss\n    [1] => \n    [2] => Sample Work Output/Visual Attachments\r\n(If sample work is confidential, then insert pictures of you working on site or with your IP / colleagues in a neutral area like the reception, hallway or pantry of the company. Do not leave this section blank.)\n    [3] => INTERN2\n)\n', '/CPO/modules/add_questionnaire.php'),
(120, '::1', 'root', 1441116945, 'Pressed submit button', '/CPO/modules/add_questionnaire.php'),
(121, '::1', 'root', 1441116946, 'Query Executed: INSERT INTO questionnaire(id, question, type) VALUES(?,?,?)\r\nArray\n(\n    [0] => iss\n    [1] => \n    [2] => The intern reports to the office with regular punctuality.\n    [3] => Midterm Evaluation\n)\n', '/CPO/modules/add_questionnaire.php'),
(122, '::1', 'root', 1441116994, 'Pressed submit button', '/CPO/modules/add_questionnaire.php'),
(123, '::1', 'root', 1441116994, 'Query Executed: INSERT INTO questionnaire(id, question, type) VALUES(?,?,?)\r\nArray\n(\n    [0] => iss\n    [1] => \n    [2] => The intern submits reports on or before the deadline.\n    [3] => Midterm Evaluation\n)\n', '/CPO/modules/add_questionnaire.php'),
(124, '::1', 'root', 1441117013, 'Pressed submit button', '/CPO/modules/add_questionnaire.php'),
(125, '::1', 'root', 1441117014, 'Query Executed: INSERT INTO questionnaire(id, question, type) VALUES(?,?,?)\r\nArray\n(\n    [0] => iss\n    [1] => \n    [2] => The intern enjoys a comfortable working relationship with the supervisor and colleagues.\n    [3] => Midterm Evaluation\n)\n', '/CPO/modules/add_questionnaire.php'),
(126, '::1', 'root', 1441117036, 'Pressed submit button', '/CPO/modules/add_questionnaire.php'),
(127, '::1', 'root', 1441117036, 'Query Executed: INSERT INTO questionnaire(id, question, type) VALUES(?,?,?)\r\nArray\n(\n    [0] => iss\n    [1] => \n    [2] => The intern can confidently present recommendations, suggestions and criticisms to the supervisor/peers.\n    [3] => Midterm Evaluation\n)\n', '/CPO/modules/add_questionnaire.php'),
(128, '::1', 'root', 1441151828, 'Pressed cancel button', '/CPO/modules/edit_questionnaire.php'),
(129, '::1', 'root', 1441151843, 'Pressed submit button', '/CPO/modules/add_questionnaire.php'),
(130, '::1', 'root', 1441151844, 'Query Executed: INSERT INTO questionnaire(id, question, type) VALUES(?,?,?)\r\nArray\n(\n    [0] => iss\n    [1] => \n    [2] => The intern is comfortable in airing problems and difficulties to the supervisor.\n    [3] => Midterm Evaluation\n)\n', '/CPO/modules/add_questionnaire.php'),
(131, '::1', 'root', 1441151860, 'Pressed submit button', '/CPO/modules/add_questionnaire.php'),
(132, '::1', 'root', 1441151860, 'Query Executed: INSERT INTO questionnaire(id, question, type) VALUES(?,?,?)\r\nArray\n(\n    [0] => iss\n    [1] => \n    [2] => The intern seeks to improve their skills by taking initiative to learn new paradigms and methodologies.\n    [3] => Midterm Evaluation\n)\n', '/CPO/modules/add_questionnaire.php'),
(133, '::1', 'root', 1441151878, 'Pressed submit button', '/CPO/modules/add_questionnaire.php'),
(134, '::1', 'root', 1441151878, 'Query Executed: INSERT INTO questionnaire(id, question, type) VALUES(?,?,?)\r\nArray\n(\n    [0] => iss\n    [1] => \n    [2] => The intern makes productive use of the resources (e.g. terminals and or workstations) assigned to them.\n    [3] => Midterm Evaluation\n)\n', '/CPO/modules/add_questionnaire.php'),
(135, '::1', 'root', 1441151909, 'Pressed submit button', '/CPO/modules/add_questionnaire.php'),
(136, '::1', 'root', 1441151909, 'Query Executed: INSERT INTO questionnaire(id, question, type) VALUES(?,?,?)\r\nArray\n(\n    [0] => iss\n    [1] => \n    [2] => The intern realizes the significance of the tasks assigned to them in the light of the objectives of the entire project.\n    [3] => Midterm Evaluation\n)\n', '/CPO/modules/add_questionnaire.php'),
(137, '::1', 'root', 1441151929, 'Pressed submit button', '/CPO/modules/add_questionnaire.php'),
(138, '::1', 'root', 1441151929, 'Query Executed: INSERT INTO questionnaire(id, question, type) VALUES(?,?,?)\r\nArray\n(\n    [0] => iss\n    [1] => \n    [2] => The intern demonstrates a sense of independence at work and can work   with less supervision.\n    [3] => Midterm Evaluation\n)\n', '/CPO/modules/add_questionnaire.php'),
(139, '::1', 'root', 1441151950, 'Pressed submit button', '/CPO/modules/add_questionnaire.php'),
(140, '::1', 'root', 1441151950, 'Query Executed: INSERT INTO questionnaire(id, question, type) VALUES(?,?,?)\r\nArray\n(\n    [0] => iss\n    [1] => \n    [2] => The intern can communicate ideas in oral or written form using concise statements and correct grammar.\n    [3] => Midterm Evaluation\n)\n', '/CPO/modules/add_questionnaire.php'),
(141, '::1', 'root', 1441151965, 'Pressed submit button', '/CPO/modules/add_questionnaire.php'),
(142, '::1', 'root', 1441151965, 'Query Executed: INSERT INTO questionnaire(id, question, type) VALUES(?,?,?)\r\nArray\n(\n    [0] => iss\n    [1] => \n    [2] => The intern is capable of updating him or herself with new technology through self-study.\n    [3] => Midterm Evaluation\n)\n', '/CPO/modules/add_questionnaire.php'),
(143, '::1', 'root', 1441151981, 'Pressed submit button', '/CPO/modules/add_questionnaire.php'),
(144, '::1', 'root', 1441151981, 'Query Executed: INSERT INTO questionnaire(id, question, type) VALUES(?,?,?)\r\nArray\n(\n    [0] => iss\n    [1] => \n    [2] => The intern regularly informs their supervisor of any deviation from the set project schedules.\n    [3] => Midterm Evaluation\n)\n', '/CPO/modules/add_questionnaire.php'),
(145, '::1', 'root', 1441152008, 'Pressed submit button', '/CPO/modules/add_questionnaire.php'),
(146, '::1', 'root', 1441152008, 'Query Executed: INSERT INTO questionnaire(id, question, type) VALUES(?,?,?)\r\nArray\n(\n    [0] => iss\n    [1] => \n    [2] => The intern is capable of making appropriate decisions to problems they encounter in the fulfillment of their tasks.\n    [3] => Midterm Evaluation\n)\n', '/CPO/modules/add_questionnaire.php'),
(147, '::1', 'root', 1441152030, 'Pressed submit button', '/CPO/modules/add_questionnaire.php'),
(148, '::1', 'root', 1441152030, 'Query Executed: INSERT INTO questionnaire(id, question, type) VALUES(?,?,?)\r\nArray\n(\n    [0] => iss\n    [1] => \n    [2] => The intern reports for work in the prescribed company dress code.\n    [3] => Midterm Evaluation\n)\n', '/CPO/modules/add_questionnaire.php'),
(149, '::1', 'root', 1441152044, 'Pressed submit button', '/CPO/modules/add_questionnaire.php'),
(150, '::1', 'root', 1441152045, 'Query Executed: INSERT INTO questionnaire(id, question, type) VALUES(?,?,?)\r\nArray\n(\n    [0] => iss\n    [1] => \n    [2] => The intern comes to the office well groomed and presentable.\n    [3] => Midterm Evaluation\n)\n', '/CPO/modules/add_questionnaire.php'),
(151, '::1', 'root', 1441152062, 'Pressed submit button', '/CPO/modules/add_questionnaire.php'),
(152, '::1', 'root', 1441152062, 'Query Executed: INSERT INTO questionnaire(id, question, type) VALUES(?,?,?)\r\nArray\n(\n    [0] => iss\n    [1] => \n    [2] => The intern informs in advance their supervisor when they have to be absent or late.\n    [3] => Midterm Evaluation\n)\n', '/CPO/modules/add_questionnaire.php'),
(153, '::1', 'root', 1441152078, 'Pressed submit button', '/CPO/modules/add_questionnaire.php'),
(154, '::1', 'root', 1441152078, 'Query Executed: INSERT INTO questionnaire(id, question, type) VALUES(?,?,?)\r\nArray\n(\n    [0] => iss\n    [1] => \n    [2] => The intern accepts miscellaneous jobs and tasks with the right attitude.\n    [3] => Midterm Evaluation\n)\n', '/CPO/modules/add_questionnaire.php'),
(155, '::1', 'root', 1441152102, 'Pressed submit button', '/CPO/modules/add_questionnaire.php'),
(156, '::1', 'root', 1441152102, 'Query Executed: INSERT INTO questionnaire(id, question, type) VALUES(?,?,?)\r\nArray\n(\n    [0] => iss\n    [1] => \n    [2] => The intern is reliable and imbues a sense of responsibility in handling the tasks assigned to them.\n    [3] => Midterm Evaluation\n)\n', '/CPO/modules/add_questionnaire.php'),
(157, '::1', 'root', 1441152116, 'Pressed submit button', '/CPO/modules/add_questionnaire.php'),
(158, '::1', 'root', 1441152116, 'Query Executed: INSERT INTO questionnaire(id, question, type) VALUES(?,?,?)\r\nArray\n(\n    [0] => iss\n    [1] => \n    [2] => The intern applies the virtues of integrity in all aspects of their work.\n    [3] => Midterm Evaluation\n)\n', '/CPO/modules/add_questionnaire.php'),
(159, '::1', 'root', 1441152215, 'Pressed submit button', '/CPO/modules/add_questionnaire.php'),
(160, '::1', 'root', 1441152215, 'Query Executed: INSERT INTO questionnaire(id, question, type) VALUES(?,?,?)\r\nArray\n(\n    [0] => iss\n    [1] => \n    [2] => 20.	 The trainee possesses the needed technical skills to efficiently and effectively perform their tasks in the following specific areas: (Pls. enumerate here the task items as purported in the Intern’s Job Description.)\r\n	a.\r\n\r\n	b.\r\n\r\n	c.\r\n\r\n	d.\r\n\r\n	e.\n    [3] => Midterm Evaluation\n)\n', '/CPO/modules/add_questionnaire.php'),
(161, '::1', 'root', 1441152231, 'Pressed submit button', '/CPO/modules/edit_questionnaire.php'),
(162, '::1', 'root', 1441152232, 'Query Executed: UPDATE questionnaire SET question = ?, type = ? WHERE id = ?\r\nArray\n(\n    [0] => ssi\n    [1] => The trainee possesses the needed technical skills to efficiently and effectively perform their tasks in the following specific areas: (Pls. enumerate here the task items as purported in the Intern’s Job Description.)\r\n	a.\r\n\r\n	b.\r\n\r\n	c.\r\n\r\n	d.\r\n\r\n	e.\n    [2] => Midterm Evaluation\n    [3] => 37\n)\n', '/CPO/modules/edit_questionnaire.php'),
(163, '::1', 'root', 1441152373, 'Pressed submit button', '/CPO/modules/add_questionnaire.php'),
(164, '::1', 'root', 1441152373, 'Query Executed: INSERT INTO questionnaire(id, question, type) VALUES(?,?,?)\r\nArray\n(\n    [0] => iss\n    [1] => \n    [2] => Since your previous evaluation, did the Intern improve in his/her over-all performance? Yes or No? Why? (provide justification) What are his/her strong and weak points?\n    [3] => Midterm Evaluation\n)\n', '/CPO/modules/add_questionnaire.php'),
(165, '::1', 'root', 1441152412, 'Pressed submit button', '/CPO/modules/add_questionnaire.php'),
(166, '::1', 'root', 1441152412, 'Query Executed: INSERT INTO questionnaire(id, question, type) VALUES(?,?,?)\r\nArray\n(\n    [0] => iss\n    [1] => \n    [2] => Given the opportunity, would you be willing to absorb this intern as an employee of your company? Yes or No? If so, why? (please elaborate)\n    [3] => Midterm Evaluation\n)\n', '/CPO/modules/add_questionnaire.php'),
(167, '::1', 'root', 1441152471, 'Pressed submit button', '/CPO/modules/add_questionnaire.php'),
(168, '::1', 'root', 1441152471, 'Query Executed: INSERT INTO questionnaire(id, question, type) VALUES(?,?,?)\r\nArray\n(\n    [0] => iss\n    [1] => \n    [2] => The trainee reports to the office with regular punctuality.\n    [3] => Final Evaluation\n)\n', '/CPO/modules/add_questionnaire.php'),
(169, '::1', 'root', 1441152843, 'Pressed submit button', '/CPO/modules/add_questionnaire.php'),
(170, '::1', 'root', 1441152844, 'Query Executed: INSERT INTO questionnaire(id, question, type) VALUES(?,?,?)\r\nArray\n(\n    [0] => iss\n    [1] => \n    [2] => The trainee submits his/her reports on or before the set deadline.\n    [3] => Final Evaluation\n)\n', '/CPO/modules/add_questionnaire.php'),
(171, '::1', 'root', 1441153412, 'Pressed submit button', '/CPO/modules/add_questionnaire.php'),
(172, '::1', 'root', 1441153412, 'Query Executed: INSERT INTO questionnaire(id, question, type) VALUES(?,?,?)\r\nArray\n(\n    [0] => iss\n    [1] => \n    [2] => The trainee enjoys a comfortable working relationship with their supervisor and peers.\n    [3] => Final Evaluation\n)\n', '/CPO/modules/add_questionnaire.php'),
(173, '::1', 'root', 1441153435, 'Pressed submit button', '/CPO/modules/add_questionnaire.php'),
(174, '::1', 'root', 1441153435, 'Query Executed: INSERT INTO questionnaire(id, question, type) VALUES(?,?,?)\r\nArray\n(\n    [0] => iss\n    [1] => \n    [2] => The trainee is comfortable in presenting recommendations, suggestions and criticisms to their supervisor/peers and is open to accommodate them with an objective and positive point of view.\n    [3] => Final Evaluation\n)\n', '/CPO/modules/add_questionnaire.php'),
(175, '::1', 'root', 1441153451, 'Pressed submit button', '/CPO/modules/add_questionnaire.php'),
(176, '::1', 'root', 1441153451, 'Query Executed: INSERT INTO questionnaire(id, question, type) VALUES(?,?,?)\r\nArray\n(\n    [0] => iss\n    [1] => \n    [2] => The trainee is comfortable in airing their problems and difficulties with their supervisor.\n    [3] => Final Evaluation\n)\n', '/CPO/modules/add_questionnaire.php'),
(177, '::1', 'root', 1441153474, 'Pressed submit button', '/CPO/modules/add_questionnaire.php'),
(178, '::1', 'root', 1441153474, 'Query Executed: INSERT INTO questionnaire(id, question, type) VALUES(?,?,?)\r\nArray\n(\n    [0] => iss\n    [1] => \n    [2] => The trainee seeks to improve their skills by taking initiative to learn new paradigms and methodologies.\n    [3] => Final Evaluation\n)\n', '/CPO/modules/add_questionnaire.php'),
(179, '::1', 'root', 1441153490, 'Pressed submit button', '/CPO/modules/add_questionnaire.php'),
(180, '::1', 'root', 1441153490, 'Query Executed: INSERT INTO questionnaire(id, question, type) VALUES(?,?,?)\r\nArray\n(\n    [0] => iss\n    [1] => \n    [2] => The trainee makes productive use of the resources (e.g. terminals and or workstations) assigned to them.\n    [3] => Final Evaluation\n)\n', '/CPO/modules/add_questionnaire.php'),
(181, '::1', 'root', 1441153506, 'Pressed submit button', '/CPO/modules/add_questionnaire.php'),
(182, '::1', 'root', 1441153506, 'Query Executed: INSERT INTO questionnaire(id, question, type) VALUES(?,?,?)\r\nArray\n(\n    [0] => iss\n    [1] => \n    [2] => The trainee realizes the significance of the tasks assigned to them in the light of the objectives of the entire project.\n    [3] => Final Evaluation\n)\n', '/CPO/modules/add_questionnaire.php'),
(183, '::1', 'root', 1441153540, 'Pressed submit button', '/CPO/modules/add_questionnaire.php'),
(184, '::1', 'root', 1441153540, 'Query Executed: INSERT INTO questionnaire(id, question, type) VALUES(?,?,?)\r\nArray\n(\n    [0] => iss\n    [1] => \n    [2] => The trainee demonstrates a sense of independence at work and can work with less supervision.\n    [3] => Final Evaluation\n)\n', '/CPO/modules/add_questionnaire.php'),
(185, '::1', 'root', 1441153577, 'Pressed submit button', '/CPO/modules/add_questionnaire.php'),
(186, '::1', 'root', 1441153577, 'Query Executed: INSERT INTO questionnaire(id, question, type) VALUES(?,?,?)\r\nArray\n(\n    [0] => iss\n    [1] => \n    [2] => The trainee is capable of communicating their ideas in oral/ written form using concise statements and correct grammar.\n    [3] => Final Evaluation\n)\n', '/CPO/modules/add_questionnaire.php'),
(187, '::1', 'root', 1441153592, 'Pressed submit button', '/CPO/modules/add_questionnaire.php'),
(188, '::1', 'root', 1441153592, 'Query Executed: INSERT INTO questionnaire(id, question, type) VALUES(?,?,?)\r\nArray\n(\n    [0] => iss\n    [1] => \n    [2] => The trainee is capable of updating him or herself with new technology through self-study.\n    [3] => Final Evaluation\n)\n', '/CPO/modules/add_questionnaire.php'),
(189, '::1', 'root', 1441153607, 'Pressed submit button', '/CPO/modules/add_questionnaire.php'),
(190, '::1', 'root', 1441153608, 'Query Executed: INSERT INTO questionnaire(id, question, type) VALUES(?,?,?)\r\nArray\n(\n    [0] => iss\n    [1] => \n    [2] => The trainee regularly informs their supervisor of any deviation from the set project schedules.\n    [3] => Final Evaluation\n)\n', '/CPO/modules/add_questionnaire.php'),
(191, '::1', 'root', 1441153623, 'Pressed submit button', '/CPO/modules/add_questionnaire.php'),
(192, '::1', 'root', 1441153623, 'Query Executed: INSERT INTO questionnaire(id, question, type) VALUES(?,?,?)\r\nArray\n(\n    [0] => iss\n    [1] => \n    [2] => The trainee is capable of making appropriate decisions to problems they encounter in the fulfillment of their tasks.\n    [3] => Final Evaluation\n)\n', '/CPO/modules/add_questionnaire.php'),
(193, '::1', 'root', 1441153650, 'Pressed submit button', '/CPO/modules/add_questionnaire.php'),
(194, '::1', 'root', 1441153650, 'Query Executed: INSERT INTO questionnaire(id, question, type) VALUES(?,?,?)\r\nArray\n(\n    [0] => iss\n    [1] => \n    [2] => The trainee reports for work in attire compliant with proper office decorum.\n    [3] => Final Evaluation\n)\n', '/CPO/modules/add_questionnaire.php'),
(195, '::1', 'root', 1441153665, 'Pressed submit button', '/CPO/modules/add_questionnaire.php'),
(196, '::1', 'root', 1441153665, 'Query Executed: INSERT INTO questionnaire(id, question, type) VALUES(?,?,?)\r\nArray\n(\n    [0] => iss\n    [1] => \n    [2] => The trainee comes to the office well groomed and presentable.\n    [3] => Final Evaluation\n)\n', '/CPO/modules/add_questionnaire.php'),
(197, '::1', 'root', 1441153683, 'Pressed submit button', '/CPO/modules/add_questionnaire.php'),
(198, '::1', 'root', 1441153683, 'Query Executed: INSERT INTO questionnaire(id, question, type) VALUES(?,?,?)\r\nArray\n(\n    [0] => iss\n    [1] => \n    [2] => The trainee informs their supervisor in advance when they have to be absent or late.\n    [3] => Final Evaluation\n)\n', '/CPO/modules/add_questionnaire.php'),
(199, '::1', 'root', 1441153699, 'Pressed submit button', '/CPO/modules/add_questionnaire.php'),
(200, '::1', 'root', 1441153699, 'Query Executed: INSERT INTO questionnaire(id, question, type) VALUES(?,?,?)\r\nArray\n(\n    [0] => iss\n    [1] => \n    [2] => The trainee accepts miscellaneous jobs and tasks with the proper attitude without complaining.\n    [3] => Final Evaluation\n)\n', '/CPO/modules/add_questionnaire.php'),
(201, '::1', 'root', 1441153713, 'Pressed submit button', '/CPO/modules/add_questionnaire.php'),
(202, '::1', 'root', 1441153713, 'Query Executed: INSERT INTO questionnaire(id, question, type) VALUES(?,?,?)\r\nArray\n(\n    [0] => iss\n    [1] => \n    [2] => The trainee maintains a professional stance by being a team player and having the ability to synergize with fellow trainees/ peers.\n    [3] => Final Evaluation\n)\n', '/CPO/modules/add_questionnaire.php'),
(203, '::1', 'root', 1441153726, 'Pressed submit button', '/CPO/modules/add_questionnaire.php'),
(204, '::1', 'root', 1441153726, 'Query Executed: INSERT INTO questionnaire(id, question, type) VALUES(?,?,?)\r\nArray\n(\n    [0] => iss\n    [1] => \n    [2] => The trainee applies the virtues of integrity and honesty in all aspects of their work.\n    [3] => Final Evaluation\n)\n', '/CPO/modules/add_questionnaire.php'),
(205, '::1', 'root', 1441153749, 'Pressed submit button', '/CPO/modules/add_questionnaire.php'),
(206, '::1', 'root', 1441153749, 'Query Executed: INSERT INTO questionnaire(id, question, type) VALUES(?,?,?)\r\nArray\n(\n    [0] => iss\n    [1] => \n    [2] => The trainee is reliable and imbues a sense of responsibility in handling the tasks assigned to them.\n    [3] => Final Evaluation\n)\n', '/CPO/modules/add_questionnaire.php'),
(207, '::1', 'root', 1441153767, 'Pressed submit button', '/CPO/modules/add_questionnaire.php'),
(208, '::1', 'root', 1441153767, 'Query Executed: INSERT INTO questionnaire(id, question, type) VALUES(?,?,?)\r\nArray\n(\n    [0] => iss\n    [1] => \n    [2] => The trainee possesses the needed technical skills to efficiently and effectively perform their tasks in the following specific areas: (Enumerate here the task items as purported in the Intern’s Job Description.)\r\n	a.\r\n	b.\r\n	c.\r\n	d.\r\n	e.\n    [3] => Final Evaluation\n)\n', '/CPO/modules/add_questionnaire.php'),
(209, '::1', 'root', 1441153806, 'Pressed submit button', '/CPO/modules/add_questionnaire.php'),
(210, '::1', 'root', 1441153806, 'Query Executed: INSERT INTO questionnaire(id, question, type) VALUES(?,?,?)\r\nArray\n(\n    [0] => iss\n    [1] => \n    [2] => Since your previous evaluation, did the Intern improve in his/her over-all performance? Yes or No? Why? (provide justification) What are his/her strong and weak points?\n    [3] => Final Evaluation\n)\n', '/CPO/modules/add_questionnaire.php'),
(211, '::1', 'root', 1441153839, 'Pressed submit button', '/CPO/modules/add_questionnaire.php'),
(212, '::1', 'root', 1441153839, 'Query Executed: INSERT INTO questionnaire(id, question, type) VALUES(?,?,?)\r\nArray\n(\n    [0] => iss\n    [1] => \n    [2] => Given the opportunity, would you be willing to absorb this intern as an employee of your company? Yes or No? If so, why? (please elaborate)\n    [3] => Final Evaluation\n)\n', '/CPO/modules/add_questionnaire.php'),
(213, '::1', 'root', 1441154067, 'Pressed submit button', '/CPO/modules/add_accomplishment.php'),
(214, '::1', 'root', 1441154067, 'Query Executed: INSERT INTO accomplishment(id, student_id, date, accomplishment) VALUES(?,?,?,?)\r\nArray\n(\n    [0] => isss\n    [1] => \n    [2] => 2012-100088\n    [3] => 2015-09-02\n    [4] => Filing of Documents\n)\n', '/CPO/modules/add_accomplishment.php'),
(215, '::1', 'root', 1441154123, 'Pressed submit button', '/CPO/modules/add_accomplishment.php'),
(216, '::1', 'root', 1441154123, 'Query Executed: INSERT INTO accomplishment(id, student_id, date, accomplishment) VALUES(?,?,?,?)\r\nArray\n(\n    [0] => isss\n    [1] => \n    [2] => 2012-100088\n    [3] => 2015-09-02\n    [4] => Troubleshooting PCs\n)\n', '/CPO/modules/add_accomplishment.php'),
(217, '::1', 'root', 1441154188, 'Pressed submit button', '/CPO/modules/add_accomplishment.php'),
(218, '::1', 'root', 1441154189, 'Query Executed: INSERT INTO accomplishment(id, student_id, date, accomplishment) VALUES(?,?,?,?)\r\nArray\n(\n    [0] => isss\n    [1] => \n    [2] => 2012-100088\n    [3] => 2015-09-02\n    [4] => Reviewing the submitted Data Flow Diagrams\n)\n', '/CPO/modules/add_accomplishment.php'),
(219, '::1', 'root', 1441154236, 'Pressed submit button', '/CPO/modules/add_accomplishment.php'),
(220, '::1', 'root', 1441154236, 'Query Executed: INSERT INTO accomplishment(id, student_id, date, accomplishment) VALUES(?,?,?,?)\r\nArray\n(\n    [0] => isss\n    [1] => \n    [2] => 2012-100088\n    [3] => 2015-09-02\n    [4] => Quality testing of the inventory system\n)\n', '/CPO/modules/add_accomplishment.php'),
(221, '::1', 'root', 1441154291, 'Pressed submit button', '/CPO/modules/add_accomplishment.php'),
(222, '::1', 'root', 1441154291, 'Query Executed: INSERT INTO accomplishment(id, student_id, date, accomplishment) VALUES(?,?,?,?)\r\nArray\n(\n    [0] => isss\n    [1] => \n    [2] => 2012-100088\n    [3] => 2015-09-02\n    [4] => Writing quality reports\n)\n', '/CPO/modules/add_accomplishment.php'),
(223, '::1', 'root', 1441154302, 'Pressed submit button', '/CPO/modules/edit_accomplishment.php');
INSERT INTO `system_log` (`entry_id`, `ip_address`, `user`, `datetime`, `action`, `module`) VALUES
(224, '::1', 'root', 1441154302, 'Query Executed: UPDATE accomplishment SET student_id = ?, date = ?, accomplishment = ? WHERE id = ?\r\nArray\n(\n    [0] => sssi\n    [1] => 2012-100088\n    [2] => 2015-09-01\n    [3] => Quality testing of the inventory system\n    [4] => 4\n)\n', '/CPO/modules/edit_accomplishment.php'),
(225, '::1', 'root', 1441154319, 'Pressed submit button', '/CPO/modules/edit_accomplishment.php'),
(226, '::1', 'root', 1441154319, 'Query Executed: UPDATE accomplishment SET student_id = ?, date = ?, accomplishment = ? WHERE id = ?\r\nArray\n(\n    [0] => sssi\n    [1] => 2012-100088\n    [2] => 2015-08-31\n    [3] => Reviewing the submitted Data Flow Diagrams\n    [4] => 3\n)\n', '/CPO/modules/edit_accomplishment.php'),
(227, '::1', 'root', 1441154330, 'Pressed submit button', '/CPO/modules/edit_accomplishment.php'),
(228, '::1', 'root', 1441154330, 'Query Executed: UPDATE accomplishment SET student_id = ?, date = ?, accomplishment = ? WHERE id = ?\r\nArray\n(\n    [0] => sssi\n    [1] => 2012-100088\n    [2] => 2015-08-30\n    [3] => Troubleshooting PCs\n    [4] => 2\n)\n', '/CPO/modules/edit_accomplishment.php'),
(229, '::1', 'root', 1441154341, 'Pressed submit button', '/CPO/modules/edit_accomplishment.php'),
(230, '::1', 'root', 1441154341, 'Query Executed: UPDATE accomplishment SET student_id = ?, date = ?, accomplishment = ? WHERE id = ?\r\nArray\n(\n    [0] => sssi\n    [1] => 2012-100088\n    [2] => 2015-08-29\n    [3] => Filing of Documents\n    [4] => 1\n)\n', '/CPO/modules/edit_accomplishment.php'),
(231, '::1', 'root', 1441154416, 'Pressed submit button', '/CPO/modules/add_attendance.php'),
(232, '::1', 'root', 1441154416, 'Query Executed: INSERT INTO attendance(id, date, time_in, time_out, student_id, hr_head) VALUES(?,?,?,?,?,?)\r\nArray\n(\n    [0] => isssss\n    [1] => \n    [2] => 2015-08-29\n    [3] => 8:00 AM\n    [4] => 5:00 PM\n    [5] => 2012-100088\n    [6] => Mr. Roberto Diaz\n)\n', '/CPO/modules/add_attendance.php'),
(233, '::1', 'root', 1441154525, 'Pressed submit button', '/CPO/modules/edit_attendance.php'),
(234, '::1', 'root', 1441154525, 'Query Executed: UPDATE attendance SET date = ?, time_in = ?, time_out = ?, student_id = ?, hr_head = ? WHERE id = ?\r\nArray\n(\n    [0] => sssssi\n    [1] => 2015-08-29\n    [2] => 08:00:00\n    [3] => 17:00:00\n    [4] => 2012-100088\n    [5] => Mr. Roberto Diaz\n    [6] => 1\n)\n', '/CPO/modules/edit_attendance.php'),
(235, '::1', 'root', 1441154562, 'Pressed submit button', '/CPO/modules/add_attendance.php'),
(236, '::1', 'root', 1441154562, 'Query Executed: INSERT INTO attendance(id, date, time_in, time_out, student_id, hr_head) VALUES(?,?,?,?,?,?)\r\nArray\n(\n    [0] => isssss\n    [1] => \n    [2] => 2015-08-30\n    [3] => 8:00 AM\n    [4] => 17:00:00\n    [5] => 2012-100088\n    [6] => Mr. Roberto Diaz\n)\n', '/CPO/modules/add_attendance.php'),
(237, '::1', 'root', 1441154619, 'Pressed submit button', '/CPO/modules/add_attendance.php'),
(238, '::1', 'root', 1441154619, 'Query Executed: INSERT INTO attendance(id, date, time_in, time_out, student_id, hr_head) VALUES(?,?,?,?,?,?)\r\nArray\n(\n    [0] => isssss\n    [1] => \n    [2] => 2015-08-31\n    [3] => 8:00 AM\n    [4] => 12:00\n    [5] => 2012-100088\n    [6] => Mr. Roberto Diaz\n)\n', '/CPO/modules/add_attendance.php'),
(239, '::1', 'root', 1441154668, 'Pressed submit button', '/CPO/modules/add_attendance.php'),
(240, '::1', 'root', 1441154668, 'Query Executed: INSERT INTO attendance(id, date, time_in, time_out, student_id, hr_head) VALUES(?,?,?,?,?,?)\r\nArray\n(\n    [0] => isssss\n    [1] => \n    [2] => 2015-09-01\n    [3] => 8:00 AM\n    [4] => 17:00:00\n    [5] => 2012-100088\n    [6] => Mr. Roberto Diaz\n)\n', '/CPO/modules/add_attendance.php'),
(241, '::1', 'root', 1441154685, 'Pressed submit button', '/CPO/modules/add_attendance.php'),
(242, '::1', 'root', 1441154685, 'Query Executed: INSERT INTO attendance(id, date, time_in, time_out, student_id, hr_head) VALUES(?,?,?,?,?,?)\r\nArray\n(\n    [0] => isssss\n    [1] => \n    [2] => 2015-09-02\n    [3] => 8:00 AM\n    [4] => 17:00:00\n    [5] => 2012-100088\n    [6] => Mr. Roberto Diaz\n)\n', '/CPO/modules/add_attendance.php'),
(243, '::1', 'root', 1441155086, 'Pressed submit button', '/CPO/modules/edit_post.php'),
(244, '::1', 'root', 1441155086, 'Query Executed: UPDATE post SET title = ?, date = ?, body = ?, attach_file = ?, upload_file = ?, person_id = ? WHERE id = ?\r\nArray\n(\n    [0] => sssssii\n    [1] => Submission of Accomplishment Reports\n    [2] => 2015-08-31\n    [3] => The accomplishment reports should be submitted everyday.\n    [4] => attach file\n    [5] => upload file\n    [6] => 1\n    [7] => 1\n)\n', '/CPO/modules/edit_post.php'),
(245, '::1', 'root', 1441155145, 'Pressed submit button', '/CPO/modules/add_post.php'),
(246, '::1', 'root', 1441155145, 'Query Executed: INSERT INTO post(id, title, date, body, attach_file, upload_file, person_id) VALUES(?,?,?,?,?,?,?)\r\nArray\n(\n    [0] => isssssi\n    [1] => \n    [2] => Submission of Attendance Reports\n    [3] => 2015-08-30\n    [4] => The attendance reports should be submitted everyday.\n    [5] => attach file\n    [6] => upload file\n    [7] => 1\n)\n', '/CPO/modules/add_post.php'),
(247, '::1', 'root', 1441155441, 'Pressed submit button', '/CPO/modules/add_post.php'),
(248, '::1', 'root', 1441155441, 'Query Executed: INSERT INTO post(id, title, date, body, attach_file, upload_file, person_id) VALUES(?,?,?,?,?,?,?)\r\nArray\n(\n    [0] => isssssi\n    [1] => \n    [2] => Submission of Final Papers for INTERN1 and INTERN2 students\n    [3] => 2015-09-02\n    [4] => The accomplished final papers should be submitted on or before September 2, 2015.\n    [5] => attach file\n    [6] => upload file\n    [7] => 7\n)\n', '/CPO/modules/add_post.php'),
(249, '::1', 'root', 1441155485, 'Pressed submit button', '/CPO/modules/edit_post.php'),
(250, '::1', 'root', 1441155485, 'Query Executed: UPDATE post SET title = ?, date = ?, body = ?, attach_file = ?, upload_file = ?, person_id = ? WHERE id = ?\r\nArray\n(\n    [0] => sssssii\n    [1] => Submission of Attendance Reports\n    [2] => 2015-08-30\n    [3] => The attendance reports should be submitted everyday.\n    [4] => attach file\n    [5] => upload file\n    [6] => 7\n    [7] => 2\n)\n', '/CPO/modules/edit_post.php'),
(251, '::1', 'root', 1441155493, 'Pressed cancel button', '/CPO/modules/add_post.php'),
(252, '::1', 'root', 1441155505, 'Pressed submit button', '/CPO/modules/edit_post.php'),
(253, '::1', 'root', 1441155506, 'Query Executed: UPDATE post SET title = ?, date = ?, body = ?, attach_file = ?, upload_file = ?, person_id = ? WHERE id = ?\r\nArray\n(\n    [0] => sssssii\n    [1] => Submission of Accomplishment Reports\n    [2] => 2015-08-31\n    [3] => The accomplishment reports should be submitted everyday.\n    [4] => attach file\n    [5] => upload file\n    [6] => 7\n    [7] => 1\n)\n', '/CPO/modules/edit_post.php'),
(254, '::1', 'root', 1441155719, 'Pressed submit button', '/CPO/modules/add_refstudent.php'),
(255, '::1', 'root', 1441155719, 'Query Executed: INSERT INTO refstudent(student_id, student_last_name, student_first_name, student_middle_name, birth_date, birth_place, admission_date, entry_level, admission_credential, mail_grades_to, exit_level, nationality, gender, address, postal_code, tel_num, mobile_num, email, religion, civil_status, box_num) VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)\r\nArray\n(\n    [0] => sssssssssssssssssssss\n    [1] => 2012-100016\n    [2] => Hocosol\n    [3] => Liza\n    [4] => Bayeta\n    [5] => 1995-03-06\n    [6] => Binangonan, Rizal\n    [7] => 2012-05-03\n    [8] => Freshman\n    [9] => hello\n    [10] => Guardian\n    [11] => NA\n    [12] => Filipino\n    [13] => Female\n    [14] => Carmona, Cavite\n    [15] => 6523\n    [16] => 675-0823\n    [17] => 09723427654\n    [18] => lbhocosol@student.apc.edu.ph\n    [19] => Roman Catholic\n    [20] => Single\n    [21] => 9\n)\n', '/CPO/modules/add_refstudent.php'),
(256, '::1', 'root', 1441155880, 'Pressed submit button', '/CPO/modules/add_refstudent.php'),
(257, '::1', 'root', 1441155880, 'Query Executed: INSERT INTO refstudent(student_id, student_last_name, student_first_name, student_middle_name, birth_date, birth_place, admission_date, entry_level, admission_credential, mail_grades_to, exit_level, nationality, gender, address, postal_code, tel_num, mobile_num, email, religion, civil_status, box_num) VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)\r\nArray\n(\n    [0] => sssssssssssssssssssss\n    [1] => 2012-100213\n    [2] => Olalo\n    [3] => Christine Mae\n    [4] => Velasco\n    [5] => 1995-06-02\n    [6] => Taguig City\n    [7] => 2012-05-18\n    [8] => Freshman\n    [9] => hello\n    [10] => Mother\n    [11] => NA\n    [12] => Filipino\n    [13] => Female\n    [14] => Taguig City\n    [15] => 7465\n    [16] => 786-0982\n    [17] => 09264751345\n    [18] => cvolalo@student.apc.edu.ph\n    [19] => Roman Catholic\n    [20] => Single\n    [21] => 20\n)\n', '/CPO/modules/add_refstudent.php'),
(258, '::1', 'root', 1441168776, 'Pressed delete button', '/CPO/modules/delete_final_paper_hdr.php'),
(259, '::1', 'root', 1441168776, 'Query Executed: DELETE FROM final_paper_hdr WHERE id = ?\r\nArray\n(\n    [0] => i\n    [1] => 1\n)\n', '/CPO/modules/delete_final_paper_hdr.php'),
(260, '::1', 'root', 1441168776, 'Query Executed: DELETE FROM final_paper_dtl WHERE id = ?\r\nArray\n(\n    [0] => i\n    [1] => 1\n)\n', '/CPO/modules/delete_final_paper_hdr.php'),
(261, '::1', 'root', 1441168806, 'Pressed submit button', '/CPO/modules/edit_questionnaire.php'),
(262, '::1', 'root', 1441168806, 'Query Executed: UPDATE questionnaire SET question = ?, type = ? WHERE id = ?\r\nArray\n(\n    [0] => ssi\n    [1] => Internship Experience\r\n(Give your general evaluation of your Intern1 experience – tasks and projects done, the people you worked with, and memorable experiences.)\n    [2] => INTERN1 Final Paper\n    [3] => 10\n)\n', '/CPO/modules/edit_questionnaire.php'),
(263, '::1', 'root', 1441168817, 'Pressed submit button', '/CPO/modules/edit_questionnaire.php'),
(264, '::1', 'root', 1441168817, 'Query Executed: UPDATE questionnaire SET question = ?, type = ? WHERE id = ?\r\nArray\n(\n    [0] => ssi\n    [1] => Lessons Learned \r\n(These should be realizations made during your internship like, for example, using a new software, attending training courses. Indicate how these lessons can help you in the future.)\n    [2] => INTERN1 Final Paper\n    [3] => 11\n)\n', '/CPO/modules/edit_questionnaire.php'),
(265, '::1', 'root', 1441168830, 'Pressed submit button', '/CPO/modules/edit_questionnaire.php'),
(266, '::1', 'root', 1441168830, 'Query Executed: UPDATE questionnaire SET question = ?, type = ? WHERE id = ?\r\nArray\n(\n    [0] => ssi\n    [1] => Other Comments & Recommendations \r\n(These may be addressed to APC, CPO, to your Internship Company/IP, or to other parties who may have relevance in your internship experience.)\n    [2] => INTERN1 Final Paper\n    [3] => 12\n)\n', '/CPO/modules/edit_questionnaire.php'),
(267, '::1', 'root', 1441168841, 'Pressed submit button', '/CPO/modules/edit_questionnaire.php'),
(268, '::1', 'root', 1441168841, 'Query Executed: UPDATE questionnaire SET question = ?, type = ? WHERE id = ?\r\nArray\n(\n    [0] => ssi\n    [1] => Sample Work Output/Visual Attachments \r\n(If sample work is confidential, then insert pictures of you working on site or with your IP  / colleagues in a neutral area like the reception, hallway, or pantry. Do NOT leave this section blank.)\n    [2] => INTERN1 Final Paper\n    [3] => 13\n)\n', '/CPO/modules/edit_questionnaire.php'),
(269, '::1', 'root', 1441168850, 'Pressed submit button', '/CPO/modules/edit_questionnaire.php'),
(270, '::1', 'root', 1441168850, 'Query Executed: UPDATE questionnaire SET question = ?, type = ? WHERE id = ?\r\nArray\n(\n    [0] => ssi\n    [1] => What would you have changed or done better throughout your internship?\r\nWork related only, not addressed to CPO (e.g. do not include “I wish internship was 3 months long, instead of 6.”) Please explain why you would change these and what you would actually have done to change it.\n    [2] => INTERN2 Final Paper\n    [3] => 14\n)\n', '/CPO/modules/edit_questionnaire.php'),
(271, '::1', 'root', 1441168859, 'Pressed submit button', '/CPO/modules/edit_questionnaire.php'),
(272, '::1', 'root', 1441168859, 'Query Executed: UPDATE questionnaire SET question = ?, type = ? WHERE id = ?\r\nArray\n(\n    [0] => ssi\n    [1] => What was your greatest achievement throughout your internship?\r\n(Explain in depth why you think this is your greatest achievement.)\n    [2] => INTERN2 Final Paper\n    [3] => 15\n)\n', '/CPO/modules/edit_questionnaire.php'),
(273, '::1', 'root', 1441168870, 'Pressed submit button', '/CPO/modules/edit_questionnaire.php'),
(274, '::1', 'root', 1441168870, 'Query Executed: UPDATE questionnaire SET question = ?, type = ? WHERE id = ?\r\nArray\n(\n    [0] => ssi\n    [1] => Other Comments & Recommendations\r\n(These may be addressed to APC, CPO, to your Internship Company/IP, or to other parties who may have relevance in your internship experience. You can also include software, programs, seminars/training, etc you think would help future professionals like you.)\n    [2] => INTERN2 Final Paper\n    [3] => 16\n)\n', '/CPO/modules/edit_questionnaire.php'),
(275, '::1', 'root', 1441168881, 'Pressed submit button', '/CPO/modules/edit_questionnaire.php'),
(276, '::1', 'root', 1441168881, 'Query Executed: UPDATE questionnaire SET question = ?, type = ? WHERE id = ?\r\nArray\n(\n    [0] => ssi\n    [1] => Sample Work Output/Visual Attachments\r\n(If sample work is confidential, then insert pictures of you working on site or with your IP / colleagues in a neutral area like the reception, hallway or pantry of the company. Do not leave this section blank.)\n    [2] => INTERN2 Final Paper\n    [3] => 17\n)\n', '/CPO/modules/edit_questionnaire.php'),
(277, '::1', 'root', 1441169256, 'Pressed submit button', '/CPO/sysadmin/edit_user.php'),
(278, '::1', 'root', 1441169257, 'Query Executed: UPDATE user SET username = ?, person_id = ?, role_id = ?, skin_id = ? WHERE username = ?\r\nArray\n(\n    [0] => siiis\n    [1] => apcinternhead\n    [2] => 7\n    [3] => 4\n    [4] => 6\n    [5] => apcinternhead\n)\n', '/CPO/sysadmin/edit_user.php'),
(279, '::1', 'root', 1441169257, 'Query executed: DELETE FROM user_passport WHERE username = ''apcinternhead''', '/CPO/sysadmin/edit_user.php'),
(280, '::1', 'root', 1441169257, 'Query executed: INSERT `user_passport` SELECT ''apcinternhead'', `link_id` FROM user_role_links WHERE role_id=''4''', '/CPO/sysadmin/edit_user.php'),
(281, '::1', 'root', 1441169278, 'Pressed submit button', '/CPO/sysadmin/edit_user.php'),
(282, '::1', 'root', 1441169278, 'Query Executed: UPDATE user SET username = ?, person_id = ?, role_id = ?, skin_id = ? WHERE username = ?\r\nArray\n(\n    [0] => siiis\n    [1] => matrasmonte\n    [2] => 4\n    [3] => 3\n    [4] => 9\n    [5] => matrasmonte\n)\n', '/CPO/sysadmin/edit_user.php'),
(283, '::1', 'root', 1441169278, 'Query executed: DELETE FROM user_passport WHERE username = ''matrasmonte''', '/CPO/sysadmin/edit_user.php'),
(284, '::1', 'root', 1441169278, 'Query executed: INSERT `user_passport` SELECT ''matrasmonte'', `link_id` FROM user_role_links WHERE role_id=''3''', '/CPO/sysadmin/edit_user.php'),
(285, '::1', 'root', 1441169296, 'Pressed submit button', '/CPO/sysadmin/edit_user.php'),
(286, '::1', 'root', 1441169296, 'Query Executed: UPDATE user SET username = ?, person_id = ?, role_id = ?, skin_id = ? WHERE username = ?\r\nArray\n(\n    [0] => siiis\n    [1] => cvolalo\n    [2] => 6\n    [3] => 3\n    [4] => 4\n    [5] => cvolalo\n)\n', '/CPO/sysadmin/edit_user.php'),
(287, '::1', 'root', 1441169296, 'Query executed: DELETE FROM user_passport WHERE username = ''cvolalo''', '/CPO/sysadmin/edit_user.php'),
(288, '::1', 'root', 1441169296, 'Query executed: INSERT `user_passport` SELECT ''cvolalo'', `link_id` FROM user_role_links WHERE role_id=''3''', '/CPO/sysadmin/edit_user.php'),
(289, '::1', 'root', 1441169303, 'Pressed submit button', '/CPO/sysadmin/edit_user.php'),
(290, '::1', 'root', 1441169303, 'Query Executed: UPDATE user SET username = ?, person_id = ?, role_id = ?, skin_id = ? WHERE username = ?\r\nArray\n(\n    [0] => siiis\n    [1] => lbhocosol\n    [2] => 5\n    [3] => 3\n    [4] => 4\n    [5] => lbhocosol\n)\n', '/CPO/sysadmin/edit_user.php'),
(291, '::1', 'root', 1441169304, 'Query executed: DELETE FROM user_passport WHERE username = ''lbhocosol''', '/CPO/sysadmin/edit_user.php'),
(292, '::1', 'root', 1441169304, 'Query executed: INSERT `user_passport` SELECT ''lbhocosol'', `link_id` FROM user_role_links WHERE role_id=''3''', '/CPO/sysadmin/edit_user.php'),
(293, '::1', 'root', 1441169805, 'Query executed: DELETE FROM user_passport WHERE username=''apcinternhead''', '/CPO/sysadmin/set_user_passports.php'),
(294, '::1', 'root', 1441169805, 'Query executed: INSERT INTO user_passport(username, link_id) VALUES(''apcinternhead'', ''35''),(''apcinternhead'', ''69''),(''apcinternhead'', ''173''),(''apcinternhead'', ''73''),(''apcinternhead'', ''177''),(''apcinternhead'', ''77''),(''apcinternhead'', ''181''),(''apcinternhead'', ''81''),(''apcinternhead'', ''185''),(''apcinternhead'', ''105''),(''apcinternhead'', ''209''),(''apcinternhead'', ''109''),(''apcinternhead'', ''213''),(''apcinternhead'', ''113''),(''apcinternhead'', ''217''),(''apcinternhead'', ''117''),(''apcinternhead'', ''221''),(''apcinternhead'', ''63''),(''apcinternhead'', ''167''),(''apcinternhead'', ''67''),(''apcinternhead'', ''171''),(''apcinternhead'', ''71''),(''apcinternhead'', ''175''),(''apcinternhead'', ''75''),(''apcinternhead'', ''179''),(''apcinternhead'', ''79''),(''apcinternhead'', ''183''),(''apcinternhead'', ''83''),(''apcinternhead'', ''187''),(''apcinternhead'', ''72''),(''apcinternhead'', ''176''),(''apcinternhead'', ''76''),(''apcinternhead'', ''180''),(''apcinternhead'', ''80''),(''apcinternhead'', ''184''),(''apcinternhead'', ''84''),(''apcinternhead'', ''188''),(''apcinternhead'', ''116''),(''apcinternhead'', ''220''),(''apcinternhead'', ''120''),(''apcinternhead'', ''224''),(''apcinternhead'', ''66''),(''apcinternhead'', ''170''),(''apcinternhead'', ''70''),(''apcinternhead'', ''174''),(''apcinternhead'', ''74''),(''apcinternhead'', ''178''),(''apcinternhead'', ''78''),(''apcinternhead'', ''182''),(''apcinternhead'', ''82''),(''apcinternhead'', ''186''),(''apcinternhead'', ''94''),(''apcinternhead'', ''198''),(''apcinternhead'', ''102''),(''apcinternhead'', ''206''),(''apcinternhead'', ''246''),(''apcinternhead'', ''106''),(''apcinternhead'', ''210''),(''apcinternhead'', ''110''),(''apcinternhead'', ''214''),(''apcinternhead'', ''114''),(''apcinternhead'', ''218''),(''apcinternhead'', ''118''),(''apcinternhead'', ''222''),(''apcinternhead'', ''91''),(''apcinternhead'', ''195''),(''apcinternhead'', ''95''),(''apcinternhead'', ''199''),(''apcinternhead'', ''99''),(''apcinternhead'', ''203''),(''apcinternhead'', ''243''),(''apcinternhead'', ''103''),(''apcinternhead'', ''207''),(''apcinternhead'', ''247''),(''apcinternhead'', ''107''),(''apcinternhead'', ''211''),(''apcinternhead'', ''111''),(''apcinternhead'', ''215''),(''apcinternhead'', ''115''),(''apcinternhead'', ''219''),(''apcinternhead'', ''119''),(''apcinternhead'', ''223''),(''apcinternhead'', ''123''),(''apcinternhead'', ''227''),(''apcinternhead'', ''251''),(''apcinternhead'', ''255''),(''apcinternhead'', ''127''),(''apcinternhead'', ''231''),(''apcinternhead'', ''131''),(''apcinternhead'', ''235''),(''apcinternhead'', ''135''),(''apcinternhead'', ''239'')', '/CPO/sysadmin/set_user_passports.php'),
(295, '::1', 'root', 1441169806, 'Query executed: UPDATE user SET role_id=''0'' WHERE username=''apcinternhead''', '/CPO/sysadmin/set_user_passports.php'),
(296, '::1', 'root', 1441169840, 'Pressed delete button', '/CPO/modules/delete_post.php'),
(297, '::1', 'root', 1441169841, 'Query Executed: DELETE FROM post WHERE id = ?\r\nArray\n(\n    [0] => i\n    [1] => 3\n)\n', '/CPO/modules/delete_post.php'),
(298, '::1', 'root', 1441170003, 'Pressed submit button', '/CPO/sysadmin/edit_user.php'),
(299, '::1', 'root', 1441170003, 'Query Executed: UPDATE user SET username = ?, person_id = ?, role_id = ?, skin_id = ? WHERE username = ?\r\nArray\n(\n    [0] => siiis\n    [1] => matrasmonte\n    [2] => 4\n    [3] => \n    [4] => 9\n    [5] => matrasmonte\n)\n', '/CPO/sysadmin/edit_user.php'),
(300, '::1', 'root', 1441170277, 'Pressed submit button', '/CPO/sysadmin/edit_person.php'),
(301, '::1', 'root', 1441170277, 'Query Executed: UPDATE person SET first_name = ?, middle_name = ?, last_name = ?, gender = ? WHERE person_id = ?\r\nArray\n(\n    [0] => ssssi\n    [1] => Marie Kathleen\n    [2] => Aggabao\n    [3] => Trasmonte\n    [4] => Female\n    [5] => 4\n)\n', '/CPO/sysadmin/edit_person.php'),
(302, '::1', 'root', 1441170602, 'Query executed: DELETE FROM user_passport WHERE username=''matrasmonte''', '/CPO/sysadmin/set_user_passports.php'),
(303, '::1', 'root', 1441170602, 'Query executed: INSERT INTO user_passport(username, link_id) VALUES(''matrasmonte'', ''35''),(''matrasmonte'', ''139''),(''matrasmonte'', ''33''),(''matrasmonte'', ''137''),(''matrasmonte'', ''61''),(''matrasmonte'', ''165''),(''matrasmonte'', ''65''),(''matrasmonte'', ''169''),(''matrasmonte'', ''97''),(''matrasmonte'', ''201''),(''matrasmonte'', ''241''),(''matrasmonte'', ''101''),(''matrasmonte'', ''205''),(''matrasmonte'', ''245''),(''matrasmonte'', ''217''),(''matrasmonte'', ''125''),(''matrasmonte'', ''229''),(''matrasmonte'', ''129''),(''matrasmonte'', ''233''),(''matrasmonte'', ''63''),(''matrasmonte'', ''167''),(''matrasmonte'', ''67''),(''matrasmonte'', ''171''),(''matrasmonte'', ''62''),(''matrasmonte'', ''166''),(''matrasmonte'', ''66''),(''matrasmonte'', ''170''),(''matrasmonte'', ''98''),(''matrasmonte'', ''202''),(''matrasmonte'', ''242''),(''matrasmonte'', ''102''),(''matrasmonte'', ''206''),(''matrasmonte'', ''246''),(''matrasmonte'', ''126''),(''matrasmonte'', ''230''),(''matrasmonte'', ''130''),(''matrasmonte'', ''234''),(''matrasmonte'', ''91''),(''matrasmonte'', ''195''),(''matrasmonte'', ''95''),(''matrasmonte'', ''199''),(''matrasmonte'', ''99''),(''matrasmonte'', ''203''),(''matrasmonte'', ''243''),(''matrasmonte'', ''103''),(''matrasmonte'', ''207''),(''matrasmonte'', ''247''),(''matrasmonte'', ''115''),(''matrasmonte'', ''219''),(''matrasmonte'', ''127''),(''matrasmonte'', ''231''),(''matrasmonte'', ''131''),(''matrasmonte'', ''235'')', '/CPO/sysadmin/set_user_passports.php'),
(304, '::1', 'root', 1441170602, 'Query executed: UPDATE user SET role_id=''0'' WHERE username=''matrasmonte''', '/CPO/sysadmin/set_user_passports.php'),
(305, '::1', 'root', 1441170890, 'Query executed: DELETE FROM user_passport WHERE username=''apcinternhead''', '/CPO/sysadmin/set_user_passports.php'),
(306, '::1', 'root', 1441170890, 'Query executed: INSERT INTO user_passport(username, link_id) VALUES(''apcinternhead'', ''35''),(''apcinternhead'', ''69''),(''apcinternhead'', ''173''),(''apcinternhead'', ''73''),(''apcinternhead'', ''177''),(''apcinternhead'', ''77''),(''apcinternhead'', ''181''),(''apcinternhead'', ''81''),(''apcinternhead'', ''185''),(''apcinternhead'', ''105''),(''apcinternhead'', ''209''),(''apcinternhead'', ''109''),(''apcinternhead'', ''213''),(''apcinternhead'', ''113''),(''apcinternhead'', ''217''),(''apcinternhead'', ''117''),(''apcinternhead'', ''221''),(''apcinternhead'', ''63''),(''apcinternhead'', ''167''),(''apcinternhead'', ''67''),(''apcinternhead'', ''171''),(''apcinternhead'', ''71''),(''apcinternhead'', ''175''),(''apcinternhead'', ''75''),(''apcinternhead'', ''179''),(''apcinternhead'', ''79''),(''apcinternhead'', ''183''),(''apcinternhead'', ''83''),(''apcinternhead'', ''187''),(''apcinternhead'', ''72''),(''apcinternhead'', ''176''),(''apcinternhead'', ''76''),(''apcinternhead'', ''180''),(''apcinternhead'', ''80''),(''apcinternhead'', ''184''),(''apcinternhead'', ''84''),(''apcinternhead'', ''188''),(''apcinternhead'', ''116''),(''apcinternhead'', ''220''),(''apcinternhead'', ''120''),(''apcinternhead'', ''224''),(''apcinternhead'', ''66''),(''apcinternhead'', ''170''),(''apcinternhead'', ''70''),(''apcinternhead'', ''174''),(''apcinternhead'', ''74''),(''apcinternhead'', ''178''),(''apcinternhead'', ''78''),(''apcinternhead'', ''182''),(''apcinternhead'', ''82''),(''apcinternhead'', ''186''),(''apcinternhead'', ''102''),(''apcinternhead'', ''206''),(''apcinternhead'', ''246''),(''apcinternhead'', ''106''),(''apcinternhead'', ''210''),(''apcinternhead'', ''110''),(''apcinternhead'', ''214''),(''apcinternhead'', ''114''),(''apcinternhead'', ''218''),(''apcinternhead'', ''118''),(''apcinternhead'', ''222''),(''apcinternhead'', ''91''),(''apcinternhead'', ''195''),(''apcinternhead'', ''95''),(''apcinternhead'', ''199''),(''apcinternhead'', ''99''),(''apcinternhead'', ''203''),(''apcinternhead'', ''243''),(''apcinternhead'', ''103''),(''apcinternhead'', ''207''),(''apcinternhead'', ''247''),(''apcinternhead'', ''107''),(''apcinternhead'', ''211''),(''apcinternhead'', ''111''),(''apcinternhead'', ''215''),(''apcinternhead'', ''115''),(''apcinternhead'', ''219''),(''apcinternhead'', ''119''),(''apcinternhead'', ''223''),(''apcinternhead'', ''123''),(''apcinternhead'', ''227''),(''apcinternhead'', ''251''),(''apcinternhead'', ''255''),(''apcinternhead'', ''127''),(''apcinternhead'', ''231''),(''apcinternhead'', ''131''),(''apcinternhead'', ''235''),(''apcinternhead'', ''135''),(''apcinternhead'', ''239'')', '/CPO/sysadmin/set_user_passports.php'),
(307, '::1', 'root', 1441170890, 'Query executed: UPDATE user SET role_id=''0'' WHERE username=''apcinternhead''', '/CPO/sysadmin/set_user_passports.php'),
(308, '::1', 'root', 1441171034, 'Query executed: DELETE FROM user_passport WHERE username=''cvolalo''', '/CPO/sysadmin/set_user_passports.php'),
(309, '::1', 'root', 1441171034, 'Query executed: INSERT INTO user_passport(username, link_id) VALUES(''cvolalo'', ''35''),(''cvolalo'', ''139''),(''cvolalo'', ''33''),(''cvolalo'', ''137''),(''cvolalo'', ''61''),(''cvolalo'', ''165''),(''cvolalo'', ''65''),(''cvolalo'', ''169''),(''cvolalo'', ''125''),(''cvolalo'', ''229''),(''cvolalo'', ''129''),(''cvolalo'', ''233''),(''cvolalo'', ''63''),(''cvolalo'', ''167''),(''cvolalo'', ''67''),(''cvolalo'', ''171''),(''cvolalo'', ''34''),(''cvolalo'', ''138''),(''cvolalo'', ''62''),(''cvolalo'', ''166''),(''cvolalo'', ''66''),(''cvolalo'', ''170''),(''cvolalo'', ''98''),(''cvolalo'', ''202''),(''cvolalo'', ''242''),(''cvolalo'', ''102''),(''cvolalo'', ''206''),(''cvolalo'', ''246''),(''cvolalo'', ''126''),(''cvolalo'', ''230''),(''cvolalo'', ''130''),(''cvolalo'', ''234''),(''cvolalo'', ''91''),(''cvolalo'', ''195''),(''cvolalo'', ''95''),(''cvolalo'', ''199''),(''cvolalo'', ''99''),(''cvolalo'', ''203''),(''cvolalo'', ''243''),(''cvolalo'', ''103''),(''cvolalo'', ''207''),(''cvolalo'', ''247''),(''cvolalo'', ''115''),(''cvolalo'', ''219''),(''cvolalo'', ''127''),(''cvolalo'', ''231''),(''cvolalo'', ''131''),(''cvolalo'', ''235'')', '/CPO/sysadmin/set_user_passports.php'),
(310, '::1', 'root', 1441171034, 'Query executed: UPDATE user SET role_id=''0'' WHERE username=''cvolalo''', '/CPO/sysadmin/set_user_passports.php'),
(311, '::1', 'root', 1441171251, 'Query executed: DELETE FROM user_passport WHERE username=''lbhocosol''', '/CPO/sysadmin/set_user_passports.php'),
(312, '::1', 'root', 1441171252, 'Query executed: INSERT INTO user_passport(username, link_id) VALUES(''lbhocosol'', ''35''),(''lbhocosol'', ''139''),(''lbhocosol'', ''33''),(''lbhocosol'', ''137''),(''lbhocosol'', ''61''),(''lbhocosol'', ''165''),(''lbhocosol'', ''65''),(''lbhocosol'', ''169''),(''lbhocosol'', ''97''),(''lbhocosol'', ''201''),(''lbhocosol'', ''241''),(''lbhocosol'', ''101''),(''lbhocosol'', ''205''),(''lbhocosol'', ''245''),(''lbhocosol'', ''125''),(''lbhocosol'', ''229''),(''lbhocosol'', ''129''),(''lbhocosol'', ''233''),(''lbhocosol'', ''63''),(''lbhocosol'', ''167''),(''lbhocosol'', ''67''),(''lbhocosol'', ''171''),(''lbhocosol'', ''34''),(''lbhocosol'', ''138''),(''lbhocosol'', ''62''),(''lbhocosol'', ''166''),(''lbhocosol'', ''66''),(''lbhocosol'', ''170''),(''lbhocosol'', ''98''),(''lbhocosol'', ''202''),(''lbhocosol'', ''242''),(''lbhocosol'', ''102''),(''lbhocosol'', ''206''),(''lbhocosol'', ''246''),(''lbhocosol'', ''126''),(''lbhocosol'', ''230''),(''lbhocosol'', ''130''),(''lbhocosol'', ''234''),(''lbhocosol'', ''91''),(''lbhocosol'', ''195''),(''lbhocosol'', ''95''),(''lbhocosol'', ''199''),(''lbhocosol'', ''99''),(''lbhocosol'', ''203''),(''lbhocosol'', ''243''),(''lbhocosol'', ''103''),(''lbhocosol'', ''207''),(''lbhocosol'', ''247''),(''lbhocosol'', ''115''),(''lbhocosol'', ''219''),(''lbhocosol'', ''127''),(''lbhocosol'', ''231''),(''lbhocosol'', ''131''),(''lbhocosol'', ''235'')', '/CPO/sysadmin/set_user_passports.php'),
(313, '::1', 'root', 1441171252, 'Query executed: UPDATE user SET role_id=''0'' WHERE username=''lbhocosol''', '/CPO/sysadmin/set_user_passports.php');

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
('apcinternhead', '$2y$12$f0HvbG5RdYVrgO84wKWt2O1BJ1pPu2u8J4sOJwlIvWH/WajAwwXua', 'f0HvbG5RdYVrgO84wKWt2Q', 12, 'blowfish', 7, 0, 6),
('cvolalo', '$2y$12$mN8OUO.S/LG.mgFEgAEggOmhwtdKbAuEgIm4SBfY.hFLfks9GfLTa', 'mN8OUO+S/LG+mgFEgAEggQ', 12, 'blowfish', 6, 0, 4),
('lbhocosol', '$2y$12$paWnV0rFjAf3t2Ls37mnJugyvN11.1EYbvrYuL6Sre9hPc5d6PWY2', 'paWnV0rFjAf3t2Ls37mnJw', 12, 'blowfish', 5, 0, 4),
('matrasmonte', '$2y$12$CPI6084i0Q0RmC4rXxcPQeF4rt4DzK1qoFkmkUOiUWBeacqH9BSfK', 'CPI6084i0Q0RmC4rXxcPQg', 12, 'blowfish', 4, 0, 9),
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
) ENGINE=InnoDB AUTO_INCREMENT=257 DEFAULT CHARSET=utf8;

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
(136, 'Delete schoolcourse', 'modules/delete_schoolcourse.php', 'Delete Schoolcourse', '', 1, 'No', 'On', 'form3.png', 0),
(137, 'Add accomplishment', 'modules/add_accomplishment.php', 'Add Accomplishment', '', 1, 'No', 'On', 'form3.png', 0),
(138, 'Edit accomplishment', 'modules/edit_accomplishment.php', 'Edit Accomplishment', '', 1, 'No', 'On', 'form3.png', 0),
(139, 'View accomplishment', 'modules/listview_accomplishment.php', 'Accomplishment', '', 1, 'Yes', 'On', 'form3.png', 0),
(140, 'Delete accomplishment', 'modules/delete_accomplishment.php', 'Delete Accomplishment', '', 1, 'No', 'On', 'form3.png', 0),
(141, 'Add alumniaddress', 'modules/add_alumniaddress.php', 'Add Alumniaddress', '', 1, 'No', 'On', 'form3.png', 0),
(142, 'Edit alumniaddress', 'modules/edit_alumniaddress.php', 'Edit Alumniaddress', '', 1, 'No', 'On', 'form3.png', 0),
(143, 'View alumniaddress', 'modules/listview_alumniaddress.php', 'Alumniaddress', '', 1, 'Yes', 'On', 'form3.png', 0),
(144, 'Delete alumniaddress', 'modules/delete_alumniaddress.php', 'Delete Alumniaddress', '', 1, 'No', 'On', 'form3.png', 0),
(145, 'Add alumniemplmove', 'modules/add_alumniemplmove.php', 'Add Alumniemplmove', '', 1, 'No', 'On', 'form3.png', 0),
(146, 'Edit alumniemplmove', 'modules/edit_alumniemplmove.php', 'Edit Alumniemplmove', '', 1, 'No', 'On', 'form3.png', 0),
(147, 'View alumniemplmove', 'modules/listview_alumniemplmove.php', 'Alumniemplmove', '', 1, 'Yes', 'On', 'form3.png', 0),
(148, 'Delete alumniemplmove', 'modules/delete_alumniemplmove.php', 'Delete Alumniemplmove', '', 1, 'No', 'On', 'form3.png', 0),
(149, 'Add alumniemplrecord', 'modules/add_alumniemplrecord.php', 'Add Alumniemplrecord', '', 1, 'No', 'On', 'form3.png', 0),
(150, 'Edit alumniemplrecord', 'modules/edit_alumniemplrecord.php', 'Edit Alumniemplrecord', '', 1, 'No', 'On', 'form3.png', 0),
(151, 'View alumniemplrecord', 'modules/listview_alumniemplrecord.php', 'Alumniemplrecord', '', 1, 'Yes', 'On', 'form3.png', 0),
(152, 'Delete alumniemplrecord', 'modules/delete_alumniemplrecord.php', 'Delete Alumniemplrecord', '', 1, 'No', 'On', 'form3.png', 0),
(153, 'Add alumnifurtherstudies', 'modules/add_alumnifurtherstudies.php', 'Add Alumnifurtherstudies', '', 1, 'No', 'On', 'form3.png', 0),
(154, 'Edit alumnifurtherstudies', 'modules/edit_alumnifurtherstudies.php', 'Edit Alumnifurtherstudies', '', 1, 'No', 'On', 'form3.png', 0),
(155, 'View alumnifurtherstudies', 'modules/listview_alumnifurtherstudies.php', 'Alumnifurtherstudies', '', 1, 'Yes', 'On', 'form3.png', 0),
(156, 'Delete alumnifurtherstudies', 'modules/delete_alumnifurtherstudies.php', 'Delete Alumnifurtherstudies', '', 1, 'No', 'On', 'form3.png', 0),
(157, 'Add alumniinfo', 'modules/add_alumniinfo.php', 'Add Alumniinfo', '', 1, 'No', 'On', 'form3.png', 0),
(158, 'Edit alumniinfo', 'modules/edit_alumniinfo.php', 'Edit Alumniinfo', '', 1, 'No', 'On', 'form3.png', 0),
(159, 'View alumniinfo', 'modules/listview_alumniinfo.php', 'Alumniinfo', '', 1, 'Yes', 'On', 'form3.png', 0),
(160, 'Delete alumniinfo', 'modules/delete_alumniinfo.php', 'Delete Alumniinfo', '', 1, 'No', 'On', 'form3.png', 0),
(161, 'Add alumniprofqualification', 'modules/add_alumniprofqualification.php', 'Add Alumniprofqualification', '', 1, 'No', 'On', 'form3.png', 0),
(162, 'Edit alumniprofqualification', 'modules/edit_alumniprofqualification.php', 'Edit Alumniprofqualification', '', 1, 'No', 'On', 'form3.png', 0),
(163, 'View alumniprofqualification', 'modules/listview_alumniprofqualification.php', 'Alumniprofqualification', '', 1, 'Yes', 'On', 'form3.png', 0),
(164, 'Delete alumniprofqualification', 'modules/delete_alumniprofqualification.php', 'Delete Alumniprofqualification', '', 1, 'No', 'On', 'form3.png', 0),
(165, 'Add attendance', 'modules/add_attendance.php', 'Add Attendance', '', 1, 'No', 'On', 'form3.png', 0),
(166, 'Edit attendance', 'modules/edit_attendance.php', 'Edit Attendance', '', 1, 'No', 'On', 'form3.png', 0),
(167, 'View attendance', 'modules/listview_attendance.php', 'Attendance', '', 1, 'Yes', 'On', 'form3.png', 0),
(168, 'Delete attendance', 'modules/delete_attendance.php', 'Delete Attendance', '', 1, 'No', 'On', 'form3.png', 0),
(169, 'Add comment', 'modules/add_comment.php', 'Add Comment', '', 1, 'No', 'On', 'form3.png', 0),
(170, 'Edit comment', 'modules/edit_comment.php', 'Edit Comment', '', 1, 'No', 'On', 'form3.png', 0),
(171, 'View comment', 'modules/listview_comment.php', 'Comment', '', 1, 'Yes', 'On', 'form3.png', 0),
(172, 'Delete comment', 'modules/delete_comment.php', 'Delete Comment', '', 1, 'No', 'On', 'form3.png', 0),
(173, 'Add company', 'modules/add_company.php', 'Add Company', '', 1, 'No', 'On', 'form3.png', 0),
(174, 'Edit company', 'modules/edit_company.php', 'Edit Company', '', 1, 'No', 'On', 'form3.png', 0),
(175, 'View company', 'modules/listview_company.php', 'Company', '', 1, 'Yes', 'On', 'form3.png', 0),
(176, 'Delete company', 'modules/delete_company.php', 'Delete Company', '', 1, 'No', 'On', 'form3.png', 0),
(177, 'Add companybranch', 'modules/add_companybranch.php', 'Add Companybranch', '', 1, 'No', 'On', 'form3.png', 0),
(178, 'Edit companybranch', 'modules/edit_companybranch.php', 'Edit Companybranch', '', 1, 'No', 'On', 'form3.png', 0),
(179, 'View companybranch', 'modules/listview_companybranch.php', 'Companybranch', '', 1, 'Yes', 'On', 'form3.png', 0),
(180, 'Delete companybranch', 'modules/delete_companybranch.php', 'Delete Companybranch', '', 1, 'No', 'On', 'form3.png', 0),
(181, 'Add companycontact', 'modules/add_companycontact.php', 'Add Companycontact', '', 1, 'No', 'On', 'form3.png', 0),
(182, 'Edit companycontact', 'modules/edit_companycontact.php', 'Edit Companycontact', '', 1, 'No', 'On', 'form3.png', 0),
(183, 'View companycontact', 'modules/listview_companycontact.php', 'Companycontact', '', 1, 'Yes', 'On', 'form3.png', 0),
(184, 'Delete companycontact', 'modules/delete_companycontact.php', 'Delete Companycontact', '', 1, 'No', 'On', 'form3.png', 0),
(185, 'Add contact', 'modules/add_contact.php', 'Add Contact', '', 1, 'No', 'On', 'form3.png', 0),
(186, 'Edit contact', 'modules/edit_contact.php', 'Edit Contact', '', 1, 'No', 'On', 'form3.png', 0),
(187, 'View contact', 'modules/listview_contact.php', 'Contact', '', 1, 'Yes', 'On', 'form3.png', 0),
(188, 'Delete contact', 'modules/delete_contact.php', 'Delete Contact', '', 1, 'No', 'On', 'form3.png', 0),
(189, 'Add employmentstatus', 'modules/add_employmentstatus.php', 'Add Employmentstatus', '', 1, 'No', 'On', 'form3.png', 0),
(190, 'Edit employmentstatus', 'modules/edit_employmentstatus.php', 'Edit Employmentstatus', '', 1, 'No', 'On', 'form3.png', 0),
(191, 'View employmentstatus', 'modules/listview_employmentstatus.php', 'Employmentstatus', '', 1, 'Yes', 'On', 'form3.png', 0),
(192, 'Delete employmentstatus', 'modules/delete_employmentstatus.php', 'Delete Employmentstatus', '', 1, 'No', 'On', 'form3.png', 0),
(193, 'Add eval dtl', 'modules/add_eval_dtl.php', 'Add Eval Dtl', '', 1, 'No', 'On', 'form3.png', 0),
(194, 'Edit eval dtl', 'modules/edit_eval_dtl.php', 'Edit Eval Dtl', '', 1, 'No', 'On', 'form3.png', 0),
(195, 'View eval dtl', 'modules/listview_eval_dtl.php', 'Eval Dtl', '', 1, 'Yes', 'On', 'form3.png', 0),
(196, 'Delete eval dtl', 'modules/delete_eval_dtl.php', 'Delete Eval Dtl', '', 1, 'No', 'On', 'form3.png', 0),
(197, 'Add eval hdr', 'modules/add_eval_hdr.php', 'Add Eval Hdr', '', 1, 'No', 'On', 'form3.png', 0),
(198, 'Edit eval hdr', 'modules/edit_eval_hdr.php', 'Edit Eval Hdr', '', 1, 'No', 'On', 'form3.png', 0),
(199, 'View eval hdr', 'modules/listview_eval_hdr.php', 'Eval Hdr', '', 1, 'Yes', 'On', 'form3.png', 0),
(200, 'Delete eval hdr', 'modules/delete_eval_hdr.php', 'Delete Eval Hdr', '', 1, 'No', 'On', 'form3.png', 0),
(201, 'Add final paper dtl', 'modules/add_final_paper_dtl.php', 'Add Final Paper Dtl', '', 1, 'No', 'On', 'form3.png', 0),
(202, 'Edit final paper dtl', 'modules/edit_final_paper_dtl.php', 'Edit Final Paper Dtl', '', 1, 'No', 'On', 'form3.png', 0),
(203, 'View final paper dtl', 'modules/listview_final_paper_dtl.php', 'Final Paper Dtl', '', 1, 'Yes', 'On', 'form3.png', 0),
(204, 'Delete final paper dtl', 'modules/delete_final_paper_dtl.php', 'Delete Final Paper Dtl', '', 1, 'No', 'On', 'form3.png', 0),
(205, 'Add final paper hdr', 'modules/add_final_paper_hdr.php', 'Add Final Paper Hdr', '', 1, 'No', 'On', 'form3.png', 0),
(206, 'Edit final paper hdr', 'modules/edit_final_paper_hdr.php', 'Edit Final Paper Hdr', '', 1, 'No', 'On', 'form3.png', 0),
(207, 'View final paper hdr', 'modules/listview_final_paper_hdr.php', 'Final Paper Hdr', '', 1, 'Yes', 'On', 'form3.png', 0),
(208, 'Delete final paper hdr', 'modules/delete_final_paper_hdr.php', 'Delete Final Paper Hdr', '', 1, 'No', 'On', 'form3.png', 0),
(209, 'Add industrysector', 'modules/add_industrysector.php', 'Add Industrysector', '', 1, 'No', 'On', 'form3.png', 0),
(210, 'Edit industrysector', 'modules/edit_industrysector.php', 'Edit Industrysector', '', 1, 'No', 'On', 'form3.png', 0),
(211, 'View industrysector', 'modules/listview_industrysector.php', 'Industrysector', '', 1, 'Yes', 'On', 'form3.png', 0),
(212, 'Delete industrysector', 'modules/delete_industrysector.php', 'Delete Industrysector', '', 1, 'No', 'On', 'form3.png', 0),
(213, 'Add internassignment', 'modules/add_internassignment.php', 'Add Internassignment', '', 1, 'No', 'On', 'form3.png', 0),
(214, 'Edit internassignment', 'modules/edit_internassignment.php', 'Edit Internassignment', '', 1, 'No', 'On', 'form3.png', 0),
(215, 'View internassignment', 'modules/listview_internassignment.php', 'Internassignment', '', 1, 'Yes', 'On', 'form3.png', 0),
(216, 'Delete internassignment', 'modules/delete_internassignment.php', 'Delete Internassignment', '', 1, 'No', 'On', 'form3.png', 0),
(217, 'Add post', 'modules/add_post.php', 'Add Post', '', 1, 'No', 'On', 'form3.png', 0),
(218, 'Edit post', 'modules/edit_post.php', 'Edit Post', '', 1, 'No', 'On', 'form3.png', 0),
(219, 'View post', 'modules/listview_post.php', 'Post', '', 1, 'Yes', 'On', 'form3.png', 0),
(220, 'Delete post', 'modules/delete_post.php', 'Delete Post', '', 1, 'No', 'On', 'form3.png', 0),
(221, 'Add questionnaire', 'modules/add_questionnaire.php', 'Add Questionnaire', '', 1, 'No', 'On', 'form3.png', 0),
(222, 'Edit questionnaire', 'modules/edit_questionnaire.php', 'Edit Questionnaire', '', 1, 'No', 'On', 'form3.png', 0),
(223, 'View questionnaire', 'modules/listview_questionnaire.php', 'Questionnaire', '', 1, 'Yes', 'On', 'form3.png', 0),
(224, 'Delete questionnaire', 'modules/delete_questionnaire.php', 'Delete Questionnaire', '', 1, 'No', 'On', 'form3.png', 0),
(225, 'Add refstudent', 'modules/add_refstudent.php', 'Add Refstudent', '', 1, 'No', 'On', 'form3.png', 0),
(226, 'Edit refstudent', 'modules/edit_refstudent.php', 'Edit Refstudent', '', 1, 'No', 'On', 'form3.png', 0),
(227, 'View refstudent', 'modules/listview_refstudent.php', 'Refstudent', '', 1, 'Yes', 'On', 'form3.png', 0),
(228, 'Delete refstudent', 'modules/delete_refstudent.php', 'Delete Refstudent', '', 1, 'No', 'On', 'form3.png', 0),
(229, 'Add resume dtl', 'modules/add_resume_dtl.php', 'Add Resume Dtl', '', 1, 'No', 'On', 'form3.png', 0),
(230, 'Edit resume dtl', 'modules/edit_resume_dtl.php', 'Edit Resume Dtl', '', 1, 'No', 'On', 'form3.png', 0),
(231, 'View resume dtl', 'modules/listview_resume_dtl.php', 'Resume Dtl', '', 1, 'Yes', 'On', 'form3.png', 0),
(232, 'Delete resume dtl', 'modules/delete_resume_dtl.php', 'Delete Resume Dtl', '', 1, 'No', 'On', 'form3.png', 0),
(233, 'Add resume hdr', 'modules/add_resume_hdr.php', 'Add Resume Hdr', '', 1, 'No', 'On', 'form3.png', 0),
(234, 'Edit resume hdr', 'modules/edit_resume_hdr.php', 'Edit Resume Hdr', '', 1, 'No', 'On', 'form3.png', 0),
(235, 'View resume hdr', 'modules/listview_resume_hdr.php', 'Resume Hdr', '', 1, 'Yes', 'On', 'form3.png', 0),
(236, 'Delete resume hdr', 'modules/delete_resume_hdr.php', 'Delete Resume Hdr', '', 1, 'No', 'On', 'form3.png', 0),
(237, 'Add schoolcourse', 'modules/add_schoolcourse.php', 'Add Schoolcourse', '', 1, 'No', 'On', 'form3.png', 0),
(238, 'Edit schoolcourse', 'modules/edit_schoolcourse.php', 'Edit Schoolcourse', '', 1, 'No', 'On', 'form3.png', 0),
(239, 'View schoolcourse', 'modules/listview_schoolcourse.php', 'Schoolcourse', '', 1, 'Yes', 'On', 'form3.png', 0),
(240, 'Delete schoolcourse', 'modules/delete_schoolcourse.php', 'Delete Schoolcourse', '', 1, 'No', 'On', 'form3.png', 0),
(241, 'Add final paper dtl', 'modules/add_final_paper_dtl.php', 'Add Final Paper Dtl', '', 1, 'No', 'On', 'form3.png', 0),
(242, 'Edit final paper dtl', 'modules/edit_final_paper_dtl.php', 'Edit Final Paper Dtl', '', 1, 'No', 'On', 'form3.png', 0),
(243, 'View final paper dtl', 'modules/listview_final_paper_dtl.php', 'Final Paper Dtl', '', 1, 'Yes', 'On', 'form3.png', 0),
(244, 'Delete final paper dtl', 'modules/delete_final_paper_dtl.php', 'Delete Final Paper Dtl', '', 1, 'No', 'On', 'form3.png', 0),
(245, 'Add final paper hdr', 'modules/add_final_paper_hdr.php', 'Add Final Paper Hdr', '', 1, 'No', 'On', 'form3.png', 0),
(246, 'Edit final paper hdr', 'modules/edit_final_paper_hdr.php', 'Edit Final Paper Hdr', '', 1, 'No', 'On', 'form3.png', 0),
(247, 'View final paper hdr', 'modules/listview_final_paper_hdr.php', 'Final Paper Hdr', '', 1, 'Yes', 'On', 'form3.png', 0),
(248, 'Delete final paper hdr', 'modules/delete_final_paper_hdr.php', 'Delete Final Paper Hdr', '', 1, 'No', 'On', 'form3.png', 0),
(249, 'Add refstudent', 'modules/add_refstudent.php', 'Add Refstudent', '', 1, 'No', 'On', 'form3.png', 0),
(250, 'Edit refstudent', 'modules/edit_refstudent.php', 'Edit Refstudent', '', 1, 'No', 'On', 'form3.png', 0),
(251, 'View refstudent', 'modules/listview_refstudent.php', 'Refstudent', '', 1, 'Yes', 'On', 'form3.png', 0),
(252, 'Delete refstudent', 'modules/delete_refstudent.php', 'Delete Refstudent', '', 1, 'No', 'On', 'form3.png', 0),
(253, 'Add refstudent', 'modules/add_refstudent.php', 'Add Refstudent', '', 1, 'No', 'On', 'form3.png', 0),
(254, 'Edit refstudent', 'modules/edit_refstudent.php', 'Edit Refstudent', '', 1, 'No', 'On', 'form3.png', 0),
(255, 'View refstudent', 'modules/listview_refstudent.php', 'Refstudent', '', 1, 'Yes', 'On', 'form3.png', 0),
(256, 'Delete refstudent', 'modules/delete_refstudent.php', 'Delete Refstudent', '', 1, 'No', 'On', 'form3.png', 0);

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
('apcinternhead', 35),
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
('apcinternhead', 91),
('apcinternhead', 95),
('apcinternhead', 99),
('apcinternhead', 102),
('apcinternhead', 103),
('apcinternhead', 105),
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
('apcinternhead', 127),
('apcinternhead', 131),
('apcinternhead', 135),
('apcinternhead', 167),
('apcinternhead', 170),
('apcinternhead', 171),
('apcinternhead', 173),
('apcinternhead', 174),
('apcinternhead', 175),
('apcinternhead', 176),
('apcinternhead', 177),
('apcinternhead', 178),
('apcinternhead', 179),
('apcinternhead', 180),
('apcinternhead', 181),
('apcinternhead', 182),
('apcinternhead', 183),
('apcinternhead', 184),
('apcinternhead', 185),
('apcinternhead', 186),
('apcinternhead', 187),
('apcinternhead', 188),
('apcinternhead', 195),
('apcinternhead', 199),
('apcinternhead', 203),
('apcinternhead', 206),
('apcinternhead', 207),
('apcinternhead', 209),
('apcinternhead', 210),
('apcinternhead', 211),
('apcinternhead', 213),
('apcinternhead', 214),
('apcinternhead', 215),
('apcinternhead', 217),
('apcinternhead', 218),
('apcinternhead', 219),
('apcinternhead', 220),
('apcinternhead', 221),
('apcinternhead', 222),
('apcinternhead', 223),
('apcinternhead', 224),
('apcinternhead', 227),
('apcinternhead', 231),
('apcinternhead', 235),
('apcinternhead', 239),
('apcinternhead', 243),
('apcinternhead', 246),
('apcinternhead', 247),
('apcinternhead', 251),
('apcinternhead', 255),
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
('cvolalo', 98),
('cvolalo', 99),
('cvolalo', 102),
('cvolalo', 103),
('cvolalo', 115),
('cvolalo', 125),
('cvolalo', 126),
('cvolalo', 127),
('cvolalo', 129),
('cvolalo', 130),
('cvolalo', 131),
('cvolalo', 137),
('cvolalo', 138),
('cvolalo', 139),
('cvolalo', 165),
('cvolalo', 166),
('cvolalo', 167),
('cvolalo', 169),
('cvolalo', 170),
('cvolalo', 171),
('cvolalo', 195),
('cvolalo', 199),
('cvolalo', 202),
('cvolalo', 203),
('cvolalo', 206),
('cvolalo', 207),
('cvolalo', 219),
('cvolalo', 229),
('cvolalo', 230),
('cvolalo', 231),
('cvolalo', 233),
('cvolalo', 234),
('cvolalo', 235),
('cvolalo', 242),
('cvolalo', 243),
('cvolalo', 246),
('cvolalo', 247),
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
('lbhocosol', 125),
('lbhocosol', 126),
('lbhocosol', 127),
('lbhocosol', 129),
('lbhocosol', 130),
('lbhocosol', 131),
('lbhocosol', 137),
('lbhocosol', 138),
('lbhocosol', 139),
('lbhocosol', 165),
('lbhocosol', 166),
('lbhocosol', 167),
('lbhocosol', 169),
('lbhocosol', 170),
('lbhocosol', 171),
('lbhocosol', 195),
('lbhocosol', 199),
('lbhocosol', 201),
('lbhocosol', 202),
('lbhocosol', 203),
('lbhocosol', 205),
('lbhocosol', 206),
('lbhocosol', 207),
('lbhocosol', 219),
('lbhocosol', 229),
('lbhocosol', 230),
('lbhocosol', 231),
('lbhocosol', 233),
('lbhocosol', 234),
('lbhocosol', 235),
('lbhocosol', 241),
('lbhocosol', 242),
('lbhocosol', 243),
('lbhocosol', 245),
('lbhocosol', 246),
('lbhocosol', 247),
('matrasmonte', 33),
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
('matrasmonte', 125),
('matrasmonte', 126),
('matrasmonte', 127),
('matrasmonte', 129),
('matrasmonte', 130),
('matrasmonte', 131),
('matrasmonte', 137),
('matrasmonte', 139),
('matrasmonte', 165),
('matrasmonte', 166),
('matrasmonte', 167),
('matrasmonte', 169),
('matrasmonte', 170),
('matrasmonte', 171),
('matrasmonte', 195),
('matrasmonte', 199),
('matrasmonte', 201),
('matrasmonte', 202),
('matrasmonte', 203),
('matrasmonte', 205),
('matrasmonte', 206),
('matrasmonte', 207),
('matrasmonte', 217),
('matrasmonte', 219),
('matrasmonte', 229),
('matrasmonte', 230),
('matrasmonte', 231),
('matrasmonte', 233),
('matrasmonte', 234),
('matrasmonte', 235),
('matrasmonte', 241),
('matrasmonte', 242),
('matrasmonte', 243),
('matrasmonte', 245),
('matrasmonte', 246),
('matrasmonte', 247),
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `final_paper_hdr`
--
ALTER TABLE `final_paper_hdr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `person`
--
ALTER TABLE `person`
  MODIFY `person_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `questionnaire`
--
ALTER TABLE `questionnaire`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=63;
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
  MODIFY `entry_id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=314;
--
-- AUTO_INCREMENT for table `system_skins`
--
ALTER TABLE `system_skins`
  MODIFY `skin_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `user_links`
--
ALTER TABLE `user_links`
  MODIFY `link_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=257;
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

-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 02, 2015 at 05:02 PM
-- Server version: 5.6.25
-- PHP Version: 5.6.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cobalt`
--

-- --------------------------------------------------------

--
-- Table structure for table `database_connection`
--

CREATE TABLE IF NOT EXISTS `database_connection` (
  `DB_Connection_ID` char(44) NOT NULL,
  `Project_ID` char(44) NOT NULL,
  `DB_Connection_Name` varchar(255) NOT NULL,
  `Hostname` varchar(255) NOT NULL,
  `Username` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Database` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `database_connection`
--

INSERT INTO `database_connection` (`DB_Connection_ID`, `Project_ID`, `DB_Connection_Name`, `Hostname`, `Username`, `Password`, `Database`) VALUES
('qQN7qkwuBDX3DyY+4zcu7w', '7RTC0uvD/FfelekI+YWo/Q', 'con1', 'localhost', 'root', '', 'apc-cpo'),
('El8rKeSO3Gmt23QIROrxMg', '7RTC0uvD/FfelekI+YWo/Q', 'con2', 'localhost', 'root', '', 'accom'),
('aKdSFmKKYdegcRVnhj3sVA', '7RTC0uvD/FfelekI+YWo/Q', 'con3', 'localhost', 'root', '', 'refstudent');

-- --------------------------------------------------------

--
-- Table structure for table `page`
--

CREATE TABLE IF NOT EXISTS `page` (
  `Page_ID` char(44) NOT NULL,
  `Page_Name` varchar(255) NOT NULL,
  `Generator` varchar(255) NOT NULL,
  `Description` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `page`
--

INSERT INTO `page` (`Page_ID`, `Page_Name`, `Generator`, `Description`) VALUES
('+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'Add1', 'Add1.php', 'Standard input form'),
('alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'Edit1', 'Edit1.php', 'Standard edit form'),
('AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'DetailView1', 'DetailView1.php', 'Detail View of a record'),
('Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'ListView', 'ListView1.php', 'List View of a table'),
('qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'Delete1', 'Delete1.php', 'Standard record deletion page'),
('DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'CSVExport1', 'CSVExport1.php', 'Standard export data to CSV module'),
('X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'ReporterInterface1', 'ReporterInterface1.php', 'Default "custom reporting tool" interface'),
('/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'ReporterResult1', 'ReporterResult1.php', 'Default "custom reporting tool" result page'),
('EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'ReporterResultPDF1', 'ReporterResultPDF1.php', 'Default "custom reporting tool" PDF result');

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE IF NOT EXISTS `project` (
  `Project_ID` char(44) NOT NULL,
  `Project_Name` varchar(255) NOT NULL,
  `Client_Name` varchar(255) NOT NULL,
  `Project_Description` text NOT NULL,
  `Base_Directory` varchar(255) NOT NULL,
  `Database_Connection_ID` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`Project_ID`, `Project_Name`, `Client_Name`, `Project_Description`, `Base_Directory`, `Database_Connection_ID`) VALUES
('7RTC0uvD/FfelekI+YWo/Q', 'apc-io', 'Internship Head', 'This is a microsite wherein the students and the internship head communicate with each other during the internship period.', 'apc-io', 'qQN7qkwuBDX3DyY+4zcu7w');

-- --------------------------------------------------------

--
-- Table structure for table `table`
--

CREATE TABLE IF NOT EXISTS `table` (
  `Table_ID` char(44) NOT NULL,
  `Project_ID` char(44) NOT NULL,
  `DB_Connection_ID` varchar(255) NOT NULL,
  `Table_Name` varchar(255) NOT NULL,
  `Remarks` tinytext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table`
--

INSERT INTO `table` (`Table_ID`, `Project_ID`, `DB_Connection_ID`, `Table_Name`, `Remarks`) VALUES
('t3A2I6BuOVfyXQ3zPd4skA', '7RTC0uvD/FfelekI+YWo/Q', 'qQN7qkwuBDX3DyY+4zcu7w', 'accomplishment', ''),
('Qaa3zxbQPGzQKjos9oUdWw', '7RTC0uvD/FfelekI+YWo/Q', 'qQN7qkwuBDX3DyY+4zcu7w', 'attendance', ''),
('x2xKazfIzPTFnBofuxoyCQ', '7RTC0uvD/FfelekI+YWo/Q', 'qQN7qkwuBDX3DyY+4zcu7w', 'comment', ''),
('4ChS65s12L/wJfkxCe9YJg', '7RTC0uvD/FfelekI+YWo/Q', 'qQN7qkwuBDX3DyY+4zcu7w', 'eval_dtl', ''),
('p9PkUAJsS7Ady3U7kFFQxQ', '7RTC0uvD/FfelekI+YWo/Q', 'qQN7qkwuBDX3DyY+4zcu7w', 'eval_hdr', ''),
('5YcGFQEgi8sHtqOcouWEfg', '7RTC0uvD/FfelekI+YWo/Q', 'qQN7qkwuBDX3DyY+4zcu7w', 'final_paper_dtl', ''),
('B81YJDaIXjWs3Dhzr7rd6w', '7RTC0uvD/FfelekI+YWo/Q', 'qQN7qkwuBDX3DyY+4zcu7w', 'final_paper_hdr', ''),
('tfvxqzBiG2ETSc5kVlUSKQ', '7RTC0uvD/FfelekI+YWo/Q', 'qQN7qkwuBDX3DyY+4zcu7w', 'post', ''),
('DjXmsYCcvu7237l9uzYiQg', '7RTC0uvD/FfelekI+YWo/Q', 'qQN7qkwuBDX3DyY+4zcu7w', 'questionnaire', ''),
('DttbcqhoelFHOEJPBCRp6w', '7RTC0uvD/FfelekI+YWo/Q', 'qQN7qkwuBDX3DyY+4zcu7w', 'resume_dtl', ''),
('vJEGFHbd88WRDkT958XzBA', '7RTC0uvD/FfelekI+YWo/Q', 'qQN7qkwuBDX3DyY+4zcu7w', 'resume_hdr', ''),
('PSO/92YdJK+agKhLLbRRVA', '7RTC0uvD/FfelekI+YWo/Q', 'El8rKeSO3Gmt23QIROrxMg', 'alumniaddress', ''),
('O5M0sBj+c+1OvvaSM79Ghw', '7RTC0uvD/FfelekI+YWo/Q', 'El8rKeSO3Gmt23QIROrxMg', 'alumniemplmove', ''),
('4bOnHW84Apl2fQ+ryIKUpA', '7RTC0uvD/FfelekI+YWo/Q', 'El8rKeSO3Gmt23QIROrxMg', 'alumniemplrecord', ''),
('Rwn7Yvun/V6nb1EEkR8+XQ', '7RTC0uvD/FfelekI+YWo/Q', 'El8rKeSO3Gmt23QIROrxMg', 'alumnifurtherstudies', ''),
('4LcgygmNCm4Nb+HXUgswAg', '7RTC0uvD/FfelekI+YWo/Q', 'El8rKeSO3Gmt23QIROrxMg', 'alumniinfo', ''),
('waify5HOiXjy34ZHtvsmJw', '7RTC0uvD/FfelekI+YWo/Q', 'El8rKeSO3Gmt23QIROrxMg', 'alumniprofqualification', ''),
('yN0DJE4um2+326So7rjsog', '7RTC0uvD/FfelekI+YWo/Q', 'El8rKeSO3Gmt23QIROrxMg', 'company', ''),
('5y+7FC4RfpDe8jEZxPdR6A', '7RTC0uvD/FfelekI+YWo/Q', 'El8rKeSO3Gmt23QIROrxMg', 'companybranch', ''),
('EzPQTu2T0wFBPOCfaZZj+w', '7RTC0uvD/FfelekI+YWo/Q', 'El8rKeSO3Gmt23QIROrxMg', 'companycontact', ''),
('xCrmPZQevR9GoG8+LuVUfA', '7RTC0uvD/FfelekI+YWo/Q', 'El8rKeSO3Gmt23QIROrxMg', 'contact', ''),
('x7UZl3LjuUut/FYB+/Hw8g', '7RTC0uvD/FfelekI+YWo/Q', 'El8rKeSO3Gmt23QIROrxMg', 'employmentstatus', ''),
('0siZqGcqCzfeqylqN8eQ3g', '7RTC0uvD/FfelekI+YWo/Q', 'El8rKeSO3Gmt23QIROrxMg', 'industrysector', ''),
('CcMUnL8uUi/t4SX+BTxfBA', '7RTC0uvD/FfelekI+YWo/Q', 'El8rKeSO3Gmt23QIROrxMg', 'internassignment', ''),
('LUc0D0sjZZ8OAA3hhOG8og', '7RTC0uvD/FfelekI+YWo/Q', 'El8rKeSO3Gmt23QIROrxMg', 'schoolcourse', ''),
('jsWaTObO0RovXzr6ukG3Ew', '7RTC0uvD/FfelekI+YWo/Q', 'aKdSFmKKYdegcRVnhj3sVA', 'refstudent', '');

-- --------------------------------------------------------

--
-- Table structure for table `table_fields`
--

CREATE TABLE IF NOT EXISTS `table_fields` (
  `Field_ID` char(44) NOT NULL,
  `Table_ID` char(44) NOT NULL,
  `Field_Name` varchar(255) NOT NULL,
  `Data_Type` varchar(255) NOT NULL,
  `Nullable` varchar(255) NOT NULL,
  `Length` int(11) NOT NULL,
  `Attribute` varchar(255) NOT NULL,
  `Auto_Increment` char(1) NOT NULL,
  `Control_Type` varchar(255) NOT NULL,
  `Label` varchar(255) NOT NULL,
  `In_Listview` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table_fields`
--

INSERT INTO `table_fields` (`Field_ID`, `Table_ID`, `Field_Name`, `Data_Type`, `Nullable`, `Length`, `Attribute`, `Auto_Increment`, `Control_Type`, `Label`, `In_Listview`) VALUES
('SCmLXDb/rAU+bltqN+uKzg', 't3A2I6BuOVfyXQ3zPd4skA', 'id', 'integer', 'NO', 11, 'primary key', 'Y', 'none', 'ID', 'no'),
('iF8AG+wRsR9vv8h+ejSRbg', 't3A2I6BuOVfyXQ3zPd4skA', 'student_id', 'varchar', 'NO', 11, '', 'N', 'textbox', 'Student ID', 'yes'),
('n3fRAr1JlbB0iZE77H+7EQ', 't3A2I6BuOVfyXQ3zPd4skA', 'date', 'date', 'NO', 0, '', 'N', 'date controls', 'Date', 'yes'),
('ItTklN+dyzaU6hW7/70uug', 't3A2I6BuOVfyXQ3zPd4skA', 'accomplishment', 'varchar', 'NO', 255, '', 'N', 'textbox', 'Accomplishment', 'yes'),
('5PMi7IpxVOJ9rqmCqzvg0w', 'Qaa3zxbQPGzQKjos9oUdWw', 'id', 'integer', 'NO', 11, 'primary key', 'Y', 'none', 'ID', 'no'),
('JrY8EYzQaEj3GAXDi8dT0A', 'Qaa3zxbQPGzQKjos9oUdWw', 'date', 'date', 'NO', 0, '', 'N', 'date controls', 'Date', 'yes'),
('5F6yFq4FeXe/iyeLYcqa9A', 'Qaa3zxbQPGzQKjos9oUdWw', 'time_in', 'varchar', 'NO', 255, '', 'N', 'textbox', 'Time In', 'yes'),
('OjQtobqVrMkOvXsT19Sd5A', 'Qaa3zxbQPGzQKjos9oUdWw', 'time_out', 'varchar', 'NO', 255, '', 'N', 'textbox', 'Time Out', 'yes'),
('Pul3MrKDGp+TA7/nhYIC3A', 'Qaa3zxbQPGzQKjos9oUdWw', 'student_id', 'varchar', 'NO', 11, '', 'N', 'textbox', 'Student ID', 'yes'),
('bd2scDWvuA3iQArwaC6qng', 'Qaa3zxbQPGzQKjos9oUdWw', 'hr_head', 'varchar', 'NO', 255, '', 'N', 'textbox', 'Hr Head', 'yes'),
('YmA31isEy4hmSIR/3xfhzA', 'x2xKazfIzPTFnBofuxoyCQ', 'id', 'integer', 'NO', 11, 'primary key', 'Y', 'none', 'ID', 'no'),
('bmUVD76vsQo3d6Guy9U03w', 'x2xKazfIzPTFnBofuxoyCQ', 'body', 'text', 'NO', 0, '', 'N', 'textarea', 'Body', 'yes'),
('uHoml7em96gB0KUOjcMBTw', 'x2xKazfIzPTFnBofuxoyCQ', 'date', 'date', 'NO', 0, '', 'N', 'date controls', 'Date', 'yes'),
('dXJaLg2O8lMtCqQcqdPqJQ', 'x2xKazfIzPTFnBofuxoyCQ', 'person_id', 'integer', 'NO', 11, '', 'N', 'textbox', 'Person ID', 'yes'),
('4nsmlpCkX5eukH2PKM+nJg', 'x2xKazfIzPTFnBofuxoyCQ', 'post_id', 'integer', 'NO', 11, '', 'N', 'textbox', 'Post ID', 'yes'),
('uYUMasRGDt/k/CCnB73y6g', '4ChS65s12L/wJfkxCe9YJg', 'id', 'integer', 'NO', 11, 'primary key', 'Y', 'none', 'ID', 'no'),
('big7LSUFz90T2RrApvllrQ', '4ChS65s12L/wJfkxCe9YJg', 'questionnaire_id', 'integer', 'NO', 11, '', 'N', 'textbox', 'Questionnaire ID', 'yes'),
('UCEcrknZIiT0nmwV7pAuFg', '4ChS65s12L/wJfkxCe9YJg', 'eval_hdr_id', 'integer', 'NO', 11, 'foreign key', 'N', 'textbox', 'Eval Hdr ID', 'yes'),
('9IOZazJ2STFUET3RvpHcXQ', '4ChS65s12L/wJfkxCe9YJg', 'response_rating', 'integer', 'NO', 11, '', 'N', 'textbox', 'Response Rating', 'yes'),
('J+VBaALyWcVYQ3UB3B3kZA', '4ChS65s12L/wJfkxCe9YJg', 'response_detail', 'text', 'YES', 0, '', 'N', 'textarea', 'Response Detail', 'yes'),
('Kyt5KqLMS50vb0l++R3dlQ', 'p9PkUAJsS7Ady3U7kFFQxQ', 'id', 'integer', 'NO', 11, 'primary key', 'Y', 'none', 'ID', 'no'),
('3vTPec/af+76Zf4S9F6J6Q', 'p9PkUAJsS7Ady3U7kFFQxQ', 'student_id', 'varchar', 'NO', 11, '', 'N', 'textbox', 'Student ID', 'yes'),
('oLaXUVSLjH50e/8luh37Og', 'p9PkUAJsS7Ady3U7kFFQxQ', 'date_submit', 'date', 'NO', 0, '', 'N', 'date controls', 'Date Submit', 'yes'),
('w3ScbkUqtDVntRia0CgFiA', 'p9PkUAJsS7Ady3U7kFFQxQ', 'date_eval', 'date', 'NO', 0, '', 'N', 'date controls', 'Date Eval', 'yes'),
('zabVbOdZcqBWgQtSFNVsAQ', 'p9PkUAJsS7Ady3U7kFFQxQ', 'school_yr', 'varchar', 'NO', 255, '', 'N', 'textbox', 'School Yr', 'yes'),
('mL/+XKnQ7cwqUrd+HV1rHw', 'p9PkUAJsS7Ady3U7kFFQxQ', 'date_discussed', 'date', 'NO', 0, '', 'N', 'date controls', 'Date Discussed', 'yes'),
('5VQ39+ad4Zg1hbTAROf7Mw', 'p9PkUAJsS7Ady3U7kFFQxQ', 'subj', 'varchar', 'NO', 45, '', 'N', 'textbox', 'Subj', 'yes'),
('B9aVpmYO16JuW3ZRWJsuxg', 'p9PkUAJsS7Ady3U7kFFQxQ', 'industry_prof', 'varchar', 'NO', 255, '', 'N', 'textbox', 'Industry Prof', 'yes'),
('Qu65rihpX+Wv/Kjxo65VdA', 'p9PkUAJsS7Ady3U7kFFQxQ', 'rcv_by', 'varchar', 'NO', 255, '', 'N', 'textbox', 'Rcv By', 'yes'),
('5nQTPjIN73wQVinFjjUlog', 'p9PkUAJsS7Ady3U7kFFQxQ', 'rcv_date', 'date', 'NO', 0, '', 'N', 'date controls', 'Rcv Date', 'yes'),
('qlxdiTqZYAgg/Y5PNdKQeg', '5YcGFQEgi8sHtqOcouWEfg', 'id', 'integer', 'NO', 11, 'primary key', 'Y', 'none', 'ID', 'no'),
('4oUKKJGzUP9luCUIf650pg', '5YcGFQEgi8sHtqOcouWEfg', 'final_paper_hdr_id', 'integer', 'NO', 11, 'foreign key', 'N', 'textbox', 'Final Paper Hdr ID', 'yes'),
('tNBBmZWrM3jrlMPc3/rWTg', '5YcGFQEgi8sHtqOcouWEfg', 'questionnaire_id', 'integer', 'NO', 11, '', 'N', 'textbox', 'Questionnaire ID', 'yes'),
('pGYQMw2Auv7E3CA3Rb/dqQ', '5YcGFQEgi8sHtqOcouWEfg', 'response', 'text', 'NO', 0, '', 'N', 'textarea', 'Response', 'yes'),
('CxlOIAx9KjRFuZiJcH1PJw', 'B81YJDaIXjWs3Dhzr7rd6w', 'id', 'integer', 'NO', 11, 'primary key', 'Y', 'none', 'ID', 'no'),
('SQFFJU2FjXFbItI9S/G97g', 'B81YJDaIXjWs3Dhzr7rd6w', 'student_id', 'varchar', 'NO', 11, '', 'N', 'textbox', 'Student ID', 'yes'),
('yE47mCcj15BDXd8rU0PAmQ', 'B81YJDaIXjWs3Dhzr7rd6w', 'attachment', 'varchar', 'YES', 255, '', 'N', 'textbox', 'Attachment', 'yes'),
('j0WqDQGujIscz/g2CbFPmw', 'B81YJDaIXjWs3Dhzr7rd6w', 'date_submitted', 'date', 'NO', 0, '', 'N', 'date controls', 'Date Submitted', 'yes'),
('7C16T/qkRqx8jWr3LO37zQ', 'B81YJDaIXjWs3Dhzr7rd6w', 'rating', 'integer', 'YES', 11, '', 'N', 'textbox', 'Rating', 'yes'),
('7HebZBHYy0OkHRK2aAmC6w', 'B81YJDaIXjWs3Dhzr7rd6w', 'rcv_by', 'varchar', 'NO', 255, '', 'N', 'textbox', 'Rcv By', 'yes'),
('MHcdOneZCzzh9n6MlwXrSg', 'B81YJDaIXjWs3Dhzr7rd6w', 'rcv_date', 'date', 'NO', 0, '', 'N', 'date controls', 'Rcv Date', 'yes'),
('WVlm92fnHOAhpdHnRNNQXg', 'B81YJDaIXjWs3Dhzr7rd6w', 'subj', 'varchar', 'NO', 45, '', 'N', 'textbox', 'Subj', 'yes'),
('BYlkbi5ZxQPFmiUSzFVg3w', 'tfvxqzBiG2ETSc5kVlUSKQ', 'id', 'integer', 'NO', 11, 'primary key', 'Y', 'none', 'ID', 'no'),
('XoSynVAS7uuaS+6wcpr1ZA', 'tfvxqzBiG2ETSc5kVlUSKQ', 'title', 'varchar', 'NO', 255, '', 'N', 'textbox', 'Title', 'yes'),
('zeICrUJ/kDS10MhfMFPCzQ', 'tfvxqzBiG2ETSc5kVlUSKQ', 'date', 'date', 'NO', 0, '', 'N', 'date controls', 'Date', 'yes'),
('DsXVyRe02BuGowXSS5XeLg', 'tfvxqzBiG2ETSc5kVlUSKQ', 'body', 'varchar', 'NO', 255, '', 'N', 'textbox', 'Body', 'yes'),
('i8FhW3BVsPmVTqjpEmLTQQ', 'tfvxqzBiG2ETSc5kVlUSKQ', 'attach_file', 'varchar', 'YES', 255, '', 'N', 'textbox', 'Attach File', 'yes'),
('lYaUvCYq2FYCFgMfbB5ong', 'tfvxqzBiG2ETSc5kVlUSKQ', 'upload_file', 'varchar', 'YES', 255, '', 'N', 'textbox', 'Upload File', 'yes'),
('avZ1s8zR1rPR+CRQMpG2Uw', 'tfvxqzBiG2ETSc5kVlUSKQ', 'person_id', 'integer', 'NO', 11, '', 'N', 'textbox', 'Person ID', 'yes'),
('N2TEJ7mE9FvOMlknhDD2Hw', 'DjXmsYCcvu7237l9uzYiQg', 'id', 'integer', 'NO', 11, 'primary key', 'Y', 'none', 'ID', 'no'),
('XPttGuo6LtXy1SfqhedgHA', 'DjXmsYCcvu7237l9uzYiQg', 'question', 'text', 'NO', 0, '', 'N', 'textarea', 'Question', 'yes'),
('NV5UDYa4i14aWOGC7AuqVQ', 'DjXmsYCcvu7237l9uzYiQg', 'type', 'varchar', 'NO', 45, '', 'N', 'textbox', 'Type', 'yes'),
('66M7KV1G7KbwXcfMR8F+Iw', 'DttbcqhoelFHOEJPBCRp6w', 'id', 'integer', 'NO', 11, 'primary key', 'Y', 'none', 'ID', 'no'),
('UVKvfFiXn8ixGje7c7EuIA', 'DttbcqhoelFHOEJPBCRp6w', 'response', 'text', 'NO', 0, '', 'N', 'textarea', 'Response', 'yes'),
('C0NA8iIRScGdx7Q+w2Z3oA', 'DttbcqhoelFHOEJPBCRp6w', 'resume_hdr_id', 'integer', 'NO', 11, 'foreign key', 'N', 'textbox', 'Resume Hdr ID', 'yes'),
('Lvf/2NrGS5RxTe9cyETdaA', 'DttbcqhoelFHOEJPBCRp6w', 'questionnaire_id', 'integer', 'NO', 11, '', 'N', 'textbox', 'Questionnaire ID', 'yes'),
('ABJQpA/InsHAzAw4zMS4dQ', 'vJEGFHbd88WRDkT958XzBA', 'id', 'integer', 'NO', 11, 'primary key', 'Y', 'none', 'ID', 'no'),
('Bc2Kul5RHmaLzXNRQHMjYg', 'vJEGFHbd88WRDkT958XzBA', 'student_id', 'varchar', 'NO', 11, '', 'N', 'textbox', 'Student ID', 'yes'),
('iircQPCDzZ7ca+2JpEX5Ug', 'vJEGFHbd88WRDkT958XzBA', 'mobile_num', 'varchar', 'NO', 11, '', 'N', 'textbox', 'Mobile Num', 'yes'),
('+EvGG8W7mWqdlHzR0+VJ6w', 'vJEGFHbd88WRDkT958XzBA', 'personal_email', 'varchar', 'NO', 255, '', 'N', 'textbox', 'Personal Email', 'yes'),
('zkM02DQ8SCukC1F98jtZBw', 'vJEGFHbd88WRDkT958XzBA', 'website', 'varchar', 'YES', 255, '', 'N', 'textbox', 'Website', 'yes'),
('5hrMfC56I2OIyHPov4IcSA', 'vJEGFHbd88WRDkT958XzBA', 'picture', 'varchar', 'NO', 255, '', 'N', 'textbox', 'Picture', 'yes'),
('o/YrhizjOLBzBlO9RiUBLw', 'PSO/92YdJK+agKhLLbRRVA', 'Id', 'integer', 'NO', 11, 'primary key', 'Y', 'none', 'ID', 'no'),
('hR5ABDe0poSYZyb9hkbVow', 'PSO/92YdJK+agKhLLbRRVA', 'AlumniInfoId', 'integer', 'NO', 11, '', 'N', 'textbox', 'AlumniInfoId', 'yes'),
('rgE7dav9L/v84hhHjxcTlw', 'PSO/92YdJK+agKhLLbRRVA', 'AddressType', 'varchar', 'NO', 255, '', 'N', 'textbox', 'AddressType', 'yes'),
('CsC7+3ux64OB51xL2+Eazg', 'PSO/92YdJK+agKhLLbRRVA', 'Address', 'varchar', 'NO', 255, '', 'N', 'textarea', 'Address', 'yes'),
('eAihy8einJwT1XtcKRgWog', 'PSO/92YdJK+agKhLLbRRVA', 'MunicipalityCity', 'varchar', 'NO', 255, '', 'N', 'textbox', 'MunicipalityCity', 'yes'),
('oUdF639AtA2czfHjo6SzoA', 'PSO/92YdJK+agKhLLbRRVA', 'ProvinceState', 'varchar', 'NO', 255, '', 'N', 'textbox', 'ProvinceState', 'yes'),
('FqJOwxqAH4iYntf7HOuXIw', 'PSO/92YdJK+agKhLLbRRVA', 'Region', 'varchar', 'NO', 255, '', 'N', 'textbox', 'Region', 'yes'),
('SUveksxWF1JrsaFK6mnvtA', 'PSO/92YdJK+agKhLLbRRVA', 'Country', 'varchar', 'NO', 255, '', 'N', 'textbox', 'Country', 'yes'),
('yqqDpul5EL1Wnii9kLy4Ig', 'PSO/92YdJK+agKhLLbRRVA', 'PostalCode', 'varchar', 'NO', 255, '', 'N', 'textbox', 'PostalCode', 'yes'),
('rs65C0R/iBvC+EKWW1MbgQ', 'PSO/92YdJK+agKhLLbRRVA', 'IsCurrent', 'integer', 'NO', 1, '', 'N', 'textbox', 'IsCurrent', 'yes'),
('QFRk73bxIJfLAIwjLXthsg', 'O5M0sBj+c+1OvvaSM79Ghw', 'Id', 'integer', 'NO', 11, 'primary key', 'Y', 'none', 'ID', 'no'),
('6vBxpb7sYDNVSEQ7Wpe/GA', 'O5M0sBj+c+1OvvaSM79Ghw', 'AlumniEmplRecordId', 'integer', 'NO', 11, '', 'N', 'textbox', 'AlumniEmplRecordId', 'yes'),
('PajNi1l7MdC80cGVnDg3ow', 'O5M0sBj+c+1OvvaSM79Ghw', 'DateEffective', 'date', 'YES', 0, '', 'N', 'date controls', 'DateEffective', 'yes'),
('stnShaRCm2tJc9QvQqSGQg', 'O5M0sBj+c+1OvvaSM79Ghw', 'Designation', 'varchar', 'YES', 50, '', 'N', 'textbox', 'Designation', 'yes'),
('wYXhV4OgWdGfDm+6uhq1zg', 'O5M0sBj+c+1OvvaSM79Ghw', 'SalaryRange', 'varchar', 'YES', 255, '', 'N', 'textbox', 'SalaryRange', 'yes'),
('ymus8di+XMdUaS9QjG0K+w', 'O5M0sBj+c+1OvvaSM79Ghw', 'Remarks', 'text', 'YES', 0, '', 'N', 'textarea', 'Remarks', 'yes'),
('xEs/blQg4xwkGgso5YDUtA', '4bOnHW84Apl2fQ+ryIKUpA', 'Id', 'integer', 'NO', 11, 'primary key', 'Y', 'none', 'ID', 'no'),
('arPB4XlTBu01VAhluOqgxA', '4bOnHW84Apl2fQ+ryIKUpA', 'AlumniInfoId', 'integer', 'NO', 20, '', 'N', 'textbox', 'AlumniInfoId', 'yes'),
('fnm1vXqC5mJPX3pRc5twMQ', '4bOnHW84Apl2fQ+ryIKUpA', 'CompanyBranchId', 'integer', 'YES', 11, '', 'N', 'textbox', 'CompanyBranchId', 'yes'),
('VBD5B1f+SRAzD3qv5SnSRQ', '4bOnHW84Apl2fQ+ryIKUpA', 'NoOfYearsInCompany', 'integer', 'YES', 11, '', 'N', 'textbox', 'NoOfYearsInCompany', 'yes'),
('zqJa2IvqBXYT/uImDqwqYg', '4bOnHW84Apl2fQ+ryIKUpA', 'Position', 'varchar', 'YES', 255, '', 'N', 'textbox', 'Position', 'yes'),
('hGiL/hArBB0hdwoD8Cdfvw', '4bOnHW84Apl2fQ+ryIKUpA', 'NoOfYearsInPosition', 'integer', 'YES', 11, '', 'N', 'textbox', 'NoOfYearsInPosition', 'yes'),
('2mlPpDv0sy8Y5t2feIJ2PQ', '4bOnHW84Apl2fQ+ryIKUpA', 'Remarks', 'text', 'YES', 0, '', 'N', 'textarea', 'Remarks', 'yes'),
('OmUvdQ160Ow4Fgbz1LydHQ', '4bOnHW84Apl2fQ+ryIKUpA', 'IsCurrentlyEmployed', 'smallint', 'YES', 6, '', 'N', 'textbox', 'IsCurrentlyEmployed', 'yes'),
('f7F65+GaX4g8Btyr5SBwkQ', '4bOnHW84Apl2fQ+ryIKUpA', 'IsAbsorbed', 'smallint', 'YES', 6, '', 'N', 'textbox', 'IsAbsorbed', 'yes'),
('xQJ97FW9zDSCeSH1s3Dr8w', '4bOnHW84Apl2fQ+ryIKUpA', 'Email', 'varchar', 'YES', 255, '', 'N', 'textbox', 'Email', 'yes'),
('yO0PA3CgU6NVKZv87N3ZSA', '4bOnHW84Apl2fQ+ryIKUpA', 'ContactNo', 'varchar', 'YES', 255, '', 'N', 'textbox', 'ContactNo', 'yes'),
('atNFrC8awwM4+x4HlkVP7w', '4bOnHW84Apl2fQ+ryIKUpA', 'StartDate', 'date', 'YES', 0, '', 'N', 'date controls', 'StartDate', 'yes'),
('pkkcZULJtzWROqG4Dvpgrg', '4bOnHW84Apl2fQ+ryIKUpA', 'EndDate', 'date', 'YES', 0, '', 'N', 'date controls', 'EndDate', 'yes'),
('aKRa9VO3UeICX0ulDVEglg', 'Rwn7Yvun/V6nb1EEkR8+XQ', 'Id', 'integer', 'NO', 20, 'primary key', 'Y', 'none', 'ID', 'no'),
('tDIQvgK0VS3YitCfIA5o0w', 'Rwn7Yvun/V6nb1EEkR8+XQ', 'AlumniInfoId', 'integer', 'NO', 20, '', 'N', 'textbox', 'AlumniInfoId', 'yes'),
('t7gVJk5+UFQTloCvl+N96A', 'Rwn7Yvun/V6nb1EEkR8+XQ', 'StudyType', 'varchar', 'NO', 255, '', 'N', 'textbox', 'StudyType', 'yes'),
('39kF0bZEXdM6vsV5aG9/IA', 'Rwn7Yvun/V6nb1EEkR8+XQ', 'Course', 'varchar', 'NO', 50, '', 'N', 'textbox', 'Course', 'yes'),
('sLl/oqmdMGomZKEPCmnb4A', 'Rwn7Yvun/V6nb1EEkR8+XQ', 'StartDate', 'date', 'YES', 0, '', 'N', 'date controls', 'StartDate', 'yes'),
('a8ODc+aUyUKxZ6ZFhukZBw', 'Rwn7Yvun/V6nb1EEkR8+XQ', 'EndDate', 'date', 'YES', 0, '', 'N', 'date controls', 'EndDate', 'yes'),
('Z8fHKGnmo1QPMZilKeGcEg', 'Rwn7Yvun/V6nb1EEkR8+XQ', 'SchoolOrganization', 'varchar', 'YES', 50, '', 'N', 'textbox', 'SchoolOrganization', 'yes'),
('gZ9/QiNSWbebqplkG3xRkQ', '4LcgygmNCm4Nb+HXUgswAg', 'Id', 'integer', 'NO', 20, 'primary key', 'Y', 'none', 'ID', 'no'),
('PmBvTplHejJXnvdimZjHGQ', '4LcgygmNCm4Nb+HXUgswAg', 'student_id', 'varchar', 'NO', 11, '', 'N', 'textbox', 'Student ID', 'yes'),
('WjIiOUCMLZnrl9V5ux9sEA', '4LcgygmNCm4Nb+HXUgswAg', 'LastName', 'varchar', 'NO', 50, '', 'N', 'textbox', 'LastName', 'yes'),
('ocPcx8lDDIh+3lGsXdwHyw', '4LcgygmNCm4Nb+HXUgswAg', 'FirstName', 'varchar', 'NO', 50, '', 'N', 'textbox', 'FirstName', 'yes'),
('Fb85Ty9kDJ76o9GSVpk2nw', '4LcgygmNCm4Nb+HXUgswAg', 'MiddleName', 'varchar', 'YES', 50, '', 'N', 'textbox', 'MiddleName', 'yes'),
('ZfmRBdFP0EejVv2/80tEWA', '4LcgygmNCm4Nb+HXUgswAg', 'BirthDate', 'date', 'YES', 0, '', 'N', 'date controls', 'BirthDate', 'yes'),
('gSRpfliEsOeu0yXjuSGxxg', '4LcgygmNCm4Nb+HXUgswAg', 'Nationality', 'varchar', 'YES', 50, '', 'N', 'textbox', 'Nationality', 'yes'),
('GkijcGTrMkgoNytfFfJIYw', '4LcgygmNCm4Nb+HXUgswAg', 'CivilStatus', 'varchar', 'YES', 255, '', 'N', 'textbox', 'CivilStatus', 'yes'),
('B9bDgBZjl5i2Mg7SoKjTUg', '4LcgygmNCm4Nb+HXUgswAg', 'Religion', 'varchar', 'YES', 50, '', 'N', 'textbox', 'Religion', 'yes'),
('lchrA09rXxjE3RKgc2NeZA', '4LcgygmNCm4Nb+HXUgswAg', 'Address', 'varchar', 'YES', 100, '', 'N', 'textarea', 'Address', 'yes'),
('6fMmkVg9+gSenmLO1mf73g', '4LcgygmNCm4Nb+HXUgswAg', 'MunicipalityCity', 'varchar', 'YES', 50, '', 'N', 'textbox', 'MunicipalityCity', 'yes'),
('5eicRRRrZzFMMOov820osg', '4LcgygmNCm4Nb+HXUgswAg', 'ProvinceState', 'varchar', 'YES', 50, '', 'N', 'textbox', 'ProvinceState', 'yes'),
('xbmZChwcb8q+P7EZZ2PMFg', '4LcgygmNCm4Nb+HXUgswAg', 'Region', 'varchar', 'YES', 50, '', 'N', 'textbox', 'Region', 'yes'),
('AKVz4pp7MtbRJ0vvAw+g+g', '4LcgygmNCm4Nb+HXUgswAg', 'Country', 'varchar', 'YES', 50, '', 'N', 'textbox', 'Country', 'yes'),
('X+3BcsLw9eW95Tygn74tRQ', '4LcgygmNCm4Nb+HXUgswAg', 'IsAbroad', 'smallint', 'YES', 6, '', 'N', 'textbox', 'IsAbroad', 'yes'),
('QWm8FfsGCJK+E5T+I2PIOA', '4LcgygmNCm4Nb+HXUgswAg', 'PostalCode', 'varchar', 'YES', 10, '', 'N', 'textbox', 'PostalCode', 'yes'),
('Wf65fbIHmSrs22VTum3leA', '4LcgygmNCm4Nb+HXUgswAg', 'ContactStatus', 'varchar', 'YES', 255, '', 'N', 'textbox', 'ContactStatus', 'yes'),
('95imo7Y3lUdWo7UM2Le+UQ', '4LcgygmNCm4Nb+HXUgswAg', 'EmploymentStatus', 'varchar', 'YES', 255, '', 'N', 'textbox', 'EmploymentStatus', 'yes'),
('wioI7m9vWvorJ/nwDcWmkQ', '4LcgygmNCm4Nb+HXUgswAg', 'LastUpdate', 'varchar', 'YES', 255, '', 'N', 'textbox', 'LastUpdate', 'yes'),
('3FORG7/zlOH5brve+pXE9g', 'waify5HOiXjy34ZHtvsmJw', 'Id', 'integer', 'NO', 11, 'primary key', 'Y', 'none', 'ID', 'no'),
('KuJN8Mt0gY68DaMPFWmEYQ', 'waify5HOiXjy34ZHtvsmJw', 'AlumniInfoId', 'integer', 'NO', 20, '', 'N', 'textbox', 'AlumniInfoId', 'yes'),
('F321CXD724H0kyfTCLT9Uw', 'waify5HOiXjy34ZHtvsmJw', 'QualificationType', 'varchar', 'NO', 255, '', 'N', 'textbox', 'QualificationType', 'yes'),
('1HSCH1IAsdxWIcGPPTqoyw', 'waify5HOiXjy34ZHtvsmJw', 'Description', 'varchar', 'NO', 255, '', 'N', 'textarea', 'Description', 'yes'),
('24WlCLxOEmxiu/zkQNAU3A', 'waify5HOiXjy34ZHtvsmJw', 'LicenseCertNo', 'varchar', 'YES', 255, '', 'N', 'textbox', 'LicenseCertNo', 'yes'),
('HflxEe++1e9KhxZrX/fSHg', 'waify5HOiXjy34ZHtvsmJw', 'Organization', 'varchar', 'YES', 255, '', 'N', 'textbox', 'Organization', 'yes'),
('fYzdUdRCco7YQZmp15ZOxw', 'waify5HOiXjy34ZHtvsmJw', 'DateEffective', 'date', 'YES', 0, '', 'N', 'date controls', 'DateEffective', 'yes'),
('H87VliDWb/7TPmbLB4QXLA', 'yN0DJE4um2+326So7rjsog', 'Id', 'integer', 'NO', 11, 'primary key', 'Y', 'none', 'ID', 'no'),
('5WRqS1Haf15PtB84NvOyaA', 'yN0DJE4um2+326So7rjsog', 'CompanyName', 'varchar', 'NO', 100, '', 'N', 'textbox', 'CompanyName', 'yes'),
('7GqGIDR7lQ8tvTU2kroYUA', 'yN0DJE4um2+326So7rjsog', 'IndustrySectorId', 'integer', 'NO', 11, '', 'N', 'textbox', 'IndustrySectorId', 'yes'),
('Gpggi4xib0v9eEDXEEXAgg', 'yN0DJE4um2+326So7rjsog', 'WebsiteUrl', 'varchar', 'YES', 150, '', 'N', 'textbox', 'WebsiteUrl', 'yes'),
('01gCrel6a1akggfA8ErPBA', 'yN0DJE4um2+326So7rjsog', 'Email', 'varchar', 'YES', 150, '', 'N', 'textbox', 'Email', 'yes'),
('MEDdxJigM6Kuv1GirhYybw', 'yN0DJE4um2+326So7rjsog', 'IsIndustryPartner', 'smallint', 'NO', 6, '', 'N', 'textbox', 'IsIndustryPartner', 'yes'),
('3A/iuw7M61DpgpWJlt7uUw', 'yN0DJE4um2+326So7rjsog', 'Status', 'varchar', 'YES', 255, '', 'N', 'textbox', 'Status', 'yes'),
('wpMdyZ0mlf8aFycUKdWHLw', 'yN0DJE4um2+326So7rjsog', 'DateCreated', 'date', 'YES', 0, '', 'N', 'date controls', 'DateCreated', 'yes'),
('dWCCyggi+zPutr05ct5NNQ', '5y+7FC4RfpDe8jEZxPdR6A', 'Id', 'integer', 'NO', 11, 'primary key', 'Y', 'none', 'ID', 'no'),
('sMkODsyW7YGNF6bgHfmVkw', '5y+7FC4RfpDe8jEZxPdR6A', 'CompanyId', 'integer', 'NO', 11, '', 'N', 'textbox', 'CompanyId', 'yes'),
('KLoOdqCZ1zkqnIXVBAP5TA', '5y+7FC4RfpDe8jEZxPdR6A', 'CompanyBranchName', 'varchar', 'NO', 50, '', 'N', 'textbox', 'CompanyBranchName', 'yes'),
('swTxNMDnC5AZtknd34YFxQ', '5y+7FC4RfpDe8jEZxPdR6A', 'Address', 'varchar', 'YES', 100, '', 'N', 'textarea', 'Address', 'yes'),
('N/EK4Ol4YYYG/6NJzABLCw', '5y+7FC4RfpDe8jEZxPdR6A', 'MunicipalityCity', 'varchar', 'YES', 50, '', 'N', 'textbox', 'MunicipalityCity', 'yes'),
('jAvIWhm22k5XU17cCYAV0Q', '5y+7FC4RfpDe8jEZxPdR6A', 'ProvinceState', 'varchar', 'YES', 50, '', 'N', 'textbox', 'ProvinceState', 'yes'),
('awDvH49RtM05DO0AItqsNA', '5y+7FC4RfpDe8jEZxPdR6A', 'Region', 'varchar', 'YES', 50, '', 'N', 'textbox', 'Region', 'yes'),
('pzTzJtKAYMptwfG2y/IJdA', '5y+7FC4RfpDe8jEZxPdR6A', 'Country', 'varchar', 'YES', 50, '', 'N', 'textbox', 'Country', 'yes'),
('2Qv1pyj3d9QNPnRhjdHpPA', '5y+7FC4RfpDe8jEZxPdR6A', 'PostalCode', 'varchar', 'YES', 10, '', 'N', 'textbox', 'PostalCode', 'yes'),
('8dP4ahaNhf3HgGFdJENvVw', '5y+7FC4RfpDe8jEZxPdR6A', 'PhoneNo1', 'varchar', 'YES', 15, '', 'N', 'textbox', 'PhoneNo1', 'yes'),
('5gjJyQBv0r1XZMykn/E8Iw', '5y+7FC4RfpDe8jEZxPdR6A', 'PhoneNo2', 'varchar', 'YES', 15, '', 'N', 'textbox', 'PhoneNo2', 'yes'),
('Jww1TRVaeoIIainL7xUi9Q', '5y+7FC4RfpDe8jEZxPdR6A', 'WebsiteUrl', 'varchar', 'YES', 150, '', 'N', 'textbox', 'WebsiteUrl', 'yes'),
('L7kUdbao5b9I8dGgKAtorQ', '5y+7FC4RfpDe8jEZxPdR6A', 'Email', 'varchar', 'YES', 150, '', 'N', 'textbox', 'Email', 'yes'),
('uCBej7Aee/1QK2jFuVqihg', '5y+7FC4RfpDe8jEZxPdR6A', 'DateCreated', 'date', 'YES', 0, '', 'N', 'date controls', 'DateCreated', 'yes'),
('rjkjMVgIIALkkhXsW4u5VQ', '5y+7FC4RfpDe8jEZxPdR6A', 'Status', 'varchar', 'YES', 255, '', 'N', 'textbox', 'Status', 'yes'),
('PQzQQkNmy7BeY5RXaBD7+Q', '5y+7FC4RfpDe8jEZxPdR6A', 'DateStart', 'date', 'YES', 0, '', 'N', 'date controls', 'DateStart', 'yes'),
('I2IDo+b4rgj8UCx14vvYlQ', '5y+7FC4RfpDe8jEZxPdR6A', 'DateEnd', 'date', 'YES', 0, '', 'N', 'date controls', 'DateEnd', 'yes'),
('Z7g9jL/uUrsjpfTBXLdY2A', 'EzPQTu2T0wFBPOCfaZZj+w', 'Id', 'integer', 'NO', 11, 'primary key', 'Y', 'none', 'ID', 'no'),
('DQgMflWVqNuxatr7GvsUAQ', 'EzPQTu2T0wFBPOCfaZZj+w', 'CompanyBranchId', 'integer', 'NO', 11, '', 'N', 'textbox', 'CompanyBranchId', 'yes'),
('KKh/NNpxYKtvNRcUe5kUyA', 'EzPQTu2T0wFBPOCfaZZj+w', 'ContactId', 'integer', 'NO', 11, '', 'N', 'textbox', 'ContactId', 'yes'),
('FtgQkWWWk3jLE85OuliGtg', 'xCrmPZQevR9GoG8+LuVUfA', 'Id', 'integer', 'NO', 11, 'primary key', 'Y', 'none', 'ID', 'no'),
('O3njqXW9AQyScnfNflpzWQ', 'xCrmPZQevR9GoG8+LuVUfA', 'LastName', 'varchar', 'NO', 50, '', 'N', 'textbox', 'LastName', 'yes'),
('c1wlkbzxf2YbIcrZzd4E6w', 'xCrmPZQevR9GoG8+LuVUfA', 'FirstName', 'varchar', 'NO', 50, '', 'N', 'textbox', 'FirstName', 'yes'),
('QvnE/2Acgsu5+o5nCrPfrg', 'xCrmPZQevR9GoG8+LuVUfA', 'MiddleName', 'varchar', 'YES', 50, '', 'N', 'textbox', 'MiddleName', 'yes'),
('GUNM36O93O302IW0CUc5yg', 'xCrmPZQevR9GoG8+LuVUfA', 'PhoneNo', 'varchar', 'YES', 15, '', 'N', 'textbox', 'PhoneNo', 'yes'),
('CTfOfoXlbQkwPLank7pF0A', 'xCrmPZQevR9GoG8+LuVUfA', 'MobileNo', 'varchar', 'YES', 15, '', 'N', 'textbox', 'MobileNo', 'yes'),
('edLeOji1kdoYltaUG6RJnw', 'xCrmPZQevR9GoG8+LuVUfA', 'Email', 'varchar', 'YES', 100, '', 'N', 'textbox', 'Email', 'yes'),
('ALXK7U5p72hErFs3C66mOw', 'xCrmPZQevR9GoG8+LuVUfA', 'Designation', 'varchar', 'YES', 50, '', 'N', 'textbox', 'Designation', 'yes'),
('5FdnqsYCJWnGc7nfa7wjDg', 'x7UZl3LjuUut/FYB+/Hw8g', 'Id', 'integer', 'NO', 11, 'primary key', 'Y', 'none', 'ID', 'no'),
('FgWiJco3TR+2u1fA3K2Amw', 'x7UZl3LjuUut/FYB+/Hw8g', 'EmploymentStatus', 'varchar', 'YES', 255, '', 'N', 'textbox', 'EmploymentStatus', 'yes'),
('rZVMvfhPJU9/SwXW9WgFYA', '0siZqGcqCzfeqylqN8eQ3g', 'Id', 'integer', 'NO', 11, 'primary key', 'Y', 'none', 'ID', 'no'),
('x1Mxz/mI0ARBvZnSKQqtdw', '0siZqGcqCzfeqylqN8eQ3g', 'IndustryName', 'varchar', 'NO', 50, '', 'N', 'textbox', 'IndustryName', 'yes'),
('Nb+8BEnLL7MVaElN9m/Zrg', '0siZqGcqCzfeqylqN8eQ3g', 'IsActive', 'smallint', 'NO', 6, '', 'N', 'textbox', 'IsActive', 'yes'),
('PM4XBxnpnNagY6KL8l4zBA', 'CcMUnL8uUi/t4SX+BTxfBA', 'Id', 'integer', 'NO', 20, 'primary key', 'Y', 'none', 'ID', 'no'),
('/mKGGQriTBlj/VDTyMJs0Q', 'CcMUnL8uUi/t4SX+BTxfBA', 'student_id', 'varchar', 'NO', 11, '', 'N', 'textbox', 'Student ID', 'yes'),
('Q999CuJbergDECCQYw9rGw', 'CcMUnL8uUi/t4SX+BTxfBA', 'CompanyBranchId', 'integer', 'YES', 11, '', 'N', 'textbox', 'CompanyBranchId', 'yes'),
('C49G4mx1ZaLjhBDBksHfbw', 'CcMUnL8uUi/t4SX+BTxfBA', 'TermId', 'integer', 'NO', 11, '', 'N', 'textbox', 'TermId', 'yes'),
('Vj7l6NP0SPa9RuKebFDvZg', 'CcMUnL8uUi/t4SX+BTxfBA', 'subject_id', 'integer', 'NO', 11, '', 'N', 'textbox', 'Subject ID', 'yes'),
('xUNkHhp7GmOzHp1/IzDElw', 'CcMUnL8uUi/t4SX+BTxfBA', 'StartDate', 'date', 'YES', 0, '', 'N', 'date controls', 'StartDate', 'yes'),
('Q8G6P4sCXWeOYacGWlsKxQ', 'CcMUnL8uUi/t4SX+BTxfBA', 'EndDate', 'date', 'YES', 0, '', 'N', 'date controls', 'EndDate', 'yes'),
('/fSv8iZru7JlrDKY+QpIfQ', 'CcMUnL8uUi/t4SX+BTxfBA', 'Designation', 'varchar', 'YES', 50, '', 'N', 'textbox', 'Designation', 'yes'),
('eEOe6v10jkUcw1AlD6W8lA', 'CcMUnL8uUi/t4SX+BTxfBA', 'Department', 'varchar', 'YES', 50, '', 'N', 'textbox', 'Department', 'yes'),
('2VBZtzvw/dNMYOCpx8jrlg', 'CcMUnL8uUi/t4SX+BTxfBA', 'JobDescription', 'text', 'YES', 0, '', 'N', 'textarea', 'JobDescription', 'yes'),
('cYp3X6FqmGnIW3sKcpD3NQ', 'CcMUnL8uUi/t4SX+BTxfBA', 'Status', 'smallint', 'NO', 6, '', 'N', 'textbox', 'Status', 'yes'),
('UgMaXsSjIdWnL1KGr02OVA', 'CcMUnL8uUi/t4SX+BTxfBA', 'primary_email', 'varchar', 'YES', 255, '', 'N', 'textbox', 'Primary Email', 'yes'),
('LvIBdEY/1FbzzRokLY+b/g', 'CcMUnL8uUi/t4SX+BTxfBA', 'secondary_email', 'varchar', 'YES', 255, '', 'N', 'textbox', 'Secondary Email', 'yes'),
('jmFiFXO66Xw5KB5XEOrq4Q', 'CcMUnL8uUi/t4SX+BTxfBA', 'primary_mobile_no', 'varchar', 'YES', 255, '', 'N', 'textbox', 'Primary Mobile No', 'yes'),
('YGwtucYiBstWRew93ICBuQ', 'CcMUnL8uUi/t4SX+BTxfBA', 'secondary_mobile_no', 'varchar', 'YES', 255, '', 'N', 'textbox', 'Secondary Mobile No', 'yes'),
('SA/dsmkoavCSoaFVVjkkVQ', 'LUc0D0sjZZ8OAA3hhOG8og', 'Id', 'integer', 'NO', 11, 'primary key', 'Y', 'none', 'ID', 'no'),
('g+AY41btBdJXtVLrh+0MWQ', 'LUc0D0sjZZ8OAA3hhOG8og', 'SchoolCode', 'varchar', 'NO', 255, '', 'N', 'textbox', 'SchoolCode', 'yes'),
('xr7HMIP4qO9L93yRvbqSyQ', 'LUc0D0sjZZ8OAA3hhOG8og', 'Course', 'integer', 'NO', 11, '', 'N', 'textbox', 'Course', 'yes'),
('GU6tOk4JBwE8/uCcb20PJw', 'jsWaTObO0RovXzr6ukG3Ew', 'student_id', 'varchar', 'NO', 11, 'primary key', 'N', 'textbox', 'Student ID', 'yes'),
('fBMuA4ViX7FXFjRTF5UdMw', 'jsWaTObO0RovXzr6ukG3Ew', 'student_last_name', 'varchar', 'NO', 25, '', 'N', 'textbox', 'Student Last Name', 'yes'),
('MpZBeacKoWyKAjBX5u/KFg', 'jsWaTObO0RovXzr6ukG3Ew', 'student_first_name', 'varchar', 'NO', 30, '', 'N', 'textbox', 'Student First Name', 'yes'),
('E7OOynMpbBJC+yzNG5xs8g', 'jsWaTObO0RovXzr6ukG3Ew', 'student_middle_name', 'varchar', 'NO', 25, '', 'N', 'textbox', 'Student Middle Name', 'yes'),
('BUJvuhKDCwZv/u3tPLx4qw', 'jsWaTObO0RovXzr6ukG3Ew', 'birth_date', 'date', 'NO', 0, '', 'N', 'date controls', 'Birth Date', 'yes'),
('vjrN5RM25jnqMclk/dbLZw', 'jsWaTObO0RovXzr6ukG3Ew', 'birth_place', 'varchar', 'NO', 35, '', 'N', 'textbox', 'Birth Place', 'yes'),
('LhgKCfZt0y99yoNdXzL+FA', 'jsWaTObO0RovXzr6ukG3Ew', 'admission_date', 'date', 'NO', 0, '', 'N', 'date controls', 'Admission Date', 'yes'),
('ObG0PZvcN+gxN9Qooh4FZw', 'jsWaTObO0RovXzr6ukG3Ew', 'entry_level', 'varchar', 'YES', 255, '', 'N', 'textbox', 'Entry Level', 'yes'),
('Q/Np3gRS0aPTL/Sxphv5yw', 'jsWaTObO0RovXzr6ukG3Ew', 'admission_credential', 'varchar', 'YES', 2500, '', 'N', 'textbox', 'Admission Credential', 'yes'),
('RCAXUIgCFLCmVQH9zRiyDA', 'jsWaTObO0RovXzr6ukG3Ew', 'mail_grades_to', 'varchar', 'NO', 255, '', 'N', 'textbox', 'Mail Grades To', 'yes'),
('5moQJVDT/+CHEtizi1SjKA', 'jsWaTObO0RovXzr6ukG3Ew', 'exit_level', 'varchar', 'YES', 255, '', 'N', 'textbox', 'Exit Level', 'yes'),
('rBiA2neoY8DHjP6/KpjXVw', 'jsWaTObO0RovXzr6ukG3Ew', 'nationality', 'varchar', 'NO', 255, '', 'N', 'textbox', 'Nationality', 'yes'),
('u2O9+N6Csz33eXNG2GCc3g', 'jsWaTObO0RovXzr6ukG3Ew', 'gender', 'varchar', 'NO', 255, '', 'N', 'textbox', 'Gender', 'yes'),
('5PWYgf7FWEl2nJWG88yz9g', 'jsWaTObO0RovXzr6ukG3Ew', 'address', 'varchar', 'NO', 250, '', 'N', 'textarea', 'Address', 'yes'),
('y8F0vKeQOtz9AFEhP1JiiQ', 'jsWaTObO0RovXzr6ukG3Ew', 'postal_code', 'varchar', 'YES', 250, '', 'N', 'textbox', 'Postal Code', 'yes'),
('Fx2DkZDyyHjkEzC0x6je0Q', 'jsWaTObO0RovXzr6ukG3Ew', 'tel_num', 'varchar', 'YES', 250, '', 'N', 'textbox', 'Tel Num', 'yes'),
('z7A9MO3Y7nOqEoXGQzvhLA', 'jsWaTObO0RovXzr6ukG3Ew', 'mobile_num', 'varchar', 'YES', 255, '', 'N', 'textbox', 'Mobile Num', 'yes'),
('AzPNCQZ3dmk1QZXvfjCgiA', 'jsWaTObO0RovXzr6ukG3Ew', 'email', 'varchar', 'YES', 250, '', 'N', 'textbox', 'Email', 'yes'),
('Y0Ou75cSqvTXg7mb/COfpg', 'jsWaTObO0RovXzr6ukG3Ew', 'religion', 'varchar', 'YES', 25, '', 'N', 'textbox', 'Religion', 'yes'),
('CD6luc2BJWRXz+qpMIQsnQ', 'jsWaTObO0RovXzr6ukG3Ew', 'civil_status', 'varchar', 'NO', 255, '', 'N', 'textbox', 'Civil Status', 'yes'),
('MoEC3nLr9RD6G+O//fiCOQ', 'jsWaTObO0RovXzr6ukG3Ew', 'box_num', 'varchar', 'NO', 250, '', 'N', 'textbox', 'Box Num', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `table_fields_book_list`
--

CREATE TABLE IF NOT EXISTS `table_fields_book_list` (
  `Field_ID` char(44) NOT NULL,
  `Book_List_Generator` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `table_fields_list`
--

CREATE TABLE IF NOT EXISTS `table_fields_list` (
  `Field_ID` char(44) NOT NULL,
  `List_ID` char(44) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `table_fields_list_source_select`
--

CREATE TABLE IF NOT EXISTS `table_fields_list_source_select` (
  `Field_ID` char(44) NOT NULL,
  `Auto_ID` int(11) NOT NULL,
  `Select_Field_ID` char(44) NOT NULL,
  `Display` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `table_fields_list_source_where`
--

CREATE TABLE IF NOT EXISTS `table_fields_list_source_where` (
  `Field_ID` char(44) NOT NULL,
  `Where_Field_ID` char(44) NOT NULL,
  `Where_Field_Operand` varchar(20) NOT NULL,
  `Where_Field_Value` varchar(200) NOT NULL,
  `Where_Field_Connector` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `table_fields_predefined_list`
--

CREATE TABLE IF NOT EXISTS `table_fields_predefined_list` (
  `List_ID` char(44) NOT NULL,
  `Project_ID` char(44) NOT NULL,
  `List_Name` varchar(255) NOT NULL,
  `Remarks` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table_fields_predefined_list`
--

INSERT INTO `table_fields_predefined_list` (`List_ID`, `Project_ID`, `List_Name`, `Remarks`) VALUES
('DZ9DhdO0laoL3TVYA1zuIA', '7RTC0uvD/FfelekI+YWo/Q', 'Male/Female', 'Male/Female gender list'),
('59M/HqKJe/8mgeiseEhZFQ', '7RTC0uvD/FfelekI+YWo/Q', 'On/Off', 'On/Off status list'),
('R/FvMqwkXyykThDttjsl/w', '7RTC0uvD/FfelekI+YWo/Q', 'TRUE/FALSE', 'TRUE/FALSE list'),
('BaJBg/a7JAtFxEzBjP7ghg', '7RTC0uvD/FfelekI+YWo/Q', 'M/F', 'Single character male/female gender list'),
('zTBkoKC2+rjTC6JoUhErwg', '7RTC0uvD/FfelekI+YWo/Q', 'Yes/No', 'Yes/No list'),
('FN0k+3uxqazHZqJcLAayCw', '7RTC0uvD/FfelekI+YWo/Q', 'Y/N', 'Single character yes/no list');

-- --------------------------------------------------------

--
-- Table structure for table `table_fields_predefined_list_items`
--

CREATE TABLE IF NOT EXISTS `table_fields_predefined_list_items` (
  `List_ID` char(44) NOT NULL,
  `Number` int(11) NOT NULL,
  `List_Item` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table_fields_predefined_list_items`
--

INSERT INTO `table_fields_predefined_list_items` (`List_ID`, `Number`, `List_Item`) VALUES
('DZ9DhdO0laoL3TVYA1zuIA', 1, 'Male'),
('DZ9DhdO0laoL3TVYA1zuIA', 2, 'Female'),
('59M/HqKJe/8mgeiseEhZFQ', 1, 'On'),
('59M/HqKJe/8mgeiseEhZFQ', 2, 'Off'),
('R/FvMqwkXyykThDttjsl/w', 1, 'TRUE'),
('R/FvMqwkXyykThDttjsl/w', 2, 'FALSE'),
('BaJBg/a7JAtFxEzBjP7ghg', 1, 'M'),
('BaJBg/a7JAtFxEzBjP7ghg', 2, 'F'),
('zTBkoKC2+rjTC6JoUhErwg', 1, 'Yes'),
('zTBkoKC2+rjTC6JoUhErwg', 2, 'No'),
('FN0k+3uxqazHZqJcLAayCw', 1, 'Y'),
('FN0k+3uxqazHZqJcLAayCw', 2, 'N');

-- --------------------------------------------------------

--
-- Table structure for table `table_fields_secondary_validation`
--

CREATE TABLE IF NOT EXISTS `table_fields_secondary_validation` (
  `Field_ID` char(44) NOT NULL,
  `Validation_Routine` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `table_pages`
--

CREATE TABLE IF NOT EXISTS `table_pages` (
  `Table_ID` char(44) NOT NULL,
  `Page_ID` char(44) NOT NULL,
  `Path_Filename` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table_pages`
--

INSERT INTO `table_pages` (`Table_ID`, `Page_ID`, `Path_Filename`) VALUES
('t3A2I6BuOVfyXQ3zPd4skA', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'accomplishment/add_accomplishment.php'),
('t3A2I6BuOVfyXQ3zPd4skA', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'accomplishment/edit_accomplishment.php'),
('t3A2I6BuOVfyXQ3zPd4skA', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'accomplishment/detailview_accomplishment.php'),
('t3A2I6BuOVfyXQ3zPd4skA', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'accomplishment/listview_accomplishment.php'),
('t3A2I6BuOVfyXQ3zPd4skA', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'accomplishment/delete_accomplishment.php'),
('t3A2I6BuOVfyXQ3zPd4skA', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'accomplishment/csv_accomplishment.php'),
('t3A2I6BuOVfyXQ3zPd4skA', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'accomplishment/reporter_accomplishment.php'),
('t3A2I6BuOVfyXQ3zPd4skA', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'accomplishment/reporter_result_accomplishment.php'),
('t3A2I6BuOVfyXQ3zPd4skA', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'accomplishment/reporter_pdfresult_accomplishment.php'),
('Qaa3zxbQPGzQKjos9oUdWw', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'attendance/add_attendance.php'),
('Qaa3zxbQPGzQKjos9oUdWw', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'attendance/edit_attendance.php'),
('Qaa3zxbQPGzQKjos9oUdWw', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'attendance/detailview_attendance.php'),
('Qaa3zxbQPGzQKjos9oUdWw', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'attendance/listview_attendance.php'),
('Qaa3zxbQPGzQKjos9oUdWw', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'attendance/delete_attendance.php'),
('Qaa3zxbQPGzQKjos9oUdWw', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'attendance/csv_attendance.php'),
('Qaa3zxbQPGzQKjos9oUdWw', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'attendance/reporter_attendance.php'),
('Qaa3zxbQPGzQKjos9oUdWw', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'attendance/reporter_result_attendance.php'),
('Qaa3zxbQPGzQKjos9oUdWw', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'attendance/reporter_pdfresult_attendance.php'),
('x2xKazfIzPTFnBofuxoyCQ', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'comment/add_comment.php'),
('x2xKazfIzPTFnBofuxoyCQ', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'comment/edit_comment.php'),
('x2xKazfIzPTFnBofuxoyCQ', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'comment/detailview_comment.php'),
('x2xKazfIzPTFnBofuxoyCQ', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'comment/listview_comment.php'),
('x2xKazfIzPTFnBofuxoyCQ', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'comment/delete_comment.php'),
('x2xKazfIzPTFnBofuxoyCQ', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'comment/csv_comment.php'),
('x2xKazfIzPTFnBofuxoyCQ', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'comment/reporter_comment.php'),
('x2xKazfIzPTFnBofuxoyCQ', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'comment/reporter_result_comment.php'),
('x2xKazfIzPTFnBofuxoyCQ', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'comment/reporter_pdfresult_comment.php'),
('4ChS65s12L/wJfkxCe9YJg', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'eval_dtl/add_eval_dtl.php'),
('4ChS65s12L/wJfkxCe9YJg', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'eval_dtl/edit_eval_dtl.php'),
('4ChS65s12L/wJfkxCe9YJg', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'eval_dtl/detailview_eval_dtl.php'),
('4ChS65s12L/wJfkxCe9YJg', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'eval_dtl/listview_eval_dtl.php'),
('4ChS65s12L/wJfkxCe9YJg', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'eval_dtl/delete_eval_dtl.php'),
('4ChS65s12L/wJfkxCe9YJg', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'eval_dtl/csv_eval_dtl.php'),
('4ChS65s12L/wJfkxCe9YJg', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'eval_dtl/reporter_eval_dtl.php'),
('4ChS65s12L/wJfkxCe9YJg', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'eval_dtl/reporter_result_eval_dtl.php'),
('4ChS65s12L/wJfkxCe9YJg', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'eval_dtl/reporter_pdfresult_eval_dtl.php'),
('p9PkUAJsS7Ady3U7kFFQxQ', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'eval_hdr/add_eval_hdr.php'),
('p9PkUAJsS7Ady3U7kFFQxQ', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'eval_hdr/edit_eval_hdr.php'),
('p9PkUAJsS7Ady3U7kFFQxQ', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'eval_hdr/detailview_eval_hdr.php'),
('p9PkUAJsS7Ady3U7kFFQxQ', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'eval_hdr/listview_eval_hdr.php'),
('p9PkUAJsS7Ady3U7kFFQxQ', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'eval_hdr/delete_eval_hdr.php'),
('p9PkUAJsS7Ady3U7kFFQxQ', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'eval_hdr/csv_eval_hdr.php'),
('p9PkUAJsS7Ady3U7kFFQxQ', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'eval_hdr/reporter_eval_hdr.php'),
('p9PkUAJsS7Ady3U7kFFQxQ', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'eval_hdr/reporter_result_eval_hdr.php'),
('p9PkUAJsS7Ady3U7kFFQxQ', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'eval_hdr/reporter_pdfresult_eval_hdr.php'),
('5YcGFQEgi8sHtqOcouWEfg', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'final_paper_dtl/add_final_paper_dtl.php'),
('5YcGFQEgi8sHtqOcouWEfg', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'final_paper_dtl/edit_final_paper_dtl.php'),
('5YcGFQEgi8sHtqOcouWEfg', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'final_paper_dtl/detailview_final_paper_dtl.php'),
('5YcGFQEgi8sHtqOcouWEfg', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'final_paper_dtl/listview_final_paper_dtl.php'),
('5YcGFQEgi8sHtqOcouWEfg', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'final_paper_dtl/delete_final_paper_dtl.php'),
('5YcGFQEgi8sHtqOcouWEfg', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'final_paper_dtl/csv_final_paper_dtl.php'),
('5YcGFQEgi8sHtqOcouWEfg', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'final_paper_dtl/reporter_final_paper_dtl.php'),
('5YcGFQEgi8sHtqOcouWEfg', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'final_paper_dtl/reporter_result_final_paper_dtl.php'),
('5YcGFQEgi8sHtqOcouWEfg', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'final_paper_dtl/reporter_pdfresult_final_paper_dtl.php'),
('B81YJDaIXjWs3Dhzr7rd6w', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'final_paper_hdr/add_final_paper_hdr.php'),
('B81YJDaIXjWs3Dhzr7rd6w', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'final_paper_hdr/edit_final_paper_hdr.php'),
('B81YJDaIXjWs3Dhzr7rd6w', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'final_paper_hdr/detailview_final_paper_hdr.php'),
('B81YJDaIXjWs3Dhzr7rd6w', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'final_paper_hdr/listview_final_paper_hdr.php'),
('B81YJDaIXjWs3Dhzr7rd6w', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'final_paper_hdr/delete_final_paper_hdr.php'),
('B81YJDaIXjWs3Dhzr7rd6w', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'final_paper_hdr/csv_final_paper_hdr.php'),
('B81YJDaIXjWs3Dhzr7rd6w', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'final_paper_hdr/reporter_final_paper_hdr.php'),
('B81YJDaIXjWs3Dhzr7rd6w', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'final_paper_hdr/reporter_result_final_paper_hdr.php'),
('B81YJDaIXjWs3Dhzr7rd6w', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'final_paper_hdr/reporter_pdfresult_final_paper_hdr.php'),
('tfvxqzBiG2ETSc5kVlUSKQ', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'post/add_post.php'),
('tfvxqzBiG2ETSc5kVlUSKQ', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'post/edit_post.php'),
('tfvxqzBiG2ETSc5kVlUSKQ', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'post/detailview_post.php'),
('tfvxqzBiG2ETSc5kVlUSKQ', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'post/listview_post.php'),
('tfvxqzBiG2ETSc5kVlUSKQ', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'post/delete_post.php'),
('tfvxqzBiG2ETSc5kVlUSKQ', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'post/csv_post.php'),
('tfvxqzBiG2ETSc5kVlUSKQ', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'post/reporter_post.php'),
('tfvxqzBiG2ETSc5kVlUSKQ', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'post/reporter_result_post.php'),
('tfvxqzBiG2ETSc5kVlUSKQ', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'post/reporter_pdfresult_post.php'),
('DjXmsYCcvu7237l9uzYiQg', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'questionnaire/add_questionnaire.php'),
('DjXmsYCcvu7237l9uzYiQg', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'questionnaire/edit_questionnaire.php'),
('DjXmsYCcvu7237l9uzYiQg', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'questionnaire/detailview_questionnaire.php'),
('DjXmsYCcvu7237l9uzYiQg', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'questionnaire/listview_questionnaire.php'),
('DjXmsYCcvu7237l9uzYiQg', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'questionnaire/delete_questionnaire.php'),
('DjXmsYCcvu7237l9uzYiQg', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'questionnaire/csv_questionnaire.php'),
('DjXmsYCcvu7237l9uzYiQg', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'questionnaire/reporter_questionnaire.php'),
('DjXmsYCcvu7237l9uzYiQg', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'questionnaire/reporter_result_questionnaire.php'),
('DjXmsYCcvu7237l9uzYiQg', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'questionnaire/reporter_pdfresult_questionnaire.php'),
('DttbcqhoelFHOEJPBCRp6w', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'resume_dtl/add_resume_dtl.php'),
('DttbcqhoelFHOEJPBCRp6w', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'resume_dtl/edit_resume_dtl.php'),
('DttbcqhoelFHOEJPBCRp6w', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'resume_dtl/detailview_resume_dtl.php'),
('DttbcqhoelFHOEJPBCRp6w', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'resume_dtl/listview_resume_dtl.php'),
('DttbcqhoelFHOEJPBCRp6w', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'resume_dtl/delete_resume_dtl.php'),
('DttbcqhoelFHOEJPBCRp6w', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'resume_dtl/csv_resume_dtl.php'),
('DttbcqhoelFHOEJPBCRp6w', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'resume_dtl/reporter_resume_dtl.php'),
('DttbcqhoelFHOEJPBCRp6w', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'resume_dtl/reporter_result_resume_dtl.php'),
('DttbcqhoelFHOEJPBCRp6w', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'resume_dtl/reporter_pdfresult_resume_dtl.php'),
('vJEGFHbd88WRDkT958XzBA', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'resume_hdr/add_resume_hdr.php'),
('vJEGFHbd88WRDkT958XzBA', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'resume_hdr/edit_resume_hdr.php'),
('vJEGFHbd88WRDkT958XzBA', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'resume_hdr/detailview_resume_hdr.php'),
('vJEGFHbd88WRDkT958XzBA', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'resume_hdr/listview_resume_hdr.php'),
('vJEGFHbd88WRDkT958XzBA', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'resume_hdr/delete_resume_hdr.php'),
('vJEGFHbd88WRDkT958XzBA', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'resume_hdr/csv_resume_hdr.php'),
('vJEGFHbd88WRDkT958XzBA', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'resume_hdr/reporter_resume_hdr.php'),
('vJEGFHbd88WRDkT958XzBA', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'resume_hdr/reporter_result_resume_hdr.php'),
('vJEGFHbd88WRDkT958XzBA', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'resume_hdr/reporter_pdfresult_resume_hdr.php'),
('PSO/92YdJK+agKhLLbRRVA', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'alumniaddress/add_alumniaddress.php'),
('PSO/92YdJK+agKhLLbRRVA', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'alumniaddress/edit_alumniaddress.php'),
('PSO/92YdJK+agKhLLbRRVA', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'alumniaddress/detailview_alumniaddress.php'),
('PSO/92YdJK+agKhLLbRRVA', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'alumniaddress/listview_alumniaddress.php'),
('PSO/92YdJK+agKhLLbRRVA', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'alumniaddress/delete_alumniaddress.php'),
('PSO/92YdJK+agKhLLbRRVA', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'alumniaddress/csv_alumniaddress.php'),
('PSO/92YdJK+agKhLLbRRVA', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'alumniaddress/reporter_alumniaddress.php'),
('PSO/92YdJK+agKhLLbRRVA', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'alumniaddress/reporter_result_alumniaddress.php'),
('PSO/92YdJK+agKhLLbRRVA', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'alumniaddress/reporter_pdfresult_alumniaddress.php'),
('O5M0sBj+c+1OvvaSM79Ghw', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'alumniemplmove/add_alumniemplmove.php'),
('O5M0sBj+c+1OvvaSM79Ghw', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'alumniemplmove/edit_alumniemplmove.php'),
('O5M0sBj+c+1OvvaSM79Ghw', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'alumniemplmove/detailview_alumniemplmove.php'),
('O5M0sBj+c+1OvvaSM79Ghw', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'alumniemplmove/listview_alumniemplmove.php'),
('O5M0sBj+c+1OvvaSM79Ghw', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'alumniemplmove/delete_alumniemplmove.php'),
('O5M0sBj+c+1OvvaSM79Ghw', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'alumniemplmove/csv_alumniemplmove.php'),
('O5M0sBj+c+1OvvaSM79Ghw', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'alumniemplmove/reporter_alumniemplmove.php'),
('O5M0sBj+c+1OvvaSM79Ghw', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'alumniemplmove/reporter_result_alumniemplmove.php'),
('O5M0sBj+c+1OvvaSM79Ghw', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'alumniemplmove/reporter_pdfresult_alumniemplmove.php'),
('4bOnHW84Apl2fQ+ryIKUpA', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'alumniemplrecord/add_alumniemplrecord.php'),
('4bOnHW84Apl2fQ+ryIKUpA', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'alumniemplrecord/edit_alumniemplrecord.php'),
('4bOnHW84Apl2fQ+ryIKUpA', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'alumniemplrecord/detailview_alumniemplrecord.php'),
('4bOnHW84Apl2fQ+ryIKUpA', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'alumniemplrecord/listview_alumniemplrecord.php'),
('4bOnHW84Apl2fQ+ryIKUpA', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'alumniemplrecord/delete_alumniemplrecord.php'),
('4bOnHW84Apl2fQ+ryIKUpA', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'alumniemplrecord/csv_alumniemplrecord.php'),
('4bOnHW84Apl2fQ+ryIKUpA', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'alumniemplrecord/reporter_alumniemplrecord.php'),
('4bOnHW84Apl2fQ+ryIKUpA', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'alumniemplrecord/reporter_result_alumniemplrecord.php'),
('4bOnHW84Apl2fQ+ryIKUpA', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'alumniemplrecord/reporter_pdfresult_alumniemplrecord.php'),
('Rwn7Yvun/V6nb1EEkR8+XQ', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'alumnifurtherstudies/add_alumnifurtherstudies.php'),
('Rwn7Yvun/V6nb1EEkR8+XQ', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'alumnifurtherstudies/edit_alumnifurtherstudies.php'),
('Rwn7Yvun/V6nb1EEkR8+XQ', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'alumnifurtherstudies/detailview_alumnifurtherstudies.php'),
('Rwn7Yvun/V6nb1EEkR8+XQ', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'alumnifurtherstudies/listview_alumnifurtherstudies.php'),
('Rwn7Yvun/V6nb1EEkR8+XQ', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'alumnifurtherstudies/delete_alumnifurtherstudies.php'),
('Rwn7Yvun/V6nb1EEkR8+XQ', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'alumnifurtherstudies/csv_alumnifurtherstudies.php'),
('Rwn7Yvun/V6nb1EEkR8+XQ', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'alumnifurtherstudies/reporter_alumnifurtherstudies.php'),
('Rwn7Yvun/V6nb1EEkR8+XQ', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'alumnifurtherstudies/reporter_result_alumnifurtherstudies.php'),
('Rwn7Yvun/V6nb1EEkR8+XQ', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'alumnifurtherstudies/reporter_pdfresult_alumnifurtherstudies.php'),
('4LcgygmNCm4Nb+HXUgswAg', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'alumniinfo/add_alumniinfo.php'),
('4LcgygmNCm4Nb+HXUgswAg', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'alumniinfo/edit_alumniinfo.php'),
('4LcgygmNCm4Nb+HXUgswAg', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'alumniinfo/detailview_alumniinfo.php'),
('4LcgygmNCm4Nb+HXUgswAg', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'alumniinfo/listview_alumniinfo.php'),
('4LcgygmNCm4Nb+HXUgswAg', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'alumniinfo/delete_alumniinfo.php'),
('4LcgygmNCm4Nb+HXUgswAg', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'alumniinfo/csv_alumniinfo.php'),
('4LcgygmNCm4Nb+HXUgswAg', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'alumniinfo/reporter_alumniinfo.php'),
('4LcgygmNCm4Nb+HXUgswAg', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'alumniinfo/reporter_result_alumniinfo.php'),
('4LcgygmNCm4Nb+HXUgswAg', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'alumniinfo/reporter_pdfresult_alumniinfo.php'),
('waify5HOiXjy34ZHtvsmJw', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'alumniprofqualification/add_alumniprofqualification.php'),
('waify5HOiXjy34ZHtvsmJw', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'alumniprofqualification/edit_alumniprofqualification.php'),
('waify5HOiXjy34ZHtvsmJw', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'alumniprofqualification/detailview_alumniprofqualification.php'),
('waify5HOiXjy34ZHtvsmJw', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'alumniprofqualification/listview_alumniprofqualification.php'),
('waify5HOiXjy34ZHtvsmJw', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'alumniprofqualification/delete_alumniprofqualification.php'),
('waify5HOiXjy34ZHtvsmJw', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'alumniprofqualification/csv_alumniprofqualification.php'),
('waify5HOiXjy34ZHtvsmJw', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'alumniprofqualification/reporter_alumniprofqualification.php'),
('waify5HOiXjy34ZHtvsmJw', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'alumniprofqualification/reporter_result_alumniprofqualification.php'),
('waify5HOiXjy34ZHtvsmJw', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'alumniprofqualification/reporter_pdfresult_alumniprofqualification.php'),
('yN0DJE4um2+326So7rjsog', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'company/add_company.php'),
('yN0DJE4um2+326So7rjsog', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'company/edit_company.php'),
('yN0DJE4um2+326So7rjsog', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'company/detailview_company.php'),
('yN0DJE4um2+326So7rjsog', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'company/listview_company.php'),
('yN0DJE4um2+326So7rjsog', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'company/delete_company.php'),
('yN0DJE4um2+326So7rjsog', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'company/csv_company.php'),
('yN0DJE4um2+326So7rjsog', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'company/reporter_company.php'),
('yN0DJE4um2+326So7rjsog', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'company/reporter_result_company.php'),
('yN0DJE4um2+326So7rjsog', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'company/reporter_pdfresult_company.php'),
('5y+7FC4RfpDe8jEZxPdR6A', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'companybranch/add_companybranch.php'),
('5y+7FC4RfpDe8jEZxPdR6A', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'companybranch/edit_companybranch.php'),
('5y+7FC4RfpDe8jEZxPdR6A', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'companybranch/detailview_companybranch.php'),
('5y+7FC4RfpDe8jEZxPdR6A', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'companybranch/listview_companybranch.php'),
('5y+7FC4RfpDe8jEZxPdR6A', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'companybranch/delete_companybranch.php'),
('5y+7FC4RfpDe8jEZxPdR6A', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'companybranch/csv_companybranch.php'),
('5y+7FC4RfpDe8jEZxPdR6A', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'companybranch/reporter_companybranch.php'),
('5y+7FC4RfpDe8jEZxPdR6A', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'companybranch/reporter_result_companybranch.php'),
('5y+7FC4RfpDe8jEZxPdR6A', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'companybranch/reporter_pdfresult_companybranch.php'),
('EzPQTu2T0wFBPOCfaZZj+w', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'companycontact/add_companycontact.php'),
('EzPQTu2T0wFBPOCfaZZj+w', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'companycontact/edit_companycontact.php'),
('EzPQTu2T0wFBPOCfaZZj+w', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'companycontact/detailview_companycontact.php'),
('EzPQTu2T0wFBPOCfaZZj+w', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'companycontact/listview_companycontact.php'),
('EzPQTu2T0wFBPOCfaZZj+w', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'companycontact/delete_companycontact.php'),
('EzPQTu2T0wFBPOCfaZZj+w', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'companycontact/csv_companycontact.php'),
('EzPQTu2T0wFBPOCfaZZj+w', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'companycontact/reporter_companycontact.php'),
('EzPQTu2T0wFBPOCfaZZj+w', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'companycontact/reporter_result_companycontact.php'),
('EzPQTu2T0wFBPOCfaZZj+w', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'companycontact/reporter_pdfresult_companycontact.php'),
('xCrmPZQevR9GoG8+LuVUfA', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'contact/add_contact.php'),
('xCrmPZQevR9GoG8+LuVUfA', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'contact/edit_contact.php'),
('xCrmPZQevR9GoG8+LuVUfA', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'contact/detailview_contact.php'),
('xCrmPZQevR9GoG8+LuVUfA', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'contact/listview_contact.php'),
('xCrmPZQevR9GoG8+LuVUfA', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'contact/delete_contact.php'),
('xCrmPZQevR9GoG8+LuVUfA', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'contact/csv_contact.php'),
('xCrmPZQevR9GoG8+LuVUfA', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'contact/reporter_contact.php'),
('xCrmPZQevR9GoG8+LuVUfA', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'contact/reporter_result_contact.php'),
('xCrmPZQevR9GoG8+LuVUfA', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'contact/reporter_pdfresult_contact.php'),
('x7UZl3LjuUut/FYB+/Hw8g', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'employmentstatus/add_employmentstatus.php'),
('x7UZl3LjuUut/FYB+/Hw8g', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'employmentstatus/edit_employmentstatus.php'),
('x7UZl3LjuUut/FYB+/Hw8g', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'employmentstatus/detailview_employmentstatus.php'),
('x7UZl3LjuUut/FYB+/Hw8g', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'employmentstatus/listview_employmentstatus.php'),
('x7UZl3LjuUut/FYB+/Hw8g', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'employmentstatus/delete_employmentstatus.php'),
('x7UZl3LjuUut/FYB+/Hw8g', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'employmentstatus/csv_employmentstatus.php'),
('x7UZl3LjuUut/FYB+/Hw8g', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'employmentstatus/reporter_employmentstatus.php'),
('x7UZl3LjuUut/FYB+/Hw8g', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'employmentstatus/reporter_result_employmentstatus.php'),
('x7UZl3LjuUut/FYB+/Hw8g', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'employmentstatus/reporter_pdfresult_employmentstatus.php'),
('0siZqGcqCzfeqylqN8eQ3g', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'industrysector/add_industrysector.php'),
('0siZqGcqCzfeqylqN8eQ3g', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'industrysector/edit_industrysector.php'),
('0siZqGcqCzfeqylqN8eQ3g', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'industrysector/detailview_industrysector.php'),
('0siZqGcqCzfeqylqN8eQ3g', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'industrysector/listview_industrysector.php'),
('0siZqGcqCzfeqylqN8eQ3g', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'industrysector/delete_industrysector.php'),
('0siZqGcqCzfeqylqN8eQ3g', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'industrysector/csv_industrysector.php'),
('0siZqGcqCzfeqylqN8eQ3g', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'industrysector/reporter_industrysector.php'),
('0siZqGcqCzfeqylqN8eQ3g', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'industrysector/reporter_result_industrysector.php'),
('0siZqGcqCzfeqylqN8eQ3g', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'industrysector/reporter_pdfresult_industrysector.php'),
('CcMUnL8uUi/t4SX+BTxfBA', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'internassignment/add_internassignment.php'),
('CcMUnL8uUi/t4SX+BTxfBA', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'internassignment/edit_internassignment.php'),
('CcMUnL8uUi/t4SX+BTxfBA', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'internassignment/detailview_internassignment.php'),
('CcMUnL8uUi/t4SX+BTxfBA', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'internassignment/listview_internassignment.php'),
('CcMUnL8uUi/t4SX+BTxfBA', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'internassignment/delete_internassignment.php'),
('CcMUnL8uUi/t4SX+BTxfBA', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'internassignment/csv_internassignment.php'),
('CcMUnL8uUi/t4SX+BTxfBA', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'internassignment/reporter_internassignment.php'),
('CcMUnL8uUi/t4SX+BTxfBA', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'internassignment/reporter_result_internassignment.php'),
('CcMUnL8uUi/t4SX+BTxfBA', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'internassignment/reporter_pdfresult_internassignment.php'),
('LUc0D0sjZZ8OAA3hhOG8og', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'schoolcourse/add_schoolcourse.php'),
('LUc0D0sjZZ8OAA3hhOG8og', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'schoolcourse/edit_schoolcourse.php'),
('LUc0D0sjZZ8OAA3hhOG8og', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'schoolcourse/detailview_schoolcourse.php'),
('LUc0D0sjZZ8OAA3hhOG8og', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'schoolcourse/listview_schoolcourse.php'),
('LUc0D0sjZZ8OAA3hhOG8og', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'schoolcourse/delete_schoolcourse.php'),
('LUc0D0sjZZ8OAA3hhOG8og', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'schoolcourse/csv_schoolcourse.php'),
('LUc0D0sjZZ8OAA3hhOG8og', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'schoolcourse/reporter_schoolcourse.php'),
('LUc0D0sjZZ8OAA3hhOG8og', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'schoolcourse/reporter_result_schoolcourse.php'),
('LUc0D0sjZZ8OAA3hhOG8og', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'schoolcourse/reporter_pdfresult_schoolcourse.php'),
('jsWaTObO0RovXzr6ukG3Ew', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'refstudent/add_refstudent.php'),
('jsWaTObO0RovXzr6ukG3Ew', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'refstudent/edit_refstudent.php'),
('jsWaTObO0RovXzr6ukG3Ew', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'refstudent/detailview_refstudent.php'),
('jsWaTObO0RovXzr6ukG3Ew', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'refstudent/listview_refstudent.php'),
('jsWaTObO0RovXzr6ukG3Ew', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'refstudent/delete_refstudent.php'),
('jsWaTObO0RovXzr6ukG3Ew', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'refstudent/csv_refstudent.php'),
('jsWaTObO0RovXzr6ukG3Ew', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'refstudent/reporter_refstudent.php'),
('jsWaTObO0RovXzr6ukG3Ew', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'refstudent/reporter_result_refstudent.php'),
('jsWaTObO0RovXzr6ukG3Ew', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'refstudent/reporter_pdfresult_refstudent.php');

-- --------------------------------------------------------

--
-- Table structure for table `table_relations`
--

CREATE TABLE IF NOT EXISTS `table_relations` (
  `Relation_ID` char(44) NOT NULL,
  `Project_ID` char(44) NOT NULL,
  `Relation` varchar(255) NOT NULL,
  `Parent_Field_ID` char(44) NOT NULL,
  `Child_Field_ID` char(44) NOT NULL,
  `Label` varchar(255) NOT NULL,
  `Child_Field_Subtext` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table_relations`
--

INSERT INTO `table_relations` (`Relation_ID`, `Project_ID`, `Relation`, `Parent_Field_ID`, `Child_Field_ID`, `Label`, `Child_Field_Subtext`) VALUES
('SLY63w8Z1laVCGAIWGAdPA', '7RTC0uvD/FfelekI+YWo/Q', 'ONE-to-MANY', 'Kyt5KqLMS50vb0l++R3dlQ', 'UCEcrknZIiT0nmwV7pAuFg', 'eval_hdr=>eval_dtl', ''),
('V/WknQpZgMzG6xBzrJKbdQ', '7RTC0uvD/FfelekI+YWo/Q', 'ONE-to-MANY', 'CxlOIAx9KjRFuZiJcH1PJw', '4oUKKJGzUP9luCUIf650pg', 'final_paper_hdr=>final_paper_dtl', ''),
('xbdaPK5VxTjHHRCnzVAsBw', '7RTC0uvD/FfelekI+YWo/Q', 'ONE-to-MANY', 'ABJQpA/InsHAzAw4zMS4dQ', 'C0NA8iIRScGdx7Q+w2Z3oA', 'resume_hdr=>resume_dtl', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `database_connection`
--
ALTER TABLE `database_connection`
  ADD PRIMARY KEY (`DB_Connection_ID`);

--
-- Indexes for table `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`Page_ID`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`Project_ID`);

--
-- Indexes for table `table`
--
ALTER TABLE `table`
  ADD PRIMARY KEY (`Table_ID`),
  ADD KEY `DB_Connection_ID` (`DB_Connection_ID`),
  ADD KEY `Project_ID` (`Project_ID`);

--
-- Indexes for table `table_fields`
--
ALTER TABLE `table_fields`
  ADD PRIMARY KEY (`Field_ID`);

--
-- Indexes for table `table_fields_book_list`
--
ALTER TABLE `table_fields_book_list`
  ADD PRIMARY KEY (`Field_ID`);

--
-- Indexes for table `table_fields_list`
--
ALTER TABLE `table_fields_list`
  ADD PRIMARY KEY (`Field_ID`,`List_ID`);

--
-- Indexes for table `table_fields_list_source_select`
--
ALTER TABLE `table_fields_list_source_select`
  ADD PRIMARY KEY (`Field_ID`,`Auto_ID`);

--
-- Indexes for table `table_fields_list_source_where`
--
ALTER TABLE `table_fields_list_source_where`
  ADD PRIMARY KEY (`Field_ID`,`Where_Field_ID`,`Where_Field_Operand`,`Where_Field_Value`);

--
-- Indexes for table `table_fields_predefined_list`
--
ALTER TABLE `table_fields_predefined_list`
  ADD PRIMARY KEY (`List_ID`);

--
-- Indexes for table `table_fields_predefined_list_items`
--
ALTER TABLE `table_fields_predefined_list_items`
  ADD PRIMARY KEY (`List_ID`,`Number`);

--
-- Indexes for table `table_fields_secondary_validation`
--
ALTER TABLE `table_fields_secondary_validation`
  ADD PRIMARY KEY (`Field_ID`,`Validation_Routine`);

--
-- Indexes for table `table_pages`
--
ALTER TABLE `table_pages`
  ADD PRIMARY KEY (`Table_ID`,`Page_ID`);

--
-- Indexes for table `table_relations`
--
ALTER TABLE `table_relations`
  ADD PRIMARY KEY (`Relation_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `table_fields_list_source_select`
--
ALTER TABLE `table_fields_list_source_select`
  MODIFY `Auto_ID` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

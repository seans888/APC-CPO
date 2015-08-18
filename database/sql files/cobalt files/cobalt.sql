-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 18, 2015 at 07:04 AM
-- Server version: 5.5.32
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cobalt`
--
CREATE DATABASE IF NOT EXISTS `cobalt` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `cobalt`;

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
  `Database` varchar(255) NOT NULL,
  PRIMARY KEY (`DB_Connection_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `database_connection`
--

INSERT INTO `database_connection` (`DB_Connection_ID`, `Project_ID`, `DB_Connection_Name`, `Hostname`, `Username`, `Password`, `Database`) VALUES
('lA+BzvuByZjFxUw+UmxnVA', '29HS2+Ab1lYG+SeI+V9PSA', 'con1', 'localhost', 'root', '', 'apc-cpo'),
('dit97heRcA/vQf2RbxJk2Q', '29HS2+Ab1lYG+SeI+V9PSA', 'con2', 'localhost', 'root', '', 'refstudent'),
('yqMgEKkK1bVjtTujR8PtOg', '29HS2+Ab1lYG+SeI+V9PSA', 'con3', 'localhost', 'root', '', 'accom');

-- --------------------------------------------------------

--
-- Table structure for table `page`
--

CREATE TABLE IF NOT EXISTS `page` (
  `Page_ID` char(44) NOT NULL,
  `Page_Name` varchar(255) NOT NULL,
  `Generator` varchar(255) NOT NULL,
  `Description` text NOT NULL,
  PRIMARY KEY (`Page_ID`)
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
  `Database_Connection_ID` varchar(255) NOT NULL,
  PRIMARY KEY (`Project_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`Project_ID`, `Project_Name`, `Client_Name`, `Project_Description`, `Base_Directory`, `Database_Connection_ID`) VALUES
('29HS2+Ab1lYG+SeI+V9PSA', 'apc_cpo', 'cpo', 'this serves as a communication site for internship', 'apc_cpo', 'lA+BzvuByZjFxUw+UmxnVA');

-- --------------------------------------------------------

--
-- Table structure for table `table`
--

CREATE TABLE IF NOT EXISTS `table` (
  `Table_ID` char(44) NOT NULL,
  `Project_ID` char(44) NOT NULL,
  `DB_Connection_ID` varchar(255) NOT NULL,
  `Table_Name` varchar(255) NOT NULL,
  `Remarks` tinytext NOT NULL,
  PRIMARY KEY (`Table_ID`),
  KEY `DB_Connection_ID` (`DB_Connection_ID`),
  KEY `Project_ID` (`Project_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table`
--

INSERT INTO `table` (`Table_ID`, `Project_ID`, `DB_Connection_ID`, `Table_Name`, `Remarks`) VALUES
('0Nxi+FaBGRs7px+nBg2ihg', '29HS2+Ab1lYG+SeI+V9PSA', 'lA+BzvuByZjFxUw+UmxnVA', 'comment', ''),
('nFxFEoFWN326JbOAp/R6/A', '29HS2+Ab1lYG+SeI+V9PSA', 'yqMgEKkK1bVjtTujR8PtOg', 'internassignment', ''),
('tELIbir8lxV5DgOLxvPC9w', '29HS2+Ab1lYG+SeI+V9PSA', 'yqMgEKkK1bVjtTujR8PtOg', 'schoolcourse', ''),
('MHzV8Uk/dYKMPF3/G5FRWg', '29HS2+Ab1lYG+SeI+V9PSA', 'yqMgEKkK1bVjtTujR8PtOg', 'industrysector', ''),
('N/JEvCh43Ia/OAQIbGJgUA', '29HS2+Ab1lYG+SeI+V9PSA', 'yqMgEKkK1bVjtTujR8PtOg', 'employmentstatus', ''),
('fhO963CXHbjEehzNxuX7Hg', '29HS2+Ab1lYG+SeI+V9PSA', 'yqMgEKkK1bVjtTujR8PtOg', 'contact', ''),
('CEA7kZcKDhVjzmYv2o/Ikg', '29HS2+Ab1lYG+SeI+V9PSA', 'yqMgEKkK1bVjtTujR8PtOg', 'companycontact', ''),
('N4wcHzB+ZE3GV6+Xfw2XFw', '29HS2+Ab1lYG+SeI+V9PSA', 'yqMgEKkK1bVjtTujR8PtOg', 'companybranch', ''),
('ZEb+NBTLjtkuH0hL/W2MzQ', '29HS2+Ab1lYG+SeI+V9PSA', 'yqMgEKkK1bVjtTujR8PtOg', 'company', ''),
('oLFBg8nkr39DKKArWzO+uQ', '29HS2+Ab1lYG+SeI+V9PSA', 'yqMgEKkK1bVjtTujR8PtOg', 'alumniprofqualification', ''),
('wofGInhDNipd+aaq2AxH7A', '29HS2+Ab1lYG+SeI+V9PSA', 'yqMgEKkK1bVjtTujR8PtOg', 'alumniinfo', ''),
('+p1ONXa5Y3mosQjEsSL1Ow', '29HS2+Ab1lYG+SeI+V9PSA', 'yqMgEKkK1bVjtTujR8PtOg', 'alumnifurtherstudies', ''),
('xvdqqwk5xU5kjp0S/HMQrQ', '29HS2+Ab1lYG+SeI+V9PSA', 'yqMgEKkK1bVjtTujR8PtOg', 'alumniemplrecord', ''),
('BZRL4ylVxu7cGfoszczjhw', '29HS2+Ab1lYG+SeI+V9PSA', 'yqMgEKkK1bVjtTujR8PtOg', 'alumniemplmove', ''),
('4HgZaQV5wnz2/bLmk8uv3A', '29HS2+Ab1lYG+SeI+V9PSA', 'yqMgEKkK1bVjtTujR8PtOg', 'alumniaddress', ''),
('4szC/Bj6nvNWqkK0cmnwUw', '29HS2+Ab1lYG+SeI+V9PSA', 'lA+BzvuByZjFxUw+UmxnVA', 'resume_hdr', ''),
('9PGOX8jzqaxex/7NeW+wYw', '29HS2+Ab1lYG+SeI+V9PSA', 'lA+BzvuByZjFxUw+UmxnVA', 'resume_dtl', ''),
('UpARvlbnQ3PjbrPM6XQCxw', '29HS2+Ab1lYG+SeI+V9PSA', 'lA+BzvuByZjFxUw+UmxnVA', 'questionnaire', ''),
('S947fjTtspMlXGQSr98Syg', '29HS2+Ab1lYG+SeI+V9PSA', 'dit97heRcA/vQf2RbxJk2Q', 'refstudent', ''),
('DJEIyc5XIqOA21tHy9txtg', '29HS2+Ab1lYG+SeI+V9PSA', 'lA+BzvuByZjFxUw+UmxnVA', 'accomplishment', ''),
('izedPuOk/EIecz81oyUNlw', '29HS2+Ab1lYG+SeI+V9PSA', 'lA+BzvuByZjFxUw+UmxnVA', 'attendance', ''),
('ixAQEfsOfBgn/J2JMQthWQ', '29HS2+Ab1lYG+SeI+V9PSA', 'lA+BzvuByZjFxUw+UmxnVA', 'eval_dtl', ''),
('DYdQ1yhrEqnk4fkCI3yXKg', '29HS2+Ab1lYG+SeI+V9PSA', 'lA+BzvuByZjFxUw+UmxnVA', 'eval_hdr', ''),
('ROcadsB5x5L8QMe+Qm9VIQ', '29HS2+Ab1lYG+SeI+V9PSA', 'lA+BzvuByZjFxUw+UmxnVA', 'final_paper_dtl', ''),
('jSw+ZCbGYk83KlZBovruvQ', '29HS2+Ab1lYG+SeI+V9PSA', 'lA+BzvuByZjFxUw+UmxnVA', 'final_paper_hdr', ''),
('tAyK++CK01lIwo+V8T4f5g', '29HS2+Ab1lYG+SeI+V9PSA', 'lA+BzvuByZjFxUw+UmxnVA', 'internship', ''),
('dZ5TFJM2PRtMF4AjHiXYYw', '29HS2+Ab1lYG+SeI+V9PSA', 'lA+BzvuByZjFxUw+UmxnVA', 'post', '');

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
  `Control_Type` varchar(255) NOT NULL,
  `Label` varchar(255) NOT NULL,
  `In_Listview` varchar(255) NOT NULL,
  PRIMARY KEY (`Field_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table_fields`
--

INSERT INTO `table_fields` (`Field_ID`, `Table_ID`, `Field_Name`, `Data_Type`, `Nullable`, `Length`, `Attribute`, `Control_Type`, `Label`, `In_Listview`) VALUES
('HGIR0GCVSwlBx+5ys7xWLA', 'YGu1gvsyVIw0B/N00ZPmUA', 'Id', 'integer', 'NO', 11, 'primary key', 'none', 'ID', 'no'),
('WdNFNnjjhb7kL9FAqZxKkw', 'YGu1gvsyVIw0B/N00ZPmUA', 'CompanyBranchId', 'integer', 'NO', 11, '', 'textbox', 'CompanyBranchId', 'yes'),
('St0V+ARxcsmUVmLYfSjXkQ', 'YGu1gvsyVIw0B/N00ZPmUA', 'ContactId', 'integer', 'NO', 11, '', 'textbox', 'ContactId', 'yes'),
('wvJK9VlZye2YbJSImZFGMA', 'tAyK++CK01lIwo+V8T4f5g', 'id', 'integer', 'NO', 11, 'primary key', 'none', 'ID', 'no'),
('GIoEfmzYuLiDdUDnt8VjIA', 'tAyK++CK01lIwo+V8T4f5g', 'department', 'varchar', 'NO', 45, '', 'textbox', 'Department', 'yes'),
('mDLbumXWg3+krorfTPDNZA', 'tAyK++CK01lIwo+V8T4f5g', 'position', 'varchar', 'NO', 45, '', 'textbox', 'Position', 'yes'),
('+90yib70MpRKsmf5+uImHw', 'S947fjTtspMlXGQSr98Syg', 'student_id', 'varchar', 'NO', 11, 'primary key', 'textbox', 'Student ID', 'yes'),
('NKvk8u6f0SEQamFwOkhfGg', 'S947fjTtspMlXGQSr98Syg', 'student_last_name', 'varchar', 'NO', 25, '', 'textbox', 'Student Last Name', 'yes'),
('JrZjSYWhfHhUWKhE5i5O9A', 'S947fjTtspMlXGQSr98Syg', 'student_first_name', 'varchar', 'NO', 30, '', 'textbox', 'Student First Name', 'yes'),
('eLDSA/yplPtQ25HGNEOBBQ', 'S947fjTtspMlXGQSr98Syg', 'student_middle_name', 'varchar', 'NO', 25, '', 'textbox', 'Student Middle Name', 'yes'),
('t2lTVDF91XSF08f5Jpmfwg', 'S947fjTtspMlXGQSr98Syg', 'birth_date', 'date', 'NO', 0, '', 'date controls', 'Birth Date', 'yes'),
('zk7hOZPz/d1idnvxA/U4Xw', 'S947fjTtspMlXGQSr98Syg', 'birth_place', 'varchar', 'NO', 35, '', 'textbox', 'Birth Place', 'yes'),
('xS+YKGhyYpz4M7fgAoHSwQ', 'S947fjTtspMlXGQSr98Syg', 'admission_date', 'date', 'NO', 0, '', 'date controls', 'Admission Date', 'yes'),
('nEIY4lr7h5fpKtN9T8tifg', 'S947fjTtspMlXGQSr98Syg', 'entry_level', 'varchar', 'YES', 255, '', 'textbox', 'Entry Level', 'yes'),
('ZXnr32wVD8i7yMyYTF2Cdw', 'S947fjTtspMlXGQSr98Syg', 'admission_credential', 'varchar', 'YES', 2500, '', 'textbox', 'Admission Credential', 'yes'),
('tGFGz5qC+OVbeapMjlhqXQ', 'S947fjTtspMlXGQSr98Syg', 'mail_grades_to', 'varchar', 'NO', 255, '', 'textbox', 'Mail Grades To', 'yes'),
('0d14pW/p1emnKJTZsh+e1A', 'S947fjTtspMlXGQSr98Syg', 'exit_level', 'varchar', 'YES', 255, '', 'textbox', 'Exit Level', 'yes'),
('3SYlCe9IxS75yNb1nWwlJQ', 'S947fjTtspMlXGQSr98Syg', 'nationality', 'varchar', 'NO', 255, '', 'textbox', 'Nationality', 'yes'),
('COPh2A2pfLU9yoZlSzquCg', 'S947fjTtspMlXGQSr98Syg', 'gender', 'varchar', 'NO', 255, '', 'textbox', 'Gender', 'yes'),
('zF13RZpdCogNGRdYsYQPcw', 'S947fjTtspMlXGQSr98Syg', 'address', 'varchar', 'NO', 250, '', 'textarea', 'Address', 'yes'),
('pj6DmBJa7fGlR4DA9RoQlg', 'S947fjTtspMlXGQSr98Syg', 'postal_code', 'varchar', 'YES', 250, '', 'textbox', 'Postal Code', 'yes'),
('8Na5s74GkoDr2mglIyR/sw', 'S947fjTtspMlXGQSr98Syg', 'tel_num', 'varchar', 'YES', 250, '', 'textbox', 'Tel Num', 'yes'),
('dOoSe+CX40gxGEdiv1yHIQ', 'S947fjTtspMlXGQSr98Syg', 'mobile_num', 'varchar', 'YES', 255, '', 'textbox', 'Mobile Num', 'yes'),
('BmESiYIyHPOhF1HClGQIEw', 'S947fjTtspMlXGQSr98Syg', 'email', 'varchar', 'YES', 250, '', 'textbox', 'Email', 'yes'),
('lVOWemNSOjuJAHuRdZqW7Q', 'S947fjTtspMlXGQSr98Syg', 'religion', 'varchar', 'YES', 25, '', 'textbox', 'Religion', 'yes'),
('aExB13tz1+SYwaVpcb61LA', 'S947fjTtspMlXGQSr98Syg', 'civil_status', 'varchar', 'NO', 255, '', 'textbox', 'Civil Status', 'yes'),
('Q/Jw175KEYiu+NfwqKxKRQ', 'S947fjTtspMlXGQSr98Syg', 'box_num', 'varchar', 'NO', 250, '', 'textbox', 'Box Num', 'yes'),
('q9OdK3qAYIkUA0AqjFOSSQ', '4HgZaQV5wnz2/bLmk8uv3A', 'Id', 'integer', 'NO', 11, 'primary key', 'none', 'ID', 'no'),
('Ir6Kt92zRtyI4hKujr/5dQ', '4HgZaQV5wnz2/bLmk8uv3A', 'AlumniInfoId', 'integer', 'NO', 11, '', 'textbox', 'AlumniInfoId', 'yes'),
('aUL0HTuTkVAS73jfRuZIAg', '4HgZaQV5wnz2/bLmk8uv3A', 'AddressType', 'varchar', 'NO', 255, '', 'textbox', 'AddressType', 'yes'),
('v8gigxiIwU1SOGrIZsMu/g', '4HgZaQV5wnz2/bLmk8uv3A', 'Address', 'varchar', 'NO', 255, '', 'textarea', 'Address', 'yes'),
('3XyQ+md7GRx+PrLWn54naw', '4HgZaQV5wnz2/bLmk8uv3A', 'MunicipalityCity', 'varchar', 'NO', 255, '', 'textbox', 'MunicipalityCity', 'yes'),
('D81pzhdvyEuAccHI7KVvLw', '4HgZaQV5wnz2/bLmk8uv3A', 'ProvinceState', 'varchar', 'NO', 255, '', 'textbox', 'ProvinceState', 'yes'),
('J2jsRUZjLoFmRBnL5B8NJg', '4HgZaQV5wnz2/bLmk8uv3A', 'Region', 'varchar', 'NO', 255, '', 'textbox', 'Region', 'yes'),
('kd2mxUWKVhR08ASKkPlQdA', '4HgZaQV5wnz2/bLmk8uv3A', 'Country', 'varchar', 'NO', 255, '', 'textbox', 'Country', 'yes'),
('8rpMex2szY/gMlMbTx/qAA', '4HgZaQV5wnz2/bLmk8uv3A', 'PostalCode', 'varchar', 'NO', 255, '', 'textbox', 'PostalCode', 'yes'),
('3Nu9ciKigGOJsPaHyKjXmw', '4HgZaQV5wnz2/bLmk8uv3A', 'IsCurrent', 'integer', 'NO', 1, '', 'textbox', 'IsCurrent', 'yes'),
('aGoYdIg2O1k49UzoieR48g', 'BZRL4ylVxu7cGfoszczjhw', 'Id', 'integer', 'NO', 11, 'primary key', 'none', 'ID', 'no'),
('UWDQGi9R3OCyjVynTGX1HQ', 'BZRL4ylVxu7cGfoszczjhw', 'AlumniEmplRecordId', 'integer', 'NO', 11, '', 'textbox', 'AlumniEmplRecordId', 'yes'),
('t6rh81iUQiPFg3WsOdiQkw', 'BZRL4ylVxu7cGfoszczjhw', 'DateEffective', 'date', 'YES', 0, '', 'date controls', 'DateEffective', 'yes'),
('THMewumHpEtdZg5kCwv+nA', 'BZRL4ylVxu7cGfoszczjhw', 'Designation', 'varchar', 'YES', 50, '', 'textbox', 'Designation', 'yes'),
('WeQRfhw3hiAauD2SiQITHQ', 'BZRL4ylVxu7cGfoszczjhw', 'SalaryRange', 'varchar', 'YES', 255, '', 'textbox', 'SalaryRange', 'yes'),
('MLAeori+3JPq4TR3th199w', 'BZRL4ylVxu7cGfoszczjhw', 'Remarks', 'text', 'YES', 0, '', 'textarea', 'Remarks', 'yes'),
('IgnN1RUEudRQYGJ71SijEQ', 'xvdqqwk5xU5kjp0S/HMQrQ', 'Id', 'integer', 'NO', 11, 'primary key', 'none', 'ID', 'no'),
('VacfaBA6ckmZaOcjLSKE3w', 'xvdqqwk5xU5kjp0S/HMQrQ', 'AlumniInfoId', 'integer', 'NO', 20, '', 'textbox', 'AlumniInfoId', 'yes'),
('bAAo0U/JdFBWgnB0um4xRg', 'xvdqqwk5xU5kjp0S/HMQrQ', 'CompanyBranchId', 'integer', 'YES', 11, '', 'textbox', 'CompanyBranchId', 'yes'),
('WNPAIjXklkxSk/kZUTDZ7A', 'xvdqqwk5xU5kjp0S/HMQrQ', 'NoOfYearsInCompany', 'integer', 'YES', 11, '', 'textbox', 'NoOfYearsInCompany', 'yes'),
('ITKf+Qb/6Q5MHw9UXFSSPQ', 'xvdqqwk5xU5kjp0S/HMQrQ', 'Position', 'varchar', 'YES', 255, '', 'textbox', 'Position', 'yes'),
('nCodkFf43Ud2BI7CFqeVwA', 'xvdqqwk5xU5kjp0S/HMQrQ', 'NoOfYearsInPosition', 'integer', 'YES', 11, '', 'textbox', 'NoOfYearsInPosition', 'yes'),
('yGFbCJypRXwuH+6Zbs6mfQ', 'xvdqqwk5xU5kjp0S/HMQrQ', 'Remarks', 'text', 'YES', 0, '', 'textarea', 'Remarks', 'yes'),
('uuPcqO4a1gLr8hXJJn0duw', 'xvdqqwk5xU5kjp0S/HMQrQ', 'IsCurrentlyEmployed', 'smallint', 'YES', 6, '', 'textbox', 'IsCurrentlyEmployed', 'yes'),
('tptwAjWrDH/gD8GHYLANQw', 'xvdqqwk5xU5kjp0S/HMQrQ', 'IsAbsorbed', 'smallint', 'YES', 6, '', 'textbox', 'IsAbsorbed', 'yes'),
('EaVNKR9wydKDxCKLyehEwA', 'xvdqqwk5xU5kjp0S/HMQrQ', 'Email', 'varchar', 'YES', 255, '', 'textbox', 'Email', 'yes'),
('Zddx7800M/ZCtZjWJD9yiQ', 'xvdqqwk5xU5kjp0S/HMQrQ', 'ContactNo', 'varchar', 'YES', 255, '', 'textbox', 'ContactNo', 'yes'),
('Z/y3utrvr/h/y48jNbZY5g', 'xvdqqwk5xU5kjp0S/HMQrQ', 'StartDate', 'date', 'YES', 0, '', 'date controls', 'StartDate', 'yes'),
('IV5YGCg01cpNk0AnmqUhHA', 'xvdqqwk5xU5kjp0S/HMQrQ', 'EndDate', 'date', 'YES', 0, '', 'date controls', 'EndDate', 'yes'),
('/VWUMFaeYKuXy2pCSOQKjA', '+p1ONXa5Y3mosQjEsSL1Ow', 'Id', 'integer', 'NO', 20, 'primary key', 'none', 'ID', 'no'),
('iS+m4uz5trA5ggeI0PjWBA', '+p1ONXa5Y3mosQjEsSL1Ow', 'AlumniInfoId', 'integer', 'NO', 20, '', 'textbox', 'AlumniInfoId', 'yes'),
('xvJm81+JKCcVs59guiRi3g', '+p1ONXa5Y3mosQjEsSL1Ow', 'StudyType', 'varchar', 'NO', 255, '', 'textbox', 'StudyType', 'yes'),
('4nFWmQIgZjxBQXhSOHN/cw', '+p1ONXa5Y3mosQjEsSL1Ow', 'Course', 'varchar', 'NO', 50, '', 'textbox', 'Course', 'yes'),
('kXSfHTucgTuKfKgXBjc+mw', '+p1ONXa5Y3mosQjEsSL1Ow', 'StartDate', 'date', 'YES', 0, '', 'date controls', 'StartDate', 'yes'),
('m0QQ0dOeD2Y7UGieS5V3PA', '+p1ONXa5Y3mosQjEsSL1Ow', 'EndDate', 'date', 'YES', 0, '', 'date controls', 'EndDate', 'yes'),
('u552y5JgQ/JHdQlHA+6zlw', '+p1ONXa5Y3mosQjEsSL1Ow', 'SchoolOrganization', 'varchar', 'YES', 50, '', 'textbox', 'SchoolOrganization', 'yes'),
('2hGRDyAII4uGApEXlM4OvQ', 'wofGInhDNipd+aaq2AxH7A', 'Id', 'integer', 'NO', 20, 'primary key', 'none', 'ID', 'no'),
('3Ln+tK7RmraTrtdzwc7ISQ', 'wofGInhDNipd+aaq2AxH7A', 'student_id', 'varchar', 'NO', 11, '', 'textbox', 'Student ID', 'yes'),
('1HytpzeQT0/FWxYJrCtfNg', 'wofGInhDNipd+aaq2AxH7A', 'LastName', 'varchar', 'NO', 50, '', 'textbox', 'LastName', 'yes'),
('VYK/O9SwwkaQVjrchw4+Jg', 'wofGInhDNipd+aaq2AxH7A', 'FirstName', 'varchar', 'NO', 50, '', 'textbox', 'FirstName', 'yes'),
('OSJpXwe9GXZl9F8fLKRyIg', 'wofGInhDNipd+aaq2AxH7A', 'MiddleName', 'varchar', 'YES', 50, '', 'textbox', 'MiddleName', 'yes'),
('0GdBV2eHsqq64kHCMpFi4g', 'wofGInhDNipd+aaq2AxH7A', 'BirthDate', 'date', 'YES', 0, '', 'date controls', 'BirthDate', 'yes'),
('6uLQpRoXtXjf78HTp3a40Q', 'wofGInhDNipd+aaq2AxH7A', 'Nationality', 'varchar', 'YES', 50, '', 'textbox', 'Nationality', 'yes'),
('u5QBRoDddEQIEvY1XlRCTg', 'wofGInhDNipd+aaq2AxH7A', 'CivilStatus', 'varchar', 'YES', 255, '', 'textbox', 'CivilStatus', 'yes'),
('UoCjpC4eEPzBX+AoDVGHbg', 'wofGInhDNipd+aaq2AxH7A', 'Religion', 'varchar', 'YES', 50, '', 'textbox', 'Religion', 'yes'),
('m6ru27Lg+Zl0kGC32PH9xw', 'wofGInhDNipd+aaq2AxH7A', 'Address', 'varchar', 'YES', 100, '', 'textarea', 'Address', 'yes'),
('STFfp9bkGsyZ5PVCyv3n+w', 'wofGInhDNipd+aaq2AxH7A', 'MunicipalityCity', 'varchar', 'YES', 50, '', 'textbox', 'MunicipalityCity', 'yes'),
('wBgoPs0zYxflz5DWtdp8Zw', 'wofGInhDNipd+aaq2AxH7A', 'ProvinceState', 'varchar', 'YES', 50, '', 'textbox', 'ProvinceState', 'yes'),
('76tRSPnZh4K+2OjhYpwNCg', 'wofGInhDNipd+aaq2AxH7A', 'Region', 'varchar', 'YES', 50, '', 'textbox', 'Region', 'yes'),
('vS9Hmx/vGe+QKKtRCFQt4Q', 'wofGInhDNipd+aaq2AxH7A', 'Country', 'varchar', 'YES', 50, '', 'textbox', 'Country', 'yes'),
('8A8rlv0W/OMh3pn097A7qA', 'wofGInhDNipd+aaq2AxH7A', 'IsAbroad', 'smallint', 'YES', 6, '', 'textbox', 'IsAbroad', 'yes'),
('mSy8E1m4pKegpeQKfGr4Gg', 'wofGInhDNipd+aaq2AxH7A', 'PostalCode', 'varchar', 'YES', 10, '', 'textbox', 'PostalCode', 'yes'),
('5b71G6D08x8dJMIACRCkIQ', 'wofGInhDNipd+aaq2AxH7A', 'ContactStatus', 'varchar', 'YES', 255, '', 'textbox', 'ContactStatus', 'yes'),
('XYMyB7SItVdPplnX6PV1gw', 'wofGInhDNipd+aaq2AxH7A', 'EmploymentStatus', 'varchar', 'YES', 255, '', 'textbox', 'EmploymentStatus', 'yes'),
('wkYk35AgFxxaBxefa53tmQ', 'wofGInhDNipd+aaq2AxH7A', 'LastUpdate', 'varchar', 'YES', 255, '', 'textbox', 'LastUpdate', 'yes'),
('pkwdjSkeKXVVrfdth60FCQ', 'oLFBg8nkr39DKKArWzO+uQ', 'Id', 'integer', 'NO', 11, 'primary key', 'none', 'ID', 'no'),
('dggGHFW7yxCdFY+xYLhGKg', 'oLFBg8nkr39DKKArWzO+uQ', 'AlumniInfoId', 'integer', 'NO', 20, '', 'textbox', 'AlumniInfoId', 'yes'),
('IW+o/B5hmjmUde7H450Ytw', 'oLFBg8nkr39DKKArWzO+uQ', 'QualificationType', 'varchar', 'NO', 255, '', 'textbox', 'QualificationType', 'yes'),
('17VFK2gOQQWH3f42YjmTAQ', 'oLFBg8nkr39DKKArWzO+uQ', 'Description', 'varchar', 'NO', 255, '', 'textarea', 'Description', 'yes'),
('eLBamn+QQPRcVE23k0Le7Q', 'oLFBg8nkr39DKKArWzO+uQ', 'LicenseCertNo', 'varchar', 'YES', 255, '', 'textbox', 'LicenseCertNo', 'yes'),
('JZEA13uA4are5aG+Lkq5Cw', 'oLFBg8nkr39DKKArWzO+uQ', 'Organization', 'varchar', 'YES', 255, '', 'textbox', 'Organization', 'yes'),
('TkYb+FV9p7MLex9gXtBsrg', 'oLFBg8nkr39DKKArWzO+uQ', 'DateEffective', 'date', 'YES', 0, '', 'date controls', 'DateEffective', 'yes'),
('tkz+OYquRBlZ32Lxk7I4Pw', 'ZEb+NBTLjtkuH0hL/W2MzQ', 'Id', 'integer', 'NO', 11, 'primary key', 'none', 'ID', 'no'),
('wxXeyHU2Q1x6qT6nWmLCOA', 'ZEb+NBTLjtkuH0hL/W2MzQ', 'CompanyName', 'varchar', 'NO', 100, '', 'textbox', 'CompanyName', 'yes'),
('c1e7L5gXoiVr3L7ESNT1bg', 'ZEb+NBTLjtkuH0hL/W2MzQ', 'IndustrySectorId', 'integer', 'NO', 11, '', 'textbox', 'IndustrySectorId', 'yes'),
('edJMd6F9i9IkCYEv+R9mVQ', 'ZEb+NBTLjtkuH0hL/W2MzQ', 'WebsiteUrl', 'varchar', 'YES', 150, '', 'textbox', 'WebsiteUrl', 'yes'),
('4phpSDoXEJOV4513WzqJww', 'ZEb+NBTLjtkuH0hL/W2MzQ', 'Email', 'varchar', 'YES', 150, '', 'textbox', 'Email', 'yes'),
('b3dB9FGl/6J45Gnu4v7poQ', 'ZEb+NBTLjtkuH0hL/W2MzQ', 'IsIndustryPartner', 'smallint', 'NO', 6, '', 'textbox', 'IsIndustryPartner', 'yes'),
('5gVgx+lAjuPK0cyZNBeBGg', 'ZEb+NBTLjtkuH0hL/W2MzQ', 'Status', 'varchar', 'YES', 255, '', 'textbox', 'Status', 'yes'),
('b+JFJejB0ZFOryxf6sNFLQ', 'ZEb+NBTLjtkuH0hL/W2MzQ', 'DateCreated', 'date', 'YES', 0, '', 'date controls', 'DateCreated', 'yes'),
('+w0QlkIVzTsJaZtZ9QZPYA', 'N4wcHzB+ZE3GV6+Xfw2XFw', 'Id', 'integer', 'NO', 11, 'primary key', 'none', 'ID', 'no'),
('KR3SVS+ZBeT6wS6S/j23Gg', 'N4wcHzB+ZE3GV6+Xfw2XFw', 'CompanyId', 'integer', 'NO', 11, '', 'textbox', 'CompanyId', 'yes'),
('v2yw1lITRhW8uFOnHnGn/g', 'N4wcHzB+ZE3GV6+Xfw2XFw', 'CompanyBranchName', 'varchar', 'NO', 50, '', 'textbox', 'CompanyBranchName', 'yes'),
('Mx3jX71eYmP13qxlE8gUXA', 'N4wcHzB+ZE3GV6+Xfw2XFw', 'Address', 'varchar', 'YES', 100, '', 'textarea', 'Address', 'yes'),
('TwR7C4WSfqB2YPUuEOJvQQ', 'N4wcHzB+ZE3GV6+Xfw2XFw', 'MunicipalityCity', 'varchar', 'YES', 50, '', 'textbox', 'MunicipalityCity', 'yes'),
('eMTUoSvqZDatzpwle5/otw', 'N4wcHzB+ZE3GV6+Xfw2XFw', 'ProvinceState', 'varchar', 'YES', 50, '', 'textbox', 'ProvinceState', 'yes'),
('cuC7/Q06FSY6zrbYfSjCfg', 'N4wcHzB+ZE3GV6+Xfw2XFw', 'Region', 'varchar', 'YES', 50, '', 'textbox', 'Region', 'yes'),
('tNRQa/G6rLHdEbazvQT19w', 'N4wcHzB+ZE3GV6+Xfw2XFw', 'Country', 'varchar', 'YES', 50, '', 'textbox', 'Country', 'yes'),
('XRxXA0v4GNdtwrmnzPp9rw', 'N4wcHzB+ZE3GV6+Xfw2XFw', 'PostalCode', 'varchar', 'YES', 10, '', 'textbox', 'PostalCode', 'yes'),
('EmC4jLx88kzOhW8OPS8pTw', 'N4wcHzB+ZE3GV6+Xfw2XFw', 'PhoneNo1', 'varchar', 'YES', 15, '', 'textbox', 'PhoneNo1', 'yes'),
('W1+I+/qSlJQTI+A9U2oS1A', 'N4wcHzB+ZE3GV6+Xfw2XFw', 'PhoneNo2', 'varchar', 'YES', 15, '', 'textbox', 'PhoneNo2', 'yes'),
('MKNkjlYqX9vlUHhdj/QHJQ', 'N4wcHzB+ZE3GV6+Xfw2XFw', 'WebsiteUrl', 'varchar', 'YES', 150, '', 'textbox', 'WebsiteUrl', 'yes'),
('hQB0My8GoEixRxlGr/oPlg', 'N4wcHzB+ZE3GV6+Xfw2XFw', 'Email', 'varchar', 'YES', 150, '', 'textbox', 'Email', 'yes'),
('4LYpOJTjR7CUgrIYj7t6EA', 'N4wcHzB+ZE3GV6+Xfw2XFw', 'DateCreated', 'date', 'YES', 0, '', 'date controls', 'DateCreated', 'yes'),
('ZGZwDtinSfIFE0ZxSaXg7g', 'N4wcHzB+ZE3GV6+Xfw2XFw', 'Status', 'varchar', 'YES', 255, '', 'textbox', 'Status', 'yes'),
('TeUVbyNM1Y+pF3J9nw2T7w', 'N4wcHzB+ZE3GV6+Xfw2XFw', 'DateStart', 'date', 'YES', 0, '', 'date controls', 'DateStart', 'yes'),
('Q9n4bN7HoGizw2MLw4okFg', 'N4wcHzB+ZE3GV6+Xfw2XFw', 'DateEnd', 'date', 'YES', 0, '', 'date controls', 'DateEnd', 'yes'),
('gp1tY5ASMDOPAOLWR+6UXw', 'CEA7kZcKDhVjzmYv2o/Ikg', 'Id', 'integer', 'NO', 11, 'primary key', 'none', 'ID', 'no'),
('1uErRwBBVDNjDqlTr9XXnw', 'CEA7kZcKDhVjzmYv2o/Ikg', 'CompanyBranchId', 'integer', 'NO', 11, '', 'textbox', 'CompanyBranchId', 'yes'),
('OXkT5krnUUTYlQ26jeweVQ', 'CEA7kZcKDhVjzmYv2o/Ikg', 'ContactId', 'integer', 'NO', 11, '', 'textbox', 'ContactId', 'yes'),
('xg8Tv7XNAGY0QAdMFrcLQg', 'fhO963CXHbjEehzNxuX7Hg', 'Id', 'integer', 'NO', 11, 'primary key', 'none', 'ID', 'no'),
('BWXo/8saSStX2B6JkU3x+g', 'fhO963CXHbjEehzNxuX7Hg', 'LastName', 'varchar', 'NO', 50, '', 'textbox', 'LastName', 'yes'),
('pyb27Mxgd+oUwxwFz5JK1g', 'fhO963CXHbjEehzNxuX7Hg', 'FirstName', 'varchar', 'NO', 50, '', 'textbox', 'FirstName', 'yes'),
('jO5X2lmfum6TvHFA/+qFrw', 'fhO963CXHbjEehzNxuX7Hg', 'MiddleName', 'varchar', 'YES', 50, '', 'textbox', 'MiddleName', 'yes'),
('vv4yaJf/EkPQOSqyZTqaDA', 'fhO963CXHbjEehzNxuX7Hg', 'PhoneNo', 'varchar', 'YES', 15, '', 'textbox', 'PhoneNo', 'yes'),
('gbifRD88CHYcAepj3OR6NQ', 'fhO963CXHbjEehzNxuX7Hg', 'MobileNo', 'varchar', 'YES', 15, '', 'textbox', 'MobileNo', 'yes'),
('fJ3VeRozt04/5mms9txE5Q', 'fhO963CXHbjEehzNxuX7Hg', 'Email', 'varchar', 'YES', 100, '', 'textbox', 'Email', 'yes'),
('310mUnmDvm2/fGx9Pp/WPg', 'fhO963CXHbjEehzNxuX7Hg', 'Designation', 'varchar', 'YES', 50, '', 'textbox', 'Designation', 'yes'),
('9UMIAl0rxw9IWvrY1GikIw', 'N/JEvCh43Ia/OAQIbGJgUA', 'Id', 'integer', 'NO', 11, 'primary key', 'none', 'ID', 'no'),
('1afq3m6tS8a6OYft+tbdqw', 'N/JEvCh43Ia/OAQIbGJgUA', 'EmploymentStatus', 'varchar', 'YES', 255, '', 'textbox', 'EmploymentStatus', 'yes'),
('zDp4nqt578i7pH1IKhvInw', 'MHzV8Uk/dYKMPF3/G5FRWg', 'Id', 'integer', 'NO', 11, 'primary key', 'none', 'ID', 'no'),
('mLTW5M3G848UAG40qHdw4g', 'MHzV8Uk/dYKMPF3/G5FRWg', 'IndustryName', 'varchar', 'NO', 50, '', 'textbox', 'IndustryName', 'yes'),
('UaQMhHP1i7DfcBhpZkfh4Q', 'MHzV8Uk/dYKMPF3/G5FRWg', 'IsActive', 'smallint', 'NO', 6, '', 'textbox', 'IsActive', 'yes'),
('wSzK9BxNlziVPpTrCcjbbA', 'nFxFEoFWN326JbOAp/R6/A', 'Id', 'integer', 'NO', 20, 'primary key', 'none', 'ID', 'no'),
('O/Tfbu05ViYWrxKQVdGCRA', 'nFxFEoFWN326JbOAp/R6/A', 'student_id', 'varchar', 'NO', 11, '', 'textbox', 'Student ID', 'yes'),
('Yu1xN/9qeYdvL95WTr++mA', 'nFxFEoFWN326JbOAp/R6/A', 'CompanyBranchId', 'integer', 'YES', 11, '', 'textbox', 'CompanyBranchId', 'yes'),
('jm6G/pbPNWDGXkqMYZTHUA', 'nFxFEoFWN326JbOAp/R6/A', 'TermId', 'integer', 'NO', 11, '', 'textbox', 'TermId', 'yes'),
('Y8yG7PAyqSke3vBBCIuwKA', 'nFxFEoFWN326JbOAp/R6/A', 'subject_id', 'integer', 'NO', 11, '', 'textbox', 'Subject ID', 'yes'),
('fHBJ2oYuj78eKmQReniJ9w', 'nFxFEoFWN326JbOAp/R6/A', 'StartDate', 'date', 'YES', 0, '', 'date controls', 'StartDate', 'yes'),
('njkougXokjQzTNUXRWM/Nw', 'nFxFEoFWN326JbOAp/R6/A', 'EndDate', 'date', 'YES', 0, '', 'date controls', 'EndDate', 'yes'),
('S6oRkrOSa062kWGFE0MRQQ', 'nFxFEoFWN326JbOAp/R6/A', 'Designation', 'varchar', 'YES', 50, '', 'textbox', 'Designation', 'yes'),
('+1U3L9jGCapIhd7U+qO1Ig', 'nFxFEoFWN326JbOAp/R6/A', 'Department', 'varchar', 'YES', 50, '', 'textbox', 'Department', 'yes'),
('Fh+QLM+2MnjtycE9I8VCZQ', 'nFxFEoFWN326JbOAp/R6/A', 'JobDescription', 'text', 'YES', 0, '', 'textarea', 'JobDescription', 'yes'),
('8hs9TOEll7hun1w7MWRqxA', 'nFxFEoFWN326JbOAp/R6/A', 'Status', 'smallint', 'NO', 6, '', 'textbox', 'Status', 'yes'),
('ZqOQcR1D0qvXllxVWI1xyw', 'nFxFEoFWN326JbOAp/R6/A', 'primary_email', 'varchar', 'YES', 255, '', 'textbox', 'Primary Email', 'yes'),
('EgjGLTlXWdVMpB0psWkPQA', 'nFxFEoFWN326JbOAp/R6/A', 'secondary_email', 'varchar', 'YES', 255, '', 'textbox', 'Secondary Email', 'yes'),
('ri4Ry2XaHK/GK0/HCuKe9Q', 'nFxFEoFWN326JbOAp/R6/A', 'primary_mobile_no', 'varchar', 'YES', 255, '', 'textbox', 'Primary Mobile No', 'yes'),
('2YD/zjHnwrovYqnpd0zYAA', 'nFxFEoFWN326JbOAp/R6/A', 'secondary_mobile_no', 'varchar', 'YES', 255, '', 'textbox', 'Secondary Mobile No', 'yes'),
('nhjfUkbzH24UEPtX+CASlw', 'tELIbir8lxV5DgOLxvPC9w', 'Id', 'integer', 'NO', 11, 'primary key', 'none', 'ID', 'no'),
('9AliE/+b3T9zZzsIqK48rQ', 'tELIbir8lxV5DgOLxvPC9w', 'SchoolCode', 'varchar', 'NO', 255, '', 'textbox', 'SchoolCode', 'yes'),
('nbwm3fnlyvJDgZuv2/IJQQ', 'tELIbir8lxV5DgOLxvPC9w', 'Course', 'integer', 'NO', 11, '', 'textbox', 'Course', 'yes'),
('LmFxQpJiDn46E/bNi+a0RA', 'DJEIyc5XIqOA21tHy9txtg', 'id', 'integer', 'NO', 11, 'primary key', 'none', 'ID', 'no'),
('ifX/ecqCqeHnN2gPFOhsEA', 'DJEIyc5XIqOA21tHy9txtg', 'date', 'date', 'NO', 0, '', 'date controls', 'Date', 'yes'),
('GTwZgmEyS7BDGnqNovXNBw', 'DJEIyc5XIqOA21tHy9txtg', 'accomplishment', 'varchar', 'NO', 255, '', 'textbox', 'Accomplishment', 'yes'),
('so/oFs46JyzEd2GfcYCu5w', 'izedPuOk/EIecz81oyUNlw', 'id', 'integer', 'NO', 11, 'primary key', 'none', 'ID', 'no'),
('Cj+jluxIFgP1fLV30jTGNQ', 'izedPuOk/EIecz81oyUNlw', 'date', 'date', 'NO', 0, '', 'date controls', 'Date', 'yes'),
('tjZplw2j11SfiYzQozTIzg', 'izedPuOk/EIecz81oyUNlw', 'time_in', 'varchar', 'NO', 255, '', 'textbox', 'Time In', 'yes'),
('P8+QMrd67aNBBZ+vw3zTUA', 'izedPuOk/EIecz81oyUNlw', 'time_out', 'varchar', 'NO', 255, '', 'textbox', 'Time Out', 'yes'),
('PH9irZKFQZ2WjSh6lhppQw', 'izedPuOk/EIecz81oyUNlw', 'hr_head', 'varchar', 'NO', 255, '', 'textbox', 'Hr Head', 'yes'),
('qGyoA8cPq3EvONmVwzKi2Q', '0Nxi+FaBGRs7px+nBg2ihg', 'id', 'integer', 'NO', 11, 'primary key', 'none', 'ID', 'no'),
('Fpt//fjW/HyS1rMdrQ6m1A', '0Nxi+FaBGRs7px+nBg2ihg', 'body', 'text', 'NO', 0, '', 'textarea', 'Body', 'yes'),
('pXobKX5lBtxPmoFv71LNMw', '0Nxi+FaBGRs7px+nBg2ihg', 'date', 'date', 'NO', 0, '', 'date controls', 'Date', 'yes'),
('3zinSZ0bKJbIgEBTbw2hbw', '0Nxi+FaBGRs7px+nBg2ihg', 'post_id', 'integer', 'NO', 11, '', 'textbox', 'Post ID', 'yes'),
('CEjXIaxyxoREq6wgyeax3Q', 'ixAQEfsOfBgn/J2JMQthWQ', 'id', 'integer', 'NO', 11, 'primary key', 'none', 'ID', 'no'),
('PIy2etMQqrRDMVHVbM+xlg', 'ixAQEfsOfBgn/J2JMQthWQ', 'questionnaire_id', 'integer', 'NO', 11, '', 'textbox', 'Questionnaire ID', 'yes'),
('1bFk9JbE8YPQ78+d1SNwug', 'ixAQEfsOfBgn/J2JMQthWQ', 'eval_hdr_id', 'integer', 'NO', 11, '', 'textbox', 'Eval Hdr ID', 'yes'),
('5J3IPIsV5jjaOjquSqYUcw', 'ixAQEfsOfBgn/J2JMQthWQ', 'response_rating', 'integer', 'NO', 11, '', 'textbox', 'Response Rating', 'yes'),
('ROIcbbd/qrA+hjb1cMCawQ', 'ixAQEfsOfBgn/J2JMQthWQ', 'response_detail', 'text', 'YES', 0, '', 'textarea', 'Response Detail', 'yes'),
('qxKjf82ogjIve6Gh5um2iA', 'DYdQ1yhrEqnk4fkCI3yXKg', 'id', 'integer', 'NO', 11, 'primary key', 'none', 'ID', 'no'),
('vlRjAEv2oJIWnnnpfXRH+Q', 'DYdQ1yhrEqnk4fkCI3yXKg', 'date_submit', 'date', 'NO', 0, '', 'date controls', 'Date Submit', 'yes'),
('Beowgp35yRtFPEXAJflbBw', 'DYdQ1yhrEqnk4fkCI3yXKg', 'date_eval', 'date', 'NO', 0, '', 'date controls', 'Date Eval', 'yes'),
('K1T9jlupOqpzqIz1iBxTDA', 'DYdQ1yhrEqnk4fkCI3yXKg', 'school_yr', 'varchar', 'NO', 255, '', 'textbox', 'School Yr', 'yes'),
('hmYM8T7HTvk1HblW7Bvx7Q', 'DYdQ1yhrEqnk4fkCI3yXKg', 'date_discussed', 'date', 'NO', 0, '', 'date controls', 'Date Discussed', 'yes'),
('dlqNlccuDaaxS1W2AtWbUA', 'DYdQ1yhrEqnk4fkCI3yXKg', 'subj', 'varchar', 'NO', 45, '', 'textbox', 'Subj', 'yes'),
('lEJhEvO9H6f6UTgvHNQ2vQ', 'DYdQ1yhrEqnk4fkCI3yXKg', 'industry_prof', 'varchar', 'NO', 255, '', 'textbox', 'Industry Prof', 'yes'),
('8auZRypxy+wUzeCnAkw0hQ', 'DYdQ1yhrEqnk4fkCI3yXKg', 'rcv_by', 'varchar', 'NO', 255, '', 'textbox', 'Rcv By', 'yes'),
('ctQgh/a/ZTqLIwivuHd4NQ', 'DYdQ1yhrEqnk4fkCI3yXKg', 'rcv_date', 'date', 'NO', 0, '', 'date controls', 'Rcv Date', 'yes'),
('BROlF2A7P7yIte9BncVUyQ', 'ROcadsB5x5L8QMe+Qm9VIQ', 'id', 'integer', 'NO', 11, 'primary key', 'none', 'ID', 'no'),
('U98miuVeBHcUof73pAnFAA', 'ROcadsB5x5L8QMe+Qm9VIQ', 'final_paper_hdr_id', 'integer', 'NO', 11, '', 'textbox', 'Final Paper Hdr ID', 'yes'),
('x2iTDLjPGDIOGoi3Q//DCg', 'ROcadsB5x5L8QMe+Qm9VIQ', 'questionnaire_id', 'integer', 'NO', 11, '', 'textbox', 'Questionnaire ID', 'yes'),
('87CZLy/ryS8BhMPwM9wW4Q', 'ROcadsB5x5L8QMe+Qm9VIQ', 'response', 'text', 'NO', 0, '', 'textarea', 'Response', 'yes'),
('hctVgQu0p+Bkd1us69Oc9g', 'jSw+ZCbGYk83KlZBovruvQ', 'id', 'integer', 'NO', 11, 'primary key', 'none', 'ID', 'no'),
('RTyO4mp5YqTschsLMfCQeg', 'jSw+ZCbGYk83KlZBovruvQ', 'attachment', 'varchar', 'YES', 255, '', 'textbox', 'Attachment', 'yes'),
('Q/UHh5vjJJdgADea41oFSw', 'jSw+ZCbGYk83KlZBovruvQ', 'date_submitted', 'date', 'NO', 0, '', 'date controls', 'Date Submitted', 'yes'),
('kDhLbVcxyg6SnAoLsTbx/Q', 'jSw+ZCbGYk83KlZBovruvQ', 'rating', 'integer', 'YES', 11, '', 'textbox', 'Rating', 'yes'),
('PEXur9wmSt0RFAbaWNqiOA', 'jSw+ZCbGYk83KlZBovruvQ', 'rcv_by', 'varchar', 'NO', 255, '', 'textbox', 'Rcv By', 'yes'),
('/XDB0jvPK0Lz+5b5T0sSOQ', 'jSw+ZCbGYk83KlZBovruvQ', 'rcv_date', 'date', 'NO', 0, '', 'date controls', 'Rcv Date', 'yes'),
('y+ogHgpxvGG/w6/3/TE4Kg', 'jSw+ZCbGYk83KlZBovruvQ', 'subj', 'varchar', 'NO', 45, '', 'textbox', 'Subj', 'yes'),
('gZwmkVzFm28VJRiZlm1r8w', 'dZ5TFJM2PRtMF4AjHiXYYw', 'id', 'integer', 'NO', 11, 'primary key', 'none', 'ID', 'no'),
('PeZi10s9g8CNugNb+XtzdA', 'dZ5TFJM2PRtMF4AjHiXYYw', 'title', 'varchar', 'NO', 255, '', 'textbox', 'Title', 'yes'),
('okYAzGMfsFGLe5O/X3zRfA', 'dZ5TFJM2PRtMF4AjHiXYYw', 'date', 'date', 'NO', 0, '', 'date controls', 'Date', 'yes'),
('UYfrYx3kQreyuCQsaQgVnQ', 'dZ5TFJM2PRtMF4AjHiXYYw', 'body', 'varchar', 'NO', 255, '', 'textbox', 'Body', 'yes'),
('FKtplBK9ki/oeAXLtOlGSQ', 'dZ5TFJM2PRtMF4AjHiXYYw', 'attach_file', 'varchar', 'YES', 255, '', 'textbox', 'Attach File', 'yes'),
('vPp9ZaNs/lR0s2Mp9cF7xg', 'dZ5TFJM2PRtMF4AjHiXYYw', 'upload_file', 'varchar', 'YES', 255, '', 'textbox', 'Upload File', 'yes'),
('+J0xuOtHQPIl2OUt58Sc3A', 'UpARvlbnQ3PjbrPM6XQCxw', 'id', 'integer', 'NO', 11, 'primary key', 'none', 'ID', 'no'),
('fr+1+Po43qfIdIWOe4azBA', 'UpARvlbnQ3PjbrPM6XQCxw', 'question', 'text', 'NO', 0, '', 'textarea', 'Question', 'yes'),
('RQ/OdbK5/DFPWBXiOzp7kw', 'UpARvlbnQ3PjbrPM6XQCxw', 'type', 'varchar', 'NO', 45, '', 'textbox', 'Type', 'yes'),
('lJtCOnL9jgc13636z6aIDw', '9PGOX8jzqaxex/7NeW+wYw', 'id', 'integer', 'NO', 11, 'primary key', 'none', 'ID', 'no'),
('Pjk79cheJhquYX5FB+vp4A', '9PGOX8jzqaxex/7NeW+wYw', 'response', 'text', 'NO', 0, '', 'textarea', 'Response', 'yes'),
('wm1qou8JM/IuYU3fW5NCWw', '9PGOX8jzqaxex/7NeW+wYw', 'resume_hdr_id', 'integer', 'NO', 11, '', 'textbox', 'Resume Hdr ID', 'yes'),
('7fI5axXc1ewbflZ/jbSrjg', '9PGOX8jzqaxex/7NeW+wYw', 'questionnaire_id', 'integer', 'NO', 11, 'none', 'textbox', 'Questionnaire ID', 'yes'),
('CEN7Agg6zLtJ5VbMrxU9uA', '4szC/Bj6nvNWqkK0cmnwUw', 'id', 'integer', 'NO', 11, 'primary key', 'none', 'ID', 'no'),
('PZxY3tv4QYvgfog5+JFWOA', '4szC/Bj6nvNWqkK0cmnwUw', 'mobile_num', 'varchar', 'NO', 11, '', 'textbox', 'Mobile Num', 'yes'),
('ix/2QLf9AFcJFf5TfdDjIw', '4szC/Bj6nvNWqkK0cmnwUw', 'personal_email', 'varchar', 'NO', 255, '', 'textbox', 'Personal Email', 'yes'),
('DkZ830i7JP3Q1tmxxQeVEQ', '4szC/Bj6nvNWqkK0cmnwUw', 'website', 'varchar', 'YES', 255, '', 'textbox', 'Website', 'yes'),
('oSPrahJwIKqGYpA7Zstcrg', '4szC/Bj6nvNWqkK0cmnwUw', 'picture', 'varchar', 'NO', 255, '', 'textbox', 'Picture', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `table_fields_book_list`
--

CREATE TABLE IF NOT EXISTS `table_fields_book_list` (
  `Field_ID` char(44) NOT NULL,
  `Book_List_Generator` varchar(255) NOT NULL,
  PRIMARY KEY (`Field_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `table_fields_list`
--

CREATE TABLE IF NOT EXISTS `table_fields_list` (
  `Field_ID` char(44) NOT NULL,
  `List_ID` char(44) NOT NULL,
  PRIMARY KEY (`Field_ID`,`List_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `table_fields_list_source_select`
--

CREATE TABLE IF NOT EXISTS `table_fields_list_source_select` (
  `Field_ID` char(44) NOT NULL,
  `Auto_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Select_Field_ID` char(44) NOT NULL,
  `Display` varchar(255) NOT NULL,
  PRIMARY KEY (`Field_ID`,`Auto_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `table_fields_list_source_where`
--

CREATE TABLE IF NOT EXISTS `table_fields_list_source_where` (
  `Field_ID` char(44) NOT NULL,
  `Where_Field_ID` char(44) NOT NULL,
  `Where_Field_Operand` varchar(20) NOT NULL,
  `Where_Field_Value` varchar(200) NOT NULL,
  `Where_Field_Connector` varchar(255) NOT NULL,
  PRIMARY KEY (`Field_ID`,`Where_Field_ID`,`Where_Field_Operand`,`Where_Field_Value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `table_fields_predefined_list`
--

CREATE TABLE IF NOT EXISTS `table_fields_predefined_list` (
  `List_ID` char(44) NOT NULL,
  `Project_ID` char(44) NOT NULL,
  `List_Name` varchar(255) NOT NULL,
  `Remarks` varchar(255) NOT NULL,
  PRIMARY KEY (`List_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table_fields_predefined_list`
--

INSERT INTO `table_fields_predefined_list` (`List_ID`, `Project_ID`, `List_Name`, `Remarks`) VALUES
('Rgi+pBOvWwbyGK7S9XQq3w', '29HS2+Ab1lYG+SeI+V9PSA', 'Male/Female', 'Male/Female gender list'),
('C5/Py3mT8x/XWZHevu80Lw', '29HS2+Ab1lYG+SeI+V9PSA', 'On/Off', 'On/Off status list'),
('mubMwfIbzoY+1jPc8DdR/A', '29HS2+Ab1lYG+SeI+V9PSA', 'TRUE/FALSE', 'TRUE/FALSE list'),
('LfVt1jYalJIce0AsOm1bvw', '29HS2+Ab1lYG+SeI+V9PSA', 'M/F', 'Single character male/female gender list'),
('P0xVxcf8QsJcsOyhTCERDw', '29HS2+Ab1lYG+SeI+V9PSA', 'Yes/No', 'Yes/No list'),
('yUt6e9gTws/eY5eYKv15FQ', '29HS2+Ab1lYG+SeI+V9PSA', 'Y/N', 'Single character yes/no list');

-- --------------------------------------------------------

--
-- Table structure for table `table_fields_predefined_list_items`
--

CREATE TABLE IF NOT EXISTS `table_fields_predefined_list_items` (
  `List_ID` char(44) NOT NULL,
  `Number` int(11) NOT NULL,
  `List_Item` varchar(255) NOT NULL,
  PRIMARY KEY (`List_ID`,`Number`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table_fields_predefined_list_items`
--

INSERT INTO `table_fields_predefined_list_items` (`List_ID`, `Number`, `List_Item`) VALUES
('Rgi+pBOvWwbyGK7S9XQq3w', 1, 'Male'),
('Rgi+pBOvWwbyGK7S9XQq3w', 2, 'Female'),
('C5/Py3mT8x/XWZHevu80Lw', 1, 'On'),
('C5/Py3mT8x/XWZHevu80Lw', 2, 'Off'),
('mubMwfIbzoY+1jPc8DdR/A', 1, 'TRUE'),
('mubMwfIbzoY+1jPc8DdR/A', 2, 'FALSE'),
('LfVt1jYalJIce0AsOm1bvw', 1, 'M'),
('LfVt1jYalJIce0AsOm1bvw', 2, 'F'),
('P0xVxcf8QsJcsOyhTCERDw', 1, 'Yes'),
('P0xVxcf8QsJcsOyhTCERDw', 2, 'No'),
('yUt6e9gTws/eY5eYKv15FQ', 1, 'Y'),
('yUt6e9gTws/eY5eYKv15FQ', 2, 'N');

-- --------------------------------------------------------

--
-- Table structure for table `table_fields_secondary_validation`
--

CREATE TABLE IF NOT EXISTS `table_fields_secondary_validation` (
  `Field_ID` char(44) NOT NULL,
  `Validation_Routine` varchar(255) NOT NULL,
  PRIMARY KEY (`Field_ID`,`Validation_Routine`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `table_pages`
--

CREATE TABLE IF NOT EXISTS `table_pages` (
  `Table_ID` char(44) NOT NULL,
  `Page_ID` char(44) NOT NULL,
  `Path_Filename` varchar(255) NOT NULL,
  PRIMARY KEY (`Table_ID`,`Page_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table_pages`
--

INSERT INTO `table_pages` (`Table_ID`, `Page_ID`, `Path_Filename`) VALUES
('DJEIyc5XIqOA21tHy9txtg', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'reporter_result_accomplishment.php'),
('DJEIyc5XIqOA21tHy9txtg', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'reporter_pdfresult_accomplishment.php'),
('DJEIyc5XIqOA21tHy9txtg', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'add_accomplishment.php'),
('DJEIyc5XIqOA21tHy9txtg', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'edit_accomplishment.php'),
('DJEIyc5XIqOA21tHy9txtg', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'detailview_accomplishment.php'),
('DJEIyc5XIqOA21tHy9txtg', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'listview_accomplishment.php'),
('DJEIyc5XIqOA21tHy9txtg', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'delete_accomplishment.php'),
('DJEIyc5XIqOA21tHy9txtg', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'csv_accomplishment.php'),
('DJEIyc5XIqOA21tHy9txtg', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'reporter_accomplishment.php'),
('izedPuOk/EIecz81oyUNlw', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'reporter_result_attendance.php'),
('izedPuOk/EIecz81oyUNlw', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'reporter_pdfresult_attendance.php'),
('izedPuOk/EIecz81oyUNlw', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'add_attendance.php'),
('izedPuOk/EIecz81oyUNlw', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'edit_attendance.php'),
('izedPuOk/EIecz81oyUNlw', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'detailview_attendance.php'),
('izedPuOk/EIecz81oyUNlw', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'listview_attendance.php'),
('izedPuOk/EIecz81oyUNlw', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'delete_attendance.php'),
('izedPuOk/EIecz81oyUNlw', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'csv_attendance.php'),
('izedPuOk/EIecz81oyUNlw', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'reporter_attendance.php'),
('ixAQEfsOfBgn/J2JMQthWQ', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'reporter_result_eval_dtl.php'),
('ixAQEfsOfBgn/J2JMQthWQ', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'reporter_pdfresult_eval_dtl.php'),
('ixAQEfsOfBgn/J2JMQthWQ', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'add_eval_dtl.php'),
('ixAQEfsOfBgn/J2JMQthWQ', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'edit_eval_dtl.php'),
('ixAQEfsOfBgn/J2JMQthWQ', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'detailview_eval_dtl.php'),
('ixAQEfsOfBgn/J2JMQthWQ', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'listview_eval_dtl.php'),
('ixAQEfsOfBgn/J2JMQthWQ', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'delete_eval_dtl.php'),
('ixAQEfsOfBgn/J2JMQthWQ', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'csv_eval_dtl.php'),
('ixAQEfsOfBgn/J2JMQthWQ', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'reporter_eval_dtl.php'),
('DYdQ1yhrEqnk4fkCI3yXKg', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'reporter_result_eval_hdr.php'),
('DYdQ1yhrEqnk4fkCI3yXKg', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'reporter_pdfresult_eval_hdr.php'),
('DYdQ1yhrEqnk4fkCI3yXKg', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'add_eval_hdr.php'),
('DYdQ1yhrEqnk4fkCI3yXKg', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'edit_eval_hdr.php'),
('DYdQ1yhrEqnk4fkCI3yXKg', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'detailview_eval_hdr.php'),
('DYdQ1yhrEqnk4fkCI3yXKg', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'listview_eval_hdr.php'),
('DYdQ1yhrEqnk4fkCI3yXKg', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'delete_eval_hdr.php'),
('DYdQ1yhrEqnk4fkCI3yXKg', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'csv_eval_hdr.php'),
('DYdQ1yhrEqnk4fkCI3yXKg', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'reporter_eval_hdr.php'),
('ROcadsB5x5L8QMe+Qm9VIQ', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'reporter_result_final_paper_dtl.php'),
('ROcadsB5x5L8QMe+Qm9VIQ', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'reporter_pdfresult_final_paper_dtl.php'),
('ROcadsB5x5L8QMe+Qm9VIQ', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'add_final_paper_dtl.php'),
('ROcadsB5x5L8QMe+Qm9VIQ', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'edit_final_paper_dtl.php'),
('ROcadsB5x5L8QMe+Qm9VIQ', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'detailview_final_paper_dtl.php'),
('ROcadsB5x5L8QMe+Qm9VIQ', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'listview_final_paper_dtl.php'),
('ROcadsB5x5L8QMe+Qm9VIQ', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'delete_final_paper_dtl.php'),
('ROcadsB5x5L8QMe+Qm9VIQ', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'csv_final_paper_dtl.php'),
('ROcadsB5x5L8QMe+Qm9VIQ', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'reporter_final_paper_dtl.php'),
('jSw+ZCbGYk83KlZBovruvQ', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'reporter_result_final_paper_hdr.php'),
('jSw+ZCbGYk83KlZBovruvQ', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'reporter_pdfresult_final_paper_hdr.php'),
('jSw+ZCbGYk83KlZBovruvQ', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'add_final_paper_hdr.php'),
('jSw+ZCbGYk83KlZBovruvQ', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'edit_final_paper_hdr.php'),
('jSw+ZCbGYk83KlZBovruvQ', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'detailview_final_paper_hdr.php'),
('jSw+ZCbGYk83KlZBovruvQ', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'listview_final_paper_hdr.php'),
('jSw+ZCbGYk83KlZBovruvQ', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'delete_final_paper_hdr.php'),
('jSw+ZCbGYk83KlZBovruvQ', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'csv_final_paper_hdr.php'),
('jSw+ZCbGYk83KlZBovruvQ', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'reporter_final_paper_hdr.php'),
('tAyK++CK01lIwo+V8T4f5g', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'reporter_pdfresult_internship.php'),
('tAyK++CK01lIwo+V8T4f5g', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'reporter_result_internship.php'),
('tAyK++CK01lIwo+V8T4f5g', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'reporter_internship.php'),
('tAyK++CK01lIwo+V8T4f5g', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'csv_internship.php'),
('tAyK++CK01lIwo+V8T4f5g', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'listview_internship.php'),
('tAyK++CK01lIwo+V8T4f5g', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'delete_internship.php'),
('tAyK++CK01lIwo+V8T4f5g', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'add_internship.php'),
('tAyK++CK01lIwo+V8T4f5g', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'edit_internship.php'),
('tAyK++CK01lIwo+V8T4f5g', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'detailview_internship.php'),
('dZ5TFJM2PRtMF4AjHiXYYw', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'reporter_result_post.php'),
('dZ5TFJM2PRtMF4AjHiXYYw', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'reporter_pdfresult_post.php'),
('dZ5TFJM2PRtMF4AjHiXYYw', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'add_post.php'),
('dZ5TFJM2PRtMF4AjHiXYYw', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'edit_post.php'),
('dZ5TFJM2PRtMF4AjHiXYYw', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'detailview_post.php'),
('dZ5TFJM2PRtMF4AjHiXYYw', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'listview_post.php'),
('dZ5TFJM2PRtMF4AjHiXYYw', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'delete_post.php'),
('dZ5TFJM2PRtMF4AjHiXYYw', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'csv_post.php'),
('dZ5TFJM2PRtMF4AjHiXYYw', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'reporter_post.php'),
('UpARvlbnQ3PjbrPM6XQCxw', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'reporter_pdfresult_questionnaire.php'),
('UpARvlbnQ3PjbrPM6XQCxw', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'add_questionnaire.php'),
('UpARvlbnQ3PjbrPM6XQCxw', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'edit_questionnaire.php'),
('UpARvlbnQ3PjbrPM6XQCxw', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'detailview_questionnaire.php'),
('UpARvlbnQ3PjbrPM6XQCxw', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'listview_questionnaire.php'),
('UpARvlbnQ3PjbrPM6XQCxw', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'delete_questionnaire.php'),
('UpARvlbnQ3PjbrPM6XQCxw', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'csv_questionnaire.php'),
('UpARvlbnQ3PjbrPM6XQCxw', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'reporter_questionnaire.php'),
('9PGOX8jzqaxex/7NeW+wYw', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'reporter_result_resume_dtl.php'),
('9PGOX8jzqaxex/7NeW+wYw', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'reporter_pdfresult_resume_dtl.php'),
('9PGOX8jzqaxex/7NeW+wYw', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'add_resume_dtl.php'),
('9PGOX8jzqaxex/7NeW+wYw', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'edit_resume_dtl.php'),
('9PGOX8jzqaxex/7NeW+wYw', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'detailview_resume_dtl.php'),
('9PGOX8jzqaxex/7NeW+wYw', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'listview_resume_dtl.php'),
('9PGOX8jzqaxex/7NeW+wYw', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'delete_resume_dtl.php'),
('9PGOX8jzqaxex/7NeW+wYw', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'csv_resume_dtl.php'),
('9PGOX8jzqaxex/7NeW+wYw', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'reporter_resume_dtl.php'),
('4szC/Bj6nvNWqkK0cmnwUw', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'reporter_result_resume_hdr.php'),
('4szC/Bj6nvNWqkK0cmnwUw', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'reporter_pdfresult_resume_hdr.php'),
('4szC/Bj6nvNWqkK0cmnwUw', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'add_resume_hdr.php'),
('4szC/Bj6nvNWqkK0cmnwUw', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'edit_resume_hdr.php'),
('4szC/Bj6nvNWqkK0cmnwUw', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'detailview_resume_hdr.php'),
('4szC/Bj6nvNWqkK0cmnwUw', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'listview_resume_hdr.php'),
('4szC/Bj6nvNWqkK0cmnwUw', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'delete_resume_hdr.php'),
('4szC/Bj6nvNWqkK0cmnwUw', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'csv_resume_hdr.php'),
('4szC/Bj6nvNWqkK0cmnwUw', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'reporter_resume_hdr.php'),
('UpARvlbnQ3PjbrPM6XQCxw', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'reporter_result_questionnaire.php'),
('S947fjTtspMlXGQSr98Syg', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'add_refstudent.php'),
('S947fjTtspMlXGQSr98Syg', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'edit_refstudent.php'),
('S947fjTtspMlXGQSr98Syg', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'detailview_refstudent.php'),
('S947fjTtspMlXGQSr98Syg', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'listview_refstudent.php'),
('S947fjTtspMlXGQSr98Syg', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'delete_refstudent.php'),
('S947fjTtspMlXGQSr98Syg', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'csv_refstudent.php'),
('S947fjTtspMlXGQSr98Syg', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'reporter_refstudent.php'),
('S947fjTtspMlXGQSr98Syg', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'reporter_result_refstudent.php'),
('S947fjTtspMlXGQSr98Syg', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'reporter_pdfresult_refstudent.php'),
('4HgZaQV5wnz2/bLmk8uv3A', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'add_alumniaddress.php'),
('4HgZaQV5wnz2/bLmk8uv3A', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'edit_alumniaddress.php'),
('4HgZaQV5wnz2/bLmk8uv3A', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'detailview_alumniaddress.php'),
('4HgZaQV5wnz2/bLmk8uv3A', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'listview_alumniaddress.php'),
('4HgZaQV5wnz2/bLmk8uv3A', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'delete_alumniaddress.php'),
('4HgZaQV5wnz2/bLmk8uv3A', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'csv_alumniaddress.php'),
('4HgZaQV5wnz2/bLmk8uv3A', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'reporter_alumniaddress.php'),
('4HgZaQV5wnz2/bLmk8uv3A', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'reporter_result_alumniaddress.php'),
('4HgZaQV5wnz2/bLmk8uv3A', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'reporter_pdfresult_alumniaddress.php'),
('BZRL4ylVxu7cGfoszczjhw', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'add_alumniemplmove.php'),
('BZRL4ylVxu7cGfoszczjhw', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'edit_alumniemplmove.php'),
('BZRL4ylVxu7cGfoszczjhw', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'detailview_alumniemplmove.php'),
('BZRL4ylVxu7cGfoszczjhw', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'listview_alumniemplmove.php'),
('BZRL4ylVxu7cGfoszczjhw', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'delete_alumniemplmove.php'),
('BZRL4ylVxu7cGfoszczjhw', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'csv_alumniemplmove.php'),
('BZRL4ylVxu7cGfoszczjhw', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'reporter_alumniemplmove.php'),
('BZRL4ylVxu7cGfoszczjhw', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'reporter_result_alumniemplmove.php'),
('BZRL4ylVxu7cGfoszczjhw', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'reporter_pdfresult_alumniemplmove.php'),
('xvdqqwk5xU5kjp0S/HMQrQ', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'add_alumniemplrecord.php'),
('xvdqqwk5xU5kjp0S/HMQrQ', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'edit_alumniemplrecord.php'),
('xvdqqwk5xU5kjp0S/HMQrQ', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'detailview_alumniemplrecord.php'),
('xvdqqwk5xU5kjp0S/HMQrQ', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'listview_alumniemplrecord.php'),
('xvdqqwk5xU5kjp0S/HMQrQ', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'delete_alumniemplrecord.php'),
('xvdqqwk5xU5kjp0S/HMQrQ', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'csv_alumniemplrecord.php'),
('xvdqqwk5xU5kjp0S/HMQrQ', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'reporter_alumniemplrecord.php'),
('xvdqqwk5xU5kjp0S/HMQrQ', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'reporter_result_alumniemplrecord.php'),
('xvdqqwk5xU5kjp0S/HMQrQ', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'reporter_pdfresult_alumniemplrecord.php'),
('+p1ONXa5Y3mosQjEsSL1Ow', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'add_alumnifurtherstudies.php'),
('+p1ONXa5Y3mosQjEsSL1Ow', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'edit_alumnifurtherstudies.php'),
('+p1ONXa5Y3mosQjEsSL1Ow', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'detailview_alumnifurtherstudies.php'),
('+p1ONXa5Y3mosQjEsSL1Ow', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'listview_alumnifurtherstudies.php'),
('+p1ONXa5Y3mosQjEsSL1Ow', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'delete_alumnifurtherstudies.php'),
('+p1ONXa5Y3mosQjEsSL1Ow', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'csv_alumnifurtherstudies.php'),
('+p1ONXa5Y3mosQjEsSL1Ow', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'reporter_alumnifurtherstudies.php'),
('+p1ONXa5Y3mosQjEsSL1Ow', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'reporter_result_alumnifurtherstudies.php'),
('+p1ONXa5Y3mosQjEsSL1Ow', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'reporter_pdfresult_alumnifurtherstudies.php'),
('wofGInhDNipd+aaq2AxH7A', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'add_alumniinfo.php'),
('wofGInhDNipd+aaq2AxH7A', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'edit_alumniinfo.php'),
('wofGInhDNipd+aaq2AxH7A', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'detailview_alumniinfo.php'),
('wofGInhDNipd+aaq2AxH7A', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'listview_alumniinfo.php'),
('wofGInhDNipd+aaq2AxH7A', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'delete_alumniinfo.php'),
('wofGInhDNipd+aaq2AxH7A', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'csv_alumniinfo.php'),
('wofGInhDNipd+aaq2AxH7A', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'reporter_alumniinfo.php'),
('wofGInhDNipd+aaq2AxH7A', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'reporter_result_alumniinfo.php'),
('wofGInhDNipd+aaq2AxH7A', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'reporter_pdfresult_alumniinfo.php'),
('oLFBg8nkr39DKKArWzO+uQ', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'add_alumniprofqualification.php'),
('oLFBg8nkr39DKKArWzO+uQ', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'edit_alumniprofqualification.php'),
('oLFBg8nkr39DKKArWzO+uQ', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'detailview_alumniprofqualification.php'),
('oLFBg8nkr39DKKArWzO+uQ', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'listview_alumniprofqualification.php'),
('oLFBg8nkr39DKKArWzO+uQ', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'delete_alumniprofqualification.php'),
('oLFBg8nkr39DKKArWzO+uQ', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'csv_alumniprofqualification.php'),
('oLFBg8nkr39DKKArWzO+uQ', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'reporter_alumniprofqualification.php'),
('oLFBg8nkr39DKKArWzO+uQ', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'reporter_result_alumniprofqualification.php'),
('oLFBg8nkr39DKKArWzO+uQ', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'reporter_pdfresult_alumniprofqualification.php'),
('ZEb+NBTLjtkuH0hL/W2MzQ', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'add_company.php'),
('ZEb+NBTLjtkuH0hL/W2MzQ', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'edit_company.php'),
('ZEb+NBTLjtkuH0hL/W2MzQ', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'detailview_company.php'),
('ZEb+NBTLjtkuH0hL/W2MzQ', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'listview_company.php'),
('ZEb+NBTLjtkuH0hL/W2MzQ', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'delete_company.php'),
('ZEb+NBTLjtkuH0hL/W2MzQ', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'csv_company.php'),
('ZEb+NBTLjtkuH0hL/W2MzQ', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'reporter_company.php'),
('ZEb+NBTLjtkuH0hL/W2MzQ', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'reporter_result_company.php'),
('ZEb+NBTLjtkuH0hL/W2MzQ', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'reporter_pdfresult_company.php'),
('N4wcHzB+ZE3GV6+Xfw2XFw', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'add_companybranch.php'),
('N4wcHzB+ZE3GV6+Xfw2XFw', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'edit_companybranch.php'),
('N4wcHzB+ZE3GV6+Xfw2XFw', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'detailview_companybranch.php'),
('N4wcHzB+ZE3GV6+Xfw2XFw', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'listview_companybranch.php'),
('N4wcHzB+ZE3GV6+Xfw2XFw', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'delete_companybranch.php'),
('N4wcHzB+ZE3GV6+Xfw2XFw', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'csv_companybranch.php'),
('N4wcHzB+ZE3GV6+Xfw2XFw', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'reporter_companybranch.php'),
('N4wcHzB+ZE3GV6+Xfw2XFw', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'reporter_result_companybranch.php'),
('N4wcHzB+ZE3GV6+Xfw2XFw', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'reporter_pdfresult_companybranch.php'),
('CEA7kZcKDhVjzmYv2o/Ikg', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'add_companycontact.php'),
('CEA7kZcKDhVjzmYv2o/Ikg', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'edit_companycontact.php'),
('CEA7kZcKDhVjzmYv2o/Ikg', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'detailview_companycontact.php'),
('CEA7kZcKDhVjzmYv2o/Ikg', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'listview_companycontact.php'),
('CEA7kZcKDhVjzmYv2o/Ikg', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'delete_companycontact.php'),
('CEA7kZcKDhVjzmYv2o/Ikg', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'csv_companycontact.php'),
('CEA7kZcKDhVjzmYv2o/Ikg', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'reporter_companycontact.php'),
('CEA7kZcKDhVjzmYv2o/Ikg', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'reporter_result_companycontact.php'),
('CEA7kZcKDhVjzmYv2o/Ikg', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'reporter_pdfresult_companycontact.php'),
('fhO963CXHbjEehzNxuX7Hg', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'add_contact.php'),
('fhO963CXHbjEehzNxuX7Hg', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'edit_contact.php'),
('fhO963CXHbjEehzNxuX7Hg', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'detailview_contact.php'),
('fhO963CXHbjEehzNxuX7Hg', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'listview_contact.php'),
('fhO963CXHbjEehzNxuX7Hg', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'delete_contact.php'),
('fhO963CXHbjEehzNxuX7Hg', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'csv_contact.php'),
('fhO963CXHbjEehzNxuX7Hg', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'reporter_contact.php'),
('fhO963CXHbjEehzNxuX7Hg', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'reporter_result_contact.php'),
('fhO963CXHbjEehzNxuX7Hg', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'reporter_pdfresult_contact.php'),
('N/JEvCh43Ia/OAQIbGJgUA', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'add_employmentstatus.php'),
('N/JEvCh43Ia/OAQIbGJgUA', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'edit_employmentstatus.php'),
('N/JEvCh43Ia/OAQIbGJgUA', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'detailview_employmentstatus.php'),
('N/JEvCh43Ia/OAQIbGJgUA', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'listview_employmentstatus.php'),
('N/JEvCh43Ia/OAQIbGJgUA', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'delete_employmentstatus.php'),
('N/JEvCh43Ia/OAQIbGJgUA', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'csv_employmentstatus.php'),
('N/JEvCh43Ia/OAQIbGJgUA', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'reporter_employmentstatus.php'),
('N/JEvCh43Ia/OAQIbGJgUA', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'reporter_result_employmentstatus.php'),
('N/JEvCh43Ia/OAQIbGJgUA', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'reporter_pdfresult_employmentstatus.php'),
('MHzV8Uk/dYKMPF3/G5FRWg', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'add_industrysector.php'),
('MHzV8Uk/dYKMPF3/G5FRWg', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'edit_industrysector.php'),
('MHzV8Uk/dYKMPF3/G5FRWg', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'detailview_industrysector.php'),
('MHzV8Uk/dYKMPF3/G5FRWg', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'listview_industrysector.php'),
('MHzV8Uk/dYKMPF3/G5FRWg', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'delete_industrysector.php'),
('MHzV8Uk/dYKMPF3/G5FRWg', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'csv_industrysector.php'),
('MHzV8Uk/dYKMPF3/G5FRWg', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'reporter_industrysector.php'),
('MHzV8Uk/dYKMPF3/G5FRWg', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'reporter_result_industrysector.php'),
('MHzV8Uk/dYKMPF3/G5FRWg', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'reporter_pdfresult_industrysector.php'),
('nFxFEoFWN326JbOAp/R6/A', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'add_internassignment.php'),
('nFxFEoFWN326JbOAp/R6/A', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'edit_internassignment.php'),
('nFxFEoFWN326JbOAp/R6/A', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'detailview_internassignment.php'),
('nFxFEoFWN326JbOAp/R6/A', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'listview_internassignment.php'),
('nFxFEoFWN326JbOAp/R6/A', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'delete_internassignment.php'),
('nFxFEoFWN326JbOAp/R6/A', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'csv_internassignment.php'),
('nFxFEoFWN326JbOAp/R6/A', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'reporter_internassignment.php'),
('nFxFEoFWN326JbOAp/R6/A', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'reporter_result_internassignment.php'),
('nFxFEoFWN326JbOAp/R6/A', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'reporter_pdfresult_internassignment.php'),
('tELIbir8lxV5DgOLxvPC9w', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'add_schoolcourse.php'),
('tELIbir8lxV5DgOLxvPC9w', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'edit_schoolcourse.php'),
('tELIbir8lxV5DgOLxvPC9w', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'detailview_schoolcourse.php'),
('tELIbir8lxV5DgOLxvPC9w', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'listview_schoolcourse.php'),
('tELIbir8lxV5DgOLxvPC9w', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'delete_schoolcourse.php'),
('tELIbir8lxV5DgOLxvPC9w', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'csv_schoolcourse.php'),
('tELIbir8lxV5DgOLxvPC9w', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'reporter_schoolcourse.php'),
('tELIbir8lxV5DgOLxvPC9w', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'reporter_result_schoolcourse.php'),
('tELIbir8lxV5DgOLxvPC9w', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'reporter_pdfresult_schoolcourse.php'),
('0Nxi+FaBGRs7px+nBg2ihg', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'add_comment.php'),
('0Nxi+FaBGRs7px+nBg2ihg', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'edit_comment.php'),
('0Nxi+FaBGRs7px+nBg2ihg', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'detailview_comment.php'),
('0Nxi+FaBGRs7px+nBg2ihg', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'listview_comment.php'),
('0Nxi+FaBGRs7px+nBg2ihg', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'delete_comment.php'),
('0Nxi+FaBGRs7px+nBg2ihg', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'csv_comment.php'),
('0Nxi+FaBGRs7px+nBg2ihg', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'reporter_comment.php'),
('0Nxi+FaBGRs7px+nBg2ihg', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'reporter_result_comment.php'),
('0Nxi+FaBGRs7px+nBg2ihg', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'reporter_pdfresult_comment.php');

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
  `Child_Field_Subtext` varchar(255) NOT NULL,
  PRIMARY KEY (`Relation_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

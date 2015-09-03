-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 31, 2015 at 05:32 AM
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
('CDKv+eHglEP0FSafLJqW5g', 'kUEzBQVP598oFCftxA2EqA', 'con3', 'localhost', 'root', '', 'refstudent'),
('ToRSB474+1xZOYKYjqUUwA', 'kUEzBQVP598oFCftxA2EqA', 'con2', 'localhost', 'root', '', 'accom'),
('8n4biDLwJIGoD1RHqk3Qlw', 'kUEzBQVP598oFCftxA2EqA', 'con1', 'localhost', 'root', '', 'apc-cpo');

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
('kUEzBQVP598oFCftxA2EqA', 'apc-cpo', 'Internship Head', 'This serves as a communication site between the student and internship head in the internship program.', 'CPO', '8n4biDLwJIGoD1RHqk3Qlw');

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
('D3U0j7G3M09+4gAk1d7d5A', 'kUEzBQVP598oFCftxA2EqA', 'ToRSB474+1xZOYKYjqUUwA', 'employmentstatus', ''),
('2sKNK6ndQ7o2eg60jiM3Ug', 'kUEzBQVP598oFCftxA2EqA', 'ToRSB474+1xZOYKYjqUUwA', 'contact', ''),
('6YB6l0iLZSkubkGXvyQfjg', 'kUEzBQVP598oFCftxA2EqA', 'ToRSB474+1xZOYKYjqUUwA', 'companycontact', ''),
('e6i/hl2BSTP/MwpHlaghJA', 'kUEzBQVP598oFCftxA2EqA', 'ToRSB474+1xZOYKYjqUUwA', 'companybranch', ''),
('kIv3PV9IpETuBAL6wMcwug', 'kUEzBQVP598oFCftxA2EqA', 'ToRSB474+1xZOYKYjqUUwA', 'company', ''),
('gim83e7ERxx8eqY/jj5/5w', 'kUEzBQVP598oFCftxA2EqA', 'ToRSB474+1xZOYKYjqUUwA', 'alumniprofqualification', ''),
('VD+qwuI/x/2RIb/qk/h50w', 'kUEzBQVP598oFCftxA2EqA', 'ToRSB474+1xZOYKYjqUUwA', 'alumniinfo', ''),
('ADPAgZMqdEhOjfyXQfAnaA', 'kUEzBQVP598oFCftxA2EqA', 'ToRSB474+1xZOYKYjqUUwA', 'alumnifurtherstudies', ''),
('cr02A+Umbg8d7LY7FDYOJA', 'kUEzBQVP598oFCftxA2EqA', 'ToRSB474+1xZOYKYjqUUwA', 'alumniemplrecord', ''),
('FD+uk0cQuZNSGRPttcSmLg', 'kUEzBQVP598oFCftxA2EqA', 'ToRSB474+1xZOYKYjqUUwA', 'alumniemplmove', ''),
('zSLMQ3FjKL7jwmBkkZZTZQ', 'kUEzBQVP598oFCftxA2EqA', 'ToRSB474+1xZOYKYjqUUwA', 'alumniaddress', ''),
('OZVCdW5wBcMdcwonN12tVg', 'kUEzBQVP598oFCftxA2EqA', '8n4biDLwJIGoD1RHqk3Qlw', 'resume_hdr', ''),
('Re6LFq8raVBf2Jk6GbpaTA', 'kUEzBQVP598oFCftxA2EqA', '8n4biDLwJIGoD1RHqk3Qlw', 'resume_dtl', ''),
('vCrUOYn7rDLhWB9dT+qNjg', 'kUEzBQVP598oFCftxA2EqA', '8n4biDLwJIGoD1RHqk3Qlw', 'questionnaire', ''),
('glN7PPDguZW3TkdjRMsuLQ', 'kUEzBQVP598oFCftxA2EqA', '8n4biDLwJIGoD1RHqk3Qlw', 'post', ''),
('/c/4xkF5Dq3WvLG37xULug', 'kUEzBQVP598oFCftxA2EqA', '8n4biDLwJIGoD1RHqk3Qlw', 'final_paper_hdr', ''),
('BWAlaPc+R44rYgq2c0fU4w', 'kUEzBQVP598oFCftxA2EqA', '8n4biDLwJIGoD1RHqk3Qlw', 'final_paper_dtl', ''),
('vlGoBSIYUOi45O9exhOQXw', 'kUEzBQVP598oFCftxA2EqA', '8n4biDLwJIGoD1RHqk3Qlw', 'eval_hdr', ''),
('k1QtLzSq4nESevseD+dchg', 'kUEzBQVP598oFCftxA2EqA', '8n4biDLwJIGoD1RHqk3Qlw', 'eval_dtl', ''),
('DyWWKctvZh5G8IO4rhPpsw', 'kUEzBQVP598oFCftxA2EqA', '8n4biDLwJIGoD1RHqk3Qlw', 'comment', ''),
('tC/Ax/8G5JwraSGgllUBgA', 'kUEzBQVP598oFCftxA2EqA', '8n4biDLwJIGoD1RHqk3Qlw', 'attendance', ''),
('F8BATcE+raTLXIZBzlzwAQ', 'kUEzBQVP598oFCftxA2EqA', '8n4biDLwJIGoD1RHqk3Qlw', 'accomplishment', ''),
('eJEUH9ag2Z5RjkusDaF4xQ', 'kUEzBQVP598oFCftxA2EqA', 'ToRSB474+1xZOYKYjqUUwA', 'industrysector', ''),
('irp4uc4sAmPTuXn7OlTHwQ', 'kUEzBQVP598oFCftxA2EqA', 'ToRSB474+1xZOYKYjqUUwA', 'internassignment', ''),
('CEV0PQ0lkAn1q0+T24bbKQ', 'kUEzBQVP598oFCftxA2EqA', 'ToRSB474+1xZOYKYjqUUwA', 'schoolcourse', ''),
('xZv3hXEBYMdtRI7VABwvbQ', 'kUEzBQVP598oFCftxA2EqA', 'CDKv+eHglEP0FSafLJqW5g', 'refstudent', '');

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
  `In_Listview` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `table_fields`
--

INSERT INTO `table_fields` (`Field_ID`, `Table_ID`, `Field_Name`, `Data_Type`, `Nullable`, `Length`, `Attribute`, `Control_Type`, `Label`, `In_Listview`) VALUES
('HGIR0GCVSwlBx+5ys7xWLA', 'YGu1gvsyVIw0B/N00ZPmUA', 'Id', 'integer', 'NO', 11, 'primary key', 'none', 'ID', 'no'),
('WdNFNnjjhb7kL9FAqZxKkw', 'YGu1gvsyVIw0B/N00ZPmUA', 'CompanyBranchId', 'integer', 'NO', 11, '', 'textbox', 'CompanyBranchId', 'yes'),
('St0V+ARxcsmUVmLYfSjXkQ', 'YGu1gvsyVIw0B/N00ZPmUA', 'ContactId', 'integer', 'NO', 11, '', 'textbox', 'ContactId', 'yes'),
('ucqZzo5JYwfnzMy/O3H9jw', 'F8BATcE+raTLXIZBzlzwAQ', 'id', 'integer', 'NO', 11, 'primary key', 'none', 'ID', 'no'),
('XZF7psez6f16DUmkW1NyBw', 'F8BATcE+raTLXIZBzlzwAQ', 'student_id', 'varchar', 'NO', 11, '', 'textbox', 'Student ID', 'yes'),
('gseXTyfzw5ilsFYyB/d1MQ', 'F8BATcE+raTLXIZBzlzwAQ', 'date', 'date', 'NO', 0, '', 'date controls', 'Date', 'yes'),
('jB/IKELJ4+CL31EuZPpCrQ', 'F8BATcE+raTLXIZBzlzwAQ', 'accomplishment', 'varchar', 'NO', 255, '', 'textbox', 'Accomplishment', 'yes'),
('j2IyrsXW1xFEtkXYtoFcag', 'tC/Ax/8G5JwraSGgllUBgA', 'id', 'integer', 'NO', 11, 'primary key', 'none', 'ID', 'no'),
('GRI3SGx7amAG7MfEAOpbOw', 'tC/Ax/8G5JwraSGgllUBgA', 'date', 'date', 'NO', 0, '', 'date controls', 'Date', 'yes'),
('zGFmb1qJUU8snMVAz0PjIw', 'tC/Ax/8G5JwraSGgllUBgA', 'time_in', 'varchar', 'NO', 255, '', 'textbox', 'Time In', 'yes'),
('lFt8aR9fiK/WoZ74HYj9qg', 'tC/Ax/8G5JwraSGgllUBgA', 'time_out', 'varchar', 'NO', 255, '', 'textbox', 'Time Out', 'yes'),
('fmmxJcl46UTJr2di4OwDsw', 'tC/Ax/8G5JwraSGgllUBgA', 'student_id', 'varchar', 'NO', 11, '', 'textbox', 'Student ID', 'yes'),
('6iZ0VgP3/5Na06a9cZqsLA', 'tC/Ax/8G5JwraSGgllUBgA', 'hr_head', 'varchar', 'NO', 255, '', 'textbox', 'Hr Head', 'yes'),
('+q2ghmYCISbc8vwjb9XNBA', 'DyWWKctvZh5G8IO4rhPpsw', 'id', 'integer', 'NO', 11, 'primary key', 'none', 'ID', 'no'),
('OgIYtbGhdn1z1dPRR+Cmxg', 'DyWWKctvZh5G8IO4rhPpsw', 'body', 'text', 'NO', 0, '', 'textarea', 'Body', 'yes'),
('NaRptWRQzMR1Lo08Hx6LRA', 'DyWWKctvZh5G8IO4rhPpsw', 'date', 'date', 'NO', 0, '', 'date controls', 'Date', 'yes'),
('hw+wS+O75zTT9f7Dgd8mMQ', 'DyWWKctvZh5G8IO4rhPpsw', 'person_id', 'integer', 'NO', 11, '', 'textbox', 'Person ID', 'yes'),
('avhObXWPn1L0xG5RQAZUvw', 'DyWWKctvZh5G8IO4rhPpsw', 'post_id', 'integer', 'NO', 11, '', 'textbox', 'Post ID', 'yes'),
('YDHfi7Im3FkjMeUTuxdURA', 'k1QtLzSq4nESevseD+dchg', 'id', 'integer', 'NO', 11, 'primary key', 'none', 'ID', 'no'),
('VIbhTo9noHcp/aCVh9xcEA', 'k1QtLzSq4nESevseD+dchg', 'questionnaire_id', 'integer', 'NO', 11, '', 'textbox', 'Questionnaire ID', 'yes'),
('OHr1EeoSsjkod7NH+D34KQ', 'k1QtLzSq4nESevseD+dchg', 'eval_hdr_id', 'integer', 'NO', 11, '', 'textbox', 'Eval Hdr ID', 'yes'),
('3BQgR/QPDs4A+LXid45v9Q', 'k1QtLzSq4nESevseD+dchg', 'response_rating', 'integer', 'NO', 11, '', 'textbox', 'Response Rating', 'yes'),
('dOF2TOiZ/+sHQnbpw4/bdA', 'k1QtLzSq4nESevseD+dchg', 'response_detail', 'text', 'YES', 0, '', 'textarea', 'Response Detail', 'yes'),
('FYQJsu3b2rirHSwSC0IVPA', 'vlGoBSIYUOi45O9exhOQXw', 'id', 'integer', 'NO', 11, 'primary key', 'none', 'ID', 'no'),
('slinxED+aWOdm6Lmya+Tzg', 'vlGoBSIYUOi45O9exhOQXw', 'student_id', 'varchar', 'NO', 11, '', 'textbox', 'Student ID', 'yes'),
('m5vzHfr6yK+6oJtWwaOijQ', 'vlGoBSIYUOi45O9exhOQXw', 'date_submit', 'date', 'NO', 0, '', 'date controls', 'Date Submit', 'yes'),
('C40zn35Im9hB6+lMxRhjug', 'vlGoBSIYUOi45O9exhOQXw', 'date_eval', 'date', 'NO', 0, '', 'date controls', 'Date Eval', 'yes'),
('jVeM3EDSYJ3E/3uHP2TeMw', 'vlGoBSIYUOi45O9exhOQXw', 'school_yr', 'varchar', 'NO', 255, '', 'textbox', 'School Yr', 'yes'),
('8iVOP90hhlkIeDUhLBih9w', 'vlGoBSIYUOi45O9exhOQXw', 'date_discussed', 'date', 'NO', 0, '', 'date controls', 'Date Discussed', 'yes'),
('YUIGE+Rxef91agLYLGAUmQ', 'vlGoBSIYUOi45O9exhOQXw', 'subj', 'varchar', 'NO', 45, '', 'textbox', 'Subj', 'yes'),
('tLeXcvWEiPDoQGXdxO7J/g', 'vlGoBSIYUOi45O9exhOQXw', 'industry_prof', 'varchar', 'NO', 255, '', 'textbox', 'Industry Prof', 'yes'),
('EN1qcqZNBtmLY82f8OiavQ', 'vlGoBSIYUOi45O9exhOQXw', 'rcv_by', 'varchar', 'NO', 255, '', 'textbox', 'Rcv By', 'yes'),
('vESK8JfVrNIHZFTiyDy83g', 'vlGoBSIYUOi45O9exhOQXw', 'rcv_date', 'date', 'NO', 0, '', 'date controls', 'Rcv Date', 'yes'),
('6xwHUZkG+D8jwxKvAuZ6zg', 'BWAlaPc+R44rYgq2c0fU4w', 'id', 'integer', 'NO', 11, 'primary key', 'none', 'ID', 'no'),
('m8bFbj3YQjpCS/xxiCUCVA', 'BWAlaPc+R44rYgq2c0fU4w', 'final_paper_hdr_id', 'integer', 'NO', 11, 'foreign key', 'textbox', 'Final Paper Hdr ID', 'yes'),
('MoPgby1nwUdVzbv+PKjcXQ', 'BWAlaPc+R44rYgq2c0fU4w', 'questionnaire_id', 'integer', 'NO', 11, '', 'textbox', 'Questionnaire ID', 'yes'),
('CWz6H3IdK08RfbGi0JjEDw', 'BWAlaPc+R44rYgq2c0fU4w', 'response', 'text', 'NO', 0, '', 'textarea', 'Response', 'yes'),
('nc+OnpQTghDHEj7HRaWuXQ', '/c/4xkF5Dq3WvLG37xULug', 'id', 'integer', 'NO', 11, 'primary key', 'none', 'ID', 'no'),
('t5ge+PQIdK4eZrS2bMy/Ag', '/c/4xkF5Dq3WvLG37xULug', 'student_id', 'varchar', 'NO', 11, '', 'textbox', 'Student ID', 'yes'),
('DsyV1xZKuXDQn2uer7se3w', '/c/4xkF5Dq3WvLG37xULug', 'attachment', 'varchar', 'YES', 255, '', 'textbox', 'Attachment', 'yes'),
('MIwJ9WG18LEQFlJptku7JQ', '/c/4xkF5Dq3WvLG37xULug', 'date_submitted', 'date', 'NO', 0, '', 'date controls', 'Date Submitted', 'yes'),
('ZzcuYd5Z+2IFdZ/kStx/Kg', '/c/4xkF5Dq3WvLG37xULug', 'rating', 'integer', 'YES', 11, '', 'textbox', 'Rating', 'yes'),
('36+C5ygilrHNar3SRH878w', '/c/4xkF5Dq3WvLG37xULug', 'rcv_by', 'varchar', 'NO', 255, '', 'textbox', 'Rcv By', 'yes'),
('vSM+4XpqHVbW48xadY0LFA', '/c/4xkF5Dq3WvLG37xULug', 'rcv_date', 'date', 'NO', 0, '', 'date controls', 'Rcv Date', 'yes'),
('Mgw1XauP7X1XYayrH61r0A', '/c/4xkF5Dq3WvLG37xULug', 'subj', 'varchar', 'NO', 45, '', 'textbox', 'Subj', 'yes'),
('xLYvtv7tS6eNms1aSp9Wbw', 'glN7PPDguZW3TkdjRMsuLQ', 'id', 'integer', 'NO', 11, 'primary key', 'none', 'ID', 'no'),
('EXu9h5Co1jGAKogkOghOmA', 'glN7PPDguZW3TkdjRMsuLQ', 'title', 'varchar', 'NO', 255, '', 'textbox', 'Title', 'yes'),
('cbJi6YuZ7bDBhpPmIzyagA', 'glN7PPDguZW3TkdjRMsuLQ', 'date', 'date', 'NO', 0, '', 'date controls', 'Date', 'yes'),
('WoKmSRhulXdgBkPBt3/AFA', 'glN7PPDguZW3TkdjRMsuLQ', 'body', 'varchar', 'NO', 255, '', 'textbox', 'Body', 'yes'),
('sLutU3rKhBVkK/HbAeuX4w', 'glN7PPDguZW3TkdjRMsuLQ', 'attach_file', 'varchar', 'YES', 255, '', 'textbox', 'Attach File', 'yes'),
('QjXZoRVX/AvioLdwGpYy/Q', 'glN7PPDguZW3TkdjRMsuLQ', 'upload_file', 'varchar', 'YES', 255, '', 'textbox', 'Upload File', 'yes'),
('gm6QuPNPKlzikwkNBq841Q', 'glN7PPDguZW3TkdjRMsuLQ', 'person_id', 'integer', 'NO', 11, '', 'textbox', 'Person ID', 'yes'),
('nTtCQqZT8NHQJfxIieX1+A', 'vCrUOYn7rDLhWB9dT+qNjg', 'id', 'integer', 'NO', 11, 'primary key', 'none', 'ID', 'no'),
('sbQjeauRhGtObKL3BT0owA', 'vCrUOYn7rDLhWB9dT+qNjg', 'question', 'text', 'NO', 0, '', 'textarea', 'Question', 'yes'),
('u5ed+VEGcB37XQuDCNxI5w', 'vCrUOYn7rDLhWB9dT+qNjg', 'type', 'varchar', 'NO', 45, '', 'textbox', 'Type', 'yes'),
('kMi1wTr3lTVTVRhKsMoVsg', 'Re6LFq8raVBf2Jk6GbpaTA', 'id', 'integer', 'NO', 11, 'primary key', 'none', 'ID', 'no'),
('I4kc0jzeJ8mOfzCuVzFdew', 'Re6LFq8raVBf2Jk6GbpaTA', 'response', 'text', 'NO', 0, '', 'textarea', 'Response', 'yes'),
('3A59UpsSVwOroS4tqSlGcQ', 'Re6LFq8raVBf2Jk6GbpaTA', 'resume_hdr_id', 'integer', 'NO', 11, '', 'textbox', 'Resume Hdr ID', 'yes'),
('VtgU85ySXp2/W+p28xENjA', 'Re6LFq8raVBf2Jk6GbpaTA', 'questionnaire_id', 'integer', 'NO', 11, '', 'textbox', 'Questionnaire ID', 'yes'),
('rEkboc8AweXLyQfHVhdkXg', 'OZVCdW5wBcMdcwonN12tVg', 'id', 'integer', 'NO', 11, 'primary key', 'none', 'ID', 'no'),
('pQSHONsdB557ZR00uKRBzg', 'OZVCdW5wBcMdcwonN12tVg', 'student_id', 'varchar', 'NO', 11, '', 'textbox', 'Student ID', 'yes'),
('w50lvdbBf0faDXCBQo3j3w', 'OZVCdW5wBcMdcwonN12tVg', 'mobile_num', 'varchar', 'NO', 11, '', 'textbox', 'Mobile Num', 'yes'),
('eQlNWx4rcL1dok/e2twyxQ', 'OZVCdW5wBcMdcwonN12tVg', 'personal_email', 'varchar', 'NO', 255, '', 'textbox', 'Personal Email', 'yes'),
('I9E7oXGxhRBev2pCtWyCEQ', 'OZVCdW5wBcMdcwonN12tVg', 'website', 'varchar', 'YES', 255, '', 'textbox', 'Website', 'yes'),
('cbHZu9iaY92E8XvCK0vkOQ', 'OZVCdW5wBcMdcwonN12tVg', 'picture', 'varchar', 'NO', 255, '', 'textbox', 'Picture', 'yes'),
('WJ6c7D65yHdLHLXjxRwprA', 'zSLMQ3FjKL7jwmBkkZZTZQ', 'Id', 'integer', 'NO', 11, 'primary key', 'none', 'ID', 'no'),
('VGQ7i9snYz90nHQwz1X1vQ', 'zSLMQ3FjKL7jwmBkkZZTZQ', 'AlumniInfoId', 'integer', 'NO', 11, '', 'textbox', 'AlumniInfoId', 'yes'),
('CSc+mOa5vV90vtLcuGKqIg', 'zSLMQ3FjKL7jwmBkkZZTZQ', 'AddressType', 'varchar', 'NO', 255, '', 'textbox', 'AddressType', 'yes'),
('RjdkDHW1IInO4JgHCnW7yg', 'zSLMQ3FjKL7jwmBkkZZTZQ', 'Address', 'varchar', 'NO', 255, '', 'textarea', 'Address', 'yes'),
('JvyEUVMKmKpPC3dW6ROchA', 'zSLMQ3FjKL7jwmBkkZZTZQ', 'MunicipalityCity', 'varchar', 'NO', 255, '', 'textbox', 'MunicipalityCity', 'yes'),
('yvWVatmkT6dGTreP5LYlZw', 'zSLMQ3FjKL7jwmBkkZZTZQ', 'ProvinceState', 'varchar', 'NO', 255, '', 'textbox', 'ProvinceState', 'yes'),
('St94GzHDYnCz2s9L9h4Zlg', 'zSLMQ3FjKL7jwmBkkZZTZQ', 'Region', 'varchar', 'NO', 255, '', 'textbox', 'Region', 'yes'),
('gY3l7SUMe2sXGxHzilJ9cg', 'zSLMQ3FjKL7jwmBkkZZTZQ', 'Country', 'varchar', 'NO', 255, '', 'textbox', 'Country', 'yes'),
('li5QD7HHkieWx3Oz9y0iJw', 'zSLMQ3FjKL7jwmBkkZZTZQ', 'PostalCode', 'varchar', 'NO', 255, '', 'textbox', 'PostalCode', 'yes'),
('v6CHJlk3mAzkMHqZ4dU/mg', 'zSLMQ3FjKL7jwmBkkZZTZQ', 'IsCurrent', 'integer', 'NO', 1, '', 'textbox', 'IsCurrent', 'yes'),
('nTLNbHH047bD0fAHbYoL+g', 'FD+uk0cQuZNSGRPttcSmLg', 'Id', 'integer', 'NO', 11, 'primary key', 'none', 'ID', 'no'),
('J6l7YsxELph+X0pO990ZQg', 'FD+uk0cQuZNSGRPttcSmLg', 'AlumniEmplRecordId', 'integer', 'NO', 11, '', 'textbox', 'AlumniEmplRecordId', 'yes'),
('ZiHcmggKieeKZEhLY7VOwg', 'FD+uk0cQuZNSGRPttcSmLg', 'DateEffective', 'date', 'YES', 0, '', 'date controls', 'DateEffective', 'yes'),
('s7GdYcsgThIy4RuVcf9bNA', 'FD+uk0cQuZNSGRPttcSmLg', 'Designation', 'varchar', 'YES', 50, '', 'textbox', 'Designation', 'yes'),
('97igRZHFDLhqWoarKgoLIA', 'FD+uk0cQuZNSGRPttcSmLg', 'SalaryRange', 'varchar', 'YES', 255, '', 'textbox', 'SalaryRange', 'yes'),
('z2tMjitYd+EIADvoRsLaNQ', 'FD+uk0cQuZNSGRPttcSmLg', 'Remarks', 'text', 'YES', 0, '', 'textarea', 'Remarks', 'yes'),
('Ba7ModPRvBRLuYrdQfKjEg', 'cr02A+Umbg8d7LY7FDYOJA', 'Id', 'integer', 'NO', 11, 'primary key', 'none', 'ID', 'no'),
('aI1c/UQDtnCUA+P/WPE1gw', 'cr02A+Umbg8d7LY7FDYOJA', 'AlumniInfoId', 'integer', 'NO', 20, '', 'textbox', 'AlumniInfoId', 'yes'),
('58f6uv40Qn1eSbdN9DIjsw', 'cr02A+Umbg8d7LY7FDYOJA', 'CompanyBranchId', 'integer', 'YES', 11, '', 'textbox', 'CompanyBranchId', 'yes'),
('4VrC96mgR6V5otA1l4XaHA', 'cr02A+Umbg8d7LY7FDYOJA', 'NoOfYearsInCompany', 'integer', 'YES', 11, '', 'textbox', 'NoOfYearsInCompany', 'yes'),
('ZdEgvFmAY1qN2ptB8ugjjQ', 'cr02A+Umbg8d7LY7FDYOJA', 'Position', 'varchar', 'YES', 255, '', 'textbox', 'Position', 'yes'),
('P+0AsuLOjoiY42J9io4MTQ', 'cr02A+Umbg8d7LY7FDYOJA', 'NoOfYearsInPosition', 'integer', 'YES', 11, '', 'textbox', 'NoOfYearsInPosition', 'yes'),
('z4/9/Gk6DBvAxLOOPJ7jZA', 'cr02A+Umbg8d7LY7FDYOJA', 'Remarks', 'text', 'YES', 0, '', 'textarea', 'Remarks', 'yes'),
('uvzDmxxUVhzEIP8CKE09Zg', 'cr02A+Umbg8d7LY7FDYOJA', 'IsCurrentlyEmployed', 'smallint', 'YES', 6, '', 'textbox', 'IsCurrentlyEmployed', 'yes'),
('OCLo3IJmlTvtHkGsNzBgRQ', 'cr02A+Umbg8d7LY7FDYOJA', 'IsAbsorbed', 'smallint', 'YES', 6, '', 'textbox', 'IsAbsorbed', 'yes'),
('otBUlXGOOvY96Nr6J/octQ', 'cr02A+Umbg8d7LY7FDYOJA', 'Email', 'varchar', 'YES', 255, '', 'textbox', 'Email', 'yes'),
('xCribeWJPSIyzwfZIyfINQ', 'cr02A+Umbg8d7LY7FDYOJA', 'ContactNo', 'varchar', 'YES', 255, '', 'textbox', 'ContactNo', 'yes'),
('/019xRDSLeVj+1HNm9Mg4w', 'cr02A+Umbg8d7LY7FDYOJA', 'StartDate', 'date', 'YES', 0, '', 'date controls', 'StartDate', 'yes'),
('Mh5PK0jMvlCdTF+pifFL+g', 'cr02A+Umbg8d7LY7FDYOJA', 'EndDate', 'date', 'YES', 0, '', 'date controls', 'EndDate', 'yes'),
('oEEGRcN0YA/78yuPkBh8Uw', 'ADPAgZMqdEhOjfyXQfAnaA', 'Id', 'integer', 'NO', 20, 'primary key', 'none', 'ID', 'no'),
('W2WVHIqCn3m3aS28xCM/nQ', 'ADPAgZMqdEhOjfyXQfAnaA', 'AlumniInfoId', 'integer', 'NO', 20, '', 'textbox', 'AlumniInfoId', 'yes'),
('I9+8JgzfkE25vUweRZBOMA', 'ADPAgZMqdEhOjfyXQfAnaA', 'StudyType', 'varchar', 'NO', 255, '', 'textbox', 'StudyType', 'yes'),
('1xWEEovy5qPXn4kAsV7CIA', 'ADPAgZMqdEhOjfyXQfAnaA', 'Course', 'varchar', 'NO', 50, '', 'textbox', 'Course', 'yes'),
('9ifSs0LPlvHT9TorBYg2Kg', 'ADPAgZMqdEhOjfyXQfAnaA', 'StartDate', 'date', 'YES', 0, '', 'date controls', 'StartDate', 'yes'),
('X0L993XIgPXls4CkvjuTxQ', 'ADPAgZMqdEhOjfyXQfAnaA', 'EndDate', 'date', 'YES', 0, '', 'date controls', 'EndDate', 'yes'),
('jt2l88zU9pg9hdv5c3z9rA', 'ADPAgZMqdEhOjfyXQfAnaA', 'SchoolOrganization', 'varchar', 'YES', 50, '', 'textbox', 'SchoolOrganization', 'yes'),
('lEBI+slXwrC0KFWPrEbCnA', 'VD+qwuI/x/2RIb/qk/h50w', 'Id', 'integer', 'NO', 20, 'primary key', 'none', 'ID', 'no'),
('4KKxseju00crmW4BnJpQAQ', 'VD+qwuI/x/2RIb/qk/h50w', 'student_id', 'varchar', 'NO', 11, '', 'textbox', 'Student ID', 'yes'),
('+ZQSKlGUgJZkTnlnm53W/Q', 'VD+qwuI/x/2RIb/qk/h50w', 'LastName', 'varchar', 'NO', 50, '', 'textbox', 'LastName', 'yes'),
('z3banN9VSEP5Ui/6G3WMCg', 'VD+qwuI/x/2RIb/qk/h50w', 'FirstName', 'varchar', 'NO', 50, '', 'textbox', 'FirstName', 'yes'),
('ieZhBvrOTIEknZHKmLWUUw', 'VD+qwuI/x/2RIb/qk/h50w', 'MiddleName', 'varchar', 'YES', 50, '', 'textbox', 'MiddleName', 'yes'),
('LBmphkAfJUsB8HctMogLhA', 'VD+qwuI/x/2RIb/qk/h50w', 'BirthDate', 'date', 'YES', 0, '', 'date controls', 'BirthDate', 'yes'),
('pch08EyiwurhMGI93cZKdw', 'VD+qwuI/x/2RIb/qk/h50w', 'Nationality', 'varchar', 'YES', 50, '', 'textbox', 'Nationality', 'yes'),
('UeUmXN1s4b3t829/z2n3kA', 'VD+qwuI/x/2RIb/qk/h50w', 'CivilStatus', 'varchar', 'YES', 255, '', 'textbox', 'CivilStatus', 'yes'),
('pBTAb5/5H5AbL1m7tIHP0w', 'VD+qwuI/x/2RIb/qk/h50w', 'Religion', 'varchar', 'YES', 50, '', 'textbox', 'Religion', 'yes'),
('NKkOqG7MA4++rKZz65aefg', 'VD+qwuI/x/2RIb/qk/h50w', 'Address', 'varchar', 'YES', 100, '', 'textarea', 'Address', 'yes'),
('5yAWQ9lP1UOSNQdkh9g7PA', 'VD+qwuI/x/2RIb/qk/h50w', 'MunicipalityCity', 'varchar', 'YES', 50, '', 'textbox', 'MunicipalityCity', 'yes'),
('NSYytV+2V6FaVZf+a63MbA', 'VD+qwuI/x/2RIb/qk/h50w', 'ProvinceState', 'varchar', 'YES', 50, '', 'textbox', 'ProvinceState', 'yes'),
('4qWdmFxs6BBO6TtBQmK+hg', 'VD+qwuI/x/2RIb/qk/h50w', 'Region', 'varchar', 'YES', 50, '', 'textbox', 'Region', 'yes'),
('rOnj8x/S5aMZ8daXg/iX6w', 'VD+qwuI/x/2RIb/qk/h50w', 'Country', 'varchar', 'YES', 50, '', 'textbox', 'Country', 'yes'),
('TpiPaLeQ/EUHlBrVUICC9A', 'VD+qwuI/x/2RIb/qk/h50w', 'IsAbroad', 'smallint', 'YES', 6, '', 'textbox', 'IsAbroad', 'yes'),
('IYvXNZlczf/SaxPR9CjYvA', 'VD+qwuI/x/2RIb/qk/h50w', 'PostalCode', 'varchar', 'YES', 10, '', 'textbox', 'PostalCode', 'yes'),
('8Ffk6LtqeuNTc4mgTi+kyg', 'VD+qwuI/x/2RIb/qk/h50w', 'ContactStatus', 'varchar', 'YES', 255, '', 'textbox', 'ContactStatus', 'yes'),
('uIhkX0ba1O+cohVFxFYtbA', 'VD+qwuI/x/2RIb/qk/h50w', 'EmploymentStatus', 'varchar', 'YES', 255, '', 'textbox', 'EmploymentStatus', 'yes'),
('lJtiNLFQ2tPJZe1DfNqbQQ', 'VD+qwuI/x/2RIb/qk/h50w', 'LastUpdate', 'varchar', 'YES', 255, '', 'textbox', 'LastUpdate', 'yes'),
('Iys6G3cjEvZ8bQDcyiOZXw', 'gim83e7ERxx8eqY/jj5/5w', 'Id', 'integer', 'NO', 11, 'primary key', 'none', 'ID', 'no'),
('XkQMvMYgfBq8e0ULZ06efw', 'gim83e7ERxx8eqY/jj5/5w', 'AlumniInfoId', 'integer', 'NO', 20, '', 'textbox', 'AlumniInfoId', 'yes'),
('US3BtLf2azitBnn7+wdAYw', 'gim83e7ERxx8eqY/jj5/5w', 'QualificationType', 'varchar', 'NO', 255, '', 'textbox', 'QualificationType', 'yes'),
('u6E7lsNdcXBaWZMDqzeyTA', 'gim83e7ERxx8eqY/jj5/5w', 'Description', 'varchar', 'NO', 255, '', 'textarea', 'Description', 'yes'),
('AOuzyvtVbHnhoBRiiJfQ3Q', 'gim83e7ERxx8eqY/jj5/5w', 'LicenseCertNo', 'varchar', 'YES', 255, '', 'textbox', 'LicenseCertNo', 'yes'),
('qeuUINzy7KymTKPLGceVWQ', 'gim83e7ERxx8eqY/jj5/5w', 'Organization', 'varchar', 'YES', 255, '', 'textbox', 'Organization', 'yes'),
('1TeNzMB/x9hcydU2bZg5EA', 'gim83e7ERxx8eqY/jj5/5w', 'DateEffective', 'date', 'YES', 0, '', 'date controls', 'DateEffective', 'yes'),
('AX6cqiTGaiMvVywPw03eIA', 'kIv3PV9IpETuBAL6wMcwug', 'Id', 'integer', 'NO', 11, 'primary key', 'none', 'ID', 'no'),
('D66lQ1ShyssK8fUeUPkYtA', 'kIv3PV9IpETuBAL6wMcwug', 'CompanyName', 'varchar', 'NO', 100, '', 'textbox', 'CompanyName', 'yes'),
('wk1oxf5UO5k4XZsUOU63CA', 'kIv3PV9IpETuBAL6wMcwug', 'IndustrySectorId', 'integer', 'NO', 11, '', 'textbox', 'IndustrySectorId', 'yes'),
('XsMShZ3vHoNOUEX7I1EmZg', 'kIv3PV9IpETuBAL6wMcwug', 'WebsiteUrl', 'varchar', 'YES', 150, '', 'textbox', 'WebsiteUrl', 'yes'),
('S2eLL/gaq4wgQgKBb7WIqQ', 'kIv3PV9IpETuBAL6wMcwug', 'Email', 'varchar', 'YES', 150, '', 'textbox', 'Email', 'yes'),
('eRQq79csmL8LrboSmSPQmg', 'kIv3PV9IpETuBAL6wMcwug', 'IsIndustryPartner', 'smallint', 'NO', 6, '', 'textbox', 'IsIndustryPartner', 'yes'),
('B8o7oMqPGFpFh5T00WB5fg', 'kIv3PV9IpETuBAL6wMcwug', 'Status', 'varchar', 'YES', 255, '', 'textbox', 'Status', 'yes'),
('kz6Y2l//63jTOJIiwu+vOQ', 'kIv3PV9IpETuBAL6wMcwug', 'DateCreated', 'date', 'YES', 0, '', 'date controls', 'DateCreated', 'yes'),
('h0T8SivyBRFRfsEWjtXObQ', 'e6i/hl2BSTP/MwpHlaghJA', 'Id', 'integer', 'NO', 11, 'primary key', 'none', 'ID', 'no'),
('sPSd9Jv3I6ioZ5mUi4Leeg', 'e6i/hl2BSTP/MwpHlaghJA', 'CompanyId', 'integer', 'NO', 11, '', 'textbox', 'CompanyId', 'yes'),
('9lYfk2G3Ub0QyZekLwAbng', 'e6i/hl2BSTP/MwpHlaghJA', 'CompanyBranchName', 'varchar', 'NO', 50, '', 'textbox', 'CompanyBranchName', 'yes'),
('iPzzEK8Drssr875yJhZ5KQ', 'e6i/hl2BSTP/MwpHlaghJA', 'Address', 'varchar', 'YES', 100, '', 'textarea', 'Address', 'yes'),
('kZA26lLwkFTDnfCCYqZ0uw', 'e6i/hl2BSTP/MwpHlaghJA', 'MunicipalityCity', 'varchar', 'YES', 50, '', 'textbox', 'MunicipalityCity', 'yes'),
('FIGwGBPltFuXeL4ioJM7fA', 'e6i/hl2BSTP/MwpHlaghJA', 'ProvinceState', 'varchar', 'YES', 50, '', 'textbox', 'ProvinceState', 'yes'),
('2MOoXCHC8u1UI29W9reviA', 'e6i/hl2BSTP/MwpHlaghJA', 'Region', 'varchar', 'YES', 50, '', 'textbox', 'Region', 'yes'),
('3wzK1riAjMeuMJoR/guT8g', 'e6i/hl2BSTP/MwpHlaghJA', 'Country', 'varchar', 'YES', 50, '', 'textbox', 'Country', 'yes'),
('Q5UZgGd0knXDVCq8kgU/HA', 'e6i/hl2BSTP/MwpHlaghJA', 'PostalCode', 'varchar', 'YES', 10, '', 'textbox', 'PostalCode', 'yes'),
('jNgc83ROOkyCCbXobJarCQ', 'e6i/hl2BSTP/MwpHlaghJA', 'PhoneNo1', 'varchar', 'YES', 15, '', 'textbox', 'PhoneNo1', 'yes'),
('8eyu1tsjzxv2MaAN1CpfVg', 'e6i/hl2BSTP/MwpHlaghJA', 'PhoneNo2', 'varchar', 'YES', 15, '', 'textbox', 'PhoneNo2', 'yes'),
('4AtdVisSlPDtScPOLswCog', 'e6i/hl2BSTP/MwpHlaghJA', 'WebsiteUrl', 'varchar', 'YES', 150, '', 'textbox', 'WebsiteUrl', 'yes'),
('/DU7u/TZDh1JBDmYiS4Mow', 'e6i/hl2BSTP/MwpHlaghJA', 'Email', 'varchar', 'YES', 150, '', 'textbox', 'Email', 'yes'),
('80+JgG126jXNnddoJBqRng', 'e6i/hl2BSTP/MwpHlaghJA', 'DateCreated', 'date', 'YES', 0, '', 'date controls', 'DateCreated', 'yes'),
('L4K4uuTqFW7VTZoMF7U5mA', 'e6i/hl2BSTP/MwpHlaghJA', 'Status', 'varchar', 'YES', 255, '', 'textbox', 'Status', 'yes'),
('xseFTX9Cl0jZBRjfHsc96Q', 'e6i/hl2BSTP/MwpHlaghJA', 'DateStart', 'date', 'YES', 0, '', 'date controls', 'DateStart', 'yes'),
('BcCil7FetW6dH36TnpSklw', 'e6i/hl2BSTP/MwpHlaghJA', 'DateEnd', 'date', 'YES', 0, '', 'date controls', 'DateEnd', 'yes'),
('pKNbN+DQYSjmlJ0sxmJPmQ', '6YB6l0iLZSkubkGXvyQfjg', 'Id', 'integer', 'NO', 11, 'primary key', 'none', 'ID', 'no'),
('DNWiNRBRe8ZIkFq5HsJWHA', '6YB6l0iLZSkubkGXvyQfjg', 'CompanyBranchId', 'integer', 'NO', 11, '', 'textbox', 'CompanyBranchId', 'yes'),
('webv99eTWeotKI773UYOeA', '6YB6l0iLZSkubkGXvyQfjg', 'ContactId', 'integer', 'NO', 11, '', 'textbox', 'ContactId', 'yes'),
('IwIZaT8W4L6tH0hDx1SjFg', '2sKNK6ndQ7o2eg60jiM3Ug', 'Id', 'integer', 'NO', 11, 'primary key', 'none', 'ID', 'no'),
('YlGorFAEzHFF5jHueF0rxQ', '2sKNK6ndQ7o2eg60jiM3Ug', 'LastName', 'varchar', 'NO', 50, '', 'textbox', 'LastName', 'yes'),
('Ty79h8RsZzbZ463gZkQVKQ', '2sKNK6ndQ7o2eg60jiM3Ug', 'FirstName', 'varchar', 'NO', 50, '', 'textbox', 'FirstName', 'yes'),
('eu6swsHJfePijte9ZtPYxA', '2sKNK6ndQ7o2eg60jiM3Ug', 'MiddleName', 'varchar', 'YES', 50, '', 'textbox', 'MiddleName', 'yes'),
('m0V2mCYQGJmNbb1mWAWrFA', '2sKNK6ndQ7o2eg60jiM3Ug', 'PhoneNo', 'varchar', 'YES', 15, '', 'textbox', 'PhoneNo', 'yes'),
('4y9XVb8wS2sDFnRHL0qCwA', '2sKNK6ndQ7o2eg60jiM3Ug', 'MobileNo', 'varchar', 'YES', 15, '', 'textbox', 'MobileNo', 'yes'),
('mQgz56C8ZvGHbJl6GOZuVg', '2sKNK6ndQ7o2eg60jiM3Ug', 'Email', 'varchar', 'YES', 100, '', 'textbox', 'Email', 'yes'),
('OgorwRpvTsGjiNjwJPIjdg', '2sKNK6ndQ7o2eg60jiM3Ug', 'Designation', 'varchar', 'YES', 50, '', 'textbox', 'Designation', 'yes'),
('KRzK+8Bycj5xbXxDTruBxQ', 'D3U0j7G3M09+4gAk1d7d5A', 'Id', 'integer', 'NO', 11, 'primary key', 'none', 'ID', 'no'),
('MA8JH5JLzh3905Xe+ossiw', 'D3U0j7G3M09+4gAk1d7d5A', 'EmploymentStatus', 'varchar', 'YES', 255, '', 'textbox', 'EmploymentStatus', 'yes'),
('UlCWbOVQgGr0u4rOeuVWmA', 'eJEUH9ag2Z5RjkusDaF4xQ', 'Id', 'integer', 'NO', 11, 'primary key', 'none', 'ID', 'no'),
('N70mAcA+DDskNhXhNjc58A', 'eJEUH9ag2Z5RjkusDaF4xQ', 'IndustryName', 'varchar', 'NO', 50, '', 'textbox', 'IndustryName', 'yes'),
('rIWD82Bb8/a+8P6TDvpekA', 'eJEUH9ag2Z5RjkusDaF4xQ', 'IsActive', 'smallint', 'NO', 6, '', 'textbox', 'IsActive', 'yes'),
('o4CkJEsEnw0gsnFBq0RGcg', 'irp4uc4sAmPTuXn7OlTHwQ', 'Id', 'integer', 'NO', 20, 'primary key', 'none', 'ID', 'no'),
('3ZZJpqVb/9K5HxIqcS+UJw', 'irp4uc4sAmPTuXn7OlTHwQ', 'student_id', 'varchar', 'NO', 11, '', 'textbox', 'Student ID', 'yes'),
('PiHywb/20udgsB82/j2SOQ', 'irp4uc4sAmPTuXn7OlTHwQ', 'CompanyBranchId', 'integer', 'YES', 11, '', 'textbox', 'CompanyBranchId', 'yes'),
('9JuFrcz+VeZ8g/374+16ow', 'irp4uc4sAmPTuXn7OlTHwQ', 'TermId', 'integer', 'NO', 11, '', 'textbox', 'TermId', 'yes'),
('o0eBltZIGpnPwq2bludEVA', 'irp4uc4sAmPTuXn7OlTHwQ', 'subject_id', 'integer', 'NO', 11, '', 'textbox', 'Subject ID', 'yes'),
('WZQql3DdzJ/gPbiFlULSvQ', 'irp4uc4sAmPTuXn7OlTHwQ', 'StartDate', 'date', 'YES', 0, '', 'date controls', 'StartDate', 'yes'),
('ExiY9Ai5dBKU8r2Okm44fg', 'irp4uc4sAmPTuXn7OlTHwQ', 'EndDate', 'date', 'YES', 0, '', 'date controls', 'EndDate', 'yes'),
('R6WT2ibsiImf4D6nfU76pQ', 'irp4uc4sAmPTuXn7OlTHwQ', 'Designation', 'varchar', 'YES', 50, '', 'textbox', 'Designation', 'yes'),
('UIwZltBJMleKUE5gU08aRQ', 'irp4uc4sAmPTuXn7OlTHwQ', 'Department', 'varchar', 'YES', 50, '', 'textbox', 'Department', 'yes'),
('73sR7pudkCS7h/mLnZtb9g', 'irp4uc4sAmPTuXn7OlTHwQ', 'JobDescription', 'text', 'YES', 0, '', 'textarea', 'JobDescription', 'yes'),
('WnnlNJzjX0TkNmVnQ7x5XQ', 'irp4uc4sAmPTuXn7OlTHwQ', 'Status', 'smallint', 'NO', 6, '', 'textbox', 'Status', 'yes'),
('8U5qBJgkfGFOyw+VRKKTXg', 'irp4uc4sAmPTuXn7OlTHwQ', 'primary_email', 'varchar', 'YES', 255, '', 'textbox', 'Primary Email', 'yes'),
('XRMZXaRLlyUj9lynhd+/0w', 'irp4uc4sAmPTuXn7OlTHwQ', 'secondary_email', 'varchar', 'YES', 255, '', 'textbox', 'Secondary Email', 'yes'),
('ic5v9vGZacniYpxZPwVo0Q', 'irp4uc4sAmPTuXn7OlTHwQ', 'primary_mobile_no', 'varchar', 'YES', 255, '', 'textbox', 'Primary Mobile No', 'yes'),
('HvJrigzdvf9DI+KOtEsXnw', 'irp4uc4sAmPTuXn7OlTHwQ', 'secondary_mobile_no', 'varchar', 'YES', 255, '', 'textbox', 'Secondary Mobile No', 'yes'),
('sMSUeD8DhI2oK0fqXkRNpQ', 'CEV0PQ0lkAn1q0+T24bbKQ', 'Id', 'integer', 'NO', 11, 'primary key', 'none', 'ID', 'no'),
('f6ns4oMT/SL0+NWL7xCp0A', 'CEV0PQ0lkAn1q0+T24bbKQ', 'SchoolCode', 'varchar', 'NO', 255, '', 'textbox', 'SchoolCode', 'yes'),
('NtYuETYfLBH4NTiZtDX9CA', 'CEV0PQ0lkAn1q0+T24bbKQ', 'Course', 'integer', 'NO', 11, '', 'textbox', 'Course', 'yes'),
('qHZ7r/JSpHWVIy6SELNKFQ', 'xZv3hXEBYMdtRI7VABwvbQ', 'student_id', 'varchar', 'NO', 11, 'primary key', 'textbox', 'Student ID', 'yes'),
('nshvH1J5YFjC5rlgRtTWag', 'xZv3hXEBYMdtRI7VABwvbQ', 'student_last_name', 'varchar', 'NO', 25, '', 'textbox', 'Student Last Name', 'yes'),
('qi+ralBWGSf18UuIhIYMmw', 'xZv3hXEBYMdtRI7VABwvbQ', 'student_first_name', 'varchar', 'NO', 30, '', 'textbox', 'Student First Name', 'yes'),
('A2f/9gAvSGPQN8D5D5ktRA', 'xZv3hXEBYMdtRI7VABwvbQ', 'student_middle_name', 'varchar', 'NO', 25, '', 'textbox', 'Student Middle Name', 'yes'),
('DYGHqTpNc7tfdog8VRgxoQ', 'xZv3hXEBYMdtRI7VABwvbQ', 'birth_date', 'date', 'NO', 0, '', 'date controls', 'Birth Date', 'yes'),
('5hNKy2Fe7FpdbSb7wmDauQ', 'xZv3hXEBYMdtRI7VABwvbQ', 'birth_place', 'varchar', 'NO', 35, '', 'textbox', 'Birth Place', 'yes'),
('0tMY7eGVGY2R1vVvva7BTQ', 'xZv3hXEBYMdtRI7VABwvbQ', 'admission_date', 'date', 'NO', 0, '', 'date controls', 'Admission Date', 'yes'),
('iCRo4hbDiCzX8iBAAgnK0w', 'xZv3hXEBYMdtRI7VABwvbQ', 'entry_level', 'varchar', 'YES', 255, '', 'textbox', 'Entry Level', 'yes'),
('Nnbod7aRkkQim5XPCqVQgQ', 'xZv3hXEBYMdtRI7VABwvbQ', 'admission_credential', 'varchar', 'YES', 2500, '', 'textbox', 'Admission Credential', 'yes'),
('5kFiAlXz1jwTtGllUJeQcw', 'xZv3hXEBYMdtRI7VABwvbQ', 'mail_grades_to', 'varchar', 'NO', 255, '', 'textbox', 'Mail Grades To', 'yes'),
('9yEVVCPhfa5nFeigplWFqg', 'xZv3hXEBYMdtRI7VABwvbQ', 'exit_level', 'varchar', 'YES', 255, '', 'textbox', 'Exit Level', 'yes'),
('P+Jf63QerIXNSnsH+q2w+A', 'xZv3hXEBYMdtRI7VABwvbQ', 'nationality', 'varchar', 'NO', 255, '', 'textbox', 'Nationality', 'yes'),
('zUkXw1/zzMzf9mhnYqawiA', 'xZv3hXEBYMdtRI7VABwvbQ', 'gender', 'varchar', 'NO', 255, '', 'textbox', 'Gender', 'yes'),
('06KGVddXwvk7TLjKEMt+Jg', 'xZv3hXEBYMdtRI7VABwvbQ', 'address', 'varchar', 'NO', 250, '', 'textarea', 'Address', 'yes'),
('zERC3mvSPmzlSPSDm5kBIQ', 'xZv3hXEBYMdtRI7VABwvbQ', 'postal_code', 'varchar', 'YES', 250, '', 'textbox', 'Postal Code', 'yes'),
('jWtVLyXLGCO4e0lkLmjzBg', 'xZv3hXEBYMdtRI7VABwvbQ', 'tel_num', 'varchar', 'YES', 250, '', 'textbox', 'Tel Num', 'yes'),
('ImCBAZpySNlBw4+db9c6SA', 'xZv3hXEBYMdtRI7VABwvbQ', 'mobile_num', 'varchar', 'YES', 255, '', 'textbox', 'Mobile Num', 'yes'),
('pS76c4dBDoVTBr+TN8zXcQ', 'xZv3hXEBYMdtRI7VABwvbQ', 'email', 'varchar', 'YES', 250, '', 'textbox', 'Email', 'yes'),
('Py42AzVt/kGZrSI56PhG8Q', 'xZv3hXEBYMdtRI7VABwvbQ', 'religion', 'varchar', 'YES', 25, '', 'textbox', 'Religion', 'yes'),
('m79bjlflJD3dAOpRD9PPTQ', 'xZv3hXEBYMdtRI7VABwvbQ', 'civil_status', 'varchar', 'NO', 255, '', 'textbox', 'Civil Status', 'yes'),
('Gx9lWMk9qoZLsSQfEA6irA', 'xZv3hXEBYMdtRI7VABwvbQ', 'box_num', 'varchar', 'NO', 250, '', 'textbox', 'Box Num', 'yes');

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
('7e2xfQ1FvD2q7nZiQpbgWQ', 'kUEzBQVP598oFCftxA2EqA', 'Male/Female', 'Male/Female gender list'),
('y0+NwluxHaRnoTFGpK3Wrw', 'kUEzBQVP598oFCftxA2EqA', 'On/Off', 'On/Off status list'),
('eANl9Uw9iE9vdR9SDCw+fw', 'kUEzBQVP598oFCftxA2EqA', 'TRUE/FALSE', 'TRUE/FALSE list'),
('TmOuQxSf35rO/8taqc5RqQ', 'kUEzBQVP598oFCftxA2EqA', 'M/F', 'Single character male/female gender list'),
('cLizXMlFodKrQ8lGstNoVg', 'kUEzBQVP598oFCftxA2EqA', 'Yes/No', 'Yes/No list'),
('h8TqrtMIVLqJ4FunvXgp4w', 'kUEzBQVP598oFCftxA2EqA', 'Y/N', 'Single character yes/no list');

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
('7e2xfQ1FvD2q7nZiQpbgWQ', 1, 'Male'),
('7e2xfQ1FvD2q7nZiQpbgWQ', 2, 'Female'),
('y0+NwluxHaRnoTFGpK3Wrw', 1, 'On'),
('y0+NwluxHaRnoTFGpK3Wrw', 2, 'Off'),
('eANl9Uw9iE9vdR9SDCw+fw', 1, 'TRUE'),
('eANl9Uw9iE9vdR9SDCw+fw', 2, 'FALSE'),
('TmOuQxSf35rO/8taqc5RqQ', 1, 'M'),
('TmOuQxSf35rO/8taqc5RqQ', 2, 'F'),
('cLizXMlFodKrQ8lGstNoVg', 1, 'Yes'),
('cLizXMlFodKrQ8lGstNoVg', 2, 'No'),
('h8TqrtMIVLqJ4FunvXgp4w', 1, 'Y'),
('h8TqrtMIVLqJ4FunvXgp4w', 2, 'N');

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
('CEV0PQ0lkAn1q0+T24bbKQ', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'add_schoolcourse.php'),
('irp4uc4sAmPTuXn7OlTHwQ', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'reporter_pdfresult_internassignment.php'),
('irp4uc4sAmPTuXn7OlTHwQ', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'reporter_result_internassignment.php'),
('irp4uc4sAmPTuXn7OlTHwQ', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'detailview_internassignment.php'),
('irp4uc4sAmPTuXn7OlTHwQ', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'listview_internassignment.php'),
('irp4uc4sAmPTuXn7OlTHwQ', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'delete_internassignment.php'),
('irp4uc4sAmPTuXn7OlTHwQ', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'csv_internassignment.php'),
('irp4uc4sAmPTuXn7OlTHwQ', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'reporter_internassignment.php'),
('irp4uc4sAmPTuXn7OlTHwQ', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'edit_internassignment.php'),
('eJEUH9ag2Z5RjkusDaF4xQ', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'reporter_pdfresult_industrysector.php'),
('irp4uc4sAmPTuXn7OlTHwQ', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'add_internassignment.php'),
('eJEUH9ag2Z5RjkusDaF4xQ', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'delete_industrysector.php'),
('eJEUH9ag2Z5RjkusDaF4xQ', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'csv_industrysector.php'),
('eJEUH9ag2Z5RjkusDaF4xQ', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'reporter_industrysector.php'),
('eJEUH9ag2Z5RjkusDaF4xQ', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'reporter_result_industrysector.php'),
('eJEUH9ag2Z5RjkusDaF4xQ', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'listview_industrysector.php'),
('eJEUH9ag2Z5RjkusDaF4xQ', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'add_industrysector.php'),
('eJEUH9ag2Z5RjkusDaF4xQ', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'edit_industrysector.php'),
('eJEUH9ag2Z5RjkusDaF4xQ', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'detailview_industrysector.php'),
('D3U0j7G3M09+4gAk1d7d5A', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'reporter_pdfresult_employmentstatus.php'),
('D3U0j7G3M09+4gAk1d7d5A', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'reporter_result_employmentstatus.php'),
('D3U0j7G3M09+4gAk1d7d5A', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'reporter_employmentstatus.php'),
('D3U0j7G3M09+4gAk1d7d5A', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'csv_employmentstatus.php'),
('D3U0j7G3M09+4gAk1d7d5A', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'listview_employmentstatus.php'),
('D3U0j7G3M09+4gAk1d7d5A', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'delete_employmentstatus.php'),
('2sKNK6ndQ7o2eg60jiM3Ug', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'reporter_pdfresult_contact.php'),
('D3U0j7G3M09+4gAk1d7d5A', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'add_employmentstatus.php'),
('D3U0j7G3M09+4gAk1d7d5A', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'edit_employmentstatus.php'),
('D3U0j7G3M09+4gAk1d7d5A', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'detailview_employmentstatus.php'),
('2sKNK6ndQ7o2eg60jiM3Ug', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'reporter_result_contact.php'),
('2sKNK6ndQ7o2eg60jiM3Ug', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'listview_contact.php'),
('2sKNK6ndQ7o2eg60jiM3Ug', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'delete_contact.php'),
('2sKNK6ndQ7o2eg60jiM3Ug', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'csv_contact.php'),
('2sKNK6ndQ7o2eg60jiM3Ug', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'reporter_contact.php'),
('2sKNK6ndQ7o2eg60jiM3Ug', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'edit_contact.php'),
('2sKNK6ndQ7o2eg60jiM3Ug', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'detailview_contact.php'),
('2sKNK6ndQ7o2eg60jiM3Ug', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'add_contact.php'),
('6YB6l0iLZSkubkGXvyQfjg', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'reporter_pdfresult_companycontact.php'),
('6YB6l0iLZSkubkGXvyQfjg', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'reporter_companycontact.php'),
('6YB6l0iLZSkubkGXvyQfjg', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'reporter_result_companycontact.php'),
('6YB6l0iLZSkubkGXvyQfjg', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'edit_companycontact.php'),
('6YB6l0iLZSkubkGXvyQfjg', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'detailview_companycontact.php'),
('6YB6l0iLZSkubkGXvyQfjg', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'listview_companycontact.php'),
('6YB6l0iLZSkubkGXvyQfjg', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'delete_companycontact.php'),
('6YB6l0iLZSkubkGXvyQfjg', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'csv_companycontact.php'),
('6YB6l0iLZSkubkGXvyQfjg', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'add_companycontact.php'),
('e6i/hl2BSTP/MwpHlaghJA', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'listview_companybranch.php'),
('e6i/hl2BSTP/MwpHlaghJA', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'delete_companybranch.php'),
('e6i/hl2BSTP/MwpHlaghJA', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'csv_companybranch.php'),
('e6i/hl2BSTP/MwpHlaghJA', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'reporter_companybranch.php'),
('e6i/hl2BSTP/MwpHlaghJA', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'reporter_result_companybranch.php'),
('e6i/hl2BSTP/MwpHlaghJA', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'reporter_pdfresult_companybranch.php'),
('e6i/hl2BSTP/MwpHlaghJA', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'detailview_companybranch.php'),
('F8BATcE+raTLXIZBzlzwAQ', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'listview_accomplishment.php'),
('F8BATcE+raTLXIZBzlzwAQ', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'edit_accomplishment.php'),
('F8BATcE+raTLXIZBzlzwAQ', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'detailview_accomplishment.php'),
('F8BATcE+raTLXIZBzlzwAQ', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'add_accomplishment.php'),
('F8BATcE+raTLXIZBzlzwAQ', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'delete_accomplishment.php'),
('F8BATcE+raTLXIZBzlzwAQ', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'csv_accomplishment.php'),
('F8BATcE+raTLXIZBzlzwAQ', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'reporter_accomplishment.php'),
('F8BATcE+raTLXIZBzlzwAQ', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'reporter_result_accomplishment.php'),
('F8BATcE+raTLXIZBzlzwAQ', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'reporter_pdfresult_accomplishment.php'),
('tC/Ax/8G5JwraSGgllUBgA', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'add_attendance.php'),
('tC/Ax/8G5JwraSGgllUBgA', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'edit_attendance.php'),
('tC/Ax/8G5JwraSGgllUBgA', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'detailview_attendance.php'),
('tC/Ax/8G5JwraSGgllUBgA', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'listview_attendance.php'),
('tC/Ax/8G5JwraSGgllUBgA', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'delete_attendance.php'),
('tC/Ax/8G5JwraSGgllUBgA', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'csv_attendance.php'),
('tC/Ax/8G5JwraSGgllUBgA', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'reporter_attendance.php'),
('tC/Ax/8G5JwraSGgllUBgA', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'reporter_result_attendance.php'),
('tC/Ax/8G5JwraSGgllUBgA', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'reporter_pdfresult_attendance.php'),
('DyWWKctvZh5G8IO4rhPpsw', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'add_comment.php'),
('DyWWKctvZh5G8IO4rhPpsw', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'edit_comment.php'),
('DyWWKctvZh5G8IO4rhPpsw', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'detailview_comment.php'),
('DyWWKctvZh5G8IO4rhPpsw', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'listview_comment.php'),
('DyWWKctvZh5G8IO4rhPpsw', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'delete_comment.php'),
('DyWWKctvZh5G8IO4rhPpsw', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'csv_comment.php'),
('DyWWKctvZh5G8IO4rhPpsw', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'reporter_comment.php'),
('DyWWKctvZh5G8IO4rhPpsw', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'reporter_result_comment.php'),
('DyWWKctvZh5G8IO4rhPpsw', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'reporter_pdfresult_comment.php'),
('k1QtLzSq4nESevseD+dchg', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'add_eval_dtl.php'),
('k1QtLzSq4nESevseD+dchg', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'edit_eval_dtl.php'),
('k1QtLzSq4nESevseD+dchg', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'detailview_eval_dtl.php'),
('k1QtLzSq4nESevseD+dchg', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'listview_eval_dtl.php'),
('k1QtLzSq4nESevseD+dchg', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'delete_eval_dtl.php'),
('k1QtLzSq4nESevseD+dchg', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'csv_eval_dtl.php'),
('k1QtLzSq4nESevseD+dchg', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'reporter_eval_dtl.php'),
('k1QtLzSq4nESevseD+dchg', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'reporter_result_eval_dtl.php'),
('k1QtLzSq4nESevseD+dchg', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'reporter_pdfresult_eval_dtl.php'),
('vlGoBSIYUOi45O9exhOQXw', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'add_eval_hdr.php'),
('vlGoBSIYUOi45O9exhOQXw', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'edit_eval_hdr.php'),
('vlGoBSIYUOi45O9exhOQXw', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'detailview_eval_hdr.php'),
('vlGoBSIYUOi45O9exhOQXw', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'listview_eval_hdr.php'),
('vlGoBSIYUOi45O9exhOQXw', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'delete_eval_hdr.php'),
('vlGoBSIYUOi45O9exhOQXw', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'csv_eval_hdr.php'),
('vlGoBSIYUOi45O9exhOQXw', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'reporter_eval_hdr.php'),
('vlGoBSIYUOi45O9exhOQXw', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'reporter_result_eval_hdr.php'),
('vlGoBSIYUOi45O9exhOQXw', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'reporter_pdfresult_eval_hdr.php'),
('BWAlaPc+R44rYgq2c0fU4w', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'add_final_paper_dtl.php'),
('BWAlaPc+R44rYgq2c0fU4w', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'edit_final_paper_dtl.php'),
('BWAlaPc+R44rYgq2c0fU4w', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'detailview_final_paper_dtl.php'),
('BWAlaPc+R44rYgq2c0fU4w', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'listview_final_paper_dtl.php'),
('BWAlaPc+R44rYgq2c0fU4w', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'delete_final_paper_dtl.php'),
('BWAlaPc+R44rYgq2c0fU4w', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'csv_final_paper_dtl.php'),
('BWAlaPc+R44rYgq2c0fU4w', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'reporter_final_paper_dtl.php'),
('BWAlaPc+R44rYgq2c0fU4w', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'reporter_result_final_paper_dtl.php'),
('BWAlaPc+R44rYgq2c0fU4w', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'reporter_pdfresult_final_paper_dtl.php'),
('/c/4xkF5Dq3WvLG37xULug', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'add_final_paper_hdr.php'),
('/c/4xkF5Dq3WvLG37xULug', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'edit_final_paper_hdr.php'),
('/c/4xkF5Dq3WvLG37xULug', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'detailview_final_paper_hdr.php'),
('/c/4xkF5Dq3WvLG37xULug', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'listview_final_paper_hdr.php'),
('/c/4xkF5Dq3WvLG37xULug', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'delete_final_paper_hdr.php'),
('/c/4xkF5Dq3WvLG37xULug', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'csv_final_paper_hdr.php'),
('/c/4xkF5Dq3WvLG37xULug', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'reporter_final_paper_hdr.php'),
('/c/4xkF5Dq3WvLG37xULug', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'reporter_result_final_paper_hdr.php'),
('/c/4xkF5Dq3WvLG37xULug', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'reporter_pdfresult_final_paper_hdr.php'),
('glN7PPDguZW3TkdjRMsuLQ', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'add_post.php'),
('glN7PPDguZW3TkdjRMsuLQ', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'edit_post.php'),
('glN7PPDguZW3TkdjRMsuLQ', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'detailview_post.php'),
('glN7PPDguZW3TkdjRMsuLQ', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'listview_post.php'),
('glN7PPDguZW3TkdjRMsuLQ', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'delete_post.php'),
('glN7PPDguZW3TkdjRMsuLQ', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'csv_post.php'),
('glN7PPDguZW3TkdjRMsuLQ', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'reporter_post.php'),
('glN7PPDguZW3TkdjRMsuLQ', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'reporter_result_post.php'),
('glN7PPDguZW3TkdjRMsuLQ', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'reporter_pdfresult_post.php'),
('vCrUOYn7rDLhWB9dT+qNjg', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'add_questionnaire.php'),
('vCrUOYn7rDLhWB9dT+qNjg', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'edit_questionnaire.php'),
('vCrUOYn7rDLhWB9dT+qNjg', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'detailview_questionnaire.php'),
('vCrUOYn7rDLhWB9dT+qNjg', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'listview_questionnaire.php'),
('vCrUOYn7rDLhWB9dT+qNjg', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'delete_questionnaire.php'),
('vCrUOYn7rDLhWB9dT+qNjg', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'csv_questionnaire.php'),
('vCrUOYn7rDLhWB9dT+qNjg', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'reporter_questionnaire.php'),
('vCrUOYn7rDLhWB9dT+qNjg', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'reporter_result_questionnaire.php'),
('vCrUOYn7rDLhWB9dT+qNjg', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'reporter_pdfresult_questionnaire.php'),
('Re6LFq8raVBf2Jk6GbpaTA', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'add_resume_dtl.php'),
('Re6LFq8raVBf2Jk6GbpaTA', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'edit_resume_dtl.php'),
('Re6LFq8raVBf2Jk6GbpaTA', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'detailview_resume_dtl.php'),
('Re6LFq8raVBf2Jk6GbpaTA', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'listview_resume_dtl.php'),
('Re6LFq8raVBf2Jk6GbpaTA', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'delete_resume_dtl.php'),
('Re6LFq8raVBf2Jk6GbpaTA', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'csv_resume_dtl.php'),
('Re6LFq8raVBf2Jk6GbpaTA', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'reporter_resume_dtl.php'),
('Re6LFq8raVBf2Jk6GbpaTA', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'reporter_result_resume_dtl.php'),
('Re6LFq8raVBf2Jk6GbpaTA', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'reporter_pdfresult_resume_dtl.php'),
('OZVCdW5wBcMdcwonN12tVg', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'add_resume_hdr.php'),
('OZVCdW5wBcMdcwonN12tVg', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'edit_resume_hdr.php'),
('OZVCdW5wBcMdcwonN12tVg', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'detailview_resume_hdr.php'),
('OZVCdW5wBcMdcwonN12tVg', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'listview_resume_hdr.php'),
('OZVCdW5wBcMdcwonN12tVg', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'delete_resume_hdr.php'),
('OZVCdW5wBcMdcwonN12tVg', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'csv_resume_hdr.php'),
('OZVCdW5wBcMdcwonN12tVg', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'reporter_resume_hdr.php'),
('OZVCdW5wBcMdcwonN12tVg', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'reporter_result_resume_hdr.php'),
('OZVCdW5wBcMdcwonN12tVg', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'reporter_pdfresult_resume_hdr.php'),
('zSLMQ3FjKL7jwmBkkZZTZQ', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'add_alumniaddress.php'),
('zSLMQ3FjKL7jwmBkkZZTZQ', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'edit_alumniaddress.php'),
('zSLMQ3FjKL7jwmBkkZZTZQ', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'detailview_alumniaddress.php'),
('zSLMQ3FjKL7jwmBkkZZTZQ', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'listview_alumniaddress.php'),
('zSLMQ3FjKL7jwmBkkZZTZQ', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'delete_alumniaddress.php'),
('zSLMQ3FjKL7jwmBkkZZTZQ', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'csv_alumniaddress.php'),
('zSLMQ3FjKL7jwmBkkZZTZQ', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'reporter_alumniaddress.php'),
('zSLMQ3FjKL7jwmBkkZZTZQ', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'reporter_result_alumniaddress.php'),
('zSLMQ3FjKL7jwmBkkZZTZQ', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'reporter_pdfresult_alumniaddress.php'),
('FD+uk0cQuZNSGRPttcSmLg', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'add_alumniemplmove.php'),
('FD+uk0cQuZNSGRPttcSmLg', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'edit_alumniemplmove.php'),
('FD+uk0cQuZNSGRPttcSmLg', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'detailview_alumniemplmove.php'),
('FD+uk0cQuZNSGRPttcSmLg', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'listview_alumniemplmove.php'),
('FD+uk0cQuZNSGRPttcSmLg', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'delete_alumniemplmove.php'),
('FD+uk0cQuZNSGRPttcSmLg', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'csv_alumniemplmove.php'),
('FD+uk0cQuZNSGRPttcSmLg', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'reporter_alumniemplmove.php'),
('FD+uk0cQuZNSGRPttcSmLg', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'reporter_result_alumniemplmove.php'),
('FD+uk0cQuZNSGRPttcSmLg', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'reporter_pdfresult_alumniemplmove.php'),
('cr02A+Umbg8d7LY7FDYOJA', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'add_alumniemplrecord.php'),
('cr02A+Umbg8d7LY7FDYOJA', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'edit_alumniemplrecord.php'),
('cr02A+Umbg8d7LY7FDYOJA', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'detailview_alumniemplrecord.php'),
('cr02A+Umbg8d7LY7FDYOJA', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'listview_alumniemplrecord.php'),
('cr02A+Umbg8d7LY7FDYOJA', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'delete_alumniemplrecord.php'),
('cr02A+Umbg8d7LY7FDYOJA', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'csv_alumniemplrecord.php'),
('cr02A+Umbg8d7LY7FDYOJA', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'reporter_alumniemplrecord.php'),
('cr02A+Umbg8d7LY7FDYOJA', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'reporter_result_alumniemplrecord.php'),
('cr02A+Umbg8d7LY7FDYOJA', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'reporter_pdfresult_alumniemplrecord.php'),
('ADPAgZMqdEhOjfyXQfAnaA', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'add_alumnifurtherstudies.php'),
('ADPAgZMqdEhOjfyXQfAnaA', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'edit_alumnifurtherstudies.php'),
('ADPAgZMqdEhOjfyXQfAnaA', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'detailview_alumnifurtherstudies.php'),
('ADPAgZMqdEhOjfyXQfAnaA', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'listview_alumnifurtherstudies.php'),
('ADPAgZMqdEhOjfyXQfAnaA', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'delete_alumnifurtherstudies.php'),
('ADPAgZMqdEhOjfyXQfAnaA', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'csv_alumnifurtherstudies.php'),
('ADPAgZMqdEhOjfyXQfAnaA', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'reporter_alumnifurtherstudies.php'),
('ADPAgZMqdEhOjfyXQfAnaA', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'reporter_result_alumnifurtherstudies.php'),
('ADPAgZMqdEhOjfyXQfAnaA', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'reporter_pdfresult_alumnifurtherstudies.php'),
('VD+qwuI/x/2RIb/qk/h50w', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'add_alumniinfo.php'),
('VD+qwuI/x/2RIb/qk/h50w', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'edit_alumniinfo.php'),
('VD+qwuI/x/2RIb/qk/h50w', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'detailview_alumniinfo.php'),
('VD+qwuI/x/2RIb/qk/h50w', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'listview_alumniinfo.php'),
('VD+qwuI/x/2RIb/qk/h50w', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'delete_alumniinfo.php'),
('VD+qwuI/x/2RIb/qk/h50w', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'csv_alumniinfo.php'),
('VD+qwuI/x/2RIb/qk/h50w', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'reporter_alumniinfo.php'),
('VD+qwuI/x/2RIb/qk/h50w', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'reporter_result_alumniinfo.php'),
('VD+qwuI/x/2RIb/qk/h50w', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'reporter_pdfresult_alumniinfo.php'),
('gim83e7ERxx8eqY/jj5/5w', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'add_alumniprofqualification.php'),
('gim83e7ERxx8eqY/jj5/5w', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'edit_alumniprofqualification.php'),
('gim83e7ERxx8eqY/jj5/5w', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'detailview_alumniprofqualification.php'),
('gim83e7ERxx8eqY/jj5/5w', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'listview_alumniprofqualification.php'),
('gim83e7ERxx8eqY/jj5/5w', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'delete_alumniprofqualification.php'),
('gim83e7ERxx8eqY/jj5/5w', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'csv_alumniprofqualification.php'),
('gim83e7ERxx8eqY/jj5/5w', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'reporter_alumniprofqualification.php'),
('gim83e7ERxx8eqY/jj5/5w', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'reporter_result_alumniprofqualification.php'),
('gim83e7ERxx8eqY/jj5/5w', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'reporter_pdfresult_alumniprofqualification.php'),
('kIv3PV9IpETuBAL6wMcwug', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'add_company.php'),
('kIv3PV9IpETuBAL6wMcwug', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'edit_company.php'),
('kIv3PV9IpETuBAL6wMcwug', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'detailview_company.php'),
('kIv3PV9IpETuBAL6wMcwug', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'listview_company.php'),
('kIv3PV9IpETuBAL6wMcwug', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'delete_company.php'),
('kIv3PV9IpETuBAL6wMcwug', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'csv_company.php'),
('kIv3PV9IpETuBAL6wMcwug', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'reporter_company.php'),
('kIv3PV9IpETuBAL6wMcwug', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'reporter_result_company.php'),
('kIv3PV9IpETuBAL6wMcwug', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'reporter_pdfresult_company.php'),
('e6i/hl2BSTP/MwpHlaghJA', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'add_companybranch.php'),
('e6i/hl2BSTP/MwpHlaghJA', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'edit_companybranch.php'),
('CEV0PQ0lkAn1q0+T24bbKQ', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'edit_schoolcourse.php'),
('CEV0PQ0lkAn1q0+T24bbKQ', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'detailview_schoolcourse.php'),
('CEV0PQ0lkAn1q0+T24bbKQ', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'listview_schoolcourse.php'),
('CEV0PQ0lkAn1q0+T24bbKQ', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'delete_schoolcourse.php'),
('CEV0PQ0lkAn1q0+T24bbKQ', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'csv_schoolcourse.php'),
('CEV0PQ0lkAn1q0+T24bbKQ', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'reporter_schoolcourse.php'),
('CEV0PQ0lkAn1q0+T24bbKQ', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'reporter_result_schoolcourse.php'),
('CEV0PQ0lkAn1q0+T24bbKQ', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'reporter_pdfresult_schoolcourse.php'),
('xZv3hXEBYMdtRI7VABwvbQ', '+nSXSR+3BnhhMmaBfNYLbZW1Klls8lauC+9jhXjFZPg=', 'add_refstudent.php'),
('xZv3hXEBYMdtRI7VABwvbQ', 'alOVwAQ+rL1qGsKXzH3ntUOTsz3+58x/CjrGwNCoLZU=', 'edit_refstudent.php'),
('xZv3hXEBYMdtRI7VABwvbQ', 'AoJ17xCURhNmjVr+1xWj5Ipr8Jqf461C5RKOc6oCY5s=', 'detailview_refstudent.php'),
('xZv3hXEBYMdtRI7VABwvbQ', 'Mv+1k7TH5VAPb74N+qvQCfXbqWhlyILNtEvdMQHKIxA=', 'listview_refstudent.php'),
('xZv3hXEBYMdtRI7VABwvbQ', 'qWMTJddAsNYOu7YBrSc/AV79roA/630phvlC4N6Z7KI=', 'delete_refstudent.php'),
('xZv3hXEBYMdtRI7VABwvbQ', 'DMOnHB6R/wc6cXt89xU9OUTRxKMYr7mnlvpUZidmV7g=', 'csv_refstudent.php'),
('xZv3hXEBYMdtRI7VABwvbQ', 'X0JsxS82n8sIFiKwpQCR9c99doOFEsHIxs4pDGZxg+8=', 'reporter_refstudent.php'),
('xZv3hXEBYMdtRI7VABwvbQ', '/0CxWVJHlM+Z9jATzhv6vAHQnuZZWS4URCnxcUxceXc=', 'reporter_result_refstudent.php'),
('xZv3hXEBYMdtRI7VABwvbQ', 'EAOGEEl9nxgSOWL/Rb5QoOYKSwEPz/eM8wakTQEEk3o=', 'reporter_pdfresult_refstudent.php');

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
('XPyM5v1nmB0rv/EuewcWzg', 'kUEzBQVP598oFCftxA2EqA', 'ONE-to-MANY', 'nc+OnpQTghDHEj7HRaWuXQ', 'm8bFbj3YQjpCS/xxiCUCVA', 'final_paper_hdr=>final_paper_dtl', '');

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

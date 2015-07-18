-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 16, 2015 at 07:50 AM
-- Server version: 5.6.16
-- PHP Version: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ACCOM`
--

-- --------------------------------------------------------

--
-- Table structure for table `AlumniAddress`
--

CREATE TABLE IF NOT EXISTS `AlumniAddress` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `AlumniInfoId` int(11) NOT NULL,
  `AddressType` enum('Abroad','Local') NOT NULL,
  `Address` varchar(255) NOT NULL,
  `MunicipalityCity` varchar(255) NOT NULL,
  `ProvinceState` varchar(255) NOT NULL,
  `Region` varchar(255) NOT NULL,
  `Country` varchar(255) NOT NULL,
  `PostalCode` varchar(255) NOT NULL,
  `IsCurrent` tinyint(1) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1466 ;

-- --------------------------------------------------------

--
-- Table structure for table `AlumniEmplMove`
--

CREATE TABLE IF NOT EXISTS `AlumniEmplMove` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `AlumniEmplRecordId` int(11) NOT NULL,
  `DateEffective` date DEFAULT NULL,
  `Designation` varchar(50) DEFAULT NULL,
  `SalaryRange` enum('') DEFAULT NULL,
  `Remarks` text,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `AlumniEmplRecord`
--

CREATE TABLE IF NOT EXISTS `AlumniEmplRecord` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `AlumniInfoId` bigint(20) NOT NULL,
  `CompanyBranchId` int(11) DEFAULT NULL,
  `NoOfYearsInCompany` int(11) DEFAULT NULL,
  `Position` varchar(255) DEFAULT NULL,
  `NoOfYearsInPosition` int(11) DEFAULT NULL,
  `Remarks` text,
  `IsCurrentlyEmployed` smallint(6) DEFAULT '0',
  `IsAbsorbed` smallint(6) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `ContactNo` varchar(255) DEFAULT NULL,
  `StartDate` date DEFAULT '0000-00-00',
  `EndDate` date DEFAULT '0000-00-00',
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5111 ;

-- --------------------------------------------------------

--
-- Table structure for table `AlumniFurtherStudies`
--

CREATE TABLE IF NOT EXISTS `AlumniFurtherStudies` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `AlumniInfoId` bigint(20) NOT NULL,
  `StudyType` enum('Training','Graduate','Undergraduate') NOT NULL,
  `Course` varchar(50) NOT NULL,
  `StartDate` date DEFAULT NULL,
  `EndDate` date DEFAULT NULL,
  `SchoolOrganization` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=199 ;

-- --------------------------------------------------------

--
-- Table structure for table `AlumniInfo`
--

CREATE TABLE IF NOT EXISTS `AlumniInfo` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `student_id` char(11) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `FirstName` varchar(50) NOT NULL,
  `MiddleName` varchar(50) DEFAULT NULL,
  `BirthDate` date DEFAULT NULL,
  `Nationality` varchar(50) DEFAULT NULL,
  `CivilStatus` enum('Widowed','Separated','Married','Single') DEFAULT NULL,
  `Religion` varchar(50) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `MunicipalityCity` varchar(50) DEFAULT NULL,
  `ProvinceState` varchar(50) DEFAULT NULL,
  `Region` varchar(50) DEFAULT NULL,
  `Country` varchar(50) DEFAULT NULL,
  `IsAbroad` smallint(6) DEFAULT NULL,
  `PostalCode` varchar(10) DEFAULT NULL,
  `ContactStatus` enum('Not Contacted','Contacted') DEFAULT NULL,
  `EmploymentStatus` enum('Employed','Unemployed','Self-Employed','Not Tracked') DEFAULT NULL,
  `LastUpdate` datetime DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5093 ;

-- --------------------------------------------------------

--
-- Table structure for table `AlumniProfQualification`
--

CREATE TABLE IF NOT EXISTS `AlumniProfQualification` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `AlumniInfoId` bigint(20) NOT NULL,
  `QualificationType` enum('Licensure','Certification') NOT NULL,
  `Description` varchar(255) NOT NULL,
  `LicenseCertNo` varchar(255) DEFAULT NULL,
  `Organization` varchar(255) DEFAULT NULL,
  `DateEffective` date DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=79 ;

-- --------------------------------------------------------

--
-- Table structure for table `Company`
--

CREATE TABLE IF NOT EXISTS `Company` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `CompanyName` varchar(100) NOT NULL,
  `IndustrySectorId` int(11) NOT NULL,
  `WebsiteUrl` varchar(150) DEFAULT NULL,
  `Email` varchar(150) DEFAULT NULL,
  `IsIndustryPartner` smallint(6) NOT NULL,
  `Status` enum('Others','Closed','Operating') DEFAULT NULL,
  `DateCreated` date DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1688 ;

-- --------------------------------------------------------

--
-- Table structure for table `CompanyBranch`
--

CREATE TABLE IF NOT EXISTS `CompanyBranch` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `CompanyId` int(11) NOT NULL,
  `CompanyBranchName` varchar(50) NOT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `MunicipalityCity` varchar(50) DEFAULT NULL,
  `ProvinceState` varchar(50) DEFAULT NULL,
  `Region` varchar(50) DEFAULT NULL,
  `Country` varchar(50) DEFAULT NULL,
  `PostalCode` varchar(10) DEFAULT NULL,
  `PhoneNo1` varchar(15) DEFAULT NULL,
  `PhoneNo2` varchar(15) DEFAULT NULL,
  `WebsiteUrl` varchar(150) DEFAULT NULL,
  `Email` varchar(150) DEFAULT NULL,
  `DateCreated` date DEFAULT NULL,
  `Status` enum('Operating','Closed','Others') DEFAULT NULL,
  `DateStart` date DEFAULT NULL,
  `DateEnd` date DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1688 ;

-- --------------------------------------------------------

--
-- Table structure for table `CompanyContact`
--

CREATE TABLE IF NOT EXISTS `CompanyContact` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `CompanyBranchId` int(11) NOT NULL,
  `ContactId` int(11) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=143 ;

-- --------------------------------------------------------

--
-- Table structure for table `Contact`
--

CREATE TABLE IF NOT EXISTS `Contact` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `LastName` varchar(50) NOT NULL,
  `FirstName` varchar(50) NOT NULL,
  `MiddleName` varchar(50) DEFAULT NULL,
  `PhoneNo` varchar(15) DEFAULT NULL,
  `MobileNo` varchar(15) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Designation` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=144 ;

-- --------------------------------------------------------

--
-- Table structure for table `EmploymentStatus`
--

CREATE TABLE IF NOT EXISTS `EmploymentStatus` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `EmploymentStatus` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

-- --------------------------------------------------------

--
-- Table structure for table `IndustrySector`
--

CREATE TABLE IF NOT EXISTS `IndustrySector` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `IndustryName` varchar(50) NOT NULL,
  `IsActive` smallint(6) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=113 ;

-- --------------------------------------------------------

--
-- Table structure for table `InternAssignment`
--

CREATE TABLE IF NOT EXISTS `InternAssignment` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `student_id` char(11) NOT NULL,
  `CompanyBranchId` int(11) DEFAULT NULL,
  `TermId` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `StartDate` date DEFAULT NULL,
  `EndDate` date DEFAULT NULL,
  `Designation` varchar(50) DEFAULT NULL,
  `Department` varchar(50) DEFAULT NULL,
  `JobDescription` text,
  `Status` smallint(6) NOT NULL,
  `primary_email` varchar(255) DEFAULT NULL,
  `secondary_email` varchar(255) DEFAULT NULL,
  `primary_mobile_no` varchar(255) DEFAULT NULL,
  `secondary_mobile_no` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4186 ;

-- --------------------------------------------------------

--
-- Table structure for table `SchoolCourse`
--

CREATE TABLE IF NOT EXISTS `SchoolCourse` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `SchoolCode` varchar(255) NOT NULL,
  `Course` int(11) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=56 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

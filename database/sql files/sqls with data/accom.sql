-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 18, 2015 at 04:48 PM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `accom`
--

-- --------------------------------------------------------

--
-- Table structure for table `alumniaddress`
--

CREATE TABLE IF NOT EXISTS `alumniaddress` (
  `Id` int(11) NOT NULL,
  `AlumniInfoId` int(11) NOT NULL,
  `AddressType` enum('Abroad','Local') NOT NULL,
  `Address` varchar(255) NOT NULL,
  `MunicipalityCity` varchar(255) NOT NULL,
  `ProvinceState` varchar(255) NOT NULL,
  `Region` varchar(255) NOT NULL,
  `Country` varchar(255) NOT NULL,
  `PostalCode` varchar(255) NOT NULL,
  `IsCurrent` tinyint(1) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=1466 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `alumniemplmove`
--

CREATE TABLE IF NOT EXISTS `alumniemplmove` (
  `Id` int(11) NOT NULL,
  `AlumniEmplRecordId` int(11) NOT NULL,
  `DateEffective` date DEFAULT NULL,
  `Designation` varchar(50) DEFAULT NULL,
  `SalaryRange` enum('') DEFAULT NULL,
  `Remarks` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `alumniemplrecord`
--

CREATE TABLE IF NOT EXISTS `alumniemplrecord` (
  `Id` int(11) NOT NULL,
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
  `EndDate` date DEFAULT '0000-00-00'
) ENGINE=MyISAM AUTO_INCREMENT=5111 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `alumnifurtherstudies`
--

CREATE TABLE IF NOT EXISTS `alumnifurtherstudies` (
  `Id` bigint(20) NOT NULL,
  `AlumniInfoId` bigint(20) NOT NULL,
  `StudyType` enum('Training','Graduate','Undergraduate') NOT NULL,
  `Course` varchar(50) NOT NULL,
  `StartDate` date DEFAULT NULL,
  `EndDate` date DEFAULT NULL,
  `SchoolOrganization` varchar(50) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=199 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `alumniinfo`
--

CREATE TABLE IF NOT EXISTS `alumniinfo` (
  `Id` bigint(20) NOT NULL,
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
  `LastUpdate` datetime DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=5093 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `alumniprofqualification`
--

CREATE TABLE IF NOT EXISTS `alumniprofqualification` (
  `Id` int(11) NOT NULL,
  `AlumniInfoId` bigint(20) NOT NULL,
  `QualificationType` enum('Licensure','Certification') NOT NULL,
  `Description` varchar(255) NOT NULL,
  `LicenseCertNo` varchar(255) DEFAULT NULL,
  `Organization` varchar(255) DEFAULT NULL,
  `DateEffective` date DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=79 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE IF NOT EXISTS `company` (
  `Id` int(11) NOT NULL,
  `CompanyName` varchar(100) NOT NULL,
  `IndustrySectorId` int(11) NOT NULL,
  `WebsiteUrl` varchar(150) DEFAULT NULL,
  `Email` varchar(150) DEFAULT NULL,
  `IsIndustryPartner` smallint(6) NOT NULL,
  `Status` enum('Others','Closed','Operating') DEFAULT NULL,
  `DateCreated` date DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=1691 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`Id`, `CompanyName`, `IndustrySectorId`, `WebsiteUrl`, `Email`, `IsIndustryPartner`, `Status`, `DateCreated`) VALUES
(1688, 'SM Entertainment', 1, 'www.smtown.com', 'staff@smtown.com', 1, 'Operating', '2015-07-18'),
(1689, 'Johnny''s Entertainment', 2, 'www.johnnys-net.jp', 'hr@johnnys-net.jp', 2, 'Operating', '2015-07-18'),
(1690, 'Woolim Foods Corp.', 3, 'www.woolim-foods.com', 'jungyeop@woolim-foods.com', 3, 'Operating', '2015-07-18');

-- --------------------------------------------------------

--
-- Table structure for table `companybranch`
--

CREATE TABLE IF NOT EXISTS `companybranch` (
  `Id` int(11) NOT NULL,
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
  `DateEnd` date DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=1688 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `companycontact`
--

CREATE TABLE IF NOT EXISTS `companycontact` (
  `Id` int(11) NOT NULL,
  `CompanyBranchId` int(11) NOT NULL,
  `ContactId` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=143 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE IF NOT EXISTS `contact` (
  `Id` int(11) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `FirstName` varchar(50) NOT NULL,
  `MiddleName` varchar(50) DEFAULT NULL,
  `PhoneNo` varchar(15) DEFAULT NULL,
  `MobileNo` varchar(15) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Designation` varchar(50) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=144 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `employmentstatus`
--

CREATE TABLE IF NOT EXISTS `employmentstatus` (
  `Id` int(11) NOT NULL,
  `EmploymentStatus` varchar(255) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `industrysector`
--

CREATE TABLE IF NOT EXISTS `industrysector` (
  `Id` int(11) NOT NULL,
  `IndustryName` varchar(50) NOT NULL,
  `IsActive` smallint(6) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=113 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `internassignment`
--

CREATE TABLE IF NOT EXISTS `internassignment` (
  `Id` bigint(20) NOT NULL,
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
  `secondary_mobile_no` varchar(255) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=4186 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `schoolcourse`
--

CREATE TABLE IF NOT EXISTS `schoolcourse` (
  `Id` int(11) NOT NULL,
  `SchoolCode` varchar(255) NOT NULL,
  `Course` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=56 DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alumniaddress`
--
ALTER TABLE `alumniaddress`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `alumniemplmove`
--
ALTER TABLE `alumniemplmove`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `alumniemplrecord`
--
ALTER TABLE `alumniemplrecord`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `alumnifurtherstudies`
--
ALTER TABLE `alumnifurtherstudies`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `alumniinfo`
--
ALTER TABLE `alumniinfo`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `alumniprofqualification`
--
ALTER TABLE `alumniprofqualification`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `companybranch`
--
ALTER TABLE `companybranch`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `companycontact`
--
ALTER TABLE `companycontact`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `employmentstatus`
--
ALTER TABLE `employmentstatus`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `industrysector`
--
ALTER TABLE `industrysector`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `internassignment`
--
ALTER TABLE `internassignment`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `schoolcourse`
--
ALTER TABLE `schoolcourse`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alumniaddress`
--
ALTER TABLE `alumniaddress`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1466;
--
-- AUTO_INCREMENT for table `alumniemplmove`
--
ALTER TABLE `alumniemplmove`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `alumniemplrecord`
--
ALTER TABLE `alumniemplrecord`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5111;
--
-- AUTO_INCREMENT for table `alumnifurtherstudies`
--
ALTER TABLE `alumnifurtherstudies`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=199;
--
-- AUTO_INCREMENT for table `alumniinfo`
--
ALTER TABLE `alumniinfo`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5093;
--
-- AUTO_INCREMENT for table `alumniprofqualification`
--
ALTER TABLE `alumniprofqualification`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=79;
--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1691;
--
-- AUTO_INCREMENT for table `companybranch`
--
ALTER TABLE `companybranch`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1688;
--
-- AUTO_INCREMENT for table `companycontact`
--
ALTER TABLE `companycontact`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=143;
--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=144;
--
-- AUTO_INCREMENT for table `employmentstatus`
--
ALTER TABLE `employmentstatus`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `industrysector`
--
ALTER TABLE `industrysector`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=113;
--
-- AUTO_INCREMENT for table `internassignment`
--
ALTER TABLE `internassignment`
  MODIFY `Id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4186;
--
-- AUTO_INCREMENT for table `schoolcourse`
--
ALTER TABLE `schoolcourse`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=56;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

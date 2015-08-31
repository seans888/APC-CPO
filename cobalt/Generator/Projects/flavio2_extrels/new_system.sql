--
-- Table structure for table `cobalt_reporter`
--

CREATE TABLE `cobalt_reporter` (
  `module_name` varchar(255) NOT NULL,
  `report_name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `show_field` blob NOT NULL,
  `operator` blob NOT NULL,
  `text_field` blob NOT NULL,
  `sum_field` blob NOT NULL,
  `count_field` blob NOT NULL,
  `group_field` blob NOT NULL,
  PRIMARY KEY (`module_name`,`report_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Table structure for table `person`
--

CREATE TABLE `person` (
  `person_id` int(11) NOT NULL auto_increment,
  `first_name` varchar(255) NOT NULL,
  `middle_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  PRIMARY KEY  (`person_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `person`
--

INSERT INTO `person` (`person_id`, `first_name`, `middle_name`, `last_name`, `gender`) VALUES
(1, 'Super User', 'X', 'Root', 'Male');

-- --------------------------------------------------------

--
-- Table structure for table `system_log`
--

CREATE TABLE `system_log` (
  `entry_id` bigint(20) NOT NULL auto_increment,
  `ip_address` varchar(255) NOT NULL,
  `user` varchar(255) NOT NULL,
  `datetime` int(11) NOT NULL,
  `action` varchar(50000) NOT NULL,
  `module` varchar(255) NOT NULL,
  PRIMARY KEY  (`entry_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `system_log`
--


-- --------------------------------------------------------

--
-- Table structure for table `system_settings`
--

CREATE TABLE `system_settings` (
  `setting` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  PRIMARY KEY  (`setting`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `system_settings`
--

INSERT INTO `system_settings` (`setting`, `value`) VALUES
('Security Level', 'HIGH'),
('Max Attachment Size (MB)', '0');

-- --------------------------------------------------------

--
-- Table structure for table `system_skins`
--

CREATE TABLE `system_skins` (
  `skin_id` int(11) NOT NULL auto_increment,
  `skin_name` varchar(255) NOT NULL,
  `header` varchar(255) NOT NULL,
  `footer` varchar(255) NOT NULL,
  `master_css` varchar(255) NOT NULL,
  `colors_css` varchar(255) NOT NULL,
  `fonts_css` varchar(255) NOT NULL,
  `override_css` varchar(255) NOT NULL,
  `icon_set` varchar(255) NOT NULL,
  PRIMARY KEY  (`skin_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `system_skins`
--

INSERT INTO `system_skins` (`skin_id`, `skin_name`, `header`, `footer`, `master_css`, `colors_css`, `fonts_css`, `override_css`, `icon_set`) VALUES
(1, 'Cobalt Default', 'skins/default_header.php', 'skins/default_footer.php', 'cobalt_master.css', 'cobalt_colors.css', 'cobalt_fonts.css', 'cobalt_override.css','cobalt'),
(2, 'Cobalt Minimal', 'skins/minimal_header.php', 'skins/minimal_footer.php', 'cobalt_minimal.css', 'cobalt_minimal.css', 'cobalt_minimal.css', 'cobalt_minimal.css','cobalt'),
(3, 'After Sunset', 'skins/default_header.php', 'skins/default_footer.php', 'after_sunset_master.css', 'after_sunset_colors.css', 'after_sunset_fonts.css', 'after_sunset_override.css','cobalt'),
(4, 'Hello There', 'skins/default_header.php', 'skins/default_footer.php', 'hello_there_master.css', 'hello_there_colors.css', 'hello_there_fonts.css', 'hello_there_override.css','cobalt'),
(5, 'Gold Titanium', 'skins/default_header.php', 'skins/default_footer.php', 'gold_titanium_master.css', 'gold_titanium_colors.css', 'gold_titanium_fonts.css', 'gold_titanium_override.css','cobalt'),
(6, 'Summer Rain', 'skins/default_header.php', 'skins/default_footer.php', 'summer_rain_master.css', 'summer_rain_colors.css', 'summer_rain_fonts.css', 'summer_rain_override.css','cobalt'),
(7, 'Salmon Impression', 'skins/default_header.php', 'skins/default_footer.php', 'salmon_impression_master.css', 'salmon_impression_colors.css', 'salmon_impression_fonts.css', 'salmon_impression_override.css','cobalt'),
(8, 'Royal Amethyst', 'skins/default_header.php', 'skins/default_footer.php', 'royal_amethyst_master.css', 'royal_amethyst_colors.css', 'royal_amethyst_fonts.css', 'royal_amethyst_override.css','cobalt'),
(9, 'Red Decadence', 'skins/default_header.php', 'skins/default_footer.php', 'red_decadence_master.css', 'red_decadence_colors.css', 'red_decadence_fonts.css', 'red_decadence_override.css','cobalt'),
(10, 'Modern Eden', 'skins/default_header.php', 'skins/default_footer.php', 'modern_eden_master.css', 'modern_eden_colors.css', 'modern_eden_fonts.css', 'modern_eden_override.css','cobalt');


-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `salt` varchar(255) NOT NULL,
  `iteration` int(11) NOT NULL,
  `method` varchar(255) NOT NULL,
  `person_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `skin_id` int(11) NOT NULL,
  PRIMARY KEY  (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `password`, `salt`, `iteration`, `method`, `person_id`, `role_id`, `skin_id`) VALUES
('root', 'Glwcc4ARIZm9OUaR2mX1eI8Qs7pw8pPBajzN0OfFZDqpabO4fR1LjWksSuny+I4GHStS9K6RoWmszf8V4MlTQA', 'NKVHBDaicXG7SQxfOTvjPQ', '150000', 'sha512', '1', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `user_links`
--

CREATE TABLE `user_links` (
  `link_id` int(11) NOT NULL auto_increment,
  `name` varchar(255) NOT NULL,
  `target` varchar(255) NOT NULL,
  `descriptive_title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `passport_group_id` int(11) NOT NULL,
  `show_in_tasklist` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `priority` int(11) NOT NULL,
  PRIMARY KEY (`link_id`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_links`
--

INSERT INTO `user_links` (`link_id`, `name`, `target`, `descriptive_title`, `description`, `passport_group_id`, `show_in_tasklist`, `status`, `icon`,`priority`) VALUES
(1, 'Module Control', 'sysadmin/module_control.php', 'Module Control', 'Enable or disable system modules', 2, 'Yes', 'On', 'modulecontrol.png', ''),
(2, 'Set User Passports', 'sysadmin/set_user_passports.php', 'Set User Passports', 'Change the passport settings of system users', 2, 'Yes', 'On', 'passport.png', ''),
(3, 'Security Monitor', 'sysadmin/security_monitor.php', 'Security Monitor', 'Examine the system log', 2, 'Yes', 'On', 'security3.png', ''),
(4, 'Add person', 'sysadmin/add_person.php', 'Add Person', '', 2, 'No', 'On', 'form.png', ''),
(5, 'Edit person', 'sysadmin/edit_person.php', 'Edit Person', '', 2, 'No', 'On', 'form.png', ''),
(6, 'View person', 'sysadmin/listview_person.php', 'Person', '', 2, 'Yes', 'On', 'persons.png', ''),
(7, 'Delete person', 'sysadmin/delete_person.php', 'Delete Person', '', 2, 'No', 'On', 'form.png', ''),
(8, 'Add user', 'sysadmin/add_user.php', 'Add User', '', 2, 'No', 'On', 'form.png', ''),
(9, 'Edit user', 'sysadmin/edit_user.php', 'Edit User', '', 2, 'No', 'On', 'form.png', ''),
(10, 'View user', 'sysadmin/listview_user.php', 'User', '', 2, 'Yes', 'On', 'card.png', ''),
(11, 'Delete user', 'sysadmin/delete_user.php', 'Delete User', '', 2, 'No', 'On', 'form.png', ''),
(12, 'Add user role', 'sysadmin/add_user_role.php', 'Add User Role', '', 2, 'No', 'On', 'form.png', ''),
(13, 'Edit user role', 'sysadmin/edit_user_role.php', 'Edit User Role', '', 2, 'No', 'On', 'form.png', ''),
(14, 'View user role', 'sysadmin/listview_user_role.php', 'User Roles', '', 2, 'Yes', 'On', 'roles.png', ''),
(15, 'Delete user role', 'sysadmin/delete_user_role.php', 'Delete User Role', '', 2, 'No', 'On', 'form.png', ''),
(16, 'Add system settings', 'sysadmin/add_system_settings.php', 'Add System Settings', '', 2, 'No', 'On', 'form.png', ''),
(17, 'Edit system settings', 'sysadmin/edit_system_settings.php', 'Edit System Settings', '', 2, 'No', 'On', 'form.png', ''),
(18, 'View system settings', 'sysadmin/listview_system_settings.php', 'System Settings', '', 2, 'Yes', 'On', 'system_settings.png', ''),
(19, 'Delete system settings', 'sysadmin/delete_system_settings.php', 'Delete System Settings', '', 2, 'No', 'On', 'form.png', ''),
(20, 'Add user links', 'sysadmin/add_user_links.php', 'Add User Links', '', 2, 'No', 'On', 'form.png', ''),
(21, 'Edit user links', 'sysadmin/edit_user_links.php', 'Edit User Links', '', 2, 'No', 'On', 'form.png', ''),
(22, 'View user links', 'sysadmin/listview_user_links.php', 'User Links', '', 2, 'Yes', 'On', 'links.png', ''),
(23, 'Delete user links', 'sysadmin/delete_user_links.php', 'Delete User Links', '', 2, 'No', 'On', 'form.png', ''),
(24, 'Add user passport groups', 'sysadmin/add_user_passport_groups.php', 'Add User Passport Groups', '', 2, 'No', 'On', 'form.png', ''),
(25, 'Edit user passport groups', 'sysadmin/edit_user_passport_groups.php', 'Edit User Passport Groups', '', 2, 'No', 'On', 'form.png', ''),
(26, 'View user passport groups', 'sysadmin/listview_user_passport_groups.php', 'User Passport Groups', '', 2, 'Yes', 'On', 'passportgroup.png', ''),
(27, 'Delete user passport groups', 'sysadmin/delete_user_passport_groups.php', 'Delete User Passport Groups', '', 2, 'No', 'On', 'form.png', ''),
(28, 'Add system skins', 'sysadmin/add_system_skins.php', 'Add System Skins', '', 2, 'No', 'On', 'form.png', ''),
(29, 'Edit system skins', 'sysadmin/edit_system_skins.php', 'Edit System Skins', '', 2, 'No', 'On', 'form.png', ''),
(30, 'View system skins', 'sysadmin/listview_system_skins.php', 'System Skins', '', 2, 'Yes', 'On', 'system_skins.png', ''),
(31, 'Delete system skins', 'sysadmin/delete_system_skins.php', 'Delete System Skins', '', 2, 'No', 'On', 'form.png', ''),
(32, 'Reset Password', 'sysadmin/reset_password.php', 'Reset Password', '', 2, 'Yes', 'On', 'lock_big.png', '');

-- --------------------------------------------------------

--
-- Table structure for table `user_passport`
--

CREATE TABLE `user_passport` (
  `username` varchar(255) NOT NULL,
  `link_id` int(11) NOT NULL,
  PRIMARY KEY  (`username`,`link_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_passport`
--


-- --------------------------------------------------------

--
-- Table structure for table `user_passport_groups`
--

CREATE TABLE `user_passport_groups` (
  `passport_group_id` int(11) NOT NULL auto_increment,
  `passport_group` varchar(255) NOT NULL,
  `priority` int(11) NOT NULL,
  `icon` varchar(255) NOT NULL,
  PRIMARY KEY  (`passport_group_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `user_passport_groups`
--

INSERT INTO `user_passport_groups` (`passport_group_id`, `passport_group`,`icon`) VALUES
(1, 'Default','blue_folder3.png'),
(2, 'Admin','preferences-system.png');


-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

 CREATE TABLE `user_role` (
`role_id` INT NOT NULL AUTO_INCREMENT PRIMARY KEY ,
`role` VARCHAR( 255 ) NOT NULL ,
`description` VARCHAR( 255 ) NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`role_id`, `role`, `description`) VALUES
(1, 'Super Admin', 'Super admin role with 100% system privileges'),
(2, 'System Admin', 'System admin role with all sysadmin permissions');


-- --------------------------------------------------------

--
-- Table structure for table `user_role_links`
--

CREATE TABLE `user_role_links` (
`role_id` INT NOT NULL ,
`link_id` INT NOT NULL ,
PRIMARY KEY ( `role_id` , `link_id` )
) ENGINE = InnoDB DEFAULT CHARSET=utf8;

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

INSERT INTO `user_links`(link_id, name, target, descriptive_title, description, passport_group_id, show_in_tasklist, `status`, icon) VALUES(null,'Add AgeBracket', 'modules/age_bracket/add_AgeBracket.php', 'Add AgeBracket','','1','No','On','form3.png');
INSERT INTO `user_links`(link_id, name, target, descriptive_title, description, passport_group_id, show_in_tasklist, `status`, icon) VALUES(null,'Edit AgeBracket', 'modules/age_bracket/edit_AgeBracket.php', 'Edit AgeBracket','','1','No','On','form3.png');
INSERT INTO `user_links`(link_id, name, target, descriptive_title, description, passport_group_id, show_in_tasklist, `status`, icon) VALUES(null,'View AgeBracket', 'modules/age_bracket/listview_AgeBracket.php', 'AgeBracket','','1','Yes','On','form3.png');
INSERT INTO `user_links`(link_id, name, target, descriptive_title, description, passport_group_id, show_in_tasklist, `status`, icon) VALUES(null,'Delete AgeBracket', 'modules/age_bracket/delete_AgeBracket.php', 'Delete AgeBracket','','1','No','On','form3.png');
INSERT INTO `user_links`(link_id, name, target, descriptive_title, description, passport_group_id, show_in_tasklist, `status`, icon) VALUES(null,'Add AlumniAddress', 'modules/alumni/add_AlumniAddress.php', 'Add AlumniAddress','','1','No','On','form3.png');
INSERT INTO `user_links`(link_id, name, target, descriptive_title, description, passport_group_id, show_in_tasklist, `status`, icon) VALUES(null,'Edit AlumniAddress', 'modules/alumni/edit_AlumniAddress.php', 'Edit AlumniAddress','','1','No','On','form3.png');
INSERT INTO `user_links`(link_id, name, target, descriptive_title, description, passport_group_id, show_in_tasklist, `status`, icon) VALUES(null,'View AlumniAddress', 'modules/alumni/listview_AlumniAddress.php', 'AlumniAddress','','1','Yes','On','form3.png');
INSERT INTO `user_links`(link_id, name, target, descriptive_title, description, passport_group_id, show_in_tasklist, `status`, icon) VALUES(null,'Delete AlumniAddress', 'modules/alumni/delete_AlumniAddress.php', 'Delete AlumniAddress','','1','No','On','form3.png');
INSERT INTO `user_links`(link_id, name, target, descriptive_title, description, passport_group_id, show_in_tasklist, `status`, icon) VALUES(null,'Add AlumniContactDetails', 'modules/alumni/add_AlumniContactDetails.php', 'Add AlumniContactDetails','','1','No','On','form3.png');
INSERT INTO `user_links`(link_id, name, target, descriptive_title, description, passport_group_id, show_in_tasklist, `status`, icon) VALUES(null,'Edit AlumniContactDetails', 'modules/alumni/edit_AlumniContactDetails.php', 'Edit AlumniContactDetails','','1','No','On','form3.png');
INSERT INTO `user_links`(link_id, name, target, descriptive_title, description, passport_group_id, show_in_tasklist, `status`, icon) VALUES(null,'View AlumniContactDetails', 'modules/alumni/listview_AlumniContactDetails.php', 'AlumniContactDetails','','1','Yes','On','form3.png');
INSERT INTO `user_links`(link_id, name, target, descriptive_title, description, passport_group_id, show_in_tasklist, `status`, icon) VALUES(null,'Delete AlumniContactDetails', 'modules/alumni/delete_AlumniContactDetails.php', 'Delete AlumniContactDetails','','1','No','On','form3.png');
INSERT INTO `user_links`(link_id, name, target, descriptive_title, description, passport_group_id, show_in_tasklist, `status`, icon) VALUES(null,'Add AlumniEmplMove', 'modules/alumni/add_AlumniEmplMove.php', 'Add AlumniEmplMove','','1','No','On','form3.png');
INSERT INTO `user_links`(link_id, name, target, descriptive_title, description, passport_group_id, show_in_tasklist, `status`, icon) VALUES(null,'Edit AlumniEmplMove', 'modules/alumni/edit_AlumniEmplMove.php', 'Edit AlumniEmplMove','','1','No','On','form3.png');
INSERT INTO `user_links`(link_id, name, target, descriptive_title, description, passport_group_id, show_in_tasklist, `status`, icon) VALUES(null,'View AlumniEmplMove', 'modules/alumni/listview_AlumniEmplMove.php', 'AlumniEmplMove','','1','Yes','On','form3.png');
INSERT INTO `user_links`(link_id, name, target, descriptive_title, description, passport_group_id, show_in_tasklist, `status`, icon) VALUES(null,'Delete AlumniEmplMove', 'modules/alumni/delete_AlumniEmplMove.php', 'Delete AlumniEmplMove','','1','No','On','form3.png');
INSERT INTO `user_links`(link_id, name, target, descriptive_title, description, passport_group_id, show_in_tasklist, `status`, icon) VALUES(null,'Add AlumniEmplRecord', 'modules/alumni/add_AlumniEmplRecord.php', 'Add AlumniEmplRecord','','1','No','On','form3.png');
INSERT INTO `user_links`(link_id, name, target, descriptive_title, description, passport_group_id, show_in_tasklist, `status`, icon) VALUES(null,'Edit AlumniEmplRecord', 'modules/alumni/edit_AlumniEmplRecord.php', 'Edit AlumniEmplRecord','','1','No','On','form3.png');
INSERT INTO `user_links`(link_id, name, target, descriptive_title, description, passport_group_id, show_in_tasklist, `status`, icon) VALUES(null,'View AlumniEmplRecord', 'modules/alumni/listview_AlumniEmplRecord.php', 'AlumniEmplRecord','','1','Yes','On','form3.png');
INSERT INTO `user_links`(link_id, name, target, descriptive_title, description, passport_group_id, show_in_tasklist, `status`, icon) VALUES(null,'Delete AlumniEmplRecord', 'modules/alumni/delete_AlumniEmplRecord.php', 'Delete AlumniEmplRecord','','1','No','On','form3.png');
INSERT INTO `user_links`(link_id, name, target, descriptive_title, description, passport_group_id, show_in_tasklist, `status`, icon) VALUES(null,'Add AlumniFurtherStudies', 'modules/alumni/add_AlumniFurtherStudies.php', 'Add AlumniFurtherStudies','','1','No','On','form3.png');
INSERT INTO `user_links`(link_id, name, target, descriptive_title, description, passport_group_id, show_in_tasklist, `status`, icon) VALUES(null,'Edit AlumniFurtherStudies', 'modules/alumni/edit_AlumniFurtherStudies.php', 'Edit AlumniFurtherStudies','','1','No','On','form3.png');
INSERT INTO `user_links`(link_id, name, target, descriptive_title, description, passport_group_id, show_in_tasklist, `status`, icon) VALUES(null,'View AlumniFurtherStudies', 'modules/alumni/listview_AlumniFurtherStudies.php', 'AlumniFurtherStudies','','1','Yes','On','form3.png');
INSERT INTO `user_links`(link_id, name, target, descriptive_title, description, passport_group_id, show_in_tasklist, `status`, icon) VALUES(null,'Delete AlumniFurtherStudies', 'modules/alumni/delete_AlumniFurtherStudies.php', 'Delete AlumniFurtherStudies','','1','No','On','form3.png');
INSERT INTO `user_links`(link_id, name, target, descriptive_title, description, passport_group_id, show_in_tasklist, `status`, icon) VALUES(null,'Add AlumniInfo', 'modules/alumni/add_AlumniInfo.php', 'Add AlumniInfo','','1','No','On','form3.png');
INSERT INTO `user_links`(link_id, name, target, descriptive_title, description, passport_group_id, show_in_tasklist, `status`, icon) VALUES(null,'Edit AlumniInfo', 'modules/alumni/edit_AlumniInfo.php', 'Edit AlumniInfo','','1','No','On','form3.png');
INSERT INTO `user_links`(link_id, name, target, descriptive_title, description, passport_group_id, show_in_tasklist, `status`, icon) VALUES(null,'View AlumniInfo', 'modules/alumni/listview_AlumniInfo.php', 'AlumniInfo','','1','Yes','On','form3.png');
INSERT INTO `user_links`(link_id, name, target, descriptive_title, description, passport_group_id, show_in_tasklist, `status`, icon) VALUES(null,'Delete AlumniInfo', 'modules/alumni/delete_AlumniInfo.php', 'Delete AlumniInfo','','1','No','On','form3.png');
INSERT INTO `user_links`(link_id, name, target, descriptive_title, description, passport_group_id, show_in_tasklist, `status`, icon) VALUES(null,'Add AlumniProfQualification', 'modules/alumni/add_AlumniProfQualification.php', 'Add AlumniProfQualification','','1','No','On','form3.png');
INSERT INTO `user_links`(link_id, name, target, descriptive_title, description, passport_group_id, show_in_tasklist, `status`, icon) VALUES(null,'Edit AlumniProfQualification', 'modules/alumni/edit_AlumniProfQualification.php', 'Edit AlumniProfQualification','','1','No','On','form3.png');
INSERT INTO `user_links`(link_id, name, target, descriptive_title, description, passport_group_id, show_in_tasklist, `status`, icon) VALUES(null,'View AlumniProfQualification', 'modules/alumni/listview_AlumniProfQualification.php', 'AlumniProfQualification','','1','Yes','On','form3.png');
INSERT INTO `user_links`(link_id, name, target, descriptive_title, description, passport_group_id, show_in_tasklist, `status`, icon) VALUES(null,'Delete AlumniProfQualification', 'modules/alumni/delete_AlumniProfQualification.php', 'Delete AlumniProfQualification','','1','No','On','form3.png');
INSERT INTO `user_links`(link_id, name, target, descriptive_title, description, passport_group_id, show_in_tasklist, `status`, icon) VALUES(null,'Add Company', 'modules/industry/add_Company.php', 'Add Company','','1','No','On','form3.png');
INSERT INTO `user_links`(link_id, name, target, descriptive_title, description, passport_group_id, show_in_tasklist, `status`, icon) VALUES(null,'Edit Company', 'modules/industry/edit_Company.php', 'Edit Company','','1','No','On','form3.png');
INSERT INTO `user_links`(link_id, name, target, descriptive_title, description, passport_group_id, show_in_tasklist, `status`, icon) VALUES(null,'View Company', 'modules/industry/listview_Company.php', 'Company','','1','Yes','On','form3.png');
INSERT INTO `user_links`(link_id, name, target, descriptive_title, description, passport_group_id, show_in_tasklist, `status`, icon) VALUES(null,'Delete Company', 'modules/industry/delete_Company.php', 'Delete Company','','1','No','On','form3.png');
INSERT INTO `user_links`(link_id, name, target, descriptive_title, description, passport_group_id, show_in_tasklist, `status`, icon) VALUES(null,'Add CompanyBranch', 'modules/industry/add_CompanyBranch.php', 'Add CompanyBranch','','1','No','On','form3.png');
INSERT INTO `user_links`(link_id, name, target, descriptive_title, description, passport_group_id, show_in_tasklist, `status`, icon) VALUES(null,'Edit CompanyBranch', 'modules/industry/edit_CompanyBranch.php', 'Edit CompanyBranch','','1','No','On','form3.png');
INSERT INTO `user_links`(link_id, name, target, descriptive_title, description, passport_group_id, show_in_tasklist, `status`, icon) VALUES(null,'View CompanyBranch', 'modules/industry/listview_CompanyBranch.php', 'CompanyBranch','','1','Yes','On','form3.png');
INSERT INTO `user_links`(link_id, name, target, descriptive_title, description, passport_group_id, show_in_tasklist, `status`, icon) VALUES(null,'Delete CompanyBranch', 'modules/industry/delete_CompanyBranch.php', 'Delete CompanyBranch','','1','No','On','form3.png');
INSERT INTO `user_links`(link_id, name, target, descriptive_title, description, passport_group_id, show_in_tasklist, `status`, icon) VALUES(null,'Add CompanyContact', 'modules/industry/add_CompanyContact.php', 'Add CompanyContact','','1','No','On','form3.png');
INSERT INTO `user_links`(link_id, name, target, descriptive_title, description, passport_group_id, show_in_tasklist, `status`, icon) VALUES(null,'Edit CompanyContact', 'modules/industry/edit_CompanyContact.php', 'Edit CompanyContact','','1','No','On','form3.png');
INSERT INTO `user_links`(link_id, name, target, descriptive_title, description, passport_group_id, show_in_tasklist, `status`, icon) VALUES(null,'View CompanyContact', 'modules/industry/listview_CompanyContact.php', 'CompanyContact','','1','Yes','On','form3.png');
INSERT INTO `user_links`(link_id, name, target, descriptive_title, description, passport_group_id, show_in_tasklist, `status`, icon) VALUES(null,'Delete CompanyContact', 'modules/industry/delete_CompanyContact.php', 'Delete CompanyContact','','1','No','On','form3.png');
INSERT INTO `user_links`(link_id, name, target, descriptive_title, description, passport_group_id, show_in_tasklist, `status`, icon) VALUES(null,'Add Contact', 'modules/industry/add_Contact.php', 'Add Contact','','1','No','On','form3.png');
INSERT INTO `user_links`(link_id, name, target, descriptive_title, description, passport_group_id, show_in_tasklist, `status`, icon) VALUES(null,'Edit Contact', 'modules/industry/edit_Contact.php', 'Edit Contact','','1','No','On','form3.png');
INSERT INTO `user_links`(link_id, name, target, descriptive_title, description, passport_group_id, show_in_tasklist, `status`, icon) VALUES(null,'View Contact', 'modules/industry/listview_Contact.php', 'Contact','','1','Yes','On','form3.png');
INSERT INTO `user_links`(link_id, name, target, descriptive_title, description, passport_group_id, show_in_tasklist, `status`, icon) VALUES(null,'Delete Contact', 'modules/industry/delete_Contact.php', 'Delete Contact','','1','No','On','form3.png');
INSERT INTO `user_links`(link_id, name, target, descriptive_title, description, passport_group_id, show_in_tasklist, `status`, icon) VALUES(null,'Add Country', 'modules/lookup/add_Country.php', 'Add Country','','1','No','On','form3.png');
INSERT INTO `user_links`(link_id, name, target, descriptive_title, description, passport_group_id, show_in_tasklist, `status`, icon) VALUES(null,'Edit Country', 'modules/lookup/edit_Country.php', 'Edit Country','','1','No','On','form3.png');
INSERT INTO `user_links`(link_id, name, target, descriptive_title, description, passport_group_id, show_in_tasklist, `status`, icon) VALUES(null,'View Country', 'modules/lookup/listview_Country.php', 'Country','','1','Yes','On','form3.png');
INSERT INTO `user_links`(link_id, name, target, descriptive_title, description, passport_group_id, show_in_tasklist, `status`, icon) VALUES(null,'Delete Country', 'modules/lookup/delete_Country.php', 'Delete Country','','1','No','On','form3.png');
INSERT INTO `user_links`(link_id, name, target, descriptive_title, description, passport_group_id, show_in_tasklist, `status`, icon) VALUES(null,'Add EmploymentStatus', 'modules/lookup/add_EmploymentStatus.php', 'Add EmploymentStatus','','1','No','On','form3.png');
INSERT INTO `user_links`(link_id, name, target, descriptive_title, description, passport_group_id, show_in_tasklist, `status`, icon) VALUES(null,'Edit EmploymentStatus', 'modules/lookup/edit_EmploymentStatus.php', 'Edit EmploymentStatus','','1','No','On','form3.png');
INSERT INTO `user_links`(link_id, name, target, descriptive_title, description, passport_group_id, show_in_tasklist, `status`, icon) VALUES(null,'View EmploymentStatus', 'modules/lookup/listview_EmploymentStatus.php', 'EmploymentStatus','','1','Yes','On','form3.png');
INSERT INTO `user_links`(link_id, name, target, descriptive_title, description, passport_group_id, show_in_tasklist, `status`, icon) VALUES(null,'Delete EmploymentStatus', 'modules/lookup/delete_EmploymentStatus.php', 'Delete EmploymentStatus','','1','No','On','form3.png');
INSERT INTO `user_links`(link_id, name, target, descriptive_title, description, passport_group_id, show_in_tasklist, `status`, icon) VALUES(null,'Add IndustrySector', 'modules/industry/add_IndustrySector.php', 'Add IndustrySector','','1','No','On','form3.png');
INSERT INTO `user_links`(link_id, name, target, descriptive_title, description, passport_group_id, show_in_tasklist, `status`, icon) VALUES(null,'Edit IndustrySector', 'modules/industry/edit_IndustrySector.php', 'Edit IndustrySector','','1','No','On','form3.png');
INSERT INTO `user_links`(link_id, name, target, descriptive_title, description, passport_group_id, show_in_tasklist, `status`, icon) VALUES(null,'View IndustrySector', 'modules/industry/listview_IndustrySector.php', 'IndustrySector','','1','Yes','On','form3.png');
INSERT INTO `user_links`(link_id, name, target, descriptive_title, description, passport_group_id, show_in_tasklist, `status`, icon) VALUES(null,'Delete IndustrySector', 'modules/industry/delete_IndustrySector.php', 'Delete IndustrySector','','1','No','On','form3.png');
INSERT INTO `user_links`(link_id, name, target, descriptive_title, description, passport_group_id, show_in_tasklist, `status`, icon) VALUES(null,'Add InternalSchool', 'modules/lookup/add_InternalSchool.php', 'Add InternalSchool','','1','No','On','form3.png');
INSERT INTO `user_links`(link_id, name, target, descriptive_title, description, passport_group_id, show_in_tasklist, `status`, icon) VALUES(null,'Edit InternalSchool', 'modules/lookup/edit_InternalSchool.php', 'Edit InternalSchool','','1','No','On','form3.png');
INSERT INTO `user_links`(link_id, name, target, descriptive_title, description, passport_group_id, show_in_tasklist, `status`, icon) VALUES(null,'View InternalSchool', 'modules/lookup/listview_InternalSchool.php', 'InternalSchool','','1','Yes','On','form3.png');
INSERT INTO `user_links`(link_id, name, target, descriptive_title, description, passport_group_id, show_in_tasklist, `status`, icon) VALUES(null,'Delete InternalSchool', 'modules/lookup/delete_InternalSchool.php', 'Delete InternalSchool','','1','No','On','form3.png');
INSERT INTO `user_links`(link_id, name, target, descriptive_title, description, passport_group_id, show_in_tasklist, `status`, icon) VALUES(null,'Add InternAssignment', 'modules/internship/add_InternAssignment.php', 'Add InternAssignment','','1','No','On','form3.png');
INSERT INTO `user_links`(link_id, name, target, descriptive_title, description, passport_group_id, show_in_tasklist, `status`, icon) VALUES(null,'Edit InternAssignment', 'modules/internship/edit_InternAssignment.php', 'Edit InternAssignment','','1','No','On','form3.png');
INSERT INTO `user_links`(link_id, name, target, descriptive_title, description, passport_group_id, show_in_tasklist, `status`, icon) VALUES(null,'View InternAssignment', 'modules/internship/listview_InternAssignment.php', 'InternAssignment','','1','Yes','On','form3.png');
INSERT INTO `user_links`(link_id, name, target, descriptive_title, description, passport_group_id, show_in_tasklist, `status`, icon) VALUES(null,'Delete InternAssignment', 'modules/internship/delete_InternAssignment.php', 'Delete InternAssignment','','1','No','On','form3.png');
INSERT INTO `user_links`(link_id, name, target, descriptive_title, description, passport_group_id, show_in_tasklist, `status`, icon) VALUES(null,'Add PhilRegion', 'modules/lookup/add_PhilRegion.php', 'Add PhilRegion','','1','No','On','form3.png');
INSERT INTO `user_links`(link_id, name, target, descriptive_title, description, passport_group_id, show_in_tasklist, `status`, icon) VALUES(null,'Edit PhilRegion', 'modules/lookup/edit_PhilRegion.php', 'Edit PhilRegion','','1','No','On','form3.png');
INSERT INTO `user_links`(link_id, name, target, descriptive_title, description, passport_group_id, show_in_tasklist, `status`, icon) VALUES(null,'View PhilRegion', 'modules/lookup/listview_PhilRegion.php', 'PhilRegion','','1','Yes','On','form3.png');
INSERT INTO `user_links`(link_id, name, target, descriptive_title, description, passport_group_id, show_in_tasklist, `status`, icon) VALUES(null,'Delete PhilRegion', 'modules/lookup/delete_PhilRegion.php', 'Delete PhilRegion','','1','No','On','form3.png');
INSERT INTO `user_links`(link_id, name, target, descriptive_title, description, passport_group_id, show_in_tasklist, `status`, icon) VALUES(null,'Add PhilZip', 'modules/lookup/add_PhilZip.php', 'Add PhilZip','','1','No','On','form3.png');
INSERT INTO `user_links`(link_id, name, target, descriptive_title, description, passport_group_id, show_in_tasklist, `status`, icon) VALUES(null,'Edit PhilZip', 'modules/lookup/edit_PhilZip.php', 'Edit PhilZip','','1','No','On','form3.png');
INSERT INTO `user_links`(link_id, name, target, descriptive_title, description, passport_group_id, show_in_tasklist, `status`, icon) VALUES(null,'View PhilZip', 'modules/lookup/listview_PhilZip.php', 'PhilZip','','1','Yes','On','form3.png');
INSERT INTO `user_links`(link_id, name, target, descriptive_title, description, passport_group_id, show_in_tasklist, `status`, icon) VALUES(null,'Delete PhilZip', 'modules/lookup/delete_PhilZip.php', 'Delete PhilZip','','1','No','On','form3.png');
INSERT INTO `user_links`(link_id, name, target, descriptive_title, description, passport_group_id, show_in_tasklist, `status`, icon) VALUES(null,'Add SchoolCourse', 'modules/lookup/add_SchoolCourse.php', 'Add SchoolCourse','','1','No','On','form3.png');
INSERT INTO `user_links`(link_id, name, target, descriptive_title, description, passport_group_id, show_in_tasklist, `status`, icon) VALUES(null,'Edit SchoolCourse', 'modules/lookup/edit_SchoolCourse.php', 'Edit SchoolCourse','','1','No','On','form3.png');
INSERT INTO `user_links`(link_id, name, target, descriptive_title, description, passport_group_id, show_in_tasklist, `status`, icon) VALUES(null,'View SchoolCourse', 'modules/lookup/listview_SchoolCourse.php', 'SchoolCourse','','1','Yes','On','form3.png');
INSERT INTO `user_links`(link_id, name, target, descriptive_title, description, passport_group_id, show_in_tasklist, `status`, icon) VALUES(null,'Delete SchoolCourse', 'modules/lookup/delete_SchoolCourse.php', 'Delete SchoolCourse','','1','No','On','form3.png');
INSERT INTO `user_role_links` (`role_id`, `link_id`) VALUES ('1', '33');
INSERT INTO `user_role_links` (`role_id`, `link_id`) VALUES ('1', '34');
INSERT INTO `user_role_links` (`role_id`, `link_id`) VALUES ('1', '35');
INSERT INTO `user_role_links` (`role_id`, `link_id`) VALUES ('1', '36');
INSERT INTO `user_role_links` (`role_id`, `link_id`) VALUES ('1', '37');
INSERT INTO `user_role_links` (`role_id`, `link_id`) VALUES ('1', '38');
INSERT INTO `user_role_links` (`role_id`, `link_id`) VALUES ('1', '39');
INSERT INTO `user_role_links` (`role_id`, `link_id`) VALUES ('1', '40');
INSERT INTO `user_role_links` (`role_id`, `link_id`) VALUES ('1', '41');
INSERT INTO `user_role_links` (`role_id`, `link_id`) VALUES ('1', '42');
INSERT INTO `user_role_links` (`role_id`, `link_id`) VALUES ('1', '43');
INSERT INTO `user_role_links` (`role_id`, `link_id`) VALUES ('1', '44');
INSERT INTO `user_role_links` (`role_id`, `link_id`) VALUES ('1', '45');
INSERT INTO `user_role_links` (`role_id`, `link_id`) VALUES ('1', '46');
INSERT INTO `user_role_links` (`role_id`, `link_id`) VALUES ('1', '47');
INSERT INTO `user_role_links` (`role_id`, `link_id`) VALUES ('1', '48');
INSERT INTO `user_role_links` (`role_id`, `link_id`) VALUES ('1', '49');
INSERT INTO `user_role_links` (`role_id`, `link_id`) VALUES ('1', '50');
INSERT INTO `user_role_links` (`role_id`, `link_id`) VALUES ('1', '51');
INSERT INTO `user_role_links` (`role_id`, `link_id`) VALUES ('1', '52');
INSERT INTO `user_role_links` (`role_id`, `link_id`) VALUES ('1', '53');
INSERT INTO `user_role_links` (`role_id`, `link_id`) VALUES ('1', '54');
INSERT INTO `user_role_links` (`role_id`, `link_id`) VALUES ('1', '55');
INSERT INTO `user_role_links` (`role_id`, `link_id`) VALUES ('1', '56');
INSERT INTO `user_role_links` (`role_id`, `link_id`) VALUES ('1', '57');
INSERT INTO `user_role_links` (`role_id`, `link_id`) VALUES ('1', '58');
INSERT INTO `user_role_links` (`role_id`, `link_id`) VALUES ('1', '59');
INSERT INTO `user_role_links` (`role_id`, `link_id`) VALUES ('1', '60');
INSERT INTO `user_role_links` (`role_id`, `link_id`) VALUES ('1', '61');
INSERT INTO `user_role_links` (`role_id`, `link_id`) VALUES ('1', '62');
INSERT INTO `user_role_links` (`role_id`, `link_id`) VALUES ('1', '63');
INSERT INTO `user_role_links` (`role_id`, `link_id`) VALUES ('1', '64');
INSERT INTO `user_role_links` (`role_id`, `link_id`) VALUES ('1', '65');
INSERT INTO `user_role_links` (`role_id`, `link_id`) VALUES ('1', '66');
INSERT INTO `user_role_links` (`role_id`, `link_id`) VALUES ('1', '67');
INSERT INTO `user_role_links` (`role_id`, `link_id`) VALUES ('1', '68');
INSERT INTO `user_role_links` (`role_id`, `link_id`) VALUES ('1', '69');
INSERT INTO `user_role_links` (`role_id`, `link_id`) VALUES ('1', '70');
INSERT INTO `user_role_links` (`role_id`, `link_id`) VALUES ('1', '71');
INSERT INTO `user_role_links` (`role_id`, `link_id`) VALUES ('1', '72');
INSERT INTO `user_role_links` (`role_id`, `link_id`) VALUES ('1', '73');
INSERT INTO `user_role_links` (`role_id`, `link_id`) VALUES ('1', '74');
INSERT INTO `user_role_links` (`role_id`, `link_id`) VALUES ('1', '75');
INSERT INTO `user_role_links` (`role_id`, `link_id`) VALUES ('1', '76');
INSERT INTO `user_role_links` (`role_id`, `link_id`) VALUES ('1', '77');
INSERT INTO `user_role_links` (`role_id`, `link_id`) VALUES ('1', '78');
INSERT INTO `user_role_links` (`role_id`, `link_id`) VALUES ('1', '79');
INSERT INTO `user_role_links` (`role_id`, `link_id`) VALUES ('1', '80');
INSERT INTO `user_role_links` (`role_id`, `link_id`) VALUES ('1', '81');
INSERT INTO `user_role_links` (`role_id`, `link_id`) VALUES ('1', '82');
INSERT INTO `user_role_links` (`role_id`, `link_id`) VALUES ('1', '83');
INSERT INTO `user_role_links` (`role_id`, `link_id`) VALUES ('1', '84');
INSERT INTO `user_role_links` (`role_id`, `link_id`) VALUES ('1', '85');
INSERT INTO `user_role_links` (`role_id`, `link_id`) VALUES ('1', '86');
INSERT INTO `user_role_links` (`role_id`, `link_id`) VALUES ('1', '87');
INSERT INTO `user_role_links` (`role_id`, `link_id`) VALUES ('1', '88');
INSERT INTO `user_role_links` (`role_id`, `link_id`) VALUES ('1', '89');
INSERT INTO `user_role_links` (`role_id`, `link_id`) VALUES ('1', '90');
INSERT INTO `user_role_links` (`role_id`, `link_id`) VALUES ('1', '91');
INSERT INTO `user_role_links` (`role_id`, `link_id`) VALUES ('1', '92');
INSERT INTO `user_role_links` (`role_id`, `link_id`) VALUES ('1', '93');
INSERT INTO `user_role_links` (`role_id`, `link_id`) VALUES ('1', '94');
INSERT INTO `user_role_links` (`role_id`, `link_id`) VALUES ('1', '95');
INSERT INTO `user_role_links` (`role_id`, `link_id`) VALUES ('1', '96');
INSERT INTO `user_role_links` (`role_id`, `link_id`) VALUES ('1', '97');
INSERT INTO `user_role_links` (`role_id`, `link_id`) VALUES ('1', '98');
INSERT INTO `user_role_links` (`role_id`, `link_id`) VALUES ('1', '99');
INSERT INTO `user_role_links` (`role_id`, `link_id`) VALUES ('1', '100');
INSERT INTO `user_role_links` (`role_id`, `link_id`) VALUES ('1', '101');
INSERT INTO `user_role_links` (`role_id`, `link_id`) VALUES ('1', '102');
INSERT INTO `user_role_links` (`role_id`, `link_id`) VALUES ('1', '103');
INSERT INTO `user_role_links` (`role_id`, `link_id`) VALUES ('1', '104');
INSERT INTO `user_role_links` (`role_id`, `link_id`) VALUES ('1', '105');
INSERT INTO `user_role_links` (`role_id`, `link_id`) VALUES ('1', '106');
INSERT INTO `user_role_links` (`role_id`, `link_id`) VALUES ('1', '107');
INSERT INTO `user_role_links` (`role_id`, `link_id`) VALUES ('1', '108');
INSERT INTO `user_role_links` (`role_id`, `link_id`) VALUES ('1', '109');
INSERT INTO `user_role_links` (`role_id`, `link_id`) VALUES ('1', '110');
INSERT INTO `user_role_links` (`role_id`, `link_id`) VALUES ('1', '111');
INSERT INTO `user_role_links` (`role_id`, `link_id`) VALUES ('1', '112');
INSERT `user_passport` SELECT 'root', `link_id` FROM user_role_links WHERE role_id='1'
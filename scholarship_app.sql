-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 18, 2017 at 09:32 AM
-- Server version: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `scholarship_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
CREATE TABLE IF NOT EXISTS `company` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`cid`, `name`, `address`) VALUES
(101, 'DOST', 'Quezon City'),
(102, 'Megaworld Foundation', 'Taguig City, Uptown Bonifacio'),
(103, 'Carlos Company', 'Manila');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
CREATE TABLE IF NOT EXISTS `location` (
  `location_id` int(11) NOT NULL AUTO_INCREMENT,
  `country` varchar(25) DEFAULT NULL,
  `region` varchar(25) DEFAULT NULL,
  `province` varchar(25) DEFAULT NULL,
  `city` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`location_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10002 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`location_id`, `country`, `region`, `province`, `city`) VALUES
(10000, 'Philippines', 'NCR', 'Metro Manila', 'Quezon City'),
(10001, 'Philippines', 'NCR', 'Metro Manila', 'Manila');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2017_11_20_175033_create_company_table', 0),
(2, '2017_11_20_175033_create_location_table', 0),
(3, '2017_11_20_175033_create_program_table', 0),
(4, '2017_11_20_175033_create_scholarship_table', 0),
(5, '2017_11_20_175033_create_scholarship_program_table', 0),
(6, '2017_11_20_175033_create_scholarship_university_table', 0),
(7, '2017_11_20_175033_create_university_table', 0),
(8, '2017_11_20_175033_create_users_table', 0),
(9, '2017_11_20_175034_add_foreign_keys_to_program_table', 0),
(10, '2017_11_20_175034_add_foreign_keys_to_scholarship_table', 0),
(11, '2017_11_20_175034_add_foreign_keys_to_scholarship_program_table', 0),
(12, '2017_11_20_175034_add_foreign_keys_to_scholarship_university_table', 0),
(13, '2017_11_20_175034_add_foreign_keys_to_university_table', 0),
(16, '2017_12_17_053359_add_description_to_scholarship', 1),
(17, '2017_12_17_055123_add_url_to_scholarship', 2),
(18, '2017_12_17_070830_add_imgdir_to_scholarship', 3),
(19, '2017_12_17_073319_add_stipend_to_scholarship', 4),
(20, '2017_12_17_074153_add_type_to_scholarship', 4);

-- --------------------------------------------------------

--
-- Table structure for table `program`
--

DROP TABLE IF EXISTS `program`;
CREATE TABLE IF NOT EXISTS `program` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `pname` varchar(100) DEFAULT NULL,
  `field` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`pid`,`uid`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `program`
--

INSERT INTO `program` (`pid`, `uid`, `pname`, `field`) VALUES
(1, 1000000000, 'BA European Languages', 'Arts'),
(2, 1000000000, 'BA Speech Communication', 'Arts'),
(3, 1000000000, 'B Library & Information Science', 'Liberal Arts'),
(4, 1000000000, 'BS Architecture', 'Architecture'),
(5, 1000000000, 'B Landscape Architecture', 'Architecture'),
(6, 1000000000, 'BA Art Studies', 'Arts'),
(7, 1000000000, 'BS Business Administration', 'Business'),
(8, 1000000000, 'BS Business Administration & Accountancy', 'Business'),
(9, 1000000000, 'BS Business Economics', 'Economics'),
(10, 1000000000, 'BS Economics', 'Economics'),
(11, 1000000000, 'B Secondary Education', 'Education'),
(12, 1000000000, 'B Elementary Education', 'Education'),
(13, 1000000000, 'BS Chemical Engineering', 'Engineering'),
(14, 1000000000, 'BS Civil Engineering', 'Engineering'),
(15, 1000000000, 'BS Electrical Engineering', 'Engineering'),
(16, 1000000000, 'BS Geodetic Engineering', 'Engineering'),
(17, 1000000000, 'BS Industrial Engineering', 'Engineering'),
(18, 1000000000, 'BS Mechanical Engineering', 'Engineering'),
(19, 1000000000, 'BS Metallurgical Engineering', 'Engineering'),
(20, 1000000000, 'BS Mining Engineering', 'Engineering'),
(21, 1000000000, 'BS Computer Science', 'Engineering'),
(22, 1000000000, 'BS Computer Engineering', 'Engineering'),
(23, 1000000000, 'BS Electronics & Communications Engineering', 'Engineering'),
(24, 1000000000, 'BS Materials Engineering', 'Engineering'),
(25, 1000000000, 'BS Biology', 'Science'),
(26, 1000000000, 'BS Chemistry', 'Science'),
(27, 1000000000, 'BS Geology', 'Science'),
(28, 1000000000, 'BS Mathematics', 'Science'),
(29, 1000000000, 'BS Physics', 'Science'),
(30, 1000000000, 'BS Applied Physics', 'Science'),
(31, 1000000000, 'BS Molecular Biology & Biotechnology', 'Science'),
(32, 1000000000, 'BA Anthropology', 'Social Sciences'),
(33, 1000000000, 'BA History', 'Social Sciences'),
(34, 1000000000, 'BA Linguistics', 'Social Sciences'),
(35, 1000000000, 'BA Philosophy', 'Social Sciences'),
(36, 1000000000, 'BA Political Science', 'Social Sciences'),
(37, 1000000000, 'BA Psychology', 'Social Sciences'),
(38, 1000000000, 'BA Sociology', 'Social Sciences'),
(39, 1000000000, 'BS Geography', 'Social Sciences'),
(40, 1000000000, 'BS Psychology', 'Social Sciences'),
(41, 1000000001, 'BS Applied Mathematics Major in Mathematical Finance', 'Science'),
(42, 1000000001, 'BS Applied Physics', 'Science'),
(43, 1000000001, 'BS Applied Physics with Materials Science and Engineering', 'Science'),
(44, 1000000001, 'BS Biology', 'Science'),
(45, 1000000001, 'BS Chemistry', 'Science'),
(46, 1000000001, 'BS Chemistry with Materials Science and Engineering', 'Science'),
(47, 1000000001, 'BS Environmental Science', 'Science'),
(48, 1000000001, 'BS Life Sciences', 'Science'),
(49, 1000000001, 'BS Management of Applied Chemistry', 'Science'),
(50, 1000000001, 'BS Mathematics', 'Science'),
(51, 1000000001, 'BS Physics', 'Science'),
(52, 1000000001, 'AB Chinese Studies', 'Social Sciences'),
(53, 1000000001, 'AB Development Studies', 'Social Sciences'),
(54, 1000000001, 'AB Diplomacy and International Relations', 'Social Sciences'),
(55, 1000000001, 'AB European Studies', 'Social Sciences'),
(56, 1000000001, 'AB Interdisciplinary Studies ', 'Social Sciences'),
(57, 1000000001, 'AB Political Science', 'Social Sciences'),
(58, 1000000001, 'AB Psychology', 'Social Sciences'),
(59, 1000000001, 'AB Social Science', 'Social Sciences'),
(60, 1000000001, 'BS Psychology', 'Social Sciences'),
(61, 1000000001, 'AB Literature', 'Humanities'),
(62, 1000000001, 'AB History', 'Humanities'),
(63, 1000000001, 'AB Humanities', 'Humanities'),
(64, 1000000001, 'AB Philosophy', 'Humanities'),
(65, 1000000001, 'B Fine Arts', 'Arts & Design'),
(66, 1000000001, 'BS Applied Computer Systems', 'Information Technology'),
(67, 1000000001, 'BS Computer Engineering', 'Engineering'),
(68, 1000000001, 'BS Computer Science', 'Information Technology'),
(69, 1000000001, 'BS Information Technology Entrepreneurship', 'Information Technology'),
(70, 1000000001, 'AB Pre-divinity', 'Theology'),
(71, 1000000001, 'AB Communication', 'Communication & Information Science'),
(72, 1000000001, 'BS Management Information Systems', 'Communication & Information Science'),
(73, 1000000001, 'AB Economics', 'Business'),
(74, 1000000001, 'AB Management Economics', 'Business'),
(75, 1000000001, 'BS Management', 'Business'),
(76, 1000000001, 'BS Management Engineering', 'Business'),
(77, 1000000001, 'AB Panitikan', 'Language'),
(78, 1000000001, 'BS Electrical Engineering', 'Engineering'),
(79, 1000000001, 'BS Health Sciences', 'Medicine'),
(80, 1000000002, 'B Elementary Education', 'Education'),
(81, 1000000002, 'B Physical Education', 'Education'),
(82, 1000000002, 'B Secondary Education', 'Education'),
(83, 1000000002, 'B Music', 'Music'),
(84, 1000000002, 'BS Applied Mathematics', 'Science'),
(85, 1000000002, 'BS Applied Physics', 'Science'),
(86, 1000000002, 'BS BioChemistry', 'Science'),
(87, 1000000002, 'BS Biology', 'Science'),
(88, 1000000002, 'BS Chemistry', 'Science'),
(89, 1000000002, 'BS Microbiology', 'Science'),
(90, 1000000002, 'BA Economics', 'Business'),
(91, 1000000002, 'B Fine Arts major in Advertising Arts ', 'Business'),
(92, 1000000002, 'BS Accountancy', 'Business'),
(93, 1000000002, 'BS Business Administration', 'Business'),
(94, 1000000002, 'BS Entrepreneurship', 'Business'),
(95, 1000000002, 'BS Management Accounting', 'Business'),
(96, 1000000002, 'BS Medical Technology', 'Medicine'),
(97, 1000000002, 'BS Nursing', 'Medicine'),
(98, 1000000002, 'BS Nutrition and Dietetics', 'Medicine'),
(99, 1000000002, 'BS Occupational Therapy', 'Medicine'),
(100, 1000000002, 'BS Pharmacy', 'Medicine'),
(101, 1000000002, 'BS Physical Therapy', 'Medicine'),
(102, 1000000002, 'BS Speech and Language Pathology', 'Medicine'),
(103, 1000000002, 'BA Behavioral Science', 'Social Sciences'),
(104, 1000000002, 'BA Political Science', 'Social Sciences'),
(105, 1000000002, 'BA Sociology', 'Social Sciences'),
(106, 1000000002, 'BS Psychology', 'Social Sciences'),
(107, 1000000002, 'BS Sports Science', 'Social Sciences'),
(108, 1000000002, 'BA Asian Studies', 'Humanities'),
(109, 1000000002, 'BA History', 'Humanities'),
(110, 1000000002, 'BA Literature', 'Humanities'),
(111, 1000000002, 'BA Philosophy', 'Humanities'),
(112, 1000000002, 'BS Chemical Engineering', 'Engineering'),
(113, 1000000002, 'BS Electrical Engineering', 'Engineering'),
(114, 1000000002, 'BS Electronics Engineering', 'Engineering'),
(115, 1000000002, 'BS Civil Engineering', 'Engineering'),
(116, 1000000002, 'BS Industrial Engineering', 'Engineering'),
(117, 1000000002, 'BS Mechanical Engineering', 'Engineering'),
(118, 1000000002, 'B Fine Arts', 'Arts & Design'),
(119, 1000000002, 'BS Interior Design', 'Arts & Design');

-- --------------------------------------------------------

--
-- Table structure for table `scholarship`
--

DROP TABLE IF EXISTS `scholarship`;
CREATE TABLE IF NOT EXISTS `scholarship` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `sname` varchar(100) DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `age` decimal(2,0) DEFAULT NULL,
  `year` decimal(4,0) DEFAULT NULL,
  `semester` decimal(1,0) DEFAULT NULL,
  `level` varchar(20) DEFAULT NULL,
  `GWA` decimal(3,2) DEFAULT NULL,
  `maxgrade` decimal(3,2) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  `description` mediumtext NOT NULL,
  `url` varchar(191) NOT NULL,
  `imgdir` varchar(191) NOT NULL,
  `stipend` int(11) NOT NULL,
  `type` varchar(191) NOT NULL,
  PRIMARY KEY (`sid`),
  KEY `cid` (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=10021 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `scholarship`
--

INSERT INTO `scholarship` (`sid`, `sname`, `sex`, `age`, `year`, `semester`, `level`, `GWA`, `maxgrade`, `cid`, `description`, `url`, `imgdir`, `stipend`, `type`) VALUES
(10001, 'Philips Group Of Companies Scholarship Grant College Of Social Sciences And Philosophy', NULL, NULL, '2017', '1', 'sophomore', '3.00', '3.00', NULL, '1. Must be a full time and a regular sophomore student and must not be a transfer student; \r\n2. Must have obtained a general weighted average of at least \"2.25\" during his/her freshman year; \r\n3. Must not have any grade of \"5.0\" and unremoved \"4.0\" or \"incomplete\" during the preceding year and must have carried a normal academic load in the semester immediately preceding the application. Grades of \"4.0\" or and \"Inc.\" must be removed on or removed on or before the last day for late registration; \r\n4. Must not have been the subject of any disciplinary action by the College or by the University. ', 'http://osss.up.edu.ph/content/scholarships/list/', '/images/default.png', 9000, 'semester'),
(10002, 'Cecilio Paul D. San Pedro Scholarship Program', NULL, NULL, '2017', '1', 'junior', '2.00', NULL, NULL, '', '', '', 0, ''),
(10003, 'Nicolas Zafra Memorial Scholarship', NULL, NULL, '2017', '1', NULL, '1.75', '2.25', NULL, '1. This Scholarships shall be known as the Nicolas Zafra Memorial Scholarship in memory of the late Prof. Nicolas Zafra. \r\n2. The grant is available to all bona fide History students who have the following qualifications: a).	must have a general weighted average of at least “1.75” in all History subjects and a general weighted average in all subjects of “2.25”. Any grade of 4.00 or “inc.” must be removed before the immediately following registration period. b). must not have been the subject of disciplinary action worse than a five-day class suspension. c). must not be enjoying any other grant or financial assistance. ', 'http://osss.up.edu.ph/content/scholarships/list/', '/images/default.png', 1000, 'semester'),
(10004, 'Faustino Aguilar Scholarship - Study Grant', NULL, NULL, '2017', '1', NULL, '2.50', '3.00', NULL, 'An applicant for this scholarship – study grant shall have finished the first two years of any course offered at the Colle of Arts and Letters or College of Education preferably major in Filipino language. In addition, he/she:\r\n\r\nQualifications\r\n1. is a natural born citizen of the Philippines; \r\n2. has obtained an average grade of “2.50” or better during the semester immediately preceding the application; \r\n3. has no grade of “5.00” nor has he obtained a grade of “4.00” or “inc” which has not yet been removed at the time application; \r\n4. belongs to a needy family whose annual gross income does not exceed P100,000.00; \r\n5. has not been subject to disciplinary action of any kind. ', 'http://osss.up.edu.ph/content/scholarships/list/', '/images/default.png', 3000, 'semester'),
(10005, 'Amador Nisperos Memorial Study Grant', NULL, NULL, '2017', '1', NULL, '2.75', '3.00', NULL, 'Applicants for this study grant must be a bona fide undergraduate students pursuing Public Affairs course (Environmental Planning, Public Administration, Law) or any Social Science course in the University of the Philippines who have the following qualifications:\r\n\r\nQualifications\r\n1. must not have been the subject of any disciplinary penalty heavier than a 5-day class suspension. \r\n2. if already enrolled, must have obtained an average of “2.75” or better for a normal load, with no grade of “5” or unremoved “4” or “inc” in the preceding semester; \r\n3. must be enlisted men, non-commissioned officers and lieutenants (or their spouses/dependents), of any major service commands of the Armed Forces of the Philippines. Preference, however, shall be given to enlisted men in the intelligence service; \r\n4. must have passed the U.P. College Admissions Test; ', 'http://osss.up.edu.ph/content/scholarships/list/', '/images/default.png', 3000, 'semester'),
(10006, 'Menzi Trust Fund Inc. Scholarship', NULL, '25', '2017', '1', NULL, '3.00', '3.00', NULL, '1. Must be a bona fide male BS Chemistry student of the University of the Philippines; \r\n2. Must not be over 25 years old; \r\n3. Must be financially needy, must belong to a family whose annual gross income is not more than P200,000.00; \r\n4. If an entering freshman, must have passed the UPCAT and must belong to the upper 10% of his/her graduating class, if enrolled, must carried a load at least 15 units with no unremoved \"4.00\" or \"inc\" in the semester immediately preceding the application; \r\n5. must not have been the subject of disciplinary penalty heavier than a 5 day class suspension. ', 'http://osss.up.edu.ph/content/scholarships/list/', '/images/default.png', 1500, 'monthly'),
(10007, 'ATENEO FRESHMAN MERIT SCHOLARSHIP (AFMS)', NULL, NULL, NULL, NULL, 'freshman', NULL, NULL, NULL, '', '', '', 0, ''),
(10008, 'FR. BIENVENIDO F. NEBRES, SJ SCIENCE ACADEMIC SCHOLARSHIP', NULL, NULL, NULL, NULL, 'freshman', NULL, NULL, NULL, '', '', '', 0, ''),
(10009, 'Centennial Scholarship Program (CSP)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0, ''),
(10010, 'Santo Domingo de Guzman,Scholarship for the Gifted', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0, ''),
(10011, 'FEU Academic scholarship grant', NULL, NULL, NULL, NULL, NULL, '1.50', '2.25', NULL, '', '', '', 0, ''),
(10012, 'NU Entrance Academic Scholarship (EAS)', NULL, NULL, NULL, NULL, 'freshman', NULL, NULL, NULL, '', '', '', 0, ''),
(10013, 'UE COLLEGE OF LAW SCHOLARSHIP', NULL, NULL, NULL, NULL, 'senior', '2.00', '2.25', NULL, '', '', '', 0, ''),
(10014, 'AU Academic Scholarship', NULL, NULL, NULL, NULL, NULL, '1.69', '2.00', NULL, '', '', '', 0, ''),
(10015, 'PUP Entrance Scholarship', NULL, NULL, NULL, NULL, 'freshman', NULL, NULL, NULL, '', '', '', 0, ''),
(10016, 'CEM Grad Scholarship', 'female', NULL, '2012', '1', NULL, NULL, NULL, NULL, '', '', '', 0, ''),
(10017, 'DOST-SEI Undergraduate Scholarship', NULL, NULL, NULL, NULL, NULL, NULL, '3.00', 101, '', '', '', 0, ''),
(10018, 'Megaworld Foundation Scholarship', NULL, NULL, '2017', '1', NULL, '1.75', '2.00', 102, '\r\n1. Full tuition fee (late charges, installment fee, graduation fees are not included)\r\n2. Allowance per school year\r\n3. Career opportunity at Megaworld \r\n4. Corporation and/or its subsidiaries and affiliates', 'http://www.megaworldfoundation.com/OurWork/ScholarshipProgram/beaMegaworldScholar.aspx', '/images/default.png', 20000, 'Yearly'),
(10019, 'Carlos Scholarship', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0, ''),
(10020, 'carlos 2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `scholarship_program`
--

DROP TABLE IF EXISTS `scholarship_program`;
CREATE TABLE IF NOT EXISTS `scholarship_program` (
  `spid` int(11) NOT NULL AUTO_INCREMENT,
  `sid` int(11) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `field` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`spid`),
  KEY `sid` (`sid`),
  KEY `pid` (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `scholarship_program`
--

INSERT INTO `scholarship_program` (`spid`, `sid`, `pid`, `field`) VALUES
(1, 10002, NULL, 'Arts'),
(2, 10002, NULL, 'Social Sciences'),
(3, 10002, NULL, 'Engineering'),
(4, 10002, NULL, 'Architecture'),
(5, 10002, NULL, 'Business'),
(6, 10004, NULL, 'Arts'),
(7, 10004, NULL, 'Education'),
(8, 10004, NULL, 'Communication'),
(9, 10005, NULL, 'Social Sciences'),
(10, 10005, NULL, 'Public Affairs'),
(11, 10006, 26, NULL),
(12, 10008, NULL, 'Engineering'),
(13, 10008, NULL, 'Science'),
(14, 10017, NULL, 'Science'),
(15, 10017, NULL, 'Engineering');

-- --------------------------------------------------------

--
-- Table structure for table `scholarship_university`
--

DROP TABLE IF EXISTS `scholarship_university`;
CREATE TABLE IF NOT EXISTS `scholarship_university` (
  `sid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  PRIMARY KEY (`sid`,`uid`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `scholarship_university`
--

INSERT INTO `scholarship_university` (`sid`, `uid`) VALUES
(10001, 1000000000),
(10002, 1000000000),
(10003, 1000000000),
(10004, 1000000000),
(10005, 1000000000),
(10006, 1000000000),
(10007, 1000000001),
(10008, 1000000001),
(10010, 1000000002),
(10009, 1000000003),
(10011, 1000000004),
(10012, 1000000005),
(10013, 1000000006),
(10014, 1000000007),
(10015, 1000000008),
(10016, 1000000009);

-- --------------------------------------------------------

--
-- Table structure for table `university`
--

DROP TABLE IF EXISTS `university`;
CREATE TABLE IF NOT EXISTS `university` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(100) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`uid`),
  KEY `location_id` (`location_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1000000010 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `university`
--

INSERT INTO `university` (`uid`, `uname`, `location_id`) VALUES
(1000000000, 'University of the Philippines', 10000),
(1000000001, 'Ateneo de Manila University', 10000),
(1000000002, 'University of Sto. Thomas', 10001),
(1000000003, 'De La Salle University', 10001),
(1000000004, 'Far Eastern University', 10001),
(1000000005, 'National University', 10001),
(1000000006, 'University of the East', 10001),
(1000000007, 'Adamson University', 10001),
(1000000008, 'Polytechnic University of the Philippines', 10001),
(1000000009, 'Miriam College', 10000);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `program`
--
ALTER TABLE `program`
  ADD CONSTRAINT `program_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `university` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `scholarship`
--
ALTER TABLE `scholarship`
  ADD CONSTRAINT `scholarship_ibfk_1` FOREIGN KEY (`cid`) REFERENCES `company` (`cid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `scholarship_program`
--
ALTER TABLE `scholarship_program`
  ADD CONSTRAINT `scholarship_program_ibfk_1` FOREIGN KEY (`sid`) REFERENCES `scholarship` (`sid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `scholarship_program_ibfk_2` FOREIGN KEY (`pid`) REFERENCES `program` (`pid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `scholarship_university`
--
ALTER TABLE `scholarship_university`
  ADD CONSTRAINT `scholarship_university_ibfk_1` FOREIGN KEY (`sid`) REFERENCES `scholarship` (`sid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `scholarship_university_ibfk_2` FOREIGN KEY (`uid`) REFERENCES `university` (`uid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `university`
--
ALTER TABLE `university`
  ADD CONSTRAINT `university_ibfk_1` FOREIGN KEY (`location_id`) REFERENCES `location` (`location_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

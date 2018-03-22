-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 22, 2018 at 03:22 PM
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
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`cid`, `name`, `address`) VALUES
(101, 'DOST', 'Quezon City'),
(102, 'Megaworld Foundation', 'Taguig City, Uptown Bonifacio'),
(103, 'Petron Foundation and San Miguel Foundation', NULL),
(104, 'Rebisco Foundation', NULL),
(105, 'Cepalco Engineering', NULL),
(106, 'Coca-Cola Foundation', NULL),
(107, 'Metrobank', NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=167 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `program`
--

INSERT INTO `program` (`pid`, `uid`, `pname`, `field`) VALUES
(1, 1000000001, 'BS Applied Mathematics Major in Mathematical Finance', 'Science'),
(2, 1000000001, 'BS Applied Physics', 'Science'),
(3, 1000000001, 'BS Applied Physics with Materials Science and Engineering', 'Science'),
(4, 1000000001, 'BS Biology', 'Science'),
(5, 1000000001, 'BS Chemistry', 'Science'),
(6, 1000000001, 'BS Chemistry with Materials Science and Engineering', 'Science'),
(7, 1000000001, 'BS Environmental Science', 'Science'),
(8, 1000000001, 'BS Life Sciences', 'Science'),
(9, 1000000001, 'BS Management of Applied Chemistry', 'Science'),
(10, 1000000001, 'BS Mathematics', 'Science'),
(11, 1000000001, 'BS Physics', 'Science'),
(12, 1000000001, 'AB Chinese Studies', 'Social Sciences'),
(13, 1000000001, 'AB Development Studies', 'Social Sciences'),
(14, 1000000001, 'AB Diplomacy and International Relations', 'Social Sciences'),
(15, 1000000001, 'AB European Studies', 'Social Sciences'),
(16, 1000000001, 'AB Interdisciplinary Studies', 'Social Sciences'),
(17, 1000000001, 'AB Political Science', 'Social Sciences'),
(18, 1000000001, 'AB Psychology', 'Social Sciences'),
(19, 1000000001, 'AB Social Science', 'Social Sciences'),
(20, 1000000001, 'BS Psychology', 'Social Sciences'),
(21, 1000000001, 'AB Literature', 'Humanities'),
(22, 1000000001, 'AB History', 'Humanities'),
(23, 1000000001, 'AB Humanities', 'Humanities'),
(24, 1000000001, 'AB Philosophy', 'Humanities'),
(25, 1000000001, 'B Fine Arts', 'Arts & Design'),
(26, 1000000001, 'BS Applied Computer Systems', 'Information Technology'),
(27, 1000000001, 'BS Computer Engineering', 'Engineering'),
(28, 1000000001, 'BS Computer Science', 'Information Technology'),
(29, 1000000001, 'BS Information Technology Entrepreneurship', 'Information Technology'),
(30, 1000000001, 'AB Pre-divinity', 'Theology'),
(31, 1000000001, 'AB Communication', 'Communication & Information Science'),
(32, 1000000001, 'BS Management Information Systems', 'Communication & Information Science'),
(33, 1000000001, 'AB Economics', 'Business'),
(34, 1000000001, 'AB Management Economics', 'Business'),
(35, 1000000001, 'BS Management', 'Business'),
(36, 1000000001, 'BS Management Engineering', 'Business'),
(37, 1000000001, 'AB Panitikan', 'Language'),
(38, 1000000001, 'BS Electrical Engineering', 'Engineering'),
(39, 1000000001, 'BS Health Sciences', 'Medicine'),
(40, 1000000002, 'B Elementary Education', 'Education'),
(41, 1000000002, 'B Physical Education', 'Education'),
(42, 1000000002, 'B Secondary Education', 'Education'),
(43, 1000000002, 'B Music', 'Music'),
(44, 1000000002, 'BS Applied Mathematics', 'Science'),
(45, 1000000002, 'BS Applied Physics', 'Science'),
(46, 1000000002, 'BS BioChemistry', 'Science'),
(47, 1000000002, 'BS Biology', 'Science'),
(48, 1000000002, 'BS Chemistry', 'Science'),
(49, 1000000002, 'BS Microbiology', 'Science'),
(50, 1000000002, 'BA Economics', 'Business'),
(51, 1000000002, 'B Fine Arts major in Advertising Arts', 'Business'),
(52, 1000000002, 'BS Accountancy', 'Business'),
(53, 1000000002, 'BS Business Administration', 'Business'),
(54, 1000000002, 'BS Entrepreneurship', 'Business'),
(55, 1000000002, 'BS Management Accounting', 'Business'),
(56, 1000000002, 'BS Medical Technology', 'Medicine'),
(57, 1000000002, 'BS Nursing', 'Medicine'),
(58, 1000000002, 'BS Nutrition and Dietetics', 'Medicine'),
(59, 1000000002, 'BS Occupational Therapy', 'Medicine'),
(60, 1000000002, 'BS Pharmacy', 'Medicine'),
(61, 1000000002, 'BS Physical Therapy', 'Medicine'),
(62, 1000000002, 'BS Speech and Language Pathology', 'Medicine'),
(63, 1000000002, 'BA Behavioral Science', 'Social Sciences'),
(64, 1000000002, 'BA Political Science', 'Social Sciences'),
(65, 1000000002, 'BA Sociology', 'Social Sciences'),
(66, 1000000002, 'BS Psychology', 'Social Sciences'),
(67, 1000000002, 'BS Sports Science', 'Social Sciences'),
(68, 1000000002, 'BA Asian Studies', 'Humanities'),
(69, 1000000002, 'BA History', 'Humanities'),
(70, 1000000002, 'BA Literature', 'Humanities'),
(71, 1000000002, 'BA Philosophy', 'Humanities'),
(72, 1000000002, 'BS Chemical Engineering', 'Engineering'),
(73, 1000000002, 'BS Electrical Engineering', 'Engineering'),
(74, 1000000002, 'BS Electronics Engineering', 'Engineering'),
(75, 1000000002, 'BS Civil Engineering', 'Engineering'),
(76, 1000000002, 'BS Industrial Engineering', 'Engineering'),
(77, 1000000002, 'BS Mechanical Engineering', 'Engineering'),
(78, 1000000002, 'B Fine Arts', 'Arts & Design'),
(79, 1000000002, 'BS Interior Design', 'Arts & Design'),
(80, 1000000000, 'MA Asian Studies', 'Humanities'),
(81, 1000000000, 'Ph.D. in Philippine Studies Programs', 'Humanities'),
(82, 1000000000, 'Juris Doctor', 'Law'),
(83, 1000000000, 'BA European Languages', 'Arts and Letters'),
(84, 1000000000, 'BA Speech Communication', 'Arts and Letters'),
(85, 1000000000, 'B Library & Information Science', 'Liberal Arts'),
(86, 1000000000, 'BS Architecture', 'Architecture'),
(87, 1000000000, 'B Landscape Architecture', 'Architecture'),
(88, 1000000000, 'BA Art Studies', 'Arts'),
(89, 1000000000, 'BS Business Administration', 'Business'),
(90, 1000000000, 'BS Business Administration & Accountancy', 'Business'),
(91, 1000000000, 'BS Business Economics', 'Economics'),
(92, 1000000000, 'BS Economics', 'Economics'),
(93, 1000000000, 'B Secondary Education', 'Education'),
(94, 1000000000, 'B Elementary Education', 'Education'),
(95, 1000000000, 'BS Chemical Engineering', 'Engineering'),
(96, 1000000000, 'BS Civil Engineering', 'Engineering'),
(97, 1000000000, 'BS Electrical Engineering', 'Engineering'),
(98, 1000000000, 'BS Geodetic Engineering', 'Engineering'),
(99, 1000000000, 'BS Industrial Engineering', 'Engineering'),
(100, 1000000000, 'BS Mechanical Engineering', 'Engineering'),
(101, 1000000000, 'BS Metallurgical Engineering', 'Engineering'),
(102, 1000000000, 'BS Mining Engineering', 'Engineering'),
(103, 1000000000, 'BS Computer Science', 'Engineering'),
(104, 1000000000, 'BS Computer Engineering', 'Engineering'),
(105, 1000000000, 'BS Electronics & Communications Engineering', 'Engineering'),
(106, 1000000000, 'BS Materials Engineering', 'Engineering'),
(107, 1000000000, 'BS Biology', 'Science'),
(108, 1000000000, 'BS Chemistry', 'Science'),
(109, 1000000000, 'BS Geology', 'Science'),
(110, 1000000000, 'BS Mathematics', 'Science'),
(111, 1000000000, 'BS Physics', 'Science'),
(112, 1000000000, 'BS Applied Physics', 'Science'),
(113, 1000000000, 'BS Molecular Biology & Biotechnology', 'Science'),
(114, 1000000000, 'BA Anthropology', 'Social Sciences and Philosophy'),
(115, 1000000000, 'BA History', 'Social Sciences and Philosophy'),
(116, 1000000000, 'BA Linguistics', 'Social Sciences and Philosophy'),
(117, 1000000000, 'BA Philosophy', 'Social Sciences and Philosophy'),
(118, 1000000000, 'BA Political Science', 'Social Sciences and Philosophy'),
(119, 1000000000, 'BA Psychology', 'Social Sciences and Philosophy'),
(120, 1000000000, 'BA Sociology', 'Social Sciences and Philosophy'),
(121, 1000000000, 'BS Geography', 'Social Sciences and Philosophy'),
(122, 1000000000, 'BS Psychology', 'Social Sciences and Philosophy'),
(123, 1000000000, 'BA Comparative Literature', 'Arts and Letters'),
(124, 1000000000, 'BA Creative Writing', 'Arts and Letters'),
(125, 1000000000, 'BA English Studies', 'Arts and Letters'),
(126, 1000000000, 'BA Filipino at Panitikan ng Pilipinas', 'Arts and Letters'),
(127, 1000000000, 'BA Malikhaing Pagsulat sa Filipino', 'Arts and Letters'),
(128, 1000000000, 'BA Philippine Studies', 'Arts and Letters'),
(129, 1000000000, 'BA Theatre Arts', 'Arts and Letters'),
(130, 1000000000, 'BS Tourism', 'Tourism'),
(131, 1000000000, 'B Fine Arts (Painting)', 'Fine Arts'),
(132, 1000000000, 'B Fine Arts (Sculpture)', 'Fine Arts'),
(133, 1000000000, 'B Fine Arts (Art Education)', 'Fine Arts'),
(134, 1000000000, 'B Fine Arts (Art History)', 'Fine Arts'),
(135, 1000000000, 'B Fine Arts (Industrial Design)', 'Fine Arts'),
(136, 1000000000, 'B Fine Arts (Visual Communication)', 'Fine Arts'),
(137, 1000000000, 'BS Clothing Technology', 'Home Economics'),
(138, 1000000000, 'BS Family Life and Child Development', 'Home Economics'),
(139, 1000000000, 'BS Community Nutrition', 'Home Economics'),
(140, 1000000000, 'BS Interior Design', 'Home Economics'),
(141, 1000000000, 'BS Food Technology', 'Home Economics'),
(142, 1000000000, 'BS Home Economics', 'Home Economics'),
(143, 1000000000, 'BS Hotel, Restaurant, and Institution Management', 'Home Economics'),
(144, 1000000000, 'B Sports Science', 'Human Kinetics'),
(145, 1000000000, 'BA Broadcast Communication', 'Mass Communication'),
(146, 1000000000, 'BA Communications Research', 'Mass Communication'),
(147, 1000000000, 'BA Film', 'Mass Communication'),
(148, 1000000000, 'BA Journalism', 'Mass Communication'),
(149, 1000000000, 'B Music (Band Conducting)', 'Music'),
(150, 1000000000, 'B Music (Choral Conducting)', 'Music'),
(151, 1000000000, 'B Music (Orchestral Conducting)', 'Music'),
(152, 1000000000, 'B Music (Composition)', 'Music'),
(153, 1000000000, 'B Music (Dance)', 'Music'),
(154, 1000000000, 'B Music (Instruments: Strings)', 'Music'),
(155, 1000000000, 'B Music (Instruments: Percussion)', 'Music'),
(156, 1000000000, 'B Music (Instruments: Wind)', 'Music'),
(157, 1000000000, 'B Music (Music Education)', 'Music'),
(158, 1000000000, 'B Music (Musicology)', 'Music'),
(159, 1000000000, 'B Music (Piano)', 'Music'),
(160, 1000000000, 'B Music (Voice)', 'Music'),
(161, 1000000000, 'B Public Administration', 'Public Administration'),
(162, 1000000000, 'BS Statistics', 'Statistics'),
(163, 1000000000, 'BS Community Development', 'Social Work'),
(164, 1000000000, 'BS Social Work', 'Social Work'),
(165, 1000000000, 'MA Urban and Regional Planning', 'SURP'),
(166, 1000000000, 'PhD Urban and Regional Planning', 'SURP');

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
  `level` varchar(100) DEFAULT NULL,
  `GWA` decimal(3,2) DEFAULT NULL,
  `maxgrade` decimal(3,2) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  `description` mediumtext,
  `url` varchar(191) DEFAULT NULL,
  `imgdir` varchar(191) DEFAULT NULL,
  `stipend` int(11) DEFAULT NULL,
  `type` varchar(191) DEFAULT NULL,
  PRIMARY KEY (`sid`),
  KEY `cid` (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=10150 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `scholarship`
--

INSERT INTO `scholarship` (`sid`, `sname`, `sex`, `age`, `year`, `semester`, `level`, `GWA`, `maxgrade`, `cid`, `description`, `url`, `imgdir`, `stipend`, `type`) VALUES
(10001, 'Philips Group Of Companies Scholarship Grant College Of Social Sciences And Philosophy', NULL, NULL, '2017', '1', 'sophomore', '3.00', '3.00', NULL, '1. This Scholarships shall be known as the Nicolas Zafra Memorial Scholarship in memory of the late Prof. Nicolas Zafra.', 'http://osss.up.edu.ph/content/scholarships/list/', 'default', 1000, 'monthly'),
(10002, 'Cecilio Paul D. San Pedro Scholarship Program', NULL, NULL, '2017', '1', 'junior', '2.00', NULL, NULL, 'An applicant for this scholarship – study grant shall have finished the first two years of any course offered at the Colle of Arts and Letters or College of Education preferably major in Filipino language. In addition, he/she:', 'http://osss.up.edu.ph/content/scholarships/list/', 'default', 3000, 'yearly'),
(10003, 'Nicolas Zafra Memorial Scholarship', NULL, NULL, '2017', '1', NULL, '1.75', '2.25', NULL, NULL, 'http://osss.up.edu.ph/content/scholarships/list/', 'default', 1500, 'monthly'),
(10004, 'Faustino Aguilar Scholarship - Study Grant', NULL, NULL, '2017', '1', NULL, '2.50', '3.00', NULL, NULL, 'http://osss.up.edu.ph/content/scholarships/list/', 'default', NULL, NULL),
(10005, 'Amador Nisperos Memorial Study Grant', NULL, NULL, '2017', '1', NULL, '2.75', '3.00', NULL, NULL, NULL, 'default', NULL, NULL),
(10006, 'Menzi Trust Fund Inc. Scholarship', NULL, '25', '2017', '1', NULL, '3.00', '3.00', NULL, NULL, NULL, 'default', 500, 'monthly'),
(10007, 'ATENEO freshman MERIT SCHOLARSHIP (AFMS)', NULL, NULL, NULL, NULL, 'freshman', NULL, NULL, NULL, NULL, NULL, 'default', 2000, 'semester'),
(10008, 'FR. BIENVENIDO F. NEBRES, SJ SCIENCE ACADEMIC SCHOLARSHIP', NULL, NULL, NULL, NULL, 'freshman', NULL, NULL, NULL, NULL, NULL, 'default', 2000, 'irregular'),
(10009, 'Centennial Scholarship Program (CSP)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'default', 5000, 'semester'),
(10010, 'Santo Domingo de Guzman,Scholarship for the Gifted', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'default', 500, 'monthly'),
(10011, 'FEU Academic scholarship grant', NULL, NULL, NULL, NULL, NULL, '1.50', '2.25', NULL, NULL, NULL, 'default', 2000, 'semester'),
(10012, 'NU Entrance Academic Scholarship (EAS)', NULL, NULL, NULL, NULL, 'freshman', NULL, NULL, NULL, NULL, NULL, 'default', 1000, 'monthly'),
(10013, 'UE COLLEGE OF LAW SCHOLARSHIP', NULL, NULL, NULL, NULL, 'senior', '2.00', '2.25', NULL, NULL, NULL, 'default', 3000, 'yearly'),
(10014, 'AU Academic Scholarship', NULL, NULL, NULL, NULL, NULL, '1.69', '2.00', NULL, NULL, NULL, 'default', 1500, 'monthly'),
(10015, 'PUP Entrance Scholarship', NULL, NULL, NULL, NULL, 'freshman', NULL, NULL, NULL, NULL, NULL, 'default', 500, 'monthly'),
(10016, 'CEM Grad Scholarship', 'female', NULL, '2012', '1', NULL, NULL, NULL, NULL, NULL, NULL, 'default', 2000, 'semester'),
(10017, 'DOST-SEI Undergraduate Scholarship', NULL, NULL, NULL, NULL, NULL, NULL, '3.00', 101, NULL, NULL, 'default', 2000, 'monthly'),
(10018, 'Megaworld Foundation Scholarship', NULL, NULL, '2017', '1', NULL, '1.75', '2.00', 102, NULL, NULL, 'default', 3000, 'monthly'),
(10019, 'Hon. David L. Kho, Representative,\nsenior Citizens Party List', NULL, NULL, NULL, '1', 'freshman', NULL, NULL, NULL, 'The scholarship, which is being donated by Hon. David L. Kho, Representative,\nsenior Citizens Party List shall take effect in the first semester, 2012-2013.', 'http://osss.up.edu.ph/content/scholarships/list/', 'default', 3000, 'monthly'),
(10020, 'ADOLFO S. SUZARA FOUNDATION, INC.', NULL, NULL, NULL, NULL, NULL, '2.00', '3.00', NULL, NULL, 'http://osss.up.edu.ph/content/scholarships/list/', 'default', 3000, 'monthly'),
(10021, 'JAYCERYLL MALABUYOC DE CHAVEZ SCHOLARSHIP', NULL, NULL, NULL, NULL, 'freshman', NULL, '2.25', NULL, 'The scholarship is being donated by the family of the late Jayceryll\nMalabuyoc de Chavez.', 'http://osss.up.edu.ph/content/scholarships/list/', 'default', 3000, 'monthly'),
(10022, 'Jenny Ileto - Severino Memorial Trust Fund', NULL, NULL, NULL, NULL, 'graduating', NULL, '3.00', NULL, 'The scholarship, which is being donated by friends and family of the late Jennifer\nIleto-Severino, shall take effect in the First Semester, 2009-2010.', 'http://osss.up.edu.ph/content/scholarships/list/', 'default', 0, 'monthly'),
(10023, 'Joaquin Pleno Scholarship', NULL, NULL, NULL, NULL, NULL, NULL, '3.00', NULL, 'This is known as the “Joaquin Pleno Scholarship” donated by Mr. Joaquin Pleno of Baliuag,\nBulacan in memory of his spouse the late Macaria Sto. Domingo to the University of the\nPhilippines for scholarships in the amount of Php20,000.00 as permanent endowment, plus\nan addition of Php2,150.00 as interest earned and directly available for the scholarships.', 'http://osss.up.edu.ph/content/scholarships/list/', 'default', 10000, 'semester'),
(10024, 'Joaquin R. Escobar Foundation', NULL, NULL, NULL, NULL, NULL, NULL, '3.00', NULL, NULL, 'http://osss.up.edu.ph/content/scholarships/list/', 'default', 7500, 'monthly'),
(10025, 'Jose C. and Carmen O. Florento Scholarship', NULL, NULL, NULL, NULL, 'sophomore,junior,senior,graduating,graduate', '2.75', '2.75', NULL, 'The Grant is supported by the DONATION and its awarding shall commence not earlier\nthan the First Semester of AY 2016-7of the University.', 'http://osss.up.edu.ph/content/scholarships/list/', 'default', 4000, 'monthly'),
(10026, 'Joseph Co Liong Han Scholarship Program', NULL, NULL, NULL, NULL, NULL, '2.50', '2.50', NULL, 'The scholarship grant which is being donated by the children of Joseph Co Liong Han\nsupports one (1) scholar effective first 2013-2014.', 'http://osss.up.edu.ph/content/scholarships/list/', 'default', 0, 'monthly'),
(10027, 'Juan C. and Lourdes V. Ferrer Scholarship', NULL, NULL, NULL, NULL, 'freshman', NULL, '2.50', NULL, 'The scholarship grant donated by Juan and Lourdes V. Ferrer, currently residing\nin Princeton Junction, New Jersey, USA, 08550, shall take effect on the first semester\nAcademic Year 2013-2014.', 'http://osss.up.edu.ph/content/scholarships/list/', 'default', 4000, 'monthly'),
(10028, 'Juan Edgardo M. Angara', NULL, NULL, NULL, NULL, NULL, NULL, '3.00', NULL, NULL, 'http://osss.up.edu.ph/content/scholarships/list/', 'default', 8000, 'semester'),
(10029, 'Justice Irene R. Cortes Memorial Scholarship', NULL, NULL, NULL, NULL, 'junior', NULL, '2.50', NULL, 'The scholarship, which is being donated by the family of the late Justice Irene R.\nCortes, shall take effect in the first semester, 2000-2001.', 'http://osss.up.edu.ph/content/scholarships/list/', 'default', 12000, 'semester'),
(10030, 'L.R. Aguinaldo Scholarship', NULL, NULL, NULL, NULL, NULL, '2.85', '3.00', NULL, NULL, 'http://osss.up.edu.ph/content/scholarships/list/', 'default', 5000, 'semester'),
(10031, 'Loren Legarda - Leviste Scholarship Grant', NULL, NULL, NULL, NULL, NULL, '2.00', '2.00', NULL, NULL, 'http://osss.up.edu.ph/content/scholarships/list/', 'default', 650, 'monthly'),
(10032, 'Madrono and Donata V. Abis Memorial Foundation Scholarship', NULL, NULL, NULL, NULL, 'freshman', NULL, '3.00', NULL, 'The grant shall be known as the Madrono and Donata V. Abis Memorial\nFoundation Scholarship for BS Chemistry Students. The grant is open to bona fide\nundergraduates of the University of the Philippines in Diliman who will meet\nthe qualifications set by the University and subject to the Rules for Scholarships and\nFellowships of the University.', 'http://osss.up.edu.ph/content/scholarships/list/', 'default', 5000, 'monthly'),
(10033, 'Malampaya Sustainable Development Scholarship', NULL, NULL, NULL, NULL, 'junior', '2.00', '2.00', NULL, 'The scholarship provided by Malampaya Foundation, Inc. aims to form a critical mass of\nprofessionals and specialists on sustainable energy development and environment and\nnatural resources management to help the provinces of Palawan, Batangas and Oriental\nMindoro pursue sustainable development. It is intended for the local residents of these\nthree provinces who possess the motivation and desire to serve their localities.', 'http://osss.up.edu.ph/content/scholarships/list/', 'default', 10000, 'monthly'),
(10034, 'Manuel E. Arguilla Scholarship', NULL, NULL, NULL, NULL, NULL, '3.00', '3.00', NULL, NULL, 'http://osss.up.edu.ph/content/scholarships/list/', 'default', 3000, 'semester'),
(10035, 'MARIA SOCORRO “Corito” C. LLAMAS FOUNDING\nEDITOR, MAGAZINE EDITOR, FOOD MAGAZINE SCHOLARSHIP', NULL, NULL, NULL, NULL, 'sophomore', '3.00', '3.00', NULL, 'The scholarship, which is being donated by Ms. Ma. Soccoro C. Llamas, shall\ntake effect in the First Semester, 2002-2003.', 'http://osss.up.edu.ph/content/scholarships/list/', 'default', 12500, 'semester'),
(10036, 'MAXIMIANO GUIWA, SR. EXCELLENCE AWARD', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'The award, which is being donated by Ms. Analisa Guiwa-Schindler of Munich,\nGermany, shall take effect in the academic year 2002-2003.', 'http://osss.up.edu.ph/content/scholarships/list/', 'default', 0, 'yearly'),
(10037, 'MENZI TRUST FUND, INC. SCHOLARSHIP', 'male', '25', NULL, NULL, NULL, '2.50', '2.50', NULL, 'The scholarship, which is being donated by the MENZI TRUST FUND, INC.\nshall take effect in the First Semester, 1993-1994.', 'http://osss.up.edu.ph/content/scholarships/list/', 'default', 28000, 'yearly'),
(10038, 'METROBANK FOUNDATION, INC. SCHOLARSHIP GRANT', NULL, NULL, NULL, NULL, 'graduating', '2.50', '2.25', 107, 'The scholarship, which is being donated by the Metrobank Foundation,\nInc., shall take effect in the First Semester of 2007-2008.', 'http://osss.up.edu.ph/content/scholarships/list/', 'default', 32500, 'semester'),
(10039, 'MGRPI (MERCEDES GIMENEZ RODGERS PHILIPPINES, INC.) SCHOLARSHIP GRANT', NULL, NULL, NULL, NULL, 'graduating', '3.00', '3.00', NULL, 'The scholarship grant which took effect in the First Semester, AY 2012-2013 shall support three\n(3) graduating students enrolled in any business related degree programs of the University starting First\nSemester, AY 2017-2018.', 'http://osss.up.edu.ph/content/scholarships/list/', 'default', 15000, 'semester'),
(10040, 'PVAO Educational Benefit', NULL, NULL, NULL, NULL, NULL, '3.00', '3.00', NULL, NULL, 'http://osss.up.edu.ph/content/scholarships/list/', 'default', 18000, 'semester'),
(10041, 'NINOY AND CORY AQUINO FOUNDATION, INC. SCHOLARSHIP', NULL, NULL, NULL, NULL, 'junior', '3.00', '3.00', NULL, 'The scholarship donated by Ninoy and Cory Foundation, Inc. which took effect in the\n1 st semester, 2016-2017 shall be amended to commence in the 1 st semester, AY 2017-2018.\nThe revision shall award ten (10) partial scholarship grants to 3 rd year in standing students\nenrolled in any Bachelor’s degree program in UP Diliman. This grant is in addition to\nexisting five (5) full scholarship grants.', 'http://osss.up.edu.ph/content/scholarships/list/', 'default', 7000, 'monthly'),
(10042, 'CONG. NEPTALI M. GONZALES II EDUCATIONAL SUPPORT PROGRAM', NULL, NULL, NULL, NULL, NULL, '3.00', '2.50', NULL, NULL, 'http://osss.up.edu.ph/content/scholarships/list/', 'default', 0, NULL),
(10043, 'Oblation Scholarship', NULL, NULL, NULL, NULL, NULL, NULL, '2.00', NULL, NULL, 'http://osss.up.edu.ph/content/scholarships/list/', 'default', 5250, 'semester'),
(10044, 'ONGKING FOUNDATION SCHOLARSHIP GRANTS', NULL, NULL, NULL, NULL, 'freshman', NULL, '2.50', NULL, NULL, 'http://osss.up.edu.ph/content/scholarships/list/', 'default', 1800, 'monthly'),
(10045, 'PAMWE FOUNDATION ENDOWMENT SCHOLARSHIP FUND', NULL, NULL, NULL, NULL, NULL, '2.50', '2.50', NULL, NULL, 'http://osss.up.edu.ph/content/scholarships/list/', 'default', 10000, 'semester'),
(10046, 'PEDRO E. TEODORO JOURNALISM SCHOLARSHIP', NULL, NULL, NULL, NULL, NULL, '2.25', '2.25', NULL, NULL, 'http://osss.up.edu.ph/content/scholarships/list/', 'default', 8000, 'semester'),
(10047, 'PFI & SMF Sponsorship', NULL, NULL, NULL, NULL, 'graduate', '3.00', '3.00', 103, NULL, 'http://osss.up.edu.ph/content/scholarships/list/', 'default', 25000, 'monthly'),
(10048, 'PI SIGMA DELTA SORORITY OUTSTANDING WOMEN SCHOLARS FUND', 'female', NULL, NULL, NULL, NULL, '2.25', '2.25', NULL, NULL, 'http://osss.up.edu.ph/content/scholarships/list/', 'default', 5000, 'semester'),
(10049, 'POSCO Asia Fellowships', NULL, NULL, NULL, NULL, NULL, '2.00', '2.00', NULL, NULL, 'http://osss.up.edu.ph/content/scholarships/list/', 'default', 35000, 'yearly'),
(10050, 'U.P. PRESIDENTIAL LEADERSHIP GRANTS', NULL, NULL, NULL, NULL, NULL, '2.75', '2.75', NULL, NULL, 'http://osss.up.edu.ph/content/scholarships/list/', 'default', 2000, 'monthly'),
(10051, 'UP Presidential Scholarship', NULL, NULL, NULL, NULL, NULL, '2.00', '2.00', NULL, NULL, 'http://osss.up.edu.ph/content/scholarships/list/', 'default', 2000, 'monthly'),
(10052, 'Rachel Pacion Querubin Foundation Incorporated Scholarship Award Program', NULL, NULL, NULL, NULL, 'sophomore', '2.50', '2.50', NULL, 'The scholarship award to support at least 1 (one) qualified student enrolled at the College\nof Social Work and Community Development (CSWCD) at UP Diliman shall commence in\nthe 1 st Semester, Academic Year 2017-2018.', 'http://osss.up.edu.ph/content/scholarships/list/', 'default', 7000, 'monthly'),
(10053, 'REBISCO FOUNDATION’S FINANCIAL ASSISTANCE FOR TERTIARY EDUCATION', NULL, NULL, NULL, NULL, NULL, '2.09', '2.09', 104, 'The scholarship grant donated by REBISCO FOUNDATION INC. (“Foundation”) shall\nprovide three (3) scholarship slots effective 1 st Semester of Academic Year 2014-2015.\nThereafter, starting 1st semester, AY 2016-2017, additional two (2) or three (3) scholarship\ngrants shall be awarded.', 'http://osss.up.edu.ph/content/scholarships/list/', 'default', 3000, 'monthly'),
(10054, 'RODOLFO M. LEJANO, SR. SCHOLARSHIP', NULL, NULL, NULL, NULL, NULL, '2.50', '2.50', NULL, 'The scholarship, donated by ALICIA PEREZ LEJANO (BS. Ed ’47) and\nRODOLFO M. LEJANO, SR. (BSCE ’46) shall take effect in the 1 st Semester 2008-\n2009.', 'http://osss.up.edu.ph/content/scholarships/list/', 'default', 12000, 'semester'),
(10055, 'CEPALCO ENGINEERING SCHOLARSHIP GRANT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 105, NULL, 'http://osss.up.edu.ph/content/scholarships/list/', 'default', 10000, 'semester'),
(10056, 'COCA-COLA FOUNDATION, INC. SCHOLARSHIP', NULL, NULL, NULL, NULL, 'masters,phd', '2.50', '2.50', 106, NULL, 'http://osss.up.edu.ph/content/scholarships/list/', 'default', 37000, 'yearly'),
(10057, 'Irene Pascual Sarmiento', NULL, NULL, NULL, NULL, NULL, NULL, '3.00', NULL, NULL, 'http://osss.up.edu.ph/content/scholarships/list/', 'default', 0, NULL),
(10058, 'Angelo King Foundation, Inc. Scholarship Program', NULL, NULL, NULL, NULL, 'freshman,junior,senior', '2.50', NULL, NULL, NULL, 'http://osss.up.edu.ph/content/scholarships/list/', 'default', 1300, 'yearly'),
(10059, 'DEAN ARMANDO J. MALAY MEMORIAL SCHOLARSHIP IN JOURNALISM', NULL, NULL, NULL, NULL, NULL, '2.50', NULL, NULL, NULL, 'http://osss.up.edu.ph/content/scholarships/list/', 'default', 5000, 'semester'),
(10060, 'EQUIS-ASIA NETWORKS SCHOLARSHIP', NULL, NULL, NULL, NULL, NULL, '2.00', NULL, NULL, NULL, 'http://osss.up.edu.ph/content/scholarships/list/', 'default', 70000, 'semester'),
(10061, 'UP Association of Biology Majors Scholarship Grant', NULL, NULL, NULL, NULL, NULL, '2.50', NULL, NULL, NULL, 'http://osss.up.edu.ph/content/scholarships/list/', 'default', 30000, 'semester'),
(10062, 'ASSOCIATION OF PHILIPPINE PHYSICIANS IN AMERICA (APPA) SCHOLARSHIP', NULL, NULL, NULL, NULL, NULL, '2.50', NULL, NULL, NULL, 'http://osss.up.edu.ph/content/scholarships/list/', 'default', 25000, 'semester'),
(10063, 'ASTRID L. ZIALCITA SCHOLARSHIP', NULL, NULL, NULL, NULL, NULL, '2.50', NULL, NULL, 'The scholarship is open to students coming from Southern Leyte who are\nenrolled in U.P. Diliman or U.P. Manila', 'http://osss.up.edu.ph/content/scholarships/list/', 'default', 800, 'monthly'),
(10064, 'AUGUSTO A. ALZONA SCHOLARSHIP', NULL, NULL, NULL, NULL, 'senior', '2.00', NULL, NULL, NULL, 'http://osss.up.edu.ph/content/scholarships/list/', 'default', 10000, 'semester'),
(10065, 'BAA BATCH 2004 SCHOLARSHIP PROGRAM', NULL, NULL, NULL, NULL, 'junior', '2.50', NULL, NULL, NULL, 'http://osss.up.edu.ph/content/scholarships/list/', 'default', 30000, 'semester'),
(10066, 'BAILON DE LA RAMA SCHOLARSHIP', NULL, NULL, NULL, NULL, 'sophomore', '2.50', NULL, NULL, NULL, 'http://osss.up.edu.ph/content/scholarships/list/', 'default', 10000, 'semester'),
(10067, 'BANK OF TOKYO-MITSUBISHI SCHOLARSHIP for UP STUDENTS', NULL, NULL, NULL, NULL, NULL, '2.50', NULL, NULL, NULL, 'http://osss.up.edu.ph/content/scholarships/list/', 'default', 18000, 'semester'),
(10068, 'BETA SIGMA NORTHWEST SCHOLARSHIP', NULL, NULL, NULL, NULL, NULL, '1.50', NULL, NULL, 'must be a member of good standing of the BETA Sigma Fraternity who is\nenrolled in the University of the Philippines Diliman/Manila;', 'http://osss.up.edu.ph/content/scholarships/list/', 'default', 22250, 'semester'),
(10069, 'DR. BYONG GYU PARK SCHOLARSHIP PROGRAM', NULL, NULL, NULL, NULL, 'graduate', '1.50', '2.00', NULL, NULL, 'http://osss.up.edu.ph/content/scholarships/list/', 'default', 15000, 'semester'),
(10070, 'CARLOS C. ANITA M. ALBANO & PAMWE FOUNDATION ENDOWMENT SCHOLARSHIP FUND', NULL, NULL, NULL, NULL, NULL, '2.50', NULL, NULL, NULL, 'http://osss.up.edu.ph/content/scholarships/list/', 'default', 10000, 'semester'),
(10071, 'CARLOS PALANCA FOUNDATION SCHOLARSHIP PROGRAM', NULL, NULL, NULL, NULL, 'incoming', NULL, NULL, NULL, NULL, 'http://osss.up.edu.ph/content/scholarships/list/', 'default', 41500, 'semester'),
(10072, 'CECILIO PAUL D. SAN PEDRO SCHOLARSHIP PROGRAM', NULL, NULL, NULL, NULL, 'incoming', NULL, NULL, NULL, NULL, 'http://osss.up.edu.ph/content/scholarships/list/', 'default', 45000, 'semester'),
(10073, 'Philippine Vending Corporation', NULL, NULL, NULL, NULL, NULL, '2.50', '3.00', NULL, NULL, 'http://osss.up.edu.ph/content/scholarships/list/', 'default', 3000, 'monthly'),
(10074, 'CHINESE AMBASSADOR FULL SCHOLARSHIP GRANT', NULL, NULL, NULL, NULL, NULL, '1.75', NULL, NULL, NULL, 'http://osss.up.edu.ph/content/scholarships/list/', 'default', 70000, 'semester'),
(10075, 'CHINESE AMBASSADOR PARTIAL SCHOLARSHIP GRANT', NULL, NULL, NULL, NULL, NULL, '2.50', NULL, NULL, NULL, 'http://osss.up.edu.ph/content/scholarships/list/', 'default', 35000, 'semester'),
(10076, 'PhilDev Science & Engineering', NULL, NULL, NULL, NULL, NULL, '1.64', NULL, NULL, NULL, 'http://osss.up.edu.ph/content/scholarships/list/', 'default', 7000, 'monthly'),
(10077, 'COMMONWEALTH FOODS, INC. SCHOLARSHIP', NULL, NULL, NULL, NULL, 'incoming', '2.50', NULL, NULL, NULL, 'http://osss.up.edu.ph/content/scholarships/list/', 'default', 20000, 'semester'),
(10078, 'CONG. EULOGIO R. MAGSAYSAY', NULL, NULL, NULL, NULL, 'sophomore', '2.00', NULL, NULL, NULL, 'http://osss.up.edu.ph/content/scholarships/list/', 'default', 3000, 'semester'),
(10079, 'CRISOLOGO CABACUNGAN SCHOLARSHIP SPONSORED BY UPAACC', NULL, NULL, NULL, NULL, NULL, '2.50', NULL, NULL, NULL, 'http://osss.up.edu.ph/content/scholarships/list/', 'default', 25000, 'semester'),
(10080, 'REP. DAVID L. KHO (senior CITIZENS PARTY LIST) SCHOLARSHP PROGRAM', NULL, NULL, NULL, NULL, 'freshman', '2.50', NULL, NULL, NULL, 'http://osss.up.edu.ph/content/scholarships/list/', 'default', 25000, 'semester'),
(10081, 'ASSOCIATION OF PHILIPPINE PHYSICIANS IN AMERICA AUXILIARY (APPA Auxiliary) SCHOLARSHIP', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'http://osss.up.edu.ph/content/scholarships/list/', 'default', 0, 'special'),
(10082, 'DR. CHIO SHIH LIN SCHOLARSHIP GRANT – DEPARTMENT OF MATHEMATICS', NULL, NULL, NULL, NULL, NULL, '2.50', NULL, NULL, NULL, 'http://osss.up.edu.ph/content/scholarships/list/', 'default', 5000, 'semester'),
(10083, 'DR. E. R. VIOLAGO SCHOLARSHIP PROGRAM', NULL, NULL, NULL, NULL, NULL, '3.00', NULL, NULL, NULL, 'http://osss.up.edu.ph/content/scholarships/list/', 'default', 12500, 'semester'),
(10084, 'ELPIDIO QUIRINO SCHOLARSHIP GRANT in the UNIVERSITY OF THE PHILIPPINE', NULL, NULL, NULL, NULL, 'senior', '2.50', NULL, NULL, NULL, 'http://osss.up.edu.ph/content/scholarships/list/', 'default', 10000, 'semester'),
(10085, 'EMILIA A. ALZONA UNDERgraduate SCHOLARSHIP', NULL, NULL, NULL, NULL, NULL, '2.00', NULL, NULL, NULL, 'http://osss.up.edu.ph/content/scholarships/list/', 'default', 10000, 'yearly'),
(10086, 'ESTER TANCO SCHOLARSHIP', NULL, NULL, NULL, NULL, NULL, '2.50', NULL, NULL, NULL, 'http://osss.up.edu.ph/content/scholarships/list/', 'default', 25000, 'semester'),
(10087, 'FILIPINO AMERICAN MILITARY MEDICAL OFFICERS SOCIETY (FAMMOS) SCHOLARSHIP', NULL, NULL, NULL, NULL, NULL, '2.50', NULL, NULL, NULL, 'http://osss.up.edu.ph/content/scholarships/list/', 'default', 0, 'special'),
(10088, 'FAUSTINO AGUILAR SCHOLARSHIP – STUDY GRANT', NULL, NULL, NULL, NULL, NULL, '2.50', NULL, NULL, NULL, 'http://osss.up.edu.ph/content/scholarships/list/', 'default', 3000, 'semester'),
(10089, 'FIL-AMERICAN ASSOCIATION OF FLORIDA SCHOLARSHIP', NULL, NULL, NULL, NULL, NULL, '2.50', NULL, NULL, NULL, 'http://osss.up.edu.ph/content/scholarships/list/', 'default', 18500, 'semester'),
(10090, 'FILIPINO AMERICAN HERITAGE ASSOCIATION (F.A.H.A.) SCHOLARSHIP', NULL, NULL, NULL, NULL, NULL, '2.50', NULL, NULL, NULL, 'http://osss.up.edu.ph/content/scholarships/list/', 'default', 10750, 'semester'),
(10091, 'FILIPINO INFORMATION TECHNOLOGY GROUP, USA SCHOLARSHIP', NULL, NULL, NULL, NULL, NULL, '2.00', NULL, NULL, NULL, 'http://osss.up.edu.ph/content/scholarships/list/', 'default', 20000, 'semester'),
(10092, 'FRANCISCO BENITEZ SCHOLARSHIP', NULL, NULL, NULL, NULL, NULL, '2.50', NULL, NULL, NULL, 'http://osss.up.edu.ph/content/scholarships/list/', 'default', 15000, 'yearly'),
(10093, 'FRANCISCO J. NICOLAS SCHOLARSHIPS', NULL, NULL, NULL, NULL, NULL, '3.00', NULL, NULL, NULL, 'http://osss.up.edu.ph/content/scholarships/list/', 'default', 39000, 'yearly'),
(10094, 'GREGORIO TOURISM SCHOLARSHIP PROGRAM', NULL, NULL, NULL, NULL, NULL, '2.50', NULL, NULL, NULL, 'http://osss.up.edu.ph/content/scholarships/list/', 'default', 50000, 'semester'),
(10095, 'HEALTH EDUCATION ENVIRONMENT DISCIPLESHIP FOUNDATION, INC. SCHOLARSHIP PROGRAM', NULL, NULL, NULL, NULL, NULL, '2.00', NULL, NULL, NULL, 'http://osss.up.edu.ph/content/scholarships/list/', 'default', 12000, 'semester'),
(10096, 'HELIOS SOLAR ENERGY CORPORATION SCHOLARSHIP', NULL, NULL, NULL, NULL, NULL, '2.00', NULL, NULL, NULL, 'http://osss.up.edu.ph/content/scholarships/list/', 'default', 70000, 'semester'),
(10097, 'HILARION ESQUIVEL MEMORIAL SCHOLARSHIP IN ENGINEERING', NULL, NULL, NULL, NULL, NULL, '2.50', NULL, NULL, NULL, 'http://osss.up.edu.ph/content/scholarships/list/', 'default', 20000, 'semester'),
(10098, 'INSULAR FOUNDATION GOLD EAGLE SCHOLARSHIP GRANT', NULL, NULL, NULL, NULL, NULL, '2.50', '2.75', NULL, NULL, 'http://osss.up.edu.ph/content/scholarships/list/', 'default', 60500, 'semester'),
(10099, 'INSULAR FOUNDATION GOLD EAGLE SCHOLARSHIP GRANT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'http://osss.up.edu.ph/content/scholarships/list/', 'default', 13500, 'semester'),
(10100, 'ISKA ACADEMIC SCHOLARSHIP', NULL, NULL, NULL, NULL, NULL, '2.00', NULL, NULL, NULL, 'http://osss.up.edu.ph/content/scholarships/list/', 'default', 21000, 'semester'),
(10101, 'Salustiano G. Tengonciang Centennial Scholarship Grant', NULL, NULL, NULL, NULL, NULL, '3.00', '3.00', NULL, NULL, 'http://osss.up.edu.ph/content/scholarships/list/', 'default', 12000, 'semester'),
(10102, 'San Miguel Community Scholarship Program', NULL, NULL, NULL, NULL, 'sophomore', '2.50', '2.50', NULL, NULL, 'http://osss.up.edu.ph/content/scholarships/list/', 'default', 3500, 'monthly'),
(10103, 'Scholarship Program for Foreign Students', NULL, NULL, NULL, NULL, 'masters,phd', '1.75', '1.75', NULL, NULL, 'http://osss.up.edu.ph/content/scholarships/list/', 'Default', 2500, 'monthly'),
(10104, 'Science of the Mind Center, Inc. Scholarship', NULL, NULL, NULL, NULL, NULL, '2.50', '2.50', NULL, NULL, 'http://osss.up.edu.ph/content/scholarships/list/', 'Default', 800, 'monthly'),
(10105, 'Sinclair Knight graduate Scholarship', NULL, NULL, NULL, NULL, NULL, '1.50', '1.50', NULL, NULL, 'http://osss.up.edu.ph/content/scholarships/list/', 'Default', 8000, 'semester'),
(10106, 'SKAL CLUB OF MANILA TOURISM SCHOLARSHIP', NULL, NULL, NULL, NULL, NULL, '2.00', NULL, NULL, 'The scholarship herein established shall be utilized to sponsor deserving students enrolled in the field of Tourism.', 'http://osss.up.edu.ph/content/scholarships/list/', 'default', 6000, 'semester'),
(10107, 'SMPFC Future Leaders Scholarship Program', NULL, NULL, NULL, NULL, NULL, '2.00', NULL, NULL, NULL, 'http://osss.up.edu.ph/content/scholarships/list/', 'default', 17500, 'semester'),
(10108, 'STEPS SCHOLARSHIP GRANT', NULL, NULL, NULL, NULL, 'sophomore', '2.50', NULL, NULL, NULL, 'http://osss.up.edu.ph/content/scholarships/list/', 'default', 15000, 'semester'),
(10109, 'SUN LIFE RISING STARS SCHOLARSHIP PROGRAM', NULL, NULL, NULL, NULL, NULL, '2.00', '3.00', NULL, NULL, 'http://osss.up.edu.ph/content/scholarships/list/', 'default', 35000, 'semester'),
(10110, 'TAU ALPHA OVERSEAS SCHOLARSHIP GRANT SCHOLARSHIP', NULL, NULL, NULL, NULL, NULL, '3.00', NULL, NULL, NULL, 'http://osss.up.edu.ph/content/scholarships/list/', 'default', 2000, 'monthly'),
(10111, 'THE MEGAWORLD SCHOLARSHIP GRANT', NULL, NULL, NULL, NULL, NULL, '2.00', NULL, NULL, NULL, 'http://osss.up.edu.ph/content/scholarships/list/', 'default', 15000, 'semester'),
(10112, 'PHILIPPINE TECHNOLOGICAL SOCIETY OF MICHIGAN', NULL, NULL, NULL, NULL, NULL, '2.50', NULL, NULL, NULL, 'http://osss.up.edu.ph/content/scholarships/list/', 'default', 0, 'yearly'),
(10113, 'U.P. Alumni Association of New Jersey,', NULL, NULL, NULL, NULL, NULL, '2.00', NULL, NULL, NULL, 'http://osss.up.edu.ph/content/scholarships/list/', 'default', 15000, 'semester'),
(10114, 'U.P. ALUMNI QUESADA-FULGADO and FRIENDS', NULL, NULL, NULL, NULL, NULL, '2.00', '3.00', NULL, NULL, 'http://osss.up.edu.ph/content/scholarships/list/', 'default', 15000, 'semester'),
(10115, 'U.P. CIRCLE BRUNEI SCHOLARSHIP IN SCIENCE AND TECHNOLOGY', NULL, NULL, NULL, NULL, NULL, '1.50', NULL, NULL, NULL, 'http://osss.up.edu.ph/content/scholarships/list/', 'default', 12000, 'yearly'),
(10116, 'U.P. GOVERNMENT SCHOLARS ALUMNI ASSOCIATION SCHOLARSHIP', NULL, NULL, NULL, NULL, NULL, '2.50', NULL, NULL, NULL, 'http://osss.up.edu.ph/content/scholarships/list/', 'default', 15000, 'semester'),
(10117, 'THE U.P. PAN XENIA FRATERNITY BUSINESS SCHOLARSHIP', NULL, NULL, NULL, NULL, NULL, '2.25', NULL, NULL, NULL, 'http://osss.up.edu.ph/content/scholarships/list/', 'default', 5000, 'semester'),
(10118, 'U.P. – ACI Philippines SCHOLARSHIP', NULL, NULL, NULL, NULL, NULL, '2.50', '3.00', NULL, NULL, 'http://osss.up.edu.ph/content/scholarships/list/', 'default', 12500, 'semester'),
(10119, 'U.P. ALPHA SIGMA FRATERNITY SCHOLARSHIP', NULL, NULL, NULL, NULL, NULL, '1.75', '3.00', NULL, NULL, 'http://osss.up.edu.ph/content/scholarships/list/', 'default', 17500, 'semester'),
(10120, 'UP ALPHA SIGMA SORORITY ALUMNAE ASSOCIATION SCHOLARSHIP GRANT.doc', NULL, NULL, NULL, NULL, NULL, '2.00', NULL, NULL, NULL, 'http://osss.up.edu.ph/content/scholarships/list/', 'default', 0, 'yearly'),
(10121, 'UP ALUMNI ASSOCIATION in  ALBERTA SCHOLARSHIP.doc', NULL, NULL, NULL, NULL, NULL, '1.75', NULL, NULL, NULL, 'http://osss.up.edu.ph/content/scholarships/list/', 'default', 35000, 'semester'),
(10122, 'UP ALUMNI IN WASHINGTON (UPAW) SCHOLARSHIP.doc', NULL, NULL, NULL, NULL, NULL, '2.50', NULL, NULL, NULL, 'http://osss.up.edu.ph/content/scholarships/list/', 'default', 15000, 'semester'),
(10123, 'PALA-WORLDBEX SCHOLARSHIP PROGRAM', NULL, NULL, NULL, NULL, NULL, '2.50', NULL, NULL, NULL, 'http://osss.up.edu.ph/content/scholarships/list/', 'default', 20000, 'semester'),
(10124, 'UP BETA SIGMA ALUMNI ASSOCIATION, INC. SCHOLARSHIP.doc', NULL, NULL, NULL, NULL, NULL, '2.00', NULL, NULL, NULL, 'http://osss.up.edu.ph/content/scholarships/list/', 'default', 500, 'monthly'),
(10125, 'UP Government Scholarship Rules (RA 5549).doc', NULL, NULL, NULL, NULL, NULL, '2.50', '3.00', NULL, NULL, 'http://osss.up.edu.ph/content/scholarships/list/', 'default', 2000, 'monthly'),
(10126, 'UP junior MARKETING ASSOCIATION SCHOLARSHIP.doc', NULL, NULL, NULL, NULL, NULL, '2.50', '3.00', NULL, NULL, 'http://osss.up.edu.ph/content/scholarships/list/', 'default', 2000, 'semester'),
(10127, 'UP PSYCHOLOGY SOCIETY SCHOLARSHIP PROGRAM.doc', NULL, NULL, NULL, NULL, NULL, '2.00', NULL, NULL, NULL, 'http://osss.up.edu.ph/content/scholarships/list/', 'default', 5000, 'semester'),
(10128, 'UP SIGMA BETA ALUMNAE FOUNDATION, INC. SCHOLARSHIP.doc', NULL, NULL, NULL, NULL, NULL, '2.00', NULL, NULL, NULL, 'http://osss.up.edu.ph/content/scholarships/list/', 'default', 2400, 'monthly'),
(10129, 'UP-MART SCHOLARSHIP PROGRAM', NULL, NULL, NULL, NULL, NULL, '2.50', NULL, NULL, NULL, 'http://osss.up.edu.ph/content/scholarships/list/', 'default', 25000, 'semester'),
(10130, 'UPAA BRITISH COLUMBIA SCHOLARSHIPS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'http://osss.up.edu.ph/content/scholarships/list/', 'default', 12000, 'semester'),
(10131, 'UPAA DISTRICT OF COLUMBIA, MARYLAND AND VIRGINIA (UPAA-DCMDVA) SCHOLARSHIP GRANT', NULL, NULL, NULL, NULL, NULL, '2.50', '3.00', NULL, NULL, 'http://osss.up.edu.ph/content/scholarships/list/', 'default', 0, 'special'),
(10132, 'UPAA NORTHERN CALIFORNIA (BERKELEY) CHAPTER SCHOLARSHIP GRANT', NULL, NULL, NULL, NULL, NULL, '2.50', '3.00', NULL, NULL, 'http://osss.up.edu.ph/content/scholarships/list/', 'default', 2500, 'semester'),
(10133, 'UPAA OF AUSTRALIA - NEW SOUTH WALES SCHOLARSHIP', NULL, NULL, NULL, NULL, NULL, '2.50', '3.00', NULL, NULL, 'http://osss.up.edu.ph/content/scholarships/list/', 'default', 15000, 'semester'),
(10134, 'UPAA OF HONGKONG SCHOLARSHIP', NULL, NULL, NULL, NULL, NULL, '2.50', '3.00', NULL, NULL, 'http://osss.up.edu.ph/content/scholarships/list/', 'default', 15000, 'semester'),
(10135, 'UPAA OF SINGAPORE SCHOLARSHIP', NULL, NULL, NULL, NULL, NULL, '2.50', NULL, NULL, NULL, 'http://osss.up.edu.ph/content/scholarships/list/', 'default', 15000, 'semester'),
(10136, 'UPAA OF TEXAS (HOUSTON CHAPTER) SCHOLARSHIP', NULL, NULL, NULL, NULL, NULL, '2.50', NULL, NULL, NULL, 'http://osss.up.edu.ph/content/scholarships/list/', 'default', 6000, 'semester'),
(10137, 'UPAA OF WISCONSIN SCHOLARSHIP', NULL, NULL, NULL, NULL, NULL, '2.50', NULL, NULL, NULL, 'http://osss.up.edu.ph/content/scholarships/list/', 'default', 15000, 'semester'),
(10138, 'UPAA-TOMAS S. FONACIER DELFIN J. JARANILLA, et. al. SCHOLARSHIP FOR CULTURAL MINORITIES', NULL, NULL, NULL, NULL, NULL, '2.50', NULL, NULL, NULL, 'http://osss.up.edu.ph/content/scholarships/list/', 'default', 7500, 'semester'),
(10139, 'UPAA-UAE CHAPTER SCHOLALRSHIP GRANT', NULL, NULL, NULL, NULL, NULL, '2.50', '3.00', NULL, NULL, 'http://osss.up.edu.ph/content/scholarships/list/', 'default', 35000, 'semester'),
(10140, 'UPSILON SIGMA PHI NORTH AMERICA SCHOLARSHIP PROGRAM', NULL, NULL, NULL, NULL, NULL, '2.50', '3.00', NULL, NULL, 'http://osss.up.edu.ph/content/scholarships/list/', 'default', 15000, 'semester'),
(10141, 'UPSILON SIGMA PHI-SIGMA DELTA PHI \'69 SCHOLARSHIP', NULL, NULL, NULL, NULL, NULL, '1.75', NULL, NULL, NULL, 'http://osss.up.edu.ph/content/scholarships/list/', 'default', 15000, 'semester'),
(10142, 'UT FOUNDATION Scholarship', NULL, NULL, NULL, NULL, NULL, '2.50', NULL, NULL, NULL, 'http://osss.up.edu.ph/content/scholarships/list/', 'default', 20000, 'semester'),
(10143, 'VICENTE B. BELLO SCHOLARSHIP PROGRAM', NULL, NULL, NULL, NULL, NULL, '2.50', '3.00', NULL, NULL, 'http://osss.up.edu.ph/content/scholarships/list/', 'default', 0, 'special'),
(10144, 'VICENTE SANTIAGO Y. DEL ROSARIO SCHOLARSHIP', NULL, NULL, NULL, NULL, NULL, '2.00', NULL, NULL, NULL, 'http://osss.up.edu.ph/content/scholarships/list/', 'default', 800, 'monthly'),
(10145, 'Wilfredo Keng Scholarship', NULL, NULL, NULL, NULL, NULL, '2.50', NULL, NULL, NULL, 'http://osss.up.edu.ph/content/scholarships/list/', 'default', 20000, 'semester'),
(10146, 'PHILIPS GROUP OF COMPANIES SCHOLARSHIP-CAL', NULL, NULL, NULL, NULL, 'sophomore', '2.25', '3.00', NULL, NULL, 'http://osss.up.edu.ph/content/scholarships/list/', 'default', 0, 'special'),
(10147, 'PHILIPS GROUP OF COMPANIES SCHOLARSHIP-ENGG', NULL, NULL, NULL, NULL, NULL, NULL, '3.00', NULL, NULL, 'http://osss.up.edu.ph/content/scholarships/list/', 'default', 0, 'special'),
(10148, 'PHILIPS GROUP OF COMPANIES SCHOLARSHIP-CS', NULL, NULL, NULL, NULL, 'sophomore', '2.00', '3.00', NULL, NULL, 'http://osss.up.edu.ph/content/scholarships/list/', 'default', 0, 'special'),
(10149, 'PHILIPS GROUP OF COMPANIES SCHOLARSHIP-CSSP', NULL, NULL, NULL, NULL, 'sophomore', '2.50', '3.00', NULL, NULL, 'http://osss.up.edu.ph/content/scholarships/list/', 'default', 0, 'special');

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
) ENGINE=InnoDB AUTO_INCREMENT=182 DEFAULT CHARSET=latin1;

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
(11, 10006, 5, NULL),
(12, 10008, NULL, 'Engineering'),
(13, 10008, NULL, 'Science'),
(14, 10017, NULL, 'Science'),
(15, 10017, NULL, 'Engineering'),
(16, 10057, 82, NULL),
(17, 10019, 89, NULL),
(18, 10019, 90, NULL),
(19, 10019, 82, NULL),
(20, 10056, 120, NULL),
(21, 10057, 121, NULL),
(22, 10021, 89, NULL),
(23, 10021, 91, NULL),
(24, 10021, 92, NULL),
(25, 10023, NULL, 'Education'),
(26, 10023, 108, NULL),
(27, 10026, 86, NULL),
(28, 10026, NULL, 'Business'),
(29, 10026, NULL, 'Economics'),
(30, 10026, NULL, 'Engineering'),
(31, 10026, NULL, 'Science'),
(32, 10026, NULL, 'Home Economics'),
(33, 10026, 162, NULL),
(34, 10026, 163, NULL),
(35, 10026, 164, NULL),
(36, 10027, NULL, NULL),
(37, 10027, NULL, NULL),
(38, 10030, 115, NULL),
(39, 10031, 145, NULL),
(40, 10032, 108, NULL),
(41, 10033, 100, NULL),
(42, 10033, 109, NULL),
(43, 10034, NULL, 'Arts and Letters'),
(44, 10035, NULL, 'Mass Communication'),
(45, 10036, 84, NULL),
(46, 10036, 129, NULL),
(47, 10037, 108, NULL),
(48, 10038, NULL, 'Business'),
(49, 10038, NULL, 'Engineering'),
(50, 10039, NULL, 'Business'),
(51, 10039, NULL, 'Economics'),
(52, 10039, 143, NULL),
(53, 10039, 130, NULL),
(54, 10046, 148, NULL),
(55, 10052, 163, NULL),
(56, 10052, 164, NULL),
(57, 10053, NULL, 'Business'),
(58, 10053, NULL, 'Science'),
(59, 10053, NULL, 'Engineering'),
(60, 10055, 96, NULL),
(61, 10055, 97, NULL),
(62, 10055, 99, NULL),
(63, 10055, 100, NULL),
(64, 10055, 105, NULL),
(65, 10056, 94, NULL),
(66, 10028, 80, NULL),
(67, 10028, 81, NULL),
(68, 10058, 107, NULL),
(69, 10058, 108, NULL),
(70, 10058, 110, NULL),
(71, 10059, 148, NULL),
(72, 10060, NULL, 'Business'),
(73, 10060, NULL, 'Engineering'),
(74, 10064, 110, NULL),
(75, 10065, 90, NULL),
(76, 10066, NULL, 'Engineering'),
(77, 10067, 82, NULL),
(78, 10067, NULL, 'Business'),
(79, 10067, NULL, 'Economics'),
(80, 10069, NULL, 'SURP'),
(81, 10070, NULL, 'Engineering'),
(82, 10071, 124, NULL),
(83, 10071, 127, NULL),
(84, 10072, NULL, 'Arts and Letters'),
(85, 10072, NULL, 'Fine Arts'),
(86, 10072, NULL, 'Social Sciences'),
(87, 10072, NULL, 'Engineering'),
(88, 10072, NULL, 'Architecture'),
(89, 10072, NULL, 'Business'),
(90, 10074, 161, NULL),
(91, 10074, 82, NULL),
(92, 10074, NULL, 'Economics'),
(93, 10074, NULL, 'Mass Communication'),
(94, 10075, 161, NULL),
(95, 10075, 82, NULL),
(96, 10075, NULL, 'Economics'),
(97, 10075, NULL, 'Mass Communication'),
(98, 10078, NULL, 'Science'),
(99, 10078, NULL, 'Engineering'),
(100, 10082, 110, NULL),
(101, 10084, 82, NULL),
(102, 10085, NULL, 'Engineering'),
(103, 10086, NULL, 'Engineering'),
(104, 10086, NULL, 'Arts and Letters'),
(105, 10086, NULL, 'Business'),
(106, 10086, NULL, 'Science'),
(107, 10086, NULL, 'Mass Communication'),
(108, 10088, NULL, 'Arts and Letters'),
(109, 10088, NULL, 'Education'),
(110, 10090, NULL, 'Education'),
(111, 10091, 103, NULL),
(112, 10092, NULL, 'Education'),
(113, 10093, 85, NULL),
(114, 10093, 139, NULL),
(115, 10093, 163, NULL),
(116, 10093, 164, NULL),
(117, 10094, 130, NULL),
(118, 10095, 90, NULL),
(119, 10095, 82, NULL),
(120, 10095, NULL, 'Education'),
(121, 10096, NULL, 'Business'),
(122, 10096, NULL, 'Engineering'),
(123, 10097, NULL, 'Engineering'),
(124, 10098, NULL, 'Education'),
(125, 10099, 110, NULL),
(126, 10100, NULL, 'Economics'),
(127, 10100, NULL, 'Engineering'),
(128, 10100, 110, NULL),
(129, 10100, 162, NULL),
(130, 10101, 108, NULL),
(131, 10102, 95, NULL),
(132, 10105, NULL, 'SURP'),
(133, 10106, 130, NULL),
(134, 10107, 89, NULL),
(135, 10108, NULL, 'Engineering'),
(136, 10109, 110, NULL),
(137, 10109, 162, NULL),
(138, 10110, NULL, 'Engineering'),
(139, 10110, NULL, 'Architecture'),
(140, 10111, NULL, 'Business'),
(141, 10111, 86, NULL),
(142, 10111, 140, NULL),
(143, 10111, 143, NULL),
(144, 10111, 130, NULL),
(145, 10111, 96, NULL),
(146, 10111, 97, NULL),
(147, 10111, 98, NULL),
(148, 10111, 99, NULL),
(149, 10111, 100, NULL),
(150, 10111, 101, NULL),
(151, 10111, 102, NULL),
(152, 10111, 103, NULL),
(153, 10111, 105, NULL),
(154, 10111, 106, NULL),
(155, 10112, NULL, 'Engineering'),
(156, 10112, NULL, 'Science'),
(157, 10115, NULL, 'Engineering'),
(158, 10115, NULL, 'Science'),
(159, 10118, NULL, 'Business'),
(160, 10118, NULL, 'Economics'),
(161, 10123, 87, NULL),
(162, 10124, NULL, 'Science'),
(163, 10124, NULL, 'Social Sciences and Philosophy'),
(164, 10129, NULL, 'Economics'),
(165, 10129, 89, NULL),
(166, 10129, 110, NULL),
(167, 10129, 162, NULL),
(168, 10140, NULL, 'Science'),
(169, 10140, NULL, 'Engineering'),
(170, 10144, 82, NULL),
(171, 10145, NULL, 'Architecture'),
(172, 10145, NULL, 'Engineering'),
(173, 10145, NULL, 'Business'),
(174, 10073, NULL, 'Science'),
(175, 10073, NULL, 'Engineering'),
(176, 10146, NULL, 'Arts and Letters'),
(177, 10147, 103, NULL),
(178, 10147, 104, NULL),
(179, 10147, 105, NULL),
(180, 10148, 112, NULL),
(181, 10149, NULL, 'Social Sciences and Philosophy');

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
(10019, 1000000000),
(10020, 1000000000),
(10021, 1000000000),
(10022, 1000000000),
(10023, 1000000000),
(10024, 1000000000),
(10025, 1000000000),
(10026, 1000000000),
(10027, 1000000000),
(10028, 1000000000),
(10029, 1000000000),
(10030, 1000000000),
(10031, 1000000000),
(10032, 1000000000),
(10033, 1000000000),
(10034, 1000000000),
(10035, 1000000000),
(10036, 1000000000),
(10037, 1000000000),
(10038, 1000000000),
(10039, 1000000000),
(10040, 1000000000),
(10041, 1000000000),
(10042, 1000000000),
(10043, 1000000000),
(10044, 1000000000),
(10045, 1000000000),
(10046, 1000000000),
(10047, 1000000000),
(10048, 1000000000),
(10049, 1000000000),
(10050, 1000000000),
(10051, 1000000000),
(10052, 1000000000),
(10053, 1000000000),
(10054, 1000000000),
(10055, 1000000000),
(10056, 1000000000),
(10057, 1000000000),
(10058, 1000000000),
(10059, 1000000000),
(10060, 1000000000),
(10061, 1000000000),
(10062, 1000000000),
(10063, 1000000000),
(10064, 1000000000),
(10065, 1000000000),
(10066, 1000000000),
(10067, 1000000000),
(10068, 1000000000),
(10069, 1000000000),
(10070, 1000000000),
(10071, 1000000000),
(10072, 1000000000),
(10073, 1000000000),
(10074, 1000000000),
(10075, 1000000000),
(10076, 1000000000),
(10077, 1000000000),
(10078, 1000000000),
(10079, 1000000000),
(10080, 1000000000),
(10081, 1000000000),
(10082, 1000000000),
(10083, 1000000000),
(10084, 1000000000),
(10085, 1000000000),
(10086, 1000000000),
(10087, 1000000000),
(10088, 1000000000),
(10089, 1000000000),
(10090, 1000000000),
(10091, 1000000000),
(10092, 1000000000),
(10093, 1000000000),
(10094, 1000000000),
(10095, 1000000000),
(10096, 1000000000),
(10097, 1000000000),
(10098, 1000000000),
(10099, 1000000000),
(10100, 1000000000),
(10101, 1000000000),
(10102, 1000000000),
(10103, 1000000000),
(10104, 1000000000),
(10105, 1000000000),
(10106, 1000000000),
(10107, 1000000000),
(10108, 1000000000),
(10109, 1000000000),
(10110, 1000000000),
(10111, 1000000000),
(10112, 1000000000),
(10113, 1000000000),
(10114, 1000000000),
(10115, 1000000000),
(10116, 1000000000),
(10117, 1000000000),
(10118, 1000000000),
(10119, 1000000000),
(10120, 1000000000),
(10121, 1000000000),
(10122, 1000000000),
(10123, 1000000000),
(10124, 1000000000),
(10125, 1000000000),
(10126, 1000000000),
(10127, 1000000000),
(10128, 1000000000),
(10129, 1000000000),
(10130, 1000000000),
(10131, 1000000000),
(10132, 1000000000),
(10133, 1000000000),
(10134, 1000000000),
(10135, 1000000000),
(10136, 1000000000),
(10137, 1000000000),
(10138, 1000000000),
(10139, 1000000000),
(10140, 1000000000),
(10141, 1000000000),
(10142, 1000000000),
(10143, 1000000000),
(10144, 1000000000),
(10145, 1000000000),
(10146, 1000000000),
(10147, 1000000000),
(10148, 1000000000),
(10149, 1000000000),
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

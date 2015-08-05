-- phpMyAdmin SQL Dump
-- version 4.2.5
-- http://www.phpmyadmin.net
--
-- Host: localhost:8889
-- Generation Time: Aug 05, 2015 at 10:11 PM
-- Server version: 5.5.38
-- PHP Version: 5.5.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `error_reporting`
--

-- --------------------------------------------------------

--
-- Table structure for table `buses`
--

CREATE TABLE `buses` (
`id` smallint(3) unsigned NOT NULL,
  `name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `tabletID` tinyint(3) unsigned DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `sortKey` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'to allow sorting bus names in arbitrary sequence',
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created` datetime NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=72 ;

--
-- Dumping data for table `buses`
--

INSERT INTO `buses` (`id`, `name`, `tabletID`, `active`, `sortKey`, `updated`, `created`) VALUES
(1, '401', 2, 1, '401', '2013-11-05 12:48:38', '2013-05-16 17:30:09'),
(2, '402', 10, 1, '402', '2013-08-14 12:05:00', '2013-05-16 18:06:29'),
(3, '403', 1, 1, '403', '2013-10-17 15:45:54', '2013-05-16 18:06:33'),
(4, '404', 8, 1, '404', '2013-08-11 18:57:04', '2013-05-16 18:06:34'),
(5, '405', 4, 1, '405', '2013-09-04 14:02:21', '2013-05-16 18:06:36'),
(6, '406', 11, 1, '406', '2013-08-11 18:58:04', '2013-05-16 18:06:37'),
(7, '407', 7, 1, '407', '2013-08-11 18:59:17', '2013-05-16 18:06:39'),
(8, '408', 9, 1, '408', '2013-08-11 19:00:33', '2013-05-16 18:06:40'),
(9, 'Guest bus 1', 12, 1, 'zz1', '2014-03-23 21:07:18', '2013-05-16 18:06:46'),
(10, 'Guest bus 2', 5, 1, 'zz2', '0000-00-00 00:00:00', '2013-05-16 18:06:48'),
(11, 'Guest bus 3', 7, 1, 'zz3', '2013-06-13 04:05:34', '2013-05-16 18:06:51'),
(52, '760', 19, 1, '760', '2013-08-22 12:11:30', '2013-08-22 08:10:33'),
(55, '435', NULL, 1, '435', '2013-09-05 13:30:21', '0000-00-00 00:00:00'),
(56, '431', NULL, 1, '431', '2013-09-10 17:38:46', '2013-09-10 00:00:00'),
(57, '433', NULL, 1, '433', '2013-09-10 17:39:25', '2013-09-10 00:00:00'),
(58, '434', NULL, 1, '434', '2013-09-10 17:40:02', '2013-09-10 00:00:00'),
(59, '436', NULL, 1, '436', '2013-09-10 17:40:43', '2013-09-10 00:00:00'),
(60, '437', NULL, 1, '437', '2013-09-10 17:41:02', '2013-09-10 00:00:00'),
(61, '438', NULL, 1, '438', '2013-09-10 17:41:22', '2013-09-10 00:00:00'),
(62, '439', NULL, 1, '439', '2013-09-10 17:41:36', '2013-09-10 00:00:00'),
(63, '440', NULL, 1, '440', '2013-09-10 17:42:20', '2013-09-10 00:00:00'),
(64, '441', NULL, 1, '441', '2013-09-10 17:42:35', '2013-09-10 00:00:00'),
(65, '442', NULL, 1, '442', '2013-09-10 17:42:49', '2013-09-10 00:00:00'),
(66, '443', NULL, 1, '443', '2013-09-10 17:43:05', '2013-09-10 00:00:00'),
(67, '420', NULL, 1, '420', '2013-09-10 17:44:01', '2013-09-10 00:00:00'),
(71, '432', NULL, 1, '432', '2013-10-18 13:09:34', '2013-10-18 09:03:58');

-- --------------------------------------------------------

--
-- Table structure for table `drivers`
--

CREATE TABLE `drivers` (
`id` smallint(3) unsigned NOT NULL,
  `surname` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `firstname` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created` datetime NOT NULL,
  `sortKey` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'To allow display in any order'
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=62 ;

--
-- Dumping data for table `drivers`
--

INSERT INTO `drivers` (`id`, `surname`, `firstname`, `active`, `updated`, `created`, `sortKey`) VALUES
(1, 'Allen', 'Michael', 1, '0000-00-00 00:00:00', '2013-05-15 19:53:24', 'AllenM'),
(2, 'Archer', 'Joseph', 0, '0000-00-00 00:00:00', '2013-05-15 19:53:24', 'ArcherJ'),
(3, 'Baber', 'Thomas', 1, '0000-00-00 00:00:00', '2013-05-15 19:53:24', 'BaberT'),
(4, 'Beavers', 'Charles', 1, '0000-00-00 00:00:00', '2013-05-15 19:53:24', 'BeaversC'),
(5, 'Benton', 'Jerome', 1, '0000-00-00 00:00:00', '2013-05-15 19:53:24', 'BentonJ'),
(6, 'Blackmon', 'Eugene', 1, '0000-00-00 00:00:00', '2013-05-15 19:53:24', 'BlackmonE'),
(7, 'Blakeney', 'Natasha', 1, '0000-00-00 00:00:00', '2013-05-15 19:53:24', 'BlakeneyN'),
(8, 'Cannon', 'Arphilia', 1, '0000-00-00 00:00:00', '2013-05-15 19:53:24', 'CannonA'),
(9, 'Cowans', 'Tryfoune', 1, '0000-00-00 00:00:00', '2013-05-15 19:53:24', 'CowansT'),
(10, 'Crawford', 'Willie', 1, '0000-00-00 00:00:00', '2013-05-15 19:53:24', 'CrawfordW'),
(11, 'Dorsey', 'Diana', 1, '0000-00-00 00:00:00', '2013-05-15 19:53:24', 'DorseyD'),
(12, 'Glass', 'Shanika', 1, '0000-00-00 00:00:00', '2013-05-15 19:53:24', 'GlassS'),
(13, 'Goins', 'Ed', 1, '0000-00-00 00:00:00', '2013-05-15 19:53:24', 'GoinsE'),
(14, 'Harewood', 'Claudette', 1, '0000-00-00 00:00:00', '2013-05-15 19:53:24', 'HarewoodC'),
(15, 'Harris', 'Willie', 1, '0000-00-00 00:00:00', '2013-05-15 19:53:24', 'HarrisW'),
(16, 'Haynes', 'Richard', 1, '0000-00-00 00:00:00', '2013-05-15 19:53:24', 'HaynesR'),
(17, 'Henderson', 'James', 1, '0000-00-00 00:00:00', '2013-05-15 19:53:24', 'HendersonJ'),
(18, 'Henry', 'Andrew', 0, '0000-00-00 00:00:00', '2013-05-15 19:53:24', 'HenryA'),
(19, 'Hernandez', 'Sara', 1, '0000-00-00 00:00:00', '2013-05-15 19:53:24', 'HernandezS'),
(20, 'Hogan', 'Adrian', 0, '0000-00-00 00:00:00', '2013-05-15 19:53:24', 'HoganA'),
(21, 'Hood', 'Brooke', 1, '0000-00-00 00:00:00', '2013-05-15 19:53:24', 'HoodB'),
(22, 'Jackson', 'Patrick', 1, '0000-00-00 00:00:00', '2013-05-15 19:53:24', 'JacksonP'),
(23, 'Johnson', 'Michael', 0, '0000-00-00 00:00:00', '2013-05-15 19:53:24', 'JohnsonM'),
(24, 'Johnson', 'Sylvia', 1, '0000-00-00 00:00:00', '2013-05-15 19:53:24', 'JohnsonS'),
(25, 'Joseph', 'Kervin', 1, '0000-00-00 00:00:00', '2013-05-15 19:53:24', 'JosephK'),
(26, 'July', 'Clarence', 1, '0000-00-00 00:00:00', '2013-05-15 19:53:24', 'JulyC'),
(27, 'Kinchen', 'Gladys', 1, '0000-00-00 00:00:00', '2013-05-15 19:53:24', 'KinchenG'),
(28, 'Nelson', 'Johnnie', 0, '0000-00-00 00:00:00', '2013-05-15 19:53:24', 'NelsonJ'),
(29, 'Panion', 'Deidra', 1, '0000-00-00 00:00:00', '2013-05-15 19:53:24', 'PanionD'),
(30, 'Poole', 'Myrtice', 0, '0000-00-00 00:00:00', '2013-05-15 19:53:24', 'PooleM'),
(31, 'Robinson', 'Cynthia', 1, '0000-00-00 00:00:00', '2013-05-15 19:53:24', 'RobinsonC'),
(32, 'Smith', 'Gladstone', 1, '0000-00-00 00:00:00', '2013-05-15 19:53:24', 'SmithG'),
(33, 'Spearman', 'Lylton', 0, '0000-00-00 00:00:00', '2013-05-15 19:53:24', 'SpearmanL'),
(34, 'Theard', 'Abner', 1, '0000-00-00 00:00:00', '2013-05-15 19:53:24', 'TheardA'),
(35, 'Thomas', 'Deborah', 1, '0000-00-00 00:00:00', '2013-05-15 19:53:24', 'ThomasD'),
(36, 'Thomas', 'Fertissue', 1, '0000-00-00 00:00:00', '2013-05-15 19:53:24', 'ThomasF'),
(37, 'Valree', 'Roosevelt', 1, '0000-00-00 00:00:00', '2013-05-15 19:53:24', 'ValreeR'),
(38, 'Walker', 'Hartley', 1, '0000-00-00 00:00:00', '2013-05-15 19:53:24', 'WalkerH'),
(39, 'Wallace-Jones', 'Pamela', 1, '0000-00-00 00:00:00', '2013-05-15 19:53:24', 'WallaceJonesP'),
(40, 'Washington', 'Angelo', 0, '0000-00-00 00:00:00', '2013-05-15 19:53:24', 'WashingtonA'),
(41, 'Wilkes', 'Irma', 1, '0000-00-00 00:00:00', '2013-05-15 19:53:24', 'WilkesI'),
(42, 'Williams', 'Theopolis', 1, '0000-00-00 00:00:00', '2013-05-15 19:53:24', 'WilliamsT'),
(43, '1', 'Guest driver', 1, '0000-00-00 00:00:00', '2013-05-15 19:53:24', 'ZZ1'),
(44, '2', 'Guest driver', 1, '0000-00-00 00:00:00', '2013-05-15 19:53:24', 'ZZ2'),
(45, '3', 'Guest driver', 1, '0000-00-00 00:00:00', '2013-05-15 19:53:24', 'ZZ3'),
(46, '4', 'Guest driver', 1, '0000-00-00 00:00:00', '2013-05-15 19:53:24', 'ZZ4'),
(47, '5', 'Guest driver', 1, '0000-00-00 00:00:00', '2013-05-15 19:53:24', 'ZZ5'),
(48, '6', 'Guest driver', 1, '0000-00-00 00:00:00', '2013-05-15 19:53:24', 'ZZ6'),
(49, '1', 'Test driver', 1, '0000-00-00 00:00:00', '2013-05-15 19:53:24', 'ZZZZZ1'),
(50, '2', 'Test driver', 1, '0000-00-00 00:00:00', '2013-05-15 19:53:24', 'ZZZZZ2'),
(51, '3', 'Test driver', 1, '0000-00-00 00:00:00', '2013-05-15 19:53:24', 'ZZZZZ3'),
(52, '4', 'Test driver', 1, '0000-00-00 00:00:00', '2013-05-15 19:53:24', 'ZZZZZ4'),
(53, '5', 'Test driver', 1, '0000-00-00 00:00:00', '2013-05-15 19:53:24', 'ZZZZZ5'),
(54, '6', 'Test driver', 1, '0000-00-00 00:00:00', '2013-05-15 19:53:24', 'ZZZZZ6'),
(55, 'Baker', 'Mary', 1, '2013-08-08 16:49:12', '2013-08-08 12:48:00', 'BakerM'),
(56, 'Slaughter', 'Steve', 1, '2013-08-08 17:00:33', '2013-08-08 13:00:00', 'SlaughterS'),
(57, 'Sims', 'Corey', 1, '2013-08-08 17:18:40', '2013-08-08 13:18:40', 'SimsC'),
(58, 'Stone', 'Nikisha', 1, '2013-08-08 17:20:28', '2013-08-08 13:20:28', 'StoneN'),
(59, 'Erby', 'Vanessa', 1, '2013-08-13 15:26:11', '2013-08-13 11:25:48', 'ErbyV'),
(60, 'Johnson', 'A', 1, '2013-08-19 10:39:38', '2013-08-19 00:00:00', 'JohnsonA'),
(61, 'Smith', 'R', 1, '2013-08-19 10:40:05', '2013-08-19 00:00:00', 'SmithR');

-- --------------------------------------------------------

--
-- Table structure for table `emails`
--

CREATE TABLE `emails` (
`ID` int(11) NOT NULL,
  `emailAddress` varchar(30) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `emails`
--

INSERT INTO `emails` (`ID`, `emailAddress`) VALUES
(1, 'jasper@gatech.edu'),
(2, 'bobmugura@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `errors`
--

CREATE TABLE `errors` (
`ID` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `bus_number` varchar(20) NOT NULL,
  `driver` varchar(30) NOT NULL,
  `problem` text NOT NULL,
  `symptom_id` int(11) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=75 ;

--
-- Dumping data for table `errors`
--

INSERT INTO `errors` (`ID`, `date`, `time`, `bus_number`, `driver`, `problem`, `symptom_id`) VALUES
(72, '2015-03-01', '00:00:00', '401', 'Allen, Michael', '', 5),
(73, '2015-03-01', '19:11:00', '401', 'Allen, Michael', '', 5),
(74, '2015-03-03', '10:32:00', '401', 'Allen, Michael', '', 5);

-- --------------------------------------------------------

--
-- Table structure for table `symptoms`
--

CREATE TABLE `symptoms` (
  `id` int(11) NOT NULL,
  `symptom` varchar(50) NOT NULL,
  `sort_value` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `symptoms`
--

INSERT INTO `symptoms` (`id`, `symptom`, `sort_value`) VALUES
(1, 'No power', 4),
(2, 'No GPS connection', 3),
(3, 'No cellular connection', 5),
(4, 'Unrecognized display', 2),
(5, 'Other', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buses`
--
ALTER TABLE `buses`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `drivers`
--
ALTER TABLE `drivers`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `emails`
--
ALTER TABLE `emails`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `errors`
--
ALTER TABLE `errors`
 ADD PRIMARY KEY (`ID`), ADD KEY `symptom_id` (`symptom_id`);

--
-- Indexes for table `symptoms`
--
ALTER TABLE `symptoms`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `buses`
--
ALTER TABLE `buses`
MODIFY `id` smallint(3) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=72;
--
-- AUTO_INCREMENT for table `drivers`
--
ALTER TABLE `drivers`
MODIFY `id` smallint(3) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=62;
--
-- AUTO_INCREMENT for table `emails`
--
ALTER TABLE `emails`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `errors`
--
ALTER TABLE `errors`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=75;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `errors`
--
ALTER TABLE `errors`
ADD CONSTRAINT `errors_ibfk_1` FOREIGN KEY (`symptom_id`) REFERENCES `symptoms` (`id`);

-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 22, 2014 at 11:48 AM
-- Server version: 5.5.24-log
-- PHP Version: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `xpression14`
--

-- --------------------------------------------------------

--
-- Table structure for table `event_master`
--

CREATE TABLE IF NOT EXISTS `event_master` (
  `event_id` int(100) NOT NULL AUTO_INCREMENT,
  `ename` varchar(40) NOT NULL,
  `day` int(1) NOT NULL,
  PRIMARY KEY (`event_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=50 ;

--
-- Dumping data for table `event_master`
--

INSERT INTO `event_master` (`event_id`, `ename`, `day`) VALUES
(1, 'Shubh Arambah', 1),
(2, 'Juloos', 1),
(3, 'Nach Market', 1),
(4, 'Kala baazi', 1),
(5, 'Dronacharya ki kaksha', 1),
(6, 'Waste-o-walk', 1),
(7, 'Mukadar ka sikandar', 1),
(8, 'Tedhi medhi policy', 1),
(9, 'App ki adalat', 1),
(10, 'What an Idea?', 1),
(11, 'Jugaad', 1),
(12, '108!!!', 1),
(13, 'Hawabaaz', 1),
(14, 'Piyoo Jee bhar ke', 1),
(15, 'Nukkad Natak', 1),
(16, 'Ek Tha rajaaaaaa', 1),
(17, 'Strawbunny', 1),
(18, 'Footloose', 1),
(19, 'Sketch a site', 1),
(20, 'Tech hire', 1),
(21, 'Base de Datos', 1),
(22, 'Lord of the byte', 1),
(24, 'Ramess-Suresss', 2),
(25, 'Mismatch', 2),
(26, 'Volcano', 2),
(27, 'Tom- N- Jerry', 2),
(28, 'De-haat-bazaar', 2),
(29, 'Aa-le-ja Rupaiyya', 2),
(30, 'Financial Premier league', 2),
(31, 'Janam samjha karo', 2),
(32, 'Finanace-E-azam', 2),
(33, 'Ek aur ek gyarah', 2),
(34, 'Stress buster', 2),
(35, 'Witz-N-wisdom', 2),
(36, 'Dal-bal', 2),
(37, 'Sunhara Awas', 2),
(38, 'Do as directed', 2),
(39, 'Run bhumi', 2),
(40, 'Aladen ki kalleen', 2),
(41, 'Zor aajmayish', 2),
(42, 'Makhan chor', 2),
(43, 'Step up', 2),
(44, 'Brain blaster', 2),
(45, 'Flash it', 2),
(46, 'Stereo thoughts', 2),
(47, 'Nemesis', 2),
(48, 'Tech babble', 2),
(49, 'Dig-it', 2);

-- --------------------------------------------------------

--
-- Table structure for table `score`
--

CREATE TABLE IF NOT EXISTS `score` (
  `sid` int(10) NOT NULL AUTO_INCREMENT,
  `tid` int(11) NOT NULL,
  `eventid` int(100) NOT NULL,
  `marks` int(6) NOT NULL,
  PRIMARY KEY (`sid`),
  KEY `tid` (`tid`),
  KEY `eventid` (`eventid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `score`
--

INSERT INTO `score` (`sid`, `tid`, `eventid`, `marks`) VALUES
(1, 1, 1, 45),
(2, 2, 1, 52),
(3, 3, 1, 55),
(4, 4, 1, 5555),
(5, 5, 1, 5),
(6, 6, 1, 55),
(7, 7, 1, 44),
(8, 8, 1, 12);

-- --------------------------------------------------------

--
-- Table structure for table `team_master`
--

CREATE TABLE IF NOT EXISTS `team_master` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `tname` varchar(40) NOT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `team_master`
--

INSERT INTO `team_master` (`tid`, `tname`) VALUES
(1, 'Bang-Bang'),
(2, 'Burn'),
(3, 'Bawa-Behatreen'),
(4, 'Lai-Bhaari'),
(5, 'Hutzpah'),
(6, 'Kyun Bataun'),
(7, '16 Ka Dola'),
(8, 'Dum Maro Dum'),
(9, 'Are Yaar'),
(10, 'Bol Bhum'),
(11, 'Hadd Hi Ho Gyi'),
(12, 'Dekh Bhai'),
(13, 'Dal-Pe-Re'),
(14, 'Shandaar-16');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `score`
--
ALTER TABLE `score`
  ADD CONSTRAINT `score_ibfk_2` FOREIGN KEY (`eventid`) REFERENCES `event_master` (`event_id`),
  ADD CONSTRAINT `score_ibfk_1` FOREIGN KEY (`tid`) REFERENCES `team_master` (`tid`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

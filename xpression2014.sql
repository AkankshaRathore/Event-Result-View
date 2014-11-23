-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 23, 2014 at 10:26 AM
-- Server version: 5.5.24-log
-- PHP Version: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `xpression2014`
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=673 ;

--
-- Dumping data for table `score`
--

INSERT INTO `score` (`sid`, `tid`, `eventid`, `marks`) VALUES
(1, 1, 1, 0),
(2, 2, 1, 0),
(3, 3, 1, 0),
(4, 4, 1, 0),
(5, 5, 1, 0),
(6, 6, 1, 0),
(7, 7, 1, 0),
(8, 8, 1, 0),
(9, 9, 1, 0),
(10, 10, 1, 0),
(11, 11, 1, 0),
(12, 12, 1, 0),
(13, 13, 1, 0),
(14, 14, 1, 0),
(15, 1, 2, 0),
(16, 2, 2, 0),
(17, 3, 2, 0),
(18, 4, 2, 0),
(19, 5, 2, 0),
(20, 6, 2, 0),
(21, 7, 2, 0),
(22, 8, 2, 0),
(23, 9, 2, 0),
(24, 10, 2, 0),
(25, 11, 2, 0),
(26, 12, 2, 0),
(27, 13, 2, 0),
(28, 14, 2, 0),
(29, 1, 3, 0),
(30, 2, 3, 0),
(31, 3, 3, 0),
(32, 4, 3, 0),
(33, 5, 3, 0),
(34, 6, 3, 0),
(35, 7, 3, 0),
(36, 8, 3, 0),
(37, 9, 3, 0),
(38, 10, 3, 0),
(39, 11, 3, 0),
(40, 12, 3, 0),
(41, 13, 3, 0),
(42, 14, 3, 0),
(43, 1, 4, 0),
(44, 2, 4, 0),
(45, 3, 4, 0),
(46, 4, 4, 0),
(47, 5, 4, 0),
(48, 6, 4, 0),
(49, 7, 4, 0),
(50, 8, 4, 0),
(51, 9, 4, 0),
(52, 10, 4, 0),
(53, 11, 4, 0),
(54, 12, 4, 0),
(55, 13, 4, 0),
(56, 14, 4, 0),
(57, 1, 5, 0),
(58, 2, 5, 0),
(59, 3, 5, 0),
(60, 4, 5, 0),
(61, 5, 5, 0),
(62, 6, 5, 0),
(63, 7, 5, 0),
(64, 8, 5, 0),
(65, 9, 5, 0),
(66, 10, 5, 0),
(67, 11, 5, 0),
(68, 12, 5, 0),
(69, 13, 5, 0),
(70, 14, 5, 0),
(71, 1, 6, 0),
(72, 2, 6, 0),
(73, 3, 6, 0),
(74, 4, 6, 0),
(75, 5, 6, 0),
(76, 6, 6, 0),
(77, 7, 6, 0),
(78, 8, 6, 0),
(79, 9, 6, 0),
(80, 10, 6, 0),
(81, 11, 6, 0),
(82, 12, 6, 0),
(83, 13, 6, 0),
(84, 14, 6, 0),
(85, 1, 7, 0),
(86, 2, 7, 0),
(87, 3, 7, 0),
(88, 4, 7, 0),
(89, 5, 7, 0),
(90, 6, 7, 0),
(91, 7, 7, 0),
(92, 8, 7, 0),
(93, 9, 7, 0),
(94, 10, 7, 0),
(95, 11, 7, 0),
(96, 12, 7, 0),
(97, 13, 7, 0),
(98, 14, 7, 0),
(99, 1, 8, 0),
(100, 2, 8, 0),
(101, 3, 8, 0),
(102, 4, 8, 0),
(103, 5, 8, 0),
(104, 6, 8, 0),
(105, 7, 8, 0),
(106, 8, 8, 0),
(107, 9, 8, 0),
(108, 10, 8, 0),
(109, 11, 8, 0),
(110, 12, 8, 0),
(111, 13, 8, 0),
(112, 14, 8, 0),
(113, 1, 9, 0),
(114, 2, 9, 0),
(115, 3, 9, 0),
(116, 4, 9, 0),
(117, 5, 9, 0),
(118, 6, 9, 0),
(119, 7, 9, 0),
(120, 8, 9, 0),
(121, 9, 9, 0),
(122, 10, 9, 0),
(123, 11, 9, 0),
(124, 12, 9, 0),
(125, 13, 9, 0),
(126, 14, 9, 0),
(127, 1, 10, 0),
(128, 2, 10, 0),
(129, 3, 10, 0),
(130, 4, 10, 0),
(131, 5, 10, 0),
(132, 6, 10, 0),
(133, 7, 10, 0),
(134, 8, 10, 0),
(135, 9, 10, 0),
(136, 10, 10, 0),
(137, 11, 10, 0),
(138, 12, 10, 0),
(139, 13, 10, 0),
(140, 14, 10, 0),
(141, 1, 11, 0),
(142, 2, 11, 0),
(143, 3, 11, 0),
(144, 4, 11, 0),
(145, 5, 11, 0),
(146, 6, 11, 0),
(147, 7, 11, 0),
(148, 8, 11, 0),
(149, 9, 11, 0),
(150, 10, 11, 0),
(151, 11, 11, 0),
(152, 12, 11, 0),
(153, 13, 11, 0),
(154, 14, 11, 0),
(155, 1, 12, 0),
(156, 2, 12, 0),
(157, 3, 12, 0),
(158, 4, 12, 0),
(159, 5, 12, 0),
(160, 6, 12, 0),
(161, 7, 12, 0),
(162, 8, 12, 0),
(163, 9, 12, 0),
(164, 10, 12, 0),
(165, 11, 12, 0),
(166, 12, 12, 0),
(167, 13, 12, 0),
(168, 14, 12, 0),
(169, 1, 13, 0),
(170, 2, 13, 0),
(171, 3, 13, 0),
(172, 4, 13, 0),
(173, 5, 13, 0),
(174, 6, 13, 0),
(175, 7, 13, 0),
(176, 8, 13, 0),
(177, 9, 13, 0),
(178, 10, 13, 0),
(179, 11, 13, 0),
(180, 12, 13, 0),
(181, 13, 13, 0),
(182, 14, 13, 0),
(183, 1, 14, 0),
(184, 2, 14, 0),
(185, 3, 14, 0),
(186, 4, 14, 0),
(187, 5, 14, 0),
(188, 6, 14, 0),
(189, 7, 14, 0),
(190, 8, 14, 0),
(191, 9, 14, 0),
(192, 10, 14, 0),
(193, 11, 14, 0),
(194, 12, 14, 0),
(195, 13, 14, 0),
(196, 14, 14, 0),
(197, 1, 15, 0),
(198, 2, 15, 0),
(199, 3, 15, 0),
(200, 4, 15, 0),
(201, 5, 15, 0),
(202, 6, 15, 0),
(203, 7, 15, 0),
(204, 8, 15, 0),
(205, 9, 15, 0),
(206, 10, 15, 0),
(207, 11, 15, 0),
(208, 12, 15, 0),
(209, 13, 15, 0),
(210, 14, 15, 0),
(211, 1, 16, 0),
(212, 2, 16, 0),
(213, 3, 16, 0),
(214, 4, 16, 0),
(215, 5, 16, 0),
(216, 6, 16, 0),
(217, 7, 16, 0),
(218, 8, 16, 0),
(219, 9, 16, 0),
(220, 10, 16, 0),
(221, 11, 16, 0),
(222, 12, 16, 0),
(223, 13, 16, 0),
(224, 14, 16, 0),
(225, 1, 17, 0),
(226, 2, 17, 0),
(227, 3, 17, 0),
(228, 4, 17, 0),
(229, 5, 17, 0),
(230, 6, 17, 0),
(231, 7, 17, 0),
(232, 8, 17, 0),
(233, 9, 17, 0),
(234, 10, 17, 0),
(235, 11, 17, 0),
(236, 12, 17, 0),
(237, 13, 17, 0),
(238, 14, 17, 0),
(239, 1, 18, 0),
(240, 2, 18, 0),
(241, 3, 18, 0),
(242, 4, 18, 0),
(243, 5, 18, 0),
(244, 6, 18, 0),
(245, 7, 18, 0),
(246, 8, 18, 0),
(247, 9, 18, 0),
(248, 10, 18, 0),
(249, 11, 18, 0),
(250, 12, 18, 0),
(251, 13, 18, 0),
(252, 14, 18, 0),
(253, 1, 19, 0),
(254, 2, 19, 0),
(255, 3, 19, 0),
(256, 4, 19, 0),
(257, 5, 19, 0),
(258, 6, 19, 0),
(259, 7, 19, 0),
(260, 8, 19, 0),
(261, 9, 19, 0),
(262, 10, 19, 0),
(263, 11, 19, 0),
(264, 12, 19, 0),
(265, 13, 19, 0),
(266, 14, 19, 0),
(267, 1, 20, 0),
(268, 2, 20, 0),
(269, 3, 20, 0),
(270, 4, 20, 0),
(271, 5, 20, 0),
(272, 6, 20, 0),
(273, 7, 20, 0),
(274, 8, 20, 0),
(275, 9, 20, 0),
(276, 10, 20, 0),
(277, 11, 20, 0),
(278, 12, 20, 0),
(279, 13, 20, 0),
(280, 14, 20, 0),
(281, 1, 21, 0),
(282, 2, 21, 0),
(283, 3, 21, 0),
(284, 4, 21, 0),
(285, 5, 21, 0),
(286, 6, 21, 0),
(287, 7, 21, 0),
(288, 8, 21, 0),
(289, 9, 21, 0),
(290, 10, 21, 0),
(291, 11, 21, 0),
(292, 12, 21, 0),
(293, 13, 21, 0),
(294, 14, 21, 0),
(295, 1, 22, 0),
(296, 2, 22, 0),
(297, 3, 22, 0),
(298, 4, 22, 0),
(299, 5, 22, 0),
(300, 6, 22, 0),
(301, 7, 22, 0),
(302, 8, 22, 0),
(303, 9, 22, 0),
(304, 10, 22, 0),
(305, 11, 22, 0),
(306, 12, 22, 0),
(307, 13, 22, 0),
(308, 14, 22, 0),
(309, 1, 24, 0),
(310, 2, 24, 0),
(311, 3, 24, 0),
(312, 4, 24, 0),
(313, 5, 24, 0),
(314, 6, 24, 0),
(315, 7, 24, 0),
(316, 8, 24, 0),
(317, 9, 24, 0),
(318, 10, 24, 0),
(319, 11, 24, 0),
(320, 12, 24, 0),
(321, 13, 24, 0),
(322, 14, 24, 0),
(323, 1, 25, 0),
(324, 2, 25, 0),
(325, 3, 25, 0),
(326, 4, 25, 0),
(327, 5, 25, 0),
(328, 6, 25, 0),
(329, 7, 25, 0),
(330, 8, 25, 0),
(331, 9, 25, 0),
(332, 10, 25, 0),
(333, 11, 25, 0),
(334, 12, 25, 0),
(335, 13, 25, 0),
(336, 14, 25, 0),
(337, 1, 26, 0),
(338, 2, 26, 0),
(339, 3, 26, 0),
(340, 4, 26, 0),
(341, 5, 26, 0),
(342, 6, 26, 0),
(343, 7, 26, 0),
(344, 8, 26, 0),
(345, 9, 26, 0),
(346, 10, 26, 0),
(347, 11, 26, 0),
(348, 12, 26, 0),
(349, 13, 26, 0),
(350, 14, 26, 0),
(351, 1, 27, 0),
(352, 2, 27, 0),
(353, 3, 27, 0),
(354, 4, 27, 0),
(355, 5, 27, 0),
(356, 6, 27, 0),
(357, 7, 27, 0),
(358, 8, 27, 0),
(359, 9, 27, 0),
(360, 10, 27, 0),
(361, 11, 27, 0),
(362, 12, 27, 0),
(363, 13, 27, 0),
(364, 14, 27, 0),
(365, 1, 28, 0),
(366, 2, 28, 0),
(367, 3, 28, 0),
(368, 4, 28, 0),
(369, 5, 28, 0),
(370, 6, 28, 0),
(371, 7, 28, 0),
(372, 8, 28, 0),
(373, 9, 28, 0),
(374, 10, 28, 0),
(375, 11, 28, 0),
(376, 12, 28, 0),
(377, 13, 28, 0),
(378, 14, 28, 0),
(379, 1, 29, 0),
(380, 2, 29, 0),
(381, 3, 29, 0),
(382, 4, 29, 0),
(383, 5, 29, 0),
(384, 6, 29, 0),
(385, 7, 29, 0),
(386, 8, 29, 0),
(387, 9, 29, 0),
(388, 10, 29, 0),
(389, 11, 29, 0),
(390, 12, 29, 0),
(391, 13, 29, 0),
(392, 14, 29, 0),
(393, 1, 30, 0),
(394, 2, 30, 0),
(395, 3, 30, 0),
(396, 4, 30, 0),
(397, 5, 30, 0),
(398, 6, 30, 0),
(399, 7, 30, 0),
(400, 8, 30, 0),
(401, 9, 30, 0),
(402, 10, 30, 0),
(403, 11, 30, 0),
(404, 12, 30, 0),
(405, 13, 30, 0),
(406, 14, 30, 0),
(407, 1, 31, 0),
(408, 2, 31, 0),
(409, 3, 31, 0),
(410, 4, 31, 0),
(411, 5, 31, 0),
(412, 6, 31, 0),
(413, 7, 31, 0),
(414, 8, 31, 0),
(415, 9, 31, 0),
(416, 10, 31, 0),
(417, 11, 31, 0),
(418, 12, 31, 0),
(419, 13, 31, 0),
(420, 14, 31, 0),
(421, 1, 32, 0),
(422, 2, 32, 0),
(423, 3, 32, 0),
(424, 4, 32, 0),
(425, 5, 32, 0),
(426, 6, 32, 0),
(427, 7, 32, 0),
(428, 8, 32, 0),
(429, 9, 32, 0),
(430, 10, 32, 0),
(431, 11, 32, 0),
(432, 12, 32, 0),
(433, 13, 32, 0),
(434, 14, 32, 0),
(435, 1, 33, 0),
(436, 2, 33, 0),
(437, 3, 33, 0),
(438, 4, 33, 0),
(439, 5, 33, 0),
(440, 6, 33, 0),
(441, 7, 33, 0),
(442, 8, 33, 0),
(443, 9, 33, 0),
(444, 10, 33, 0),
(445, 11, 33, 0),
(446, 12, 33, 0),
(447, 13, 33, 0),
(448, 14, 33, 0),
(449, 1, 34, 0),
(450, 2, 34, 0),
(451, 3, 34, 0),
(452, 4, 34, 0),
(453, 5, 34, 0),
(454, 6, 34, 0),
(455, 7, 34, 0),
(456, 8, 34, 0),
(457, 9, 34, 0),
(458, 10, 34, 0),
(459, 11, 34, 0),
(460, 12, 34, 0),
(461, 13, 34, 0),
(462, 14, 34, 0),
(463, 1, 35, 0),
(464, 2, 35, 0),
(465, 3, 35, 0),
(466, 4, 35, 0),
(467, 5, 35, 0),
(468, 6, 35, 0),
(469, 7, 35, 0),
(470, 8, 35, 0),
(471, 9, 35, 0),
(472, 10, 35, 0),
(473, 11, 35, 0),
(474, 12, 35, 0),
(475, 13, 35, 0),
(476, 14, 35, 0),
(477, 1, 36, 0),
(478, 2, 36, 0),
(479, 3, 36, 0),
(480, 4, 36, 0),
(481, 5, 36, 0),
(482, 6, 36, 0),
(483, 7, 36, 0),
(484, 8, 36, 0),
(485, 9, 36, 0),
(486, 10, 36, 0),
(487, 11, 36, 0),
(488, 12, 36, 0),
(489, 13, 36, 0),
(490, 14, 36, 0),
(491, 1, 37, 0),
(492, 2, 37, 0),
(493, 3, 37, 0),
(494, 4, 37, 0),
(495, 5, 37, 0),
(496, 6, 37, 0),
(497, 7, 37, 0),
(498, 8, 37, 0),
(499, 9, 37, 0),
(500, 10, 37, 0),
(501, 11, 37, 0),
(502, 12, 37, 0),
(503, 13, 37, 0),
(504, 14, 37, 0),
(505, 1, 38, 0),
(506, 2, 38, 0),
(507, 3, 38, 0),
(508, 4, 38, 0),
(509, 5, 38, 0),
(510, 6, 38, 0),
(511, 7, 38, 0),
(512, 8, 38, 0),
(513, 9, 38, 0),
(514, 10, 38, 0),
(515, 11, 38, 0),
(516, 12, 38, 0),
(517, 13, 38, 0),
(518, 14, 38, 0),
(519, 1, 39, 0),
(520, 2, 39, 0),
(521, 3, 39, 0),
(522, 4, 39, 0),
(523, 5, 39, 0),
(524, 6, 39, 0),
(525, 7, 39, 0),
(526, 8, 39, 0),
(527, 9, 39, 0),
(528, 10, 39, 0),
(529, 11, 39, 0),
(530, 12, 39, 0),
(531, 13, 39, 0),
(532, 14, 39, 0),
(533, 1, 40, 0),
(534, 2, 40, 0),
(535, 3, 40, 0),
(536, 4, 40, 0),
(537, 5, 40, 0),
(538, 6, 40, 0),
(539, 7, 40, 0),
(540, 8, 40, 0),
(541, 9, 40, 0),
(542, 10, 40, 0),
(543, 11, 40, 0),
(544, 12, 40, 0),
(545, 13, 40, 0),
(546, 14, 40, 0),
(547, 1, 41, 0),
(548, 2, 41, 0),
(549, 3, 41, 0),
(550, 4, 41, 0),
(551, 5, 41, 0),
(552, 6, 41, 0),
(553, 7, 41, 0),
(554, 8, 41, 0),
(555, 9, 41, 0),
(556, 10, 41, 0),
(557, 11, 41, 0),
(558, 12, 41, 0),
(559, 13, 41, 0),
(560, 14, 41, 0),
(561, 1, 42, 0),
(562, 2, 42, 0),
(563, 3, 42, 0),
(564, 4, 42, 0),
(565, 5, 42, 0),
(566, 6, 42, 0),
(567, 7, 42, 0),
(568, 8, 42, 0),
(569, 9, 42, 0),
(570, 10, 42, 0),
(571, 11, 42, 0),
(572, 12, 42, 0),
(573, 13, 42, 0),
(574, 14, 42, 0),
(575, 1, 43, 0),
(576, 2, 43, 0),
(577, 3, 43, 0),
(578, 4, 43, 0),
(579, 5, 43, 0),
(580, 6, 43, 0),
(581, 7, 43, 0),
(582, 8, 43, 0),
(583, 9, 43, 0),
(584, 10, 43, 0),
(585, 11, 43, 0),
(586, 12, 43, 0),
(587, 13, 43, 0),
(588, 14, 43, 0),
(589, 1, 44, 0),
(590, 2, 44, 0),
(591, 3, 44, 0),
(592, 4, 44, 0),
(593, 5, 44, 0),
(594, 6, 44, 0),
(595, 7, 44, 0),
(596, 8, 44, 0),
(597, 9, 44, 0),
(598, 10, 44, 0),
(599, 11, 44, 0),
(600, 12, 44, 0),
(601, 13, 44, 0),
(602, 14, 44, 0),
(603, 1, 45, 0),
(604, 2, 45, 0),
(605, 3, 45, 0),
(606, 4, 45, 0),
(607, 5, 45, 0),
(608, 6, 45, 0),
(609, 7, 45, 0),
(610, 8, 45, 0),
(611, 9, 45, 0),
(612, 10, 45, 0),
(613, 11, 45, 0),
(614, 12, 45, 0),
(615, 13, 45, 0),
(616, 14, 45, 0),
(617, 1, 46, 0),
(618, 2, 46, 0),
(619, 3, 46, 0),
(620, 4, 46, 0),
(621, 5, 46, 0),
(622, 6, 46, 0),
(623, 7, 46, 0),
(624, 8, 46, 0),
(625, 9, 46, 0),
(626, 10, 46, 0),
(627, 11, 46, 0),
(628, 12, 46, 0),
(629, 13, 46, 0),
(630, 14, 46, 0),
(631, 1, 47, 0),
(632, 2, 47, 0),
(633, 3, 47, 0),
(634, 4, 47, 0),
(635, 5, 47, 0),
(636, 6, 47, 0),
(637, 7, 47, 0),
(638, 8, 47, 0),
(639, 9, 47, 0),
(640, 10, 47, 0),
(641, 11, 47, 0),
(642, 12, 47, 0),
(643, 13, 47, 0),
(644, 14, 47, 0),
(645, 1, 48, 0),
(646, 2, 48, 0),
(647, 3, 48, 0),
(648, 4, 48, 0),
(649, 5, 48, 0),
(650, 6, 48, 0),
(651, 7, 48, 0),
(652, 8, 48, 0),
(653, 9, 48, 0),
(654, 10, 48, 0),
(655, 11, 48, 0),
(656, 12, 48, 0),
(657, 13, 48, 0),
(658, 14, 48, 0),
(659, 1, 49, 0),
(660, 2, 49, 0),
(661, 3, 49, 0),
(662, 4, 49, 0),
(663, 5, 49, 0),
(664, 6, 49, 0),
(665, 7, 49, 0),
(666, 8, 49, 0),
(667, 9, 49, 0),
(668, 10, 49, 0),
(669, 11, 49, 0),
(670, 12, 49, 0),
(671, 13, 49, 0),
(672, 14, 49, 0);

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
(1, 'Bang Bang'),
(2, 'Burn'),
(3, 'Bawa Behatreen'),
(4, 'Lai Bhaari'),
(5, 'Hutzpah'),
(6, 'Kyun Bataun'),
(7, '16 Ka Dola'),
(8, 'Dum Maro Dum'),
(9, 'Are Yaar'),
(10, 'Bol Bhum'),
(11, 'Hadd Hi Ho Gyi'),
(12, 'Dekh Bhai'),
(13, 'Dal Pe Re'),
(14, 'Shandaar 16');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `u_name` varchar(20) NOT NULL,
  `pwd` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`u_name`, `pwd`) VALUES
('ScoreMaster', 'abcd');

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

-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 01, 2018 at 09:59 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cirp`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `id` int(11) NOT NULL,
  `answer` varchar(100) NOT NULL,
  `q_ID` int(11) NOT NULL,
  `user_email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`id`, `answer`, `q_ID`, `user_email`) VALUES
(15, 'answer 1', 17, 'sachini@gmail.com'),
(16, '+++++++++++++++++++++++', 12, 'sachini@gmail.com'),
(17, 'mfmeqo', 12, 'sachini@gmail.com'),
(18, 'dbqdgqdulbc', 6, 'sachini@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE `chat` (
  `chat_id` int(11) NOT NULL,
  `chat_person_name` varchar(100) NOT NULL,
  `chat_value` varchar(100) NOT NULL,
  `chat_time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chat`
--

INSERT INTO `chat` (`chat_id`, `chat_person_name`, `chat_value`, `chat_time`) VALUES
(1, 'sachini', 'hi my name is sachini\n', '21:09:32'),
(2, 'worandi', 'hi i m worandi', '21:11:00'),
(3, 'vayoma', 'mvsm', '21:12:43'),
(4, 'dhammika', 'hi i am dhammika\n', '21:38:07'),
(5, 'sachini', 'jjdjjd', '21:52:33'),
(6, 'sachini', 'fjssal;', '14:31:56'),
(7, 'sachini', 'jfzlf', '17:56:54'),
(8, 'sachini', 'jfzlf', '17:56:55'),
(9, 'sachini', 'jfzlf', '17:56:56'),
(16, 'sachini', 'biu', '01:41:55'),
(17, 'sachini', 'biu', '01:41:57');

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `country_id` int(11) NOT NULL,
  `country_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`country_id`, `country_name`) VALUES
(4, 'year 1'),
(5, 'year 2'),
(6, 'year 3'),
(7, 'year 4');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `id` int(11) NOT NULL,
  `category` varchar(100) NOT NULL,
  `course_ID` varchar(100) NOT NULL,
  `total_rate` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `category`, `course_ID`, `total_rate`) VALUES
(25, '', 'course 1', 0),
(26, '', 'course 2', 0),
(27, '', 'course 3', 0),
(28, '', 'course 4', 0),
(30, '', 'course 5', 120);

-- --------------------------------------------------------

--
-- Table structure for table `course_feedback`
--

CREATE TABLE `course_feedback` (
  `id` int(100) NOT NULL,
  `course_ID` varchar(100) NOT NULL,
  `value` int(11) NOT NULL,
  `feedback_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course_feedback`
--

INSERT INTO `course_feedback` (`id`, `course_ID`, `value`, `feedback_ID`) VALUES
(33, 'SS111111', 10, 1),
(34, 'SS111111', 10, 2),
(35, 'SS111111', 10, 3),
(36, 'SS222222', 10, 1),
(37, 'SS222222', 10, 2),
(38, 'SS222222', 10, 3),
(39, 'SS222222', 10, 4),
(40, 'SS222222', 10, 5),
(41, 'SS222222', 10, 6),
(42, 'SS333333', 10, 1),
(43, 'SS777777', 10, 1),
(44, 'SS777777', 10, 2),
(45, 'SS777777', 10, 3),
(46, 'SS777777', 10, 5),
(47, 'SS222222', 10, 1),
(48, 'SS222222', 10, 2),
(49, 'SS222222', 10, 3),
(50, 'SS222222', 10, 6),
(51, 'SS222222', 10, 5),
(52, 'SS222222', 10, 4),
(53, 'SS222222', 10, 7),
(54, 'SS246810', 10, 1),
(55, 'SS246810', 10, 2);

-- --------------------------------------------------------

--
-- Table structure for table `feedback_question_cos`
--

CREATE TABLE `feedback_question_cos` (
  `id` int(11) NOT NULL,
  `question` varchar(10000) NOT NULL,
  `radio1` int(11) NOT NULL,
  `radio2` int(11) NOT NULL,
  `radio3` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback_question_cos`
--

INSERT INTO `feedback_question_cos` (`id`, `question`, `radio1`, `radio2`, `radio3`) VALUES
(1, 'question 1', 0, 0, 0),
(2, 'q 2', 0, 0, 0),
(3, 'q --------------1', 0, 0, 0),
(4, 'q --------------------2', 0, 0, 0),
(5, 'q ---------------3', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `feedback_question_lec`
--

CREATE TABLE `feedback_question_lec` (
  `id` int(11) NOT NULL,
  `question` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback_question_lec`
--

INSERT INTO `feedback_question_lec` (`id`, `question`) VALUES
(3, 'my fedback 2'),
(4, 'question 2'),
(5, 'q 3'),
(6, 'q 4\r\n'),
(7, 'q 3'),
(8, 'q 4');

-- --------------------------------------------------------

--
-- Table structure for table `lecturer`
--

CREATE TABLE `lecturer` (
  `id` int(100) NOT NULL,
  `lecturer_ID` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `total_rate` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lecturer`
--

INSERT INTO `lecturer` (`id`, `lecturer_ID`, `name`, `password`, `subject`, `email`, `address`, `total_rate`) VALUES
(1, 'SS111111', 'a', 'a', 'a', 'a@gmail.com', 'a', 30),
(2, 'SS222222', 'b', 'b', 'b', 'b@gmail.com', 'b', 130),
(3, 'SS333333', 'c', 'c', 'c', 'c@gmail.com', 'c', 10),
(4, 'SS777777', 'e', 'e', 'e', 'errre@gmail.com', 'e', 40),
(5, 'SS246810', 'f', 'f', 'f', 'f@gmail.com', 'f', 20);

-- --------------------------------------------------------

--
-- Table structure for table `lecturer_feedback`
--

CREATE TABLE `lecturer_feedback` (
  `id` varchar(100) NOT NULL,
  `rate` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lecturer_feedback`
--

INSERT INTO `lecturer_feedback` (`id`, `rate`) VALUES
('Lecturer 1', 280),
('Lecturer 2', 90),
('Lecturer 3', 0),
('Lecturer 4', 90),
('Lecturer 5', 0);

-- --------------------------------------------------------

--
-- Table structure for table `like_percentage`
--

CREATE TABLE `like_percentage` (
  `id` int(11) NOT NULL,
  `q_ID` int(11) NOT NULL,
  `percentage` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `like_percentage`
--

INSERT INTO `like_percentage` (`id`, `q_ID`, `percentage`) VALUES
(1, 6, 16.6667),
(2, 11, 16.6667),
(3, 13, 25),
(4, 14, 16.6667),
(5, 15, 16.6667),
(6, 16, 8.33333),
(7, 6, 16.6667),
(8, 11, 16.6667),
(9, 13, 25),
(10, 14, 16.6667),
(11, 15, 16.6667),
(12, 16, 8.33333),
(13, 6, 16.6667),
(14, 11, 16.6667),
(15, 13, 25),
(16, 14, 16.6667),
(17, 15, 16.6667),
(18, 16, 8.33333),
(19, 6, 16.6667),
(20, 11, 16.6667),
(21, 13, 25),
(22, 14, 16.6667),
(23, 15, 16.6667),
(24, 16, 8.33333),
(25, 6, 16.6667),
(26, 11, 16.6667),
(27, 13, 25),
(28, 14, 16.6667),
(29, 15, 16.6667),
(30, 16, 8.33333),
(31, 6, 16.6667),
(32, 11, 16.6667),
(33, 13, 25),
(34, 14, 16.6667),
(35, 15, 16.6667),
(36, 16, 8.33333),
(37, 6, 16.6667),
(38, 11, 16.6667),
(39, 13, 25),
(40, 14, 16.6667),
(41, 15, 16.6667),
(42, 16, 8.33333),
(43, 6, 16.6667),
(44, 11, 16.6667),
(45, 13, 25),
(46, 14, 16.6667),
(47, 15, 16.6667),
(48, 16, 8.33333),
(49, 6, 16.6667),
(50, 11, 16.6667),
(51, 13, 25),
(52, 14, 16.6667),
(53, 15, 16.6667),
(54, 16, 8.33333),
(55, 6, 16.6667),
(56, 11, 16.6667),
(57, 13, 25),
(58, 14, 16.6667),
(59, 15, 16.6667),
(60, 16, 8.33333),
(61, 6, 16.6667),
(62, 11, 16.6667),
(63, 13, 25),
(64, 14, 16.6667),
(65, 15, 16.6667),
(66, 16, 8.33333),
(67, 6, 16.6667),
(68, 11, 16.6667),
(69, 13, 25),
(70, 14, 16.6667),
(71, 15, 16.6667),
(72, 16, 8.33333),
(73, 6, 16.6667),
(74, 11, 16.6667),
(75, 13, 25),
(76, 14, 16.6667),
(77, 15, 16.6667),
(78, 16, 8.33333),
(79, 6, 16.6667),
(80, 11, 16.6667),
(81, 13, 25),
(82, 14, 16.6667),
(83, 15, 16.6667),
(84, 16, 8.33333),
(85, 6, 16.6667),
(86, 11, 16.6667),
(87, 13, 25),
(88, 14, 16.6667),
(89, 15, 16.6667),
(90, 16, 8.33333),
(91, 6, 16.6667),
(92, 11, 16.6667),
(93, 13, 25),
(94, 14, 16.6667),
(95, 15, 16.6667),
(96, 16, 8.33333),
(97, 6, 16.6667),
(98, 11, 16.6667),
(99, 13, 25),
(100, 14, 16.6667),
(101, 15, 16.6667),
(102, 16, 8.33333),
(103, 6, 16.6667),
(104, 11, 16.6667),
(105, 13, 25),
(106, 14, 16.6667),
(107, 15, 16.6667),
(108, 16, 8.33333),
(109, 6, 16.6667),
(110, 11, 16.6667),
(111, 13, 25),
(112, 14, 16.6667),
(113, 15, 16.6667),
(114, 16, 8.33333),
(115, 6, 16.6667),
(116, 11, 16.6667),
(117, 13, 25),
(118, 14, 16.6667),
(119, 15, 16.6667),
(120, 16, 8.33333),
(121, 6, 16.6667),
(122, 11, 16.6667),
(123, 13, 25),
(124, 14, 16.6667),
(125, 15, 16.6667),
(126, 16, 8.33333),
(127, 6, 16.6667),
(128, 11, 16.6667),
(129, 13, 25),
(130, 14, 16.6667),
(131, 15, 16.6667),
(132, 16, 8.33333),
(133, 6, 16.6667),
(134, 11, 16.6667),
(135, 13, 25),
(136, 14, 16.6667),
(137, 15, 16.6667),
(138, 16, 8.33333),
(139, 6, 16.6667),
(140, 11, 16.6667),
(141, 13, 25),
(142, 14, 16.6667),
(143, 15, 16.6667),
(144, 16, 8.33333),
(145, 6, 16.6667),
(146, 11, 16.6667),
(147, 13, 25),
(148, 14, 16.6667),
(149, 15, 16.6667),
(150, 16, 8.33333),
(151, 6, 16.6667),
(152, 11, 16.6667),
(153, 13, 25),
(154, 14, 16.6667),
(155, 15, 16.6667),
(156, 16, 8.33333),
(157, 6, 16.6667),
(158, 11, 16.6667),
(159, 13, 25),
(160, 14, 16.6667),
(161, 15, 16.6667),
(162, 16, 8.33333),
(163, 6, 21.4286),
(164, 11, 21.4286),
(165, 13, 21.4286),
(166, 14, 14.2857),
(167, 15, 14.2857),
(168, 16, 7.14286),
(169, 17, 0),
(170, 6, 21.4286),
(171, 11, 21.4286),
(172, 13, 21.4286),
(173, 14, 14.2857),
(174, 15, 14.2857),
(175, 16, 7.14286),
(176, 17, 0),
(177, 6, 21.4286),
(178, 11, 21.4286),
(179, 13, 21.4286),
(180, 14, 14.2857),
(181, 15, 14.2857),
(182, 16, 7.14286),
(183, 17, 0),
(184, 6, 25),
(185, 11, 18.75),
(186, 13, 18.75),
(187, 14, 12.5),
(188, 15, 12.5),
(189, 16, 12.5),
(190, 17, 0),
(191, 6, 25),
(192, 11, 18.75),
(193, 13, 18.75),
(194, 14, 12.5),
(195, 15, 12.5),
(196, 16, 12.5),
(197, 17, 0),
(198, 6, 29.4118),
(199, 11, 17.6471),
(200, 13, 17.6471),
(201, 14, 11.7647),
(202, 15, 11.7647),
(203, 16, 11.7647),
(204, 17, 0),
(205, 18, 0),
(206, 6, 29.4118),
(207, 11, 17.6471),
(208, 13, 17.6471),
(209, 14, 11.7647),
(210, 15, 11.7647),
(211, 16, 11.7647),
(212, 17, 0),
(213, 18, 0),
(214, 6, 29.4118),
(215, 11, 17.6471),
(216, 13, 17.6471),
(217, 14, 11.7647),
(218, 15, 11.7647),
(219, 16, 11.7647),
(220, 17, 0),
(221, 18, 0),
(222, 6, 27.7778),
(223, 11, 16.6667),
(224, 13, 16.6667),
(225, 14, 11.1111),
(226, 15, 11.1111),
(227, 16, 11.1111),
(228, 17, 0),
(229, 18, 5.55556),
(230, 6, 31.5789),
(231, 11, 15.7895),
(232, 13, 15.7895),
(233, 14, 10.5263),
(234, 15, 10.5263),
(235, 16, 10.5263),
(236, 17, 0),
(237, 18, 5.26316),
(238, 6, 31.5789),
(239, 11, 15.7895),
(240, 13, 15.7895),
(241, 14, 10.5263),
(242, 15, 10.5263),
(243, 16, 10.5263),
(244, 17, 0),
(245, 18, 5.26316),
(246, 6, 31.5789),
(247, 11, 15.7895),
(248, 13, 15.7895),
(249, 14, 10.5263),
(250, 15, 10.5263),
(251, 16, 10.5263),
(252, 17, 0),
(253, 18, 5.26316),
(254, 6, 31.5789),
(255, 11, 15.7895),
(256, 13, 15.7895),
(257, 14, 10.5263),
(258, 15, 10.5263),
(259, 16, 10.5263),
(260, 17, 0),
(261, 18, 5.26316),
(262, 6, 31.5789),
(263, 11, 15.7895),
(264, 13, 15.7895),
(265, 14, 10.5263),
(266, 15, 10.5263),
(267, 16, 10.5263),
(268, 17, 0),
(269, 18, 5.26316),
(270, 6, 31.5789),
(271, 11, 15.7895),
(272, 13, 15.7895),
(273, 14, 10.5263),
(274, 15, 10.5263),
(275, 16, 10.5263),
(276, 17, 0),
(277, 18, 5.26316),
(278, 6, 31.5789),
(279, 11, 15.7895),
(280, 13, 15.7895),
(281, 14, 10.5263),
(282, 15, 10.5263),
(283, 16, 10.5263),
(284, 17, 0),
(285, 18, 5.26316);

-- --------------------------------------------------------

--
-- Table structure for table `marksenroll`
--

CREATE TABLE `marksenroll` (
  `subject` varchar(100) NOT NULL,
  `enkey` varchar(100) NOT NULL,
  `pw` varchar(100) NOT NULL,
  `ccategoryid` int(100) NOT NULL,
  `cfee` int(100) NOT NULL,
  `total_rate` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marksenroll`
--

INSERT INTO `marksenroll` (`subject`, `enkey`, `pw`, `ccategoryid`, `cfee`, `total_rate`) VALUES
('Bussiness and organization psychology', '19', '19', 0, 0, 0),
('Child and Adolance psychology', '18', '18', 0, 0, 0),
('Diploma in Bussiness and organization psychology', '21', '21', 0, 0, 0),
('Diploma in Child psychology', '22', '22', 0, 0, 0),
('Diploma in Forensics and criminal psychology', '23', '23', 0, 0, 0),
('F0FF16', '16', '16', 0, 0, 0),
('F0FF17', '17', '17', 0, 0, 0),
('Forensics and criminal psychology', '20', '20', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `q_ID` int(11) NOT NULL,
  `topic` varchar(100) NOT NULL,
  `q_detail` varchar(100) NOT NULL,
  `replies` int(11) NOT NULL,
  `likes` int(11) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`q_ID`, `topic`, `q_detail`, `replies`, `likes`, `user_email`, `category`) VALUES
(6, 'fdsf', 'fvdsv', 1, 6, 'sachini@gmail.com', 'category 2'),
(11, '445', 'fdds', 0, 3, 'sachini@gmail.com', 'category 2'),
(13, 'cnwiudcu', 'mcodjowjnac', 0, 3, 'sachini@gmail.com', 'category 4'),
(14, 'jlkc', 'cnlj3p', 0, 2, 'ehd@gmail.com', 'category 3'),
(15, 'my topic 1', 'my question 1', 0, 2, 'vayo@gmail.com', 'category 1'),
(16, 'topic test', 'dsdasddsad', 2, 2, 'dhammika@gmail.com', 'category 3'),
(17, 'topic 1', 'question in details', 1, 0, 'kavin@gmail.com', 'category 2'),
(18, 'fffffffff', 'fffffff', 0, 1, 'sachini@gmail.com', 'category 2'),
(19, 'TTTTTTTTTT', 'ttttttttt', 0, 0, 'sachini@gmail.com', 'category 1');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(100) NOT NULL,
  `regno` varchar(100) NOT NULL,
  `pw` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `dob` date NOT NULL,
  `ccategoryid` int(100) NOT NULL,
  `totamount` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `regno`, `pw`, `name`, `email`, `address`, `dob`, `ccategoryid`, `totamount`) VALUES
(1, 'DF111111', 'aaa', 'Mike Tyson', '', '', '0000-00-00', 0, 0),
(2, 'DF222222', 'bbb', 'Rickey Ponting', '', '', '0000-00-00', 0, 0),
(3, 'DF333333', 'ccc', 'Drake Parker', '', '', '0000-00-00', 0, 0),
(4, 'DF444444', 'ddd', 'Shaun Tait', '', '', '0000-00-00', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_password` varchar(100) NOT NULL,
  `user_country` varchar(100) NOT NULL,
  `user_status` varchar(100) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `user_email`, `user_password`, `user_country`, `user_status`) VALUES
(1, 'sachini', 'sachini@gmail.com', '1234', '2', '0'),
(2, 'worandi', 'worandi@gmail.com', '1234', '1', '0'),
(3, 'sach', 's@gmail.com', '1', '5', '0'),
(4, 'wora', 'worandi10@gmail.com', '1234', '4', '0'),
(5, 'vayoma', 'v@gmail.com', '1234', '4', '0'),
(6, 'user1', 'user1@gmail.com', '1234', '5', '0'),
(7, 'me', 'me@gmail.com', '1234', '5', '0'),
(8, 'sach', 'sachini10@gmail.com', '1234', '5', '0'),
(14, 'kasu', 'kasu@gmail.com', '1234', '5', '0'),
(17, 'sachini', 'sachini15@gmail.com', '1234', '', '0'),
(18, 'brrrrrr', 'brrrrrrr@gmail.com', '1234', '5', '0'),
(19, 'aaa', 'aaa@gmail.com', '1234', '5', '1');

-- --------------------------------------------------------

--
-- Table structure for table `user_like`
--

CREATE TABLE `user_like` (
  `q_ID` int(11) NOT NULL,
  `user_ID` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_like`
--

INSERT INTO `user_like` (`q_ID`, `user_ID`) VALUES
(6, '10'),
(6, '11'),
(6, '17'),
(6, '3'),
(6, '7'),
(6, '8'),
(11, '10'),
(11, '11'),
(11, '7'),
(11, '8'),
(12, '17'),
(13, '10'),
(13, '11'),
(13, '7'),
(14, '10'),
(14, '11'),
(14, '17'),
(15, '10'),
(16, '10'),
(16, '11'),
(18, '17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `answer`
--
ALTER TABLE `answer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`chat_id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_feedback`
--
ALTER TABLE `course_feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback_question_cos`
--
ALTER TABLE `feedback_question_cos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback_question_lec`
--
ALTER TABLE `feedback_question_lec`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lecturer`
--
ALTER TABLE `lecturer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lecturer_feedback`
--
ALTER TABLE `lecturer_feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `like_percentage`
--
ALTER TABLE `like_percentage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `marksenroll`
--
ALTER TABLE `marksenroll`
  ADD PRIMARY KEY (`subject`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`q_ID`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `regno` (`regno`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `UX_Constraint` (`user_email`);

--
-- Indexes for table `user_like`
--
ALTER TABLE `user_like`
  ADD PRIMARY KEY (`q_ID`,`user_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answer`
--
ALTER TABLE `answer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `chat`
--
ALTER TABLE `chat`
  MODIFY `chat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `course_feedback`
--
ALTER TABLE `course_feedback`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
--
-- AUTO_INCREMENT for table `feedback_question_cos`
--
ALTER TABLE `feedback_question_cos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `feedback_question_lec`
--
ALTER TABLE `feedback_question_lec`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `lecturer`
--
ALTER TABLE `lecturer`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `like_percentage`
--
ALTER TABLE `like_percentage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=286;
--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `q_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

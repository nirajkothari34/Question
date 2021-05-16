-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 16, 2021 at 11:00 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `question`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `id` int(100) NOT NULL,
  `qid` text NOT NULL,
  `ansid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`id`, `qid`, `ansid`) VALUES
(19, '60a0ccbfc8f22', '60a0ccc0061fa'),
(20, '60a0ccc060533', '60a0ccc074d78'),
(21, '60a0ccc15d567', '60a0ccc171d7d'),
(22, '60a0ccc1f0ea7', '60a0ccc20fce2'),
(23, '60a0ccc26449a', '60a0ccc273384'),
(24, '60a0d58e57ced', '60a0d58ea776c'),
(25, '60a0d58f0b7c8', '60a0d58f267a1'),
(26, '60a0d58fe1a71', '60a0d59007a5f');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` text NOT NULL,
  `name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `subject` varchar(500) NOT NULL,
  `feedback` varchar(500) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `id` int(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `eid` text NOT NULL,
  `score` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `correct` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `timestamp` bigint(50) NOT NULL,
  `status` varchar(40) NOT NULL,
  `score_updated` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`id`, `username`, `eid`, `score`, `level`, `correct`, `wrong`, `date`, `timestamp`, `status`, `score_updated`) VALUES
(6, 'Niraj', '60a0c9910f6ab', 5, 5, 5, 0, '2021-05-16 07:42:53', 1621150930, 'finished', 'true');

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `id` int(100) NOT NULL,
  `qid` varchar(50) NOT NULL,
  `option` varchar(5000) NOT NULL,
  `optionid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`id`, `qid`, `option`, `optionid`) VALUES
(73, '60a0ccbfc8f22', '{ }', '60a0ccc0061fa'),
(74, '60a0ccbfc8f22', '->End ->', '60a0ccc006202'),
(75, '60a0ccbfc8f22', '( )', '60a0ccc006204'),
(76, '60a0ccbfc8f22', '[ ]', '60a0ccc006205'),
(77, '60a0ccc060533', 'start()', '60a0ccc074d6b'),
(78, '60a0ccc060533', 'system()', '60a0ccc074d75'),
(79, '60a0ccc060533', 'main()', '60a0ccc074d78'),
(80, '60a0ccc060533', 'program()', '60a0ccc074d7a'),
(81, '60a0ccc15d567', '1', '60a0ccc171d76'),
(82, '60a0ccc15d567', '-1', '60a0ccc171d7c'),
(83, '60a0ccc15d567', '0', '60a0ccc171d7d'),
(84, '60a0ccc15d567', 'Program to not return value', '60a0ccc171d7e'),
(85, '60a0ccc1f0ea7', 'float', '60a0ccc20fcc2'),
(86, '60a0ccc1f0ea7', 'int', '60a0ccc20fcde'),
(87, '60a0ccc1f0ea7', 'real', '60a0ccc20fce2'),
(88, '60a0ccc1f0ea7', 'double', '60a0ccc20fce6'),
(89, '60a0ccc26449a', '*/ Comment */ ', '60a0ccc27336c'),
(90, '60a0ccc26449a', '*/* Comment */*', '60a0ccc27337c'),
(91, '60a0ccc26449a', '{ Comment }', '60a0ccc273380'),
(92, '60a0ccc26449a', '/* Comment */', '60a0ccc273384'),
(93, '60a0d58e57ced', 'Hypertext Markup Language', '60a0d58ea776c'),
(94, '60a0d58e57ced', '->End ->', '60a0d58ea7776'),
(95, '60a0d58e57ced', 'Hypertext Markup Language ProProcessor', '60a0d58ea7778'),
(96, '60a0d58e57ced', 'Nothing', '60a0d58ea777b'),
(97, '60a0d58f0b7c8', 'Chrome', '60a0d58f26796'),
(98, '60a0d58f0b7c8', 'The World Wide Web Consortium ', '60a0d58f267a1'),
(99, '60a0d58f0b7c8', 'Microsoft Edge', '60a0d58f267a3'),
(100, '60a0d58f0b7c8', 'Mozilla', '60a0d58f267a5'),
(101, '60a0d58fe1a71', '<heading>', '60a0d59007a57'),
(102, '60a0d58fe1a71', '<h1>', '60a0d59007a5f'),
(103, '60a0d58fe1a71', '<h6>', '60a0d59007a65'),
(104, '60a0d58fe1a71', '<head>', '60a0d59007a67');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(100) NOT NULL,
  `eid` text NOT NULL,
  `qid` text NOT NULL,
  `qns` text NOT NULL,
  `choice` int(10) NOT NULL,
  `sn` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `eid`, `qid`, `qns`, `choice`, `sn`) VALUES
(19, '60a0c9910f6ab', '60a0ccbfc8f22', 'What Punctuation is used to signal the beginning and end of the code block', 4, 1),
(20, '60a0c9910f6ab', '60a0ccc060533', 'What is the only function all c program must be contain', 4, 2),
(21, '60a0c9910f6ab', '60a0ccc15d567', 'What is the correct value to return to the operating system upon the successful completion of program ', 4, 3),
(22, '60a0c9910f6ab', '60a0ccc1f0ea7', 'Which of the following is not a correct variable type', 4, 4),
(23, '60a0c9910f6ab', '60a0ccc26449a', 'Which is the Following correct comment', 4, 5),
(24, '60a0d3b830b7b', '60a0d58e57ced', 'HTML Stands for?', 4, 1),
(25, '60a0d3b830b7b', '60a0d58f0b7c8', 'Who is making the Web standards?\r\n\r\n', 4, 2),
(26, '60a0d3b830b7b', '60a0d58fe1a71', 'Choose the correct HTML element for the largest heading:', 4, 3);

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `id` int(100) NOT NULL,
  `eid` text NOT NULL,
  `title` varchar(100) NOT NULL,
  `correct` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `time` bigint(20) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`id`, `eid`, `title`, `correct`, `wrong`, `total`, `time`, `date`, `status`) VALUES
(6, '60a0c9910f6ab', 'C', 1, 1, 5, 5, '2021-05-16 07:41:56', 'enabled'),
(7, '60a0d3b830b7b', 'Html', 1, 1, 3, 5, '2021-05-16 08:55:27', 'disabled');

-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

CREATE TABLE `rank` (
  `id` int(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `score` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rank`
--

INSERT INTO `rank` (`id`, `username`, `score`, `time`) VALUES
(3, 'Niraj', 6, '2021-05-16 07:42:53'),
(4, 'admin', 3, '2021-05-15 10:22:55');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  `rollno` varchar(20) NOT NULL,
  `branch` varchar(20) NOT NULL,
  `gender` varchar(5) NOT NULL,
  `username` varchar(50) NOT NULL,
  `phno` bigint(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `rollno`, `branch`, `gender`, `username`, `phno`, `password`) VALUES
(6, 'Niraj', '9850420423', 'IT', 'M', 'Niraj', 9850420423, '202cb962ac59075b964b07152d234b70');

-- --------------------------------------------------------

--
-- Table structure for table `user_answer`
--

CREATE TABLE `user_answer` (
  `id` int(100) NOT NULL,
  `qid` varchar(50) NOT NULL,
  `ans` varchar(50) NOT NULL,
  `correctans` varchar(50) NOT NULL,
  `eid` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_answer`
--

INSERT INTO `user_answer` (`id`, `qid`, `ans`, `correctans`, `eid`, `username`) VALUES
(14, '609f990abf698', '609f990ada815', '609f990ada815', '609f98c76aa0e', 'Niraj'),
(15, '609fa0072132f', '609fa0073d949', '609fa0073d949', '609f9ee418c50', 'admin'),
(16, '609fa0079ff74', '609fa007a6f13', '609fa007a6f13', '609f9ee418c50', 'admin'),
(17, '609fa007d095b', '609fa007e0ca2', '609fa007e0ca9', '609f9ee418c50', 'admin'),
(18, '609fa00877f24', '609fa008811f2', '609fa008811f2', '609f9ee418c50', 'admin'),
(19, '609fa008bf598', '609fa008c915b', '609fa008c915b', '609f9ee418c50', 'admin'),
(20, '60a0ccbfc8f22', '60a0ccc0061fa', '60a0ccc0061fa', '60a0c9910f6ab', 'Niraj'),
(21, '60a0ccc060533', '60a0ccc074d78', '60a0ccc074d78', '60a0c9910f6ab', 'Niraj'),
(22, '60a0ccc15d567', '60a0ccc171d7d', '60a0ccc171d7d', '60a0c9910f6ab', 'Niraj'),
(23, '60a0ccc1f0ea7', '60a0ccc20fce2', '60a0ccc20fce2', '60a0c9910f6ab', 'Niraj'),
(24, '60a0ccc26449a', '60a0ccc273384', '60a0ccc273384', '60a0c9910f6ab', 'Niraj');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `answer`
--
ALTER TABLE `answer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quiz`
--
ALTER TABLE `quiz`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `rank`
--
ALTER TABLE `rank`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `user_answer`
--
ALTER TABLE `user_answer`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `answer`
--
ALTER TABLE `answer`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `quiz`
--
ALTER TABLE `quiz`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `rank`
--
ALTER TABLE `rank`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user_answer`
--
ALTER TABLE `user_answer`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

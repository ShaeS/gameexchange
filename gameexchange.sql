-- phpMyAdmin SQL Dump
-- version 4.2.10
-- http://www.phpmyadmin.net
--
-- Host: localhost:8889
-- Generation Time: Mar 06, 2016 at 05:54 AM
-- Server version: 5.5.38
-- PHP Version: 5.6.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `gameexchange`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
`ID` int(11) NOT NULL,
  `comment` varchar(150) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_id2` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`ID`, `comment`, `user_id`, `user_id2`) VALUES
(5, 'Great experience with Shae!', 7, 3),
(6, 'Best game dealer around!', 22, 3),
(7, 'Thanks Guys!', 3, 3),
(9, 'Good games Jeff!', 3, 22);

-- --------------------------------------------------------

--
-- Table structure for table `favorites`
--

CREATE TABLE `favorites` (
  `user_id` int(11) NOT NULL,
  `user_id2` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `favorites`
--

INSERT INTO `favorites` (`user_id`, `user_id2`) VALUES
(3, 3),
(32, 3),
(3, 7);

-- --------------------------------------------------------

--
-- Table structure for table `games`
--

CREATE TABLE `games` (
`ID` int(11) NOT NULL,
  `title` varchar(300) NOT NULL,
  `players` varchar(100) NOT NULL,
  `genre` int(11) NOT NULL,
  `playtime` varchar(100) NOT NULL,
  `playerage` varchar(100) NOT NULL DEFAULT 'any',
  `image` varchar(500) NOT NULL DEFAULT './img/default.png',
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `games`
--

INSERT INTO `games` (`ID`, `title`, `players`, `genre`, `playtime`, `playerage`, `image`, `user_id`) VALUES
(6, 'Betrayal at House on the Hill', '3 - 6', 9, '60mins - 120mins', '14+', './users/3/jakegue4s4i.jpg', 3),
(7, 'Pictionary', '2 - 10', 14, '30mins - 60mins', '5+', './users/3/17ph36xn7b9.jpg', 3),
(8, 'Scattergories', '2 - 6', 19, '10mins - 120mins', '10+', './users/4/ypd48bvgqfr.jpg', 4),
(9, 'Risk', '3 - 8', 6, '30mins - 90mins', '8+', './users/4/ok1btl3ow29.jpg', 4),
(16, 'Pandemic', '2 - 6', 17, '20mins - 60mins', '12+', './users/22/ymbc69ftj4i.jpg', 22),
(17, 'Monopoly', '2 - 8', 14, '40mins - 120mins', '6+', './users/22/ptzrebfbt9.jpg', 22),
(20, 'Twister', '2 - 5', 14, '20mins - 40mins', '5+', './users/3/xp478wa5rk9.jpg', 3),
(21, 'Cards Against Humanity', '3 - 12', 14, '10mins - 120mins', '18+', './users/7/nfibs4f5hfr.jpg', 7),
(22, 'Blockus', '2 - 4', 32, '40mins - 60mins', '10+', './users/32/rlgrdkdfgvi.jpg', 32);

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE `genres` (
`ID` int(11) NOT NULL,
  `genrename` varchar(300) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`ID`, `genrename`) VALUES
(1, 'Adventure'),
(2, 'Card Game'),
(3, 'City Building'),
(4, 'Dice'),
(5, 'Educational'),
(6, 'Exploration'),
(7, 'Fantasy'),
(8, 'Fighting'),
(9, 'Horror'),
(10, 'Mature'),
(11, 'Memory'),
(12, 'Murder'),
(13, 'Mystery'),
(14, 'Party'),
(15, 'Racing'),
(16, 'Science Fiction'),
(17, 'Territory Building'),
(18, 'Trivia'),
(19, 'Word Game'),
(20, 'War'),
(21, 'Animals'),
(22, 'Childrens'),
(23, 'Electronic'),
(24, 'Expansion'),
(25, 'Farming'),
(26, 'Humor'),
(27, 'Math'),
(28, 'Movies'),
(29, 'Music'),
(30, 'Number'),
(31, 'Political'),
(32, 'Puzzle'),
(33, 'Real-time'),
(34, 'Space'),
(35, 'Sports'),
(36, 'Travel'),
(37, 'Video Game'),
(38, 'Zombies'),
(40, 'No Genre Selected');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
`ID` int(11) NOT NULL,
  `name` varchar(300) NOT NULL,
  `username` varchar(300) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `location` varchar(300) NOT NULL,
  `avatar` varchar(500) NOT NULL DEFAULT './img/profile.png'
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `name`, `username`, `email`, `password`, `location`, `avatar`) VALUES
(3, 'Shae', 'ShaeSco', 'shaescotten@gmail.com', 'shae', 'Vancouver', './users/3/avatar.jpg'),
(4, 'Jasmine Stanway', 'jaystan', 'jasminestanway@gmail.com', 'jasmine', 'New Westminster', './users/4/avatar.jpg'),
(7, 'Emily Arsenault', 'emilyann', 'emily.a.arsenault@gmail.com', 'emily', 'Vancouver', './users/7/avatar.jpg'),
(22, 'Jeff Hilman', 'jhilman', 'jhilman@live.ca', 'jeff', 'Vancouver', './users/22/avatar.jpg'),
(32, 'Justine Ayton', 'jayton', 'jayton@jay.com', 'justine', 'Tsawwassen', './img/profile.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
 ADD PRIMARY KEY (`ID`), ADD KEY `user_id` (`user_id`), ADD KEY `user_id2` (`user_id2`);

--
-- Indexes for table `favorites`
--
ALTER TABLE `favorites`
 ADD UNIQUE KEY `user_id1` (`user_id`,`user_id2`), ADD KEY `user_id2` (`user_id2`);

--
-- Indexes for table `games`
--
ALTER TABLE `games`
 ADD PRIMARY KEY (`ID`), ADD KEY `user_id` (`user_id`), ADD KEY `genre` (`genre`);

--
-- Indexes for table `genres`
--
ALTER TABLE `genres`
 ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `games`
--
ALTER TABLE `games`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `genres`
--
ALTER TABLE `genres`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=33;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
ADD CONSTRAINT `comments_ibfk_3` FOREIGN KEY (`user_id2`) REFERENCES `users` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `favorites`
--
ALTER TABLE `favorites`
ADD CONSTRAINT `favorites_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `users` (`ID`),
ADD CONSTRAINT `favorites_ibfk_4` FOREIGN KEY (`user_id2`) REFERENCES `users` (`ID`);

--
-- Constraints for table `games`
--
ALTER TABLE `games`
ADD CONSTRAINT `games_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `games_ibfk_2` FOREIGN KEY (`genre`) REFERENCES `genres` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

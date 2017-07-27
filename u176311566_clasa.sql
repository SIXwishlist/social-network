
-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 27, 2017 at 12:28 PM
-- Server version: 10.1.24-MariaDB
-- PHP Version: 5.2.17

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `u176311566_clasa`
--

-- --------------------------------------------------------

--
-- Table structure for table `blockedusers`
--

CREATE TABLE IF NOT EXISTS `blockedusers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `blocker` varchar(16) NOT NULL,
  `blockee` varchar(16) NOT NULL,
  `blockdate` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Table structure for table `friends`
--

CREATE TABLE IF NOT EXISTS `friends` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user1` varchar(16) NOT NULL,
  `user2` varchar(16) NOT NULL,
  `datemade` datetime NOT NULL,
  `accepted` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `friends`
--

INSERT INTO `friends` (`id`, `user1`, `user2`, `datemade`, `accepted`) VALUES
(2, 'tanny', 'harry', '2016-12-04 21:29:07', '1'),
(3, 'tanny', 'ammy', '2016-12-04 21:46:51', '0'),
(4, 'tanny', 'appy', '2016-12-04 21:46:59', '0');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE IF NOT EXISTS `notifications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(16) NOT NULL,
  `initiator` varchar(16) NOT NULL,
  `app` varchar(255) NOT NULL,
  `note` varchar(255) NOT NULL,
  `did_read` enum('0','1') NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `username`, `initiator`, `app`, `note`, `did_read`, `date_time`) VALUES
(1, 'tanny', 'harry', 'Status Post', 'harry posted on: <br /><a href="user.php?u=harry#status_0">harry&#39;s Profile</a>', '0', '2016-12-04 19:02:37'),
(2, 'tanny', 'harry', 'Status Post', 'harry posted on: <br /><a href="user.php?u=harry#status_0">harry&#39;s Profile</a>', '0', '2016-12-04 19:03:05'),
(3, 'tanny', 'harry', 'Status Post', 'harry posted on: <br /><a href="user.php?u=harry#status_0">harry&#39;s Profile</a>', '0', '2016-12-04 19:30:08'),
(4, 'tanny', 'harry', 'Status Post', 'harry posted on: <br /><a href="user.php?u=harry#status_0">harry&#39;s Profile</a>', '0', '2016-12-04 19:32:55'),
(5, 'tanny', 'harry', 'Status Post', 'harry posted on: <br /><a href="user.php?u=harry#status_0">harry&#39;s Profile</a>', '0', '2016-12-04 19:32:59'),
(6, 'tanny', 'harry', 'Status Post', 'harry posted on: <br /><a href="user.php?u=tanny#status_0">tanny&#39;s Profile</a>', '0', '2016-12-04 19:33:47'),
(7, 'tanny', 'harry', 'Status Post', 'harry posted on: <br /><a href="user.php?u=tanny#status_0">tanny&#39;s Profile</a>', '0', '2016-12-04 19:36:23'),
(8, 'tanny', 'harry', 'Status Post', 'harry posted on: <br /><a href="user.php?u=harry#status_0">harry&#39;s Profile</a>', '0', '2016-12-04 19:36:42'),
(9, 'tanny', 'harry', 'Status Post', 'harry posted on: <br /><a href="user.php?u=harry#status_0">harry&#39;s Profile</a>', '0', '2016-12-04 19:37:14'),
(10, 'tanny', 'harry', 'Status Post', 'harry posted on: <br /><a href="user.php?u=harry#status_0">harry&#39;s Profile</a>', '0', '2016-12-04 19:41:20'),
(11, 'harry', 'tanny', 'Status Post', 'tanny posted on: <br /><a href="user.php?u=harry#status_9">harry&#39;s Profile</a>', '0', '2016-12-04 22:11:26'),
(12, 'harry', 'tanny', 'Status Post', 'tanny posted on: <br /><a href="user.php?u=harry#status_10">harry&#39;s Profile</a>', '0', '2016-12-04 22:11:40'),
(13, 'harry', 'tanny', 'Status Post', 'tanny posted on: <br /><a href="user.php?u=tanny#status_11">tanny&#39;s Profile</a>', '0', '2016-12-04 22:12:13'),
(14, 'harry', 'tanny', 'Status Post', 'tanny posted on: <br /><a href="user.php?u=tanny#status_14">tanny&#39;s Profile</a>', '0', '2017-02-21 15:35:01'),
(15, 'harry', 'tanny', 'Status Post', 'tanny posted on: <br /><a href="user.php?u=tanny#status_15">tanny&#39;s Profile</a>', '0', '2017-03-22 10:12:48');

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE IF NOT EXISTS `photos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(16) NOT NULL,
  `gallery` varchar(16) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `uploaddate` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE IF NOT EXISTS `status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `osid` int(11) DEFAULT NULL,
  `account_name` varchar(16) NOT NULL,
  `author` varchar(16) NOT NULL,
  `type` enum('a','b','c') NOT NULL,
  `data` text NOT NULL,
  `postdate` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`id`, `osid`, `account_name`, `author`, `type`, `data`, `postdate`) VALUES
(13, 10, 'harry', 'tanny', 'b', 'Ohh nice', '2016-12-04 22:12:33'),
(12, 9, 'harry', 'tanny', 'b', 'good night harry', '2016-12-04 22:12:27'),
(11, 11, 'tanny', 'tanny', 'a', 'Hello everyone, How r u??', '2016-12-04 22:12:13'),
(10, 10, 'harry', 'tanny', 'c', 'It was really a nice day.....', '2016-12-04 22:11:40'),
(9, 9, 'harry', 'tanny', 'c', 'Hello, Good Night evry1 !!!', '2016-12-04 22:11:26'),
(15, 15, 'tanny', 'tanny', 'a', 'gdjsg', '2017-03-22 10:12:48');

-- --------------------------------------------------------

--
-- Table structure for table `useroptions`
--

CREATE TABLE IF NOT EXISTS `useroptions` (
  `id` int(11) NOT NULL,
  `username` varchar(16) NOT NULL,
  `background` varchar(255) NOT NULL,
  `question` varchar(255) DEFAULT NULL,
  `answer` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `useroptions`
--

INSERT INTO `useroptions` (`id`, `username`, `background`, `question`, `answer`) VALUES
(1, 'tanny', 'original', NULL, NULL),
(2, 'ammy', 'original', NULL, NULL),
(3, 'harry', 'original', NULL, NULL),
(4, 'ravi', 'original', NULL, NULL),
(5, 'appy', 'original', NULL, NULL),
(6, 'tanmay', 'original', NULL, NULL),
(7, 'tanmayrauth', 'original', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(16) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `gender` enum('m','f') NOT NULL,
  `website` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `userlevel` enum('a','b','c','d') NOT NULL DEFAULT 'a',
  `avatar` varchar(255) DEFAULT NULL,
  `ip` varchar(255) NOT NULL,
  `signup` datetime NOT NULL,
  `lastlogin` datetime NOT NULL,
  `notescheck` datetime NOT NULL,
  `activated` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`,`email`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `gender`, `website`, `country`, `userlevel`, `avatar`, `ip`, `signup`, `lastlogin`, `notescheck`, `activated`) VALUES
(1, 'tanny', 'tanmay@gmail.com', '202cb962ac59075b964b07152d234b70', 'm', NULL, 'Algeria', 'a', '-74016011.jpg', '45.64.15.165', '2016-12-04 16:38:14', '2017-04-20 07:54:28', '2017-04-20 07:54:50', '1'),
(2, 'ammy', 'ammy@gmail.com', '202cb962ac59075b964b07152d234b70', 'f', NULL, 'United States of America', 'a', NULL, '1', '2016-12-04 16:41:39', '2016-12-04 16:41:39', '2016-12-04 16:41:39', '1'),
(3, 'harry', 'harry@gmail.com', '202cb962ac59075b964b07152d234b70', 'f', NULL, 'United States of America', 'a', NULL, '1', '2016-12-04 16:42:54', '2016-12-04 22:09:35', '2016-12-04 22:09:47', '1'),
(4, 'ravi', 'ravi@gmail.com', '202cb962ac59075b964b07152d234b70', 'm', NULL, 'United States of America', 'a', NULL, '1', '2016-12-04 17:07:57', '2016-12-04 17:07:57', '2016-12-04 17:07:57', '1'),
(5, 'appy', 'appy@gmail.com', '202cb962ac59075b964b07152d234b70', 'f', NULL, 'Anguilla', 'a', NULL, '1', '2016-12-04 21:17:07', '2016-12-04 21:17:07', '2016-12-04 21:17:07', '1'),
(6, 'tanmay', 'tanmayrauth@ves.ac.in', '202cb962ac59075b964b07152d234b70', 'm', NULL, 'United States of America', 'a', NULL, '103.248.112.139', '2017-02-21 15:33:08', '2017-02-21 15:33:08', '2017-02-21 15:33:08', '0'),
(7, 'tanmayrauth', 'tanmay.rauth@ves.ac.in', '202cb962ac59075b964b07152d234b70', 'm', NULL, 'United States of America', 'a', NULL, '103.248.112.139', '2017-02-21 15:34:13', '2017-02-21 15:34:13', '2017-02-21 15:34:13', '0');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 3.4.11.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 10, 2013 at 10:51 AM
-- Server version: 5.5.32
-- PHP Version: 5.4.6-1ubuntu1.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `aljazpro_simple`
--

-- --------------------------------------------------------

--
-- Table structure for table `html_url`
--

CREATE TABLE IF NOT EXISTS `html_url` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `templateId` int(11) NOT NULL,
  `url` varchar(128) NOT NULL,
  `isSubdomain` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `template_id` (`templateId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `html_url`
--

INSERT INTO `html_url` (`id`, `templateId`, `url`, `isSubdomain`) VALUES
(1, 1, 'xyz', 0),
(2, 2, 'xyz2', 0),
(3, 3, 'xxx', 1),
(4, 4, 'xxx2', 1),
(5, 5, 'xxx3', 1),
(6, 6, 'xxx4', 1),
(7, 7, 'xxx5', 1),
(8, 8, 'xxx6', 1),
(9, 9, 'xxx7', 1),
(10, 10, 'xxx8', 1),
(11, 11, 'xxx9', 1),
(12, 12, 'xxx10', 1),
(13, 13, 'xxx11', 1),
(14, 14, 'novi_url', 0),
(15, 15, 'ali', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE IF NOT EXISTS `tbl_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `username`, `password`, `email`) VALUES
(1, 'test1', 'pass1', 'test1@example.com'),
(2, 'test2', 'pass2', 'test2@example.com'),
(3, 'test3', 'pass3', 'test3@example.com'),
(4, 'test4', 'pass4', 'test4@example.com'),
(5, 'test5', 'pass5', 'test5@example.com'),
(6, 'test6', 'pass6', 'test6@example.com'),
(7, 'test7', 'pass7', 'test7@example.com'),
(8, 'test8', 'pass8', 'test8@example.com'),
(9, 'test9', 'pass9', 'test9@example.com'),
(10, 'test10', 'pass10', 'test10@example.com'),
(11, 'test11', 'pass11', 'test11@example.com'),
(12, 'test12', 'pass12', 'test12@example.com'),
(13, 'test13', 'pass13', 'test13@example.com'),
(14, 'test14', 'pass14', 'test14@example.com'),
(15, 'test15', 'pass15', 'test15@example.com'),
(16, 'test16', 'pass16', 'test16@example.com'),
(17, 'test17', 'pass17', 'test17@example.com'),
(18, 'test18', 'pass18', 'test18@example.com'),
(19, 'test19', 'pass19', 'test19@example.com'),
(20, 'test20', 'pass20', 'test20@example.com'),
(21, 'test21', 'pass21', 'test21@example.com');

-- --------------------------------------------------------

--
-- Table structure for table `template`
--

CREATE TABLE IF NOT EXISTS `template` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `htmlFilePath` varchar(128) DEFAULT NULL,
  `dataFile` varchar(64) NOT NULL,
  `dataFilePath` varchar(128) DEFAULT NULL,
  `url` int(11) NOT NULL,
  `urlType` tinyint(4) NOT NULL,
  `htmlFile` varchar(64) NOT NULL,
  `rowNumber` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `template`
--

INSERT INTO `template` (`id`, `htmlFilePath`, `dataFile`, `dataFilePath`, `url`, `urlType`, `htmlFile`, `rowNumber`) VALUES
(1, '/home/nirvo/public_html/elance/simpleapp/protected/../uploaded/html/13785420971.html', 'test.csv', '/home/nirvo/public_html/elance/simpleapp/protected/../uploaded/csv/13785420972.csv', 0, 1, 'test.html', 0),
(2, '/home/nirvo/public_html/elance/simpleapp/protected/../uploaded/html/13785420971.html', 'test.csv', '/home/nirvo/public_html/elance/simpleapp/protected/../uploaded/csv/13785420972.csv', 0, 1, 'test.html', 0),
(3, '/home/nirvo/public_html/elance/simpleapp/protected/../uploaded/html/13785422041.html', 'test.csv', '/home/nirvo/public_html/elance/simpleapp/protected/../uploaded/csv/13785422042.csv', 0, 0, 'test.html', 0),
(4, '/home/nirvo/public_html/elance/simpleapp/protected/../uploaded/html/13785422041.html', 'test.csv', '/home/nirvo/public_html/elance/simpleapp/protected/../uploaded/csv/13785422042.csv', 0, 0, 'test.html', 0),
(5, '/home/nirvo/public_html/elance/simpleapp/protected/../uploaded/html/13785422041.html', 'test.csv', '/home/nirvo/public_html/elance/simpleapp/protected/../uploaded/csv/13785422042.csv', 0, 0, 'test.html', 0),
(6, '/home/nirvo/public_html/elance/simpleapp/protected/../uploaded/html/13785422041.html', 'test.csv', '/home/nirvo/public_html/elance/simpleapp/protected/../uploaded/csv/13785422042.csv', 0, 0, 'test.html', 0),
(7, '/home/nirvo/public_html/elance/simpleapp/protected/../uploaded/html/13785422041.html', 'test.csv', '/home/nirvo/public_html/elance/simpleapp/protected/../uploaded/csv/13785422042.csv', 0, 0, 'test.html', 0),
(8, '/home/nirvo/public_html/elance/simpleapp/protected/../uploaded/html/13785422041.html', 'test.csv', '/home/nirvo/public_html/elance/simpleapp/protected/../uploaded/csv/13785422042.csv', 0, 0, 'test.html', 0),
(9, '/home/nirvo/public_html/elance/simpleapp/protected/../uploaded/html/13785422041.html', 'test.csv', '/home/nirvo/public_html/elance/simpleapp/protected/../uploaded/csv/13785422042.csv', 0, 0, 'test.html', 0),
(10, '/home/nirvo/public_html/elance/simpleapp/protected/../uploaded/html/13785422041.html', 'test.csv', '/home/nirvo/public_html/elance/simpleapp/protected/../uploaded/csv/13785422042.csv', 0, 0, 'test.html', 0),
(11, '/home/nirvo/public_html/elance/simpleapp/protected/../uploaded/html/13785422041.html', 'test.csv', '/home/nirvo/public_html/elance/simpleapp/protected/../uploaded/csv/13785422042.csv', 0, 0, 'test.html', 0),
(12, '/home/nirvo/public_html/elance/simpleapp/protected/../uploaded/html/13785422041.html', 'test.csv', '/home/nirvo/public_html/elance/simpleapp/protected/../uploaded/csv/13785422042.csv', 0, 0, 'test.html', 0),
(13, '/home/nirvo/public_html/elance/simpleapp/protected/../uploaded/html/13785422041.html', 'test.csv', '/home/nirvo/public_html/elance/simpleapp/protected/../uploaded/csv/13785422042.csv', 0, 0, 'test.html', 0),
(14, '/home/nirvo/public_html/elance/simpleapp/protected/../uploaded/html/13785442051.html', 'test.csv', '/home/nirvo/public_html/elance/simpleapp/protected/../uploaded/csv/13785442052.csv', 0, 1, 'test.html', 0),
(15, '/home/nirvo/public_html/elance/simpleapp/protected/../uploaded/html/13785442051.html', 'test.csv', '/home/nirvo/public_html/elance/simpleapp/protected/../uploaded/csv/13785442052.csv', 0, 1, 'test.html', 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

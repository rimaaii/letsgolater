-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 01, 2016 at 01:22 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `letsgolater`
--
CREATE DATABASE IF NOT EXISTS `letsgolater` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `letsgolater`;

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

DROP TABLE IF EXISTS `city`;
CREATE TABLE IF NOT EXISTS `city` (
  `idcity` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idcity`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`idcity`, `name`) VALUES
(1, 'Miami'),
(2, 'P.Pines'),
(3, 'Doral'),
(4, 'West Palm Beach'),
(5, 'Key West'),
(6, 'Ft. Lauderdale'),
(7, 'Hialeah'),
(8, 'Miami Lakes'),
(9, 'Miami Gardens'),
(10, 'Coral Gables'),
(11, 'Orlando');

-- --------------------------------------------------------

--
-- Table structure for table `dresscode`
--

DROP TABLE IF EXISTS `dresscode`;
CREATE TABLE IF NOT EXISTS `dresscode` (
  `iddresscode` int(11) NOT NULL AUTO_INCREMENT,
  `dresscode` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`iddresscode`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `dresscode`
--

INSERT INTO `dresscode` (`iddresscode`, `dresscode`) VALUES
(1, 'Black Tie'),
(2, 'White Tie'),
(3, 'Semi-Formal'),
(4, 'Semi-Casual'),
(5, 'Beach Wear'),
(6, 'Casual'),
(7, 'Business Casual'),
(8, 'Street Wear'),
(9, 'Black Tie Optional'),
(10, 'Festive'),
(23, 'Chic');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

DROP TABLE IF EXISTS `event`;
CREATE TABLE IF NOT EXISTS `event` (
  `idevents` int(11) NOT NULL AUTO_INCREMENT,
  `photo` varchar(255) NOT NULL,
  `description` varchar(300) NOT NULL,
  `date` datetime NOT NULL,
  `interest_idinterest` int(11) NOT NULL,
  `capacity` int(11) NOT NULL,
  `price` double(10,2) NOT NULL,
  `name` varchar(45) NOT NULL,
  `venue_idvenue` int(11) NOT NULL,
  `dresscode_iddresscode` int(11) NOT NULL,
  PRIMARY KEY (`idevents`),
  KEY `fk_event_venue1_idx` (`venue_idvenue`),
  KEY `fk_event_dresscode1_idx` (`dresscode_iddresscode`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`idevents`, `photo`, `description`, `date`, `interest_idinterest`, `capacity`, `price`, `name`, `venue_idvenue`, `dresscode_iddresscode`) VALUES
(1, 'photo.jpg', 'Loud Music', '2001-01-01 00:00:00', 1, 10000, 300.00, 'Ultra', 1, 8),
(2, 'photo.jpg', 'Kids Reading', '2001-01-01 00:00:00', 2, 100, 0.00, 'Storytelling Fair', 2, 6),
(3, 'photo.jpg', 'Yearly Fair Rides', '2001-01-01 00:00:00', 3, 1000, 30.00, 'Santa''s Enchanted Forest', 3, 10),
(4, 'photo.jpg', 'Test your surfing Skills', '2001-01-01 00:00:00', 4, 100, 30.00, 'Flowrider Contest', 4, 5),
(5, 'photo.jpg', 'VIPs only', '2001-01-01 00:00:00', 5, 100, 1000.00, 'Diplomatic Event', 5, 1),
(6, 'photo.jpg', 'different companies hiring', '2001-01-01 00:00:00', 6, 300, 30.00, 'Job Fair', 6, 7),
(7, 'photo.jpg', 'win many doorprizes', '2001-01-01 00:00:00', 7, 100, 0.00, 'Raffle', 7, 4),
(8, 'photo.jpg', 'invitees only', '2001-01-01 00:00:00', 8, 200, 0.00, 'Davis Wedding', 8, 1),
(9, 'photo.jpg', 'meet MVP''s', '2001-01-01 00:00:00', 9, 100, 0.00, 'College Football Awards', 9, 9),
(10, 'photo.jpg', 'best in show for the city', '2001-01-01 00:00:00', 10, 100, 0.00, 'City Dog Show', 10, 3);

-- --------------------------------------------------------

--
-- Table structure for table `interest`
--

DROP TABLE IF EXISTS `interest`;
CREATE TABLE IF NOT EXISTS `interest` (
  `idinterest` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idinterest`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `interest`
--

INSERT INTO `interest` (`idinterest`, `name`) VALUES
(1, 'Music'),
(2, 'Reading'),
(3, 'Holidays'),
(4, 'Swimming'),
(5, 'Politics'),
(6, 'Employment'),
(7, 'Contest'),
(8, 'Romance'),
(9, 'Sports'),
(10, 'Pets'),
(16, 'Adventure');

-- --------------------------------------------------------

--
-- Table structure for table `interest_match_event`
--

DROP TABLE IF EXISTS `interest_match_event`;
CREATE TABLE IF NOT EXISTS `interest_match_event` (
  `interest_idinterest` int(11) NOT NULL AUTO_INCREMENT,
  `events_idevents` int(11) NOT NULL,
  PRIMARY KEY (`interest_idinterest`,`events_idevents`),
  KEY `fk_Interest_has_Events_Events1_idx` (`events_idevents`),
  KEY `fk_Interest_has_Events_Interest1_idx` (`interest_idinterest`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `iduser` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(90) NOT NULL,
  `birthdate` date NOT NULL,
  `email` varchar(250) NOT NULL,
  `gender` tinyint(1) NOT NULL,
  `password` varchar(16) NOT NULL,
  `phone` varchar(16) NOT NULL,
  `job` varchar(45) NOT NULL,
  `city_idcity` int(11) NOT NULL,
  PRIMARY KEY (`iduser`,`city_idcity`),
  KEY `fk_user_city1_idx` (`city_idcity`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`iduser`, `username`, `birthdate`, `email`, `gender`, `password`, `phone`, `job`, `city_idcity`) VALUES
(1, 'erika', '2001-01-01', 'someone@email.com', 0, 'password', '123-456-7890', 'Web Design', 1),
(2, 'nikki', '2001-01-01', 'someone@email.com', 0, 'password', '123-456-7890', 'Web Design', 2),
(3, 'georgio', '2001-01-01', 'someone@email.com', 1, 'password', '123-456-7890', 'Web Design', 3),
(4, 'jorge', '2001-01-01', 'someone@email.com', 1, 'password', '123-456-7890', 'Web Design', 4),
(5, 'danny', '2001-01-01', 'someone@email.com', 1, 'password', '123-456-7890', 'Web Design', 5),
(6, 'ionanis', '2001-01-01', 'someone@email.com', 1, 'password', '123-456-7890', 'Web Design', 6),
(7, 'adam', '2001-01-01', 'someone@email.com', 1, 'password', '123-456-7890', 'Web Design', 7),
(8, 'daniela', '2001-01-01', 'someone@email.com', 0, 'password', '123-456-7890', 'Web Design', 8),
(9, 'katie', '2001-01-01', 'someone@email.com', 0, 'password', '123-456-7890', 'Web Design', 9),
(10, 'rima', '2001-01-01', 'someone@email.com', 0, 'password', '123-456-7890', 'Web Design', 10);

-- --------------------------------------------------------

--
-- Table structure for table `user_favorites_events`
--

DROP TABLE IF EXISTS `user_favorites_events`;
CREATE TABLE IF NOT EXISTS `user_favorites_events` (
  `user_iduser` int(11) NOT NULL AUTO_INCREMENT,
  `events_idevents` int(11) NOT NULL,
  PRIMARY KEY (`user_iduser`,`events_idevents`),
  KEY `fk_user_has_Events_Events1_idx` (`events_idevents`),
  KEY `fk_user_has_Events_user1_idx` (`user_iduser`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `user_has_interest`
--

DROP TABLE IF EXISTS `user_has_interest`;
CREATE TABLE IF NOT EXISTS `user_has_interest` (
  `user_iduser` int(11) NOT NULL AUTO_INCREMENT,
  `interest_idinterest` int(11) NOT NULL,
  PRIMARY KEY (`user_iduser`,`interest_idinterest`),
  KEY `fk_user_has_Interest_Interest1_idx` (`interest_idinterest`),
  KEY `fk_user_has_Interest_user1_idx` (`user_iduser`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `venue`
--

DROP TABLE IF EXISTS `venue`;
CREATE TABLE IF NOT EXISTS `venue` (
  `idvenue` int(11) NOT NULL AUTO_INCREMENT,
  `photo` varchar(250) DEFAULT NULL,
  `name` varchar(145) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `parking` varchar(10) DEFAULT NULL,
  `address` varchar(55) DEFAULT NULL,
  PRIMARY KEY (`idvenue`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `venue`
--

INSERT INTO `venue` (`idvenue`, `photo`, `name`, `city`, `parking`, `address`) VALUES
(1, NULL, 'Bayfront Park', '1', NULL, NULL),
(2, NULL, 'Southwest Regional Library', '2', NULL, NULL),
(3, NULL, 'Tropical Park', '3', NULL, NULL),
(4, NULL, 'Rapids Water Park', '4', NULL, NULL),
(5, NULL, 'Westin Key Hotel', '5', NULL, NULL),
(6, NULL, 'Broward Convention Center', '6', NULL, NULL),
(7, NULL, 'Westland Mall', '7', NULL, NULL),
(8, NULL, 'Hotel Indigo', '8', NULL, NULL),
(9, NULL, 'Sun Life Stadium', '9', NULL, NULL),
(10, NULL, 'Miracle Mile', '10', NULL, NULL),
(11, NULL, 'AA Arena', NULL, NULL, NULL);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `event`
--
ALTER TABLE `event`
  ADD CONSTRAINT `fk_event_dresscode1` FOREIGN KEY (`dresscode_iddresscode`) REFERENCES `dresscode` (`iddresscode`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_event_venue1` FOREIGN KEY (`venue_idvenue`) REFERENCES `venue` (`idvenue`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `interest_match_event`
--
ALTER TABLE `interest_match_event`
  ADD CONSTRAINT `fk_Interest_has_Events_Events1` FOREIGN KEY (`events_idevents`) REFERENCES `event` (`idevents`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Interest_has_Events_Interest1` FOREIGN KEY (`interest_idinterest`) REFERENCES `interest` (`idinterest`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `fk_user_city1` FOREIGN KEY (`city_idcity`) REFERENCES `city` (`idcity`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `user_favorites_events`
--
ALTER TABLE `user_favorites_events`
  ADD CONSTRAINT `fk_user_has_Events_Events1` FOREIGN KEY (`events_idevents`) REFERENCES `event` (`idevents`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_user_has_Events_user1` FOREIGN KEY (`user_iduser`) REFERENCES `user` (`iduser`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `user_has_interest`
--
ALTER TABLE `user_has_interest`
  ADD CONSTRAINT `fk_user_has_Interest_Interest1` FOREIGN KEY (`interest_idinterest`) REFERENCES `interest` (`idinterest`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_user_has_Interest_user1` FOREIGN KEY (`user_iduser`) REFERENCES `user` (`iduser`) ON DELETE NO ACTION ON UPDATE NO ACTION;

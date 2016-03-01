/* Insert a dress code 'Chic' */
INSERT INTO dresscode
VALUES(NULL, 'Chic');

/* Insert an interest 'Adventure' */
INSERT INTO interest
VALUE(NULL, 'Adventure');

/*Insert the AA Arena into venues*/
INSERT INTO venue(idvenue,name)
VALUES(NULL, 'AA Arena');

/*Fix id of user table*/
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


/*Insert Tony into the user table*/


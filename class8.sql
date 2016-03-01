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
ALTER TABLE `user` CHANGE `idtable1` `iduser` INT(11) NOT NULL AUTO_INCREMENT;

/*Insert Tony into the user table*/


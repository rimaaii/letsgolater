/* Insert a dress code 'Chic' */
INSERT INTO dresscode
VALUES(NULL, 'Chic');

/* Insert an interest 'Adventure' */
INSERT INTO interest
VALUE(NULL, 'Adventure');

/*Insert the AA Arena into venues*/
INSERT INTO venue(idvenue,name)
VALUES(NULL, 'AA Arena');

/*Insert Tony into the user table*/
INSERT INTO user(iduser,username, city_idcity)
VALUES(NULL, "tony", 3);

ALTER TABLE `event` DROP `interest_idinterest`;

/*Insert this event 
Mar 05, 2016
Sat, 8:00 PM
Nicky Jam
American Airlines Arena Miami, FL */
INSERT INTO event(idevent,name,date,venue_idvenue,dresscode_iddresscode)
VALUES(NULL,"Nicky Jam",2016-03-05,11,8);

/* Connect Nicky Jam event with interest 'Music' */
INSERT INTO interest_match_event
VALUES(1,11);

/* Tony favorites Nicky Jam */
INSERT INTO user_favorites_events
VALUES(12,11);

/* Associate yourself with an interest */
INSERT INTO user_has_interest
VALUES(1,1);

/* Associate yourself with another interest */
INSERT INTO user_has_interest
VALUES(1,2);

/* Get female users*/
SELECT *
FROM user
WHERE gender = 0;

/* Get all black tie events */
SELECT *
FROM event
WHERE dresscode_iddresscode = 1;

/* Get all events that cost less than $100 */
SELECT *
FROM event
WHERE price < 100;

/* Find free events with Casual dress code */
SELECT *
FROM event
WHERE price = 0
AND dresscode_iddresscode = 6;

/* Get all Miami users */
SELECT *
FROM user
WHERE city_idcity = 1

/* Update Tony's gender */
UPDATE user
SET gender = 1
WHERE iduser = 12;

/* Update your own email address */
UPDATE user 
SET email = "rgerhard@aii.edu"
WHERE iduser = 10;


/* Delete Ioannis from the user table*/
DELETE FROM user
WHERE iduser = 6;


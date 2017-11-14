
CREATE TABLE restaurant (

	id SERIAL NOT NULL PRIMARY KEY,

	name VARCHAR,

	distance INTEGER,

	stars INTEGER,

	category VARCHAR,

	favorite VARCHAR,

	takeout BOOLEAN,

	prev_time DATE

);


INSERT INTO restaurant VALUES (

	DEFAULT,

	'coco crepes',

	25,

	3.6,

	'Dessert',

	'Nutella',

	FALSE,

	'2017-04-20'
);


INSERT INTO restaurant VALUES (

	DEFAULT,

	'dimassi',

	10,

	5,

	'Mediterranean',

	'lamb',

	FALSE,

	'2017-04-14'

);



--



INSERT INTO restaurant VALUES (

	DEFAULT,

	'Waffle Bus',

	9,

	5,

	'Burgers',

	'Bacon Burger',

	TRUE,

	'2016-06-05'

);



--



INSERT INTO restaurant VALUES (

	DEFAULT,

	'Dennys',

	12,

	3,

	'Diner',

	'Slam',

	TRUE,

	'2017-09-30'

);



INSERT INTO restaurant VALUES (

	DEFAULT,

	'Ruggles',

	8,

	5,

	'Cafe',

	'sandwhich',

	TRUE,

	'2017-01-25'

);



--



INSERT INTO restaurant VALUES (

	DEFAULT,

	'Blue Nile',

	10,

	3,

	'Ethiopian',

	'Kifto',

	FALSE,

	'2017-10-02'

);



--



INSERT INTO restaurant VALUES (

	DEFAULT,

	'Himalaya',

	12,

	2,

	'BBQ',

	'Gulab Juman',

	TRUE,

	'2017-06-08'

);










--



INSERT INTO restaurant VALUES (

	DEFAULT,

	'Moon Tower',

	1,

	3,

	'Burgers',

	'Chong Burger',

	TRUE,

	'2017-09-26'

);



SELECT name FROM restaurant WHERE stars >= 5


SELECT favorite FROM restaurant WHERE stars >= 5; 

SELECT name FROM restaurant WHERE name = 'Moon Tower';

SELECT name FROM restaurant WHERE category = 'BBQ';

SELECT name FROM restaurant WHERE takeout = 'true';

SELECT name FROM restaurant WHERE takeout = 'true' AND category = 'BBQ' ;

SELECT name FROM restaurant 

WHERE distance <= 2;



--



SELECT name FROM restaurant 

WHERE prev_time < (current_date - 7);



--



SELECT name FROM restaurant 

WHERE prev_time < (current_date - 7) AND stars = 5;



--



SELECT name, distance FROM restaurant 

ORDER BY distance;



--



SELECT name, stars FROM restaurant

ORDER BY stars DESC LIMIT 2;



--



SELECT name, stars, distance FROM restaurant

WHERE distance < 2

ORDER BY stars DESC LIMIT 2;



--



SELECT COUNT(*) FROM restaurant;








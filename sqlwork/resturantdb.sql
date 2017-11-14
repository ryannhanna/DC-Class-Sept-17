-- CREATE TABLES (restaurant, reviewer, review) --Thanks

CREATE TABLE restaurant (
	id SERIAL NOT NULL PRIMARY KEY,
	name VARCHAR,
	address VARCHAR,
	category VARCHAR
);

CREATE TABLE reviewer (
	id SERIAL NOT NULL PRIMARY KEY,
	name VARCHAR,
	email VARCHAR UNIQUE,
	karma INTEGER DEFAULT 0 CHECK (karma >= 0 AND karma <= 7)
);

CREATE TABLE review (
	id SERIAL NOT NULL PRIMARY KEY,
	stars INTEGER CHECK (stars > 0 AND stars <= 5),
	title VARCHAR,
	review VARCHAR(255),
	reviewer_id INTEGER REFERENCES reviewer (id),
	restaurant_id INTEGER REFERENCES restaurant (id)
);

-- INSERT INTO restaurant
INSERT INTO restaurant VALUES (
    DEFAULT,
    'Central Market',
    '3815 Westheimer Rd',
    'American'
);

INSERT INTO restaurant VALUES (
    DEFAULT,
    'Torchy''s Tacos',
    '2411 S Shepherd Dr',
    'Mexican'
);

INSERT INTO restaurant VALUES (
    DEFAULT,
    'Bombay Pizza Company',
    '914 Main St Unit 100',
    'Pizza'
);

INSERT INTO restaurant VALUES (
    DEFAULT,
    'The Brisket House',
    '5775 Woodway Dr',
    'Barbecue'
);

INSERT INTO restaurant VALUES (
    DEFAULT,
    'Good Dog Houston',
    '903 Studewood St',
    'American'
);

INSERT INTO restaurant VALUES (
    DEFAULT,
    'Fat Bao',
    '3419 Kirby Dr',
    'Asian'
);

INSERT INTO restaurant VALUES (
    DEFAULT,
    'Empanada House',
    '10001 Westheimer Rd',
    'Argentinean'
);

INSERT INTO restaurant VALUES (
    DEFAULT,
    'Velvet Taco',
    '4819 Washington Ave',
    'Mexican'
);

INSERT INTO restaurant VALUES (
    DEFAULT,
    '8th Wonder Brewery',
    '2202 Dallas St',
    'Bar'
);

INSERT INTO restaurant VALUES (
    DEFAULT,
    'Dak and Bop',
    '1801 Binz St, Suite 120',
    'Asian'
);

-- INSERT INTO reviewer AND review FOR central market
INSERT INTO reviewer VALUES (
    DEFAULT,
    'June',
    'june@email.com',
    1
);

INSERT INTO review VALUES (
    DEFAULT,
    5,
    'Foodie Paradise',
    'This the BEST grocery store out there!',
    1,
    1
);

INSERT INTO reviewer VALUES (
    DEFAULT,
    'AUSAGUY',
    'AUSAGUY@email.com',
    7
);

INSERT INTO review VALUES (
    DEFAULT,
    3,
    'Want Lamb shank? Come here',
    'This place is a very big property with plenty of parking',
    2,
    1
);

-- INSERT INTO reviewer AND review FOR torchy's tacos
INSERT INTO reviewer VALUES (
    DEFAULT,
    'Es',
    'es@email.com',
    2
);

INSERT INTO review VALUES (
    DEFAULT,
    4,
    'Fantastic tacos',
    'Tacos were awesome and came out quickly after ordering.',
    3,
    2
);

INSERT INTO reviewer VALUES (
    DEFAULT,
    'Jack',
    'Jack@email.com',
    3
);

INSERT INTO review VALUES (
    DEFAULT,
    4,
    'Bar is limited but cult of the taco is king here and worth the time and temperature',
    'Chain famous all over the state now, really good tacos, inventive, go on line to check out menu, secret menu, and deals.',
    4,
    2
);

-- INSERT INTO reviewer AND review FOR Bombay Pizza Company
INSERT INTO reviewer VALUES (
    DEFAULT,
    'Chad',
    'chad@email.com',
    5
);

INSERT INTO review VALUES (
    DEFAULT,
    2,
    'overrated....',
    ' I accidently ate here a few times and the food is average but overrated nationally. ',
    5,
    3
);

INSERT INTO reviewer VALUES (
    DEFAULT,
    'Amit',
    'Amit@email.com',
    4
);

INSERT INTO review VALUES (
    DEFAULT,
    3,
    'Leaves you desiring more',
    'The place serves one of the best thin crust pizza I ever had but the punch the spiciness is missing.',
    6,
    3
);

-- INSERT INTO reviewer AND review FOR the brisket house
INSERT INTO reviewer VALUES (
    DEFAULT,
    'William',
    'William@email.com',
    6
);

INSERT INTO review VALUES (
    DEFAULT,
    4,
    'First timer - Enjoyed the food and the atmosphere',
    'Food was good and competitively priced.',
    7,
    4
);

INSERT INTO reviewer VALUES (
    DEFAULT,
    'Evelyn',
    'Evelyn@email.com',
    6
);

INSERT INTO review VALUES (
    DEFAULT,
    1,
    'Brisket Horrible',
    'the brisket was tough and it was not seasoned enough',
    8,
    4
);

-- INSERT INTO reviewer AND review FOR good dog house
INSERT INTO reviewer VALUES (
    DEFAULT,
    'Crimson',
    'Crimson@email.com',
    2
);

INSERT INTO review VALUES (
    DEFAULT,
    3,
    'Cozy and Laid Back',
    'This is a very laid back restaurant with a patio out front and in the back of the restaurant.',
    9,
    5
);

INSERT INTO reviewer VALUES (
    DEFAULT,
    'Tiffani',
    'Tiffani@email.com',
    3
);

INSERT INTO review VALUES (
    DEFAULT,
    3,
    'Good Dog Not Bad But Not Great',
    'I thought the food was okay, but a bit overpriced',
    10,
    5
);

-- INSERT INTO reviewer AND review FOR fat bao
INSERT INTO reviewer VALUES (
    DEFAULT,
    'Chester',
    'Chester@email.com',
    4
);

INSERT INTO review VALUES (
    DEFAULT,
    5,
    'Best fat fries',
    'my god they were so great. ',
    11,
    6
);

INSERT INTO reviewer VALUES (
    DEFAULT,
    'Michele',
    'Michele@email.com',
    1
);

INSERT INTO review VALUES (
    DEFAULT,
    3,
    'Not for me',
    ' I found the texture of Bao personally undesirable to my own pallet and the food, overall, was bland.',
    12,
    6
);

-- INSERT INTO reviewer AND review FOR empanada house
INSERT INTO reviewer VALUES (
    DEFAULT,
    'MJ',
    'MJ@email.com',
    6
);

INSERT INTO review VALUES (
    DEFAULT,
    1,
    'Did we eat at the same place?',
    'Only one of the dozen or so empanadas we purchased were just OK.',
    13,
    7
);

INSERT INTO reviewer VALUES (
    DEFAULT,
    'Jeff',
    'Jeff@email.com',
    7
);

INSERT INTO review VALUES (
    DEFAULT,
    5,
    'Awesome empanadas',
    'This was my first visit to the original Marini''s Empanadas House and will not be my last.',
    14,
    7
);

-- INSERT INTO reviewer AND review FOR velvet taco
INSERT INTO reviewer VALUES (
    DEFAULT,
    'Opera',
    'Opera@email.com',
    2
);

INSERT INTO review VALUES (
    DEFAULT,
    2,
    'Inconsistent service',
    'The customer service here is not great.',
    15,
    8
);

INSERT INTO reviewer VALUES (
    DEFAULT,
    'Cindi',
    'Cindi@email.com',
    4
);

INSERT INTO review VALUES (
    DEFAULT,
    3,
    'Great Diversity of Tacos',
    'This is a fun place to get quick tacos.',
    16,
    8
);

-- INSERT INTO reviewer AND review FOR 8th wonder brewery
INSERT INTO reviewer VALUES (
    DEFAULT,
    'Eugena',
    'Eugena@email.com',
    0
);

INSERT INTO review VALUES (
    DEFAULT,
    4,
    'Good beer and craft brewery',
    'The beers are good, especially the Hopston and Intellectuale pale ales.',
    17,
    9
);

INSERT INTO reviewer VALUES (
    DEFAULT,
    'Steve',
    'Steve@email.com',
    3
);

INSERT INTO review VALUES (
    DEFAULT,
    3,
    'Good Time Socializing',
    'The different beers are ok but I was disappointed that some of the beers',
    18,
    9
);

-- INSERT INTO reviewer AND review FOR Dak and Bop
INSERT INTO reviewer VALUES (
    DEFAULT,
    'Drew',
    'Drew@email.com',
    2
);

INSERT INTO review VALUES (
    DEFAULT,
    3,
    'Good Wings, Wouldn''t Go Back',
    'we did not have a waiter come by our table unless we flagged them down.',
    19,
    10
);

INSERT INTO reviewer VALUES (
    DEFAULT,
    'Sherwin',
    'Sherwin@email.com',
    2
);

INSERT INTO review VALUES (
    DEFAULT,
    5,
    'Great place for Korean fried chicken!',
    'was treated to great service and good food.',
    20,
    10
);

-- 1. List all the reviews for a given restaurant given a specific restaurant ID.
SELECT review.review
FROM review
	JOIN restaurant
		ON restaurant.id = review.restaurant_id
WHERE restaurant.id = 10;

-- 2. List all the reviews for a given restaurant, given a specific restaurant name.
SELECT review.review
FROM review
	JOIN restaurant
		ON restaurant.id = review.restaurant_id
WHERE restaurant.name = 'The Brisket House';

-- 3. List all the reviews for a given reviewer, given a specific author name.
SELECT review.review
FROM review
	JOIN reviewer
		ON reviewer.id = review.reviewer_id
WHERE reviewer.name = 'Jack';

-- 4. List all the reviews along with the restaurant they were written for. In the query result, select the restaurant name and the review text.
SELECT restaurant.name, review.review
FROM restaurant
	JOIN review
		ON review.restaurant_id = restaurant.id;

-- 5. Get the average stars by restaurant. The result should have the restaurant name and its average star rating.
SELECT restaurant.name, AVG(review.stars)
FROM restaurant
	JOIN review
		ON review.restaurant_id = restaurant.id
GROUP BY restaurant.name;

-- 6. Get the number of reviews written for each restaurant. The result should have the restaurant name and its review count.
SELECT restaurant.name, COUNT(review.review)
FROM restaurant
	JOIN review
		ON review.restaurant_id = restaurant.id
GROUP BY restaurant.name;

-- 7. List all the reviews along with the restaurant, and the reviewer's name.
-- The result should have the restaurant name, the review text, and the reviewer name.
-- Hint: you will need to do a three-way join - i.e. joining all three tables together.
SELECT restaurant.name, review.review, reviewer.name
FROM restaurant
	JOIN review
		ON review.restaurant_id = restaurant.id
	JOIN reviewer
		ON review.reviewer_id = reviewer.id;

-- 8. Get the average stars given by each reviewer. (reviewer name, average star rating)
SELECT reviewer.name, AVG(review.stars)
FROM reviewer
	JOIN review
		ON review.reviewer_id = reviewer.id
GROUP BY reviewer.name;

-- 9. Get the lowest star rating given by each reviewer. (reviewer name, lowest star rating)
SELECT reviewer.name, min(review.stars)
FROM reviewer
	JOIN review
		ON review.reviewer_id = reviewer.id
GROUP BY reviewer.name;

-- 10. Get the number of restaurants in each category. (category name, restaurant count)
SELECT restaurant.category, COUNT(restaurant.category)
FROM restaurant
GROUP BY restaurant.category
ORDER BY count DESC;

-- 11. Get number of 5 star reviews given by restaurant. (restaurant name, 5-star count)
SELECT restaurant.name, COUNT(review.stars)
FROM restaurant
	JOIN review
		ON review.restaurant_id = restaurant.id
WHERE review.stars = 5
GROUP BY restaurant.name;

-- 12. Get the average star rating for a food category. (category name, average star rating)
SELECT restaurant.category, AVG(review.stars)
FROM restaurant
	JOIN review
		ON review.restaurant_id = restaurant.id
GROUP BY restaurant.category
ORDER BY avg DESC;

/* Select all columns and rows from the movies table */
SELECT * from movies;

/* Select only the title and id of the first 10 rows */
SELECT title, id
FROM movies
LIMIT 10;

/* Find the movie with the id of 485 */
SELECT title
FROM movies
WHERE id = 485;

/* Find the id (only that column) of the movie Made in America (1993) */
SELECT id
FROM movies
WHERE title = 'Made in America (1993)';

/* Find the first 10 sorted alphabetically */
SELECT id, title, genres
FROM movies
ORDER BY title asc
LIMIT 10;

/* Find all movies from 2002 */
SELECT id, title, genres
FROM movies
WHERE title like '%(2002)';

/* Find out what year the Godfather came out */
SELECT title
FROM movies
WHERE title like 'Godfather, The%';

/* Without using joins find all the comedies */
SELECT id, title, genres
FROM movies
WHERE genres like '%Comedy%';

/* Find all comedies in the year 2000 */
SELECT id, title, genres
FROM movies
WHERE title like '%(2000)' AND genres like '%Comedy%';

/* Find any movies that are about death and are a comedy */
SELECT id, title, genres
FROM movies
WHERE title like '%Death%' AND genres like '%Comedy%';

/* Find any movies from either 2001 or 2002 with a title containing super */
SELECT id, title, genres
FROM movies
WHERE title like '%Super%' AND (title like '%(2001)' OR title like '%(2002)');

/* Create a new table called actors (We are going to pretend the actor can only play in one movie). The table should include name, character name, foreign key to movies and date of birth at least plus an id field. */
Done manually in Sequel Pro - Please see actors table!

/* Pick 3 movies and create insert statements for 10 actors each. You should use the multi value insert statements */
INSERT INTO actors (id, name, charName, movieID, birthDate)
VALUES
(1, 'Mark Hamill', 'Luke Skywalker', 260, 09251951),
(2, 'Carrie Fisher', 'Leia Organa', 260, 10211956),
(3, 'Harrison Ford', 'Han Solo', 260, 07131942),
(4, 'Alec Guinness', 'Obi-Wan Kenobi', 260, 04021914),
(5, 'Anthony Daniels', 'C-3PO', 260, 02211946),
(6, 'Kenny Baker', 'R2-D2', 260, 08241934),
(7, 'Peter Mayhew', 'Chewbacca', 260, 05191944),
(8, 'Frank Oz', 'Yoda', 260, 05251944),
(9, 'Billy Dee Williams', 'Lando Calrissian', 260, 04061937),
(10, 'James Earl Jones', 'Darth Vader', 260, 01171931),
(11, 'Mark Hamill', 'Luke Skywalker', 1196, 09251951),
(12, 'Carrie Fisher', 'Leia Organa', 1196, 10211956),
(13, 'Harrison Ford', 'Han Solo', 1196, 07131942),
(14, 'Alec Guinness', 'Obi-Wan Kenobi', 1196, 04021914),
(15, 'Anthony Daniels', 'C-3PO', 1196, 02211946),
(16, 'Kenny Baker', 'R2-D2', 1196, 08241934),
(17, 'Peter Mayhew', 'Chewbacca', 1196, 05191944),
(18, 'Frank Oz', 'Yoda', 1196, 05251944),
(19, 'Billy Dee Williams', 'Lando Calrissian', 1196, 04061937),
(20, 'James Earl Jones', 'Darth Vader', 1196, 01171931),
(21, 'Mark Hamill', 'Luke Skywalker', 1210, 09251951),
(22, 'Carrie Fisher', 'Leia Organa', 1210, 10211956),
(23, 'Harrison Ford', 'Han Solo', 1210, 07131942),
(24, 'Alec Guinness', 'Obi-Wan Kenobi', 1210, 04021914),
(25, 'Anthony Daniels', 'C-3PO', 1210, 02211946),
(26, 'Kenny Baker', 'R2-D2', 1210, 08241934),
(27, 'Peter Mayhew', 'Chewbacca', 1210, 05191944),
(28, 'Frank Oz', 'Yoda', 1210, 05251944),
(29, 'Billy Dee Williams', 'Lando Calrissian', 1210, 04061937),
(30, 'James Earl Jones', 'Darth Vader', 1210, 01171931);

/* Create a new column in the movie table to hold the MPAA rating. UPDATE 5 different movies to their correct rating */
UPDATE movies
SET rating = 'G'
WHERE id = 1;

UPDATE movies
SET rating = 'PG'
WHERE id = 2;

UPDATE movies
SET rating = 'PG-13'
WHERE id = 3;

UPDATE movies
SET rating = 'R'
WHERE id = 4;

UPDATE movies
SET rating = 'PG-13'
WHERE id = 5;

/* Find all the ratings for the movie Godfather, show just the title and the rating */
SELECT movies.title, ratings.rating
FROM movies
left join ratings ON movies.id = ratings.movie_id
WHERE movies.title like 'Godfather, The%'; 

/* Order the previous objective by newest to oldest */
SELECT movies.title, ratings.rating, ratings.timestamp
FROM movies
left join ratings ON movies.id = ratings.movie_id
WHERE movies.title like 'Godfather, The%'
ORDER BY ratings.timestamp desc;

/* Find the comedies from 2005 and get the title and imdbid from the links table */
SELECT movies.title, movies.genres, links.imdb_Id
FROM movies
left join links ON movies.id = links.movie_Id
WHERE title like '%(2005)' AND genres like '%Comedy%';

/* Find all movies that have no ratings */
SELECT movies.title, ratings.rating
FROM movies
left join ratings ON movies.id = ratings.movie_id
WHERE ratings.rating = '';

/* Get the average rating for a movie */
SELECT AVG(rating)
FROM ratings
WHERE movie_id = 1;

/* Get the total ratings for a movie */
SELECT COUNT(rating)
FROM ratings
WHERE movie_id = 1;

/* Get the total movies for a genre */
SELECT COUNT(id)
FROM movies
WHERE genres like '%Comedy%';

/* Get the average rating for a user */
SELECT AVG(rating)
FROM ratings
WHERE user_id = 1;

/* Find the user with the most ratings */
SELECT COUNT(rating), user_id
FROM ratings
GROUP BY user_id
ORDER BY COUNT(rating) desc
LIMIT 1;

/* Find the user with the highest average rating */
SELECT AVG(rating), user_id
FROM ratings
GROUP BY user_id
ORDER BY AVG(rating) desc
LIMIT 1;

/* Find the user with the highest average rating with more than 50 reviews */
SELECT AVG(rating), user_id
FROM ratings
GROUP BY user_id
HAVING COUNT(rating) > 50
ORDER BY AVG(rating) desc
LIMIT 1;

/* Find the movies with an average rating over 4 */
SELECT AVG(rating), movie_id
FROM ratings
GROUP BY movie_id
HAVING AVG(rating) > 4
ORDER BY AVG(rating) desc;

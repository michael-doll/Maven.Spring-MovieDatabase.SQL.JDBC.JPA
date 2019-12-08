/*Add the following movies to the movies table using an insert statement:*/
DROP TABLE IF EXISTS TEST;
CREATE TABLE Movies(
                       Title varchar(255),
                       Runtime int,
                       Genre varchar(255),
                       IMDBScore int,
                       Rating varchar(255)
);

INSERT INTO movies(
    Title,
    Runtime,
    Genre,
    IMDBScore,
    Rating)
Values(
          'Howard The Duck',
          110,
          'Sci-Fi',
          4.6,
          'PG'),
      (
          'Lavalantula',
          83,
          'Horror',
          4.7,
          'TV-14'),
      (
          'Starship Troopers',
          129,
          'Sci-Fi',
          7.2,
          'PG-13'
      ),
      (
          'Waltz With Bashir',
          83,
          'Documentary',
          8.0,
          'R'
      ),
      (
          'Spaceballs',
          96,
          'Comedy',
          7.1,
          'PG'
      ),
      (
          'Monsters Inc.',
          92,
          'Animation',
          8.1,
          'G'
      );
/*Create a query to find all movies in the Sci-Fi genre. */
SELECT * FROM Movies WHERE GENRE = 'Sci-Fi';
/*Create a query to find all movies in the Sci-Fi genre. */
SELECT * FROM Movies WHERE ImdbScore>=6.5;
/*For parents who have young kids, but who don't want to sit through long children's movies, create a query to find all of the movies rated G or PG that are less than 100 minutes long.*/
SELECT * FROM Movies WHERE Runtime < 100 AND (Rating = 'G' OR Rating = 'PG-13');
/*Create a query to show the average runtimes of movies rated below a 7.5, grouped by their respective genres.*/
SELECT AVG(Runtime) FROM Movies Where ImdbScore < 7.5 GROUP BY Genre;
/*There's been a data entry mistake; Starship Troopers is actually rated R, not PG-13. Create a query that finds the movie by its title and changes its rating to R.*/
UPDATE Movies SET Rating = 'R' WHERE Title = 'Starship Troopers';
/*Show the ID number and rating of all of the Horror and Documentary movies in the database. Do this in only one query.*/
SELECT Title FROM Movies WHERE (Genre = 'Horror' OR Genre = 'Documentary');
/*This time let's find the average, maximum, and minimum IMDB score for movies of each rating.*/
SELECT AVG(IMDBScore) FROM Movies GROUP BY Rating;
SELECT MIN(IMDBScore) FROM Movies GROUP BY Rating;
SELECT MAX(IMDBScore) FROM Movies GROUP BY Rating;
/*That last query isn't very informative for ratings that only have 1 entry. use a HAVING COUNT(*) > 1 clause to only show ratings with multiple movies showing.*/
/*SELECT AVG(IMDBScore) FROM Movies WHERE Rating HAVING COUNT(*) > 1; FIX THIS*/
/*Let's make our movie list more child-friendly. Delete all entries that have a rating of R. Remember to record your query in script.sql.*/
DELETE FROM Movies WHERE Rating= 'R';
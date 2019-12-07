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


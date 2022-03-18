USE codeup_test_db;

SELECT ' Albums released after 1991' AS 'Albums';
DELETE FROM albums WHERE release_date > 1991;

SELECT 'Albums with the Disco genre' AS 'Deleting';
DELETE FROM albums WHERE genre = 'Disco';

SELECT 'Albums by Whitney Houston' AS 'Deleting';
DELETE FROM albums WHERE artist = 'Whitney Houston';

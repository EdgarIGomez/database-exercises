USE codeup_test_db;

-- SELECT 'Pink Floyd' AS 'Albums';
-- SELECT name FROM albums WHERE artist = 'Pink Floyd';

SELECT name AS 'Pink Floyd Albums' FROM albums WHERE artist = 'Pink Floyd';


-- SELECT 'Sgt. Pepper''s Lonely Hearts Club Band Released' AS 'Year';
-- SELECT release_date FROM albums WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';

SELECT release_date AS ' YearSgt. Pepper''s Lonely Hearts Club Band Released' FROM albums WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';


-- SELECT 'Nevermind' AS 'GENRE';
-- SELECT genre FROM albums WHERE name = 'Nevermind';

SELECT genre AS 'Nevermind Genre' FROM albums WHERE name = 'Nevermind';


-- SELECT '1990s' AS 'Albums';
-- SELECT name FROM albums WHERE release_date >= 1990 AND release_date <= 1999;

SELECT name AS 'Albums from the 1990s' FROM albums WHERE release_date >= 1990 AND release_date <= 1999;

-- SELECT 'Less than 20 million certified copies sold' AS 'Albums';
-- SELECT name FROM albums WHERE sales < 20;

SELECT name AS 'Less than 20 million certified copies sold' FROM albums WHERE sales < 20;


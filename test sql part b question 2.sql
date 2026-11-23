--q 1)
SELECT genre, count(*) FROM movies
GROUP by genre;

--q 2)
SELECT year, sum(revenue) FROM movies
GROUP by year;

--q 3) 
SELECT genre, avg(revenue) FROM movies
GROUP by genre;

--q 4)
SELECT genre, language, avg(revenue) FROM movies
GROUP by genre, language;

--q 5)
SELECT language, count(*) FROM movies
GROUP by language
ORDER by count(*) ASC
LIMIT 1;
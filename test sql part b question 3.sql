--q 1)
SELECT tourists.first_name, tourists.last_name, countries.country_name FROM tourists
JOIN countries
on tourists.country_id = countries.id;

--q 2)
SELECT tourists.first_name, tourists.last_name, tours.*  FROM tourists
JOIN tours
on tours.id = tourists.tour_id ;

--q 3)
SELECT tourists.first_name, tourists.last_name, tours.*  FROM tourists
LEFT JOIN tours
on tours.id = tourists.tour_id ;

--q 4)
SELECT tourists.first_name, tourists.last_name, tours.*  FROM tourists
FULL JOIN tours
on tours.id = tourists.tour_id ;

--q 5)
SELECT tourists.id, tourists.first_name, tourists.last_name, tours.*  FROM tourists
LEFT JOIN tours
on tours.id = tourists.tour_id 
WHERE tours.id is NULL;

DELETE FROM tourists
WHERE tourists.id = 1;
-- write your queries here

--1.
  SELECT * FROM owners o
  FULL JOIN vehicles v
  ON o.id = v.owner_id;

--2.
  SELECT first_name, last_name, COUNT(owner_id)
  FROM owners o 
  JOIN vehicles v 
  GROUP BY (first_name, last_name)
  ORDER BY first_name;

--3.
  SELECT first_name, last_name,
  COUNT(owner_id) AS car_count,
  ROUND(AVG(price)) AS avg_price
  FROM owners o
  JOIN vehicles v
  ON o.id = v.owner_id
  GROUP BY (first_name, last_name)
  HAVING COUNT(owner_id) > 1 AND ROUND(AVG(price)) > 10000
  ORDER BY first_name DESC;
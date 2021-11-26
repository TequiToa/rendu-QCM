--EXERCICE 01
--01
SELECT avg(salary) FROM pilots;

--02
SELECT avg(salary), compagny FROM pilots GROUP BY compagny;

--03
SELECT name FROM pilots wher salary > (SELECT AVG(salary) FROM pilots);
--04
SELECT max(salary)-min(salary) FROM pilots;

--05
SELECT c.name AS compagny_name FROM compagnies AS c
INNER JOIN pilots AS p ON c.comp = p.compagny 
WHERE salary > (SELECT AVG(salary) FROM pilots); 

--06
 SELECT p.name AS pilot_name FROM pilots AS p
INNER JOIN compagnies AS C ON p.compagny = c.comp
WHERE salary > (SELECT AVG(salary) FROM pilots); 

--EXERCICE 02
--01
UPDATE pilots
SET salary = (salary - salary * 0.4) 
WHERE compagny = 'AUS';

--02
SELECT DISTINCT plane FROM `pilots`
WHERE compagny='AUS' IN (
  SELECT plane 
  FROM `pilots`
  WHERE compagny='FRE1'
);
SELECT COUNT(*) FROM titanic;
SELECT 
Survived,
COUNT(*) AS count 
ROUND(COUNT(*)*100.0 / (SELECT COUNT(*) FROM titanic), 2) AS percent
FROM titanic

SELECT 
Sex,
AVG(Survived)* 100 AS survived_percent
FROM titanic 
GROUP BY Sex;
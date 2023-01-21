-- https://www.hackerrank.com/challenges/occupations/problem?isFullScreen=false
WITH Mytable AS(
    SELECT Name, Occupation, 
    ROW_NUMBER() OVER(PARTITION BY Occupation ORDER BY Name) AS Current_Order_In_Occupation
FROM OCCUPATIONS
)
SELECT MAX(CASE WHEN Occupation = "Doctor" THEN Name END),
MAX(CASE WHEN Occupation = "Professor" THEN Name END) ,
MAX(CASE WHEN Occupation = "Singer" THEN Name END) ,
MAX(CASE WHEN Occupation = "Actor" THEN Name END) 
FROM Mytable
GROUP BY Current_Order_In_Occupation;
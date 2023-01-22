-- https://www.hackerrank.com/challenges/the-company/problem
SELECT C.company_code, 
C.founder, 
COUNT(DISTINCT L.lead_manager_code), 
COUNT(DISTINCT S.senior_manager_code), 
COUNT(DISTINCT M.manager_code),
COUNT(DISTINCT E.employee_code)
FROM Company AS C
JOIN (
    SELECT DISTINCT company_code, lead_manager_code
    FROM Lead_Manager
) AS L
ON L.company_code = C.company_code
JOIN (
    SELECT DISTINCT company_code, senior_manager_code
    FROM Senior_Manager
) AS S
ON S.company_code = C.company_code
JOIN (
    SELECT DISTINCT company_code, manager_code
    FROM Manager
) AS M
ON M.company_code = C.company_code
JOIN (
    SELECT DISTINCT company_code, employee_code
    FROM Employee
) AS E
ON E.company_code = C.company_code
GROUP BY C.company_code, C.founder
ORDER BY C.company_code;
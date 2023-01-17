-- https://www.hackerrank.com/challenges/challenges/problem?isFullScreen=true
WITH sql1 AS (
    SELECT hacker_id, COUNT(*) AS count FROM challenges
    GROUP BY hacker_id
), sql2 AS (
    SELECT count FROM sql1
    WHERE count <> (SELECT MAX(count) FROM sql1)
    GROUP BY count
    HAVING COUNT(*) > 1
)
SELECT H.hacker_id, H.name, COUNT(*) as count FROM challenges as C
JOIN hackers as H
ON H.hacker_id = C.hacker_id
GROUP BY H.hacker_id, H.name
HAVING count NOT IN (SELECT * FROM sql2)
ORDER BY count DESC, H.hacker_id ASC
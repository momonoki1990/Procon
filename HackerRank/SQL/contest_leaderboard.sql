-- https://www.hackerrank.com/challenges/contest-leaderboard/problem?isFullScreen=false
SELECT M.hacker_id, H.name, SUM(max_score) as total_score
FROM (
    SELECT hacker_id, challenge_id, MAX(score) as max_score FROM submissions
    WHERE score <> 0
    GROUP BY hacker_id, challenge_id
) AS M
JOIN hackers AS H
ON H.hacker_id = M.hacker_id
GROUP BY M.hacker_id, H.name
ORDER BY total_score DESC, hacker_id ASC;
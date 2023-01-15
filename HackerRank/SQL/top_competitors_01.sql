-- https://www.hackerrank.com/challenges/full-score/problem?isFullScreen=true

SELECT H.hacker_id, H.name from Hackers as H
JOIN Submissions as S
ON S.hacker_id = H.hacker_id
JOIN Challenges as C
ON C.challenge_id = S.challenge_id
JOIN Difficulty as D
ON D.difficulty_level = C.difficulty_level
WHERE S.score = D.score
GROUP BY H.hacker_id, H.name
HAVING COUNT(H.hacker_id) > 1
ORDER BY COUNT(H.hacker_id) DESC, H.hacker_id ASC
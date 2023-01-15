-- https://www.hackerrank.com/challenges/harry-potter-and-wands/problem
-- 問題文の意味がわからなかった。。。(回答をコピペ)

SELECT w1.id, sq.age, sq.min_gold, sq.power
FROM
(SELECT w.code, p.age, w.power,min(w.coins_needed) as min_gold 
FROM wands w join wands_property p
ON w.code=p.code
WHERE p.is_evil=0
GROUP BY w.code, p.age, w.power) AS sq
JOIN wands w1
ON w1.code=sq.code AND w1.coins_needed=sq.min_gold
ORDER BY sq.power DESC, sq.age DESC; 
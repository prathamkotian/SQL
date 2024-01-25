-- Rank Scores
SELECT s1.Score , 
(SELECT COUNT(DISTINCT score) from Scores s2 where s1.score<=s2.score) as `Rank`
from Scores s1
order by s1.score desc;

-- Using DENSERANK()
SELECT s.score, DENSE_RANK() OVER (ORDER BY s.score DESC) as `rank`
FROM Scores s

-- Consecutive Numbers
WITH cte AS
(
    SELECT *, LEAD(num,1) OVER() AS Next_1,LEAD(num,2) OVER() AS Next_2
    FROM Logs
)

SELECT DISTINCT num as ConsecutiveNums 
FROM cte
WHERE num=Next_1 AND num=Next_2

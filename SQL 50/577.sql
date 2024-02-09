-- Employee Bonus

SELECT E.name,B.bonus
FROM Employee E
LEFT JOIN Bonus B on E.empId=B.empId
WHERE B.bonus <1000 or B.bonus is null
SELECT e.name AS Employee
FROM Employee e
-- join table with itself using the managerId and id columns. 
-- This allows us to compare the salary of each employee with the salary of their manager.
INNER JOIN Employee m ON e.managerId = m.id
-- the WHERE clause to filter out the rows 
WHERE e.salary > m.salary
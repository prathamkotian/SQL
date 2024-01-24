-- Nth Highest Salary
-- Declare a variable M and set it to N - 1. This is because the LIMIT clause uses a zero-based index,
-- so the Nth highest salary corresponds to the (N-1)th row in the result set.
-- Offset is used to specify from which row we want the data to retrieve
CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
    declare M INT;
    set M = N - 1;
  RETURN (
      select distinct Salary from Employee order by Salary desc limit 1 offset M
      
  );
END
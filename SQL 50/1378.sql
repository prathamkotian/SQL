-- Replace Employee ID With The Unique Identifier

select unique_id, name
from Employees
left join EmployeeUNI using (id)

-- OR

SELECT E2.unique_id,E1.name
FROM Employees E1
LEFT JOIN EmployeeUNI E2 ON E2.id=E1.id
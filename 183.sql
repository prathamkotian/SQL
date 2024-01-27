-- Customer who never orders

SELECT c.name AS Customers
FROM Customers c
LEFT JOIN Orders AS o ON c.id=o.customerId
WHERE o.customerId IS NULL
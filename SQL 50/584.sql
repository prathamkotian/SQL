-- Find Customer Referee
SELECT name 
FROM Customer
WHERE referee_id!=2 or referee_id is null
-- referee_id!=2 is integer type

SELECT name FROM Customer
WHERE IFNULL(referee_id, 1) <> 2;
-- IFNULL(refree_id, 1) --> means refree_id agar null h toh usse 1 consider kr lo...
-- <> 2 --> 2 ko to kisi v halat mein accept nhi krna h...

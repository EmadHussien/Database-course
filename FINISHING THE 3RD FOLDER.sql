-- Select the 'name' from the 'shippers' table and the 'name' from the 'products' table.
-- Perform a cross join between 'shippers' (SH) and 'products' (P), which returns the Cartesian product of both tables.
-- Order the results by the 'name' of the product.
SELECT SH.name, 
       P.name
FROM shippers SH
CROSS JOIN products P
ORDER BY P.name;

-- Select the 'name' from the 'shippers' table and the 'name' from the 'products' table.
-- Perform a cross join between 'shippers' (SH) and 'products' (P) using the old join syntax (equivalent to CROSS JOIN).
-- Order the results by the 'name' of the product.
SELECT SH.name, 
       P.name
FROM shippers SH, 
     products P
ORDER BY P.name;

-- Select 'customer_id', 'first_name', 'points', and assign the type "BRONZE" for customers with points less than 2000.
-- Union the results with:
-- Select 'customer_id', 'first_name', 'points', and assign the type "SILVER" for customers with points between 2000 and 3000.
-- Union the results with:
-- Select 'customer_id', 'first_name', 'points', and assign the type "GOLD" for customers with points greater than 3000.
-- Order the final results by 'first_name'.
SELECT customer_id, 
       first_name, 
       points, 
       "BRONZE" AS type 
FROM customers   
WHERE points < 2000
UNION		
SELECT customer_id, 
       first_name, 
       points, 
       "SILVER" AS type 
FROM customers   
WHERE points BETWEEN 2000 AND 3000 
UNION
SELECT customer_id, 
       first_name, 
       points, 
       "GOLD" AS type 
FROM customers   
WHERE points > 3000
ORDER BY first_name;

USE sql_store;

-- Select all columns from the 'customers' table where 'birth_date' is between January 1, 1990, and January 1, 2000.
SELECT * FROM customers
WHERE birth_date BETWEEN "1990-01-01" AND "2000-01-01";

-- Select all columns from the 'customers' table where 'address' contains either "TRAIL" or "AVENUE".
SELECT * FROM customers 
WHERE address LIKE "%TRAIL%" OR address LIKE "%AVENUE%";

-- Select all columns from the 'customers' table where 'phone' ends with the digit "9".
SELECT * FROM customers 
WHERE phone LIKE "%9";

-- Select all columns from the 'customers' table where 'first_name' matches either "ELKA" or "AMBUR" using a regular expression.
SELECT * FROM customers
WHERE first_name REGEXP "ELKA|AMBUR";

-- Select all columns from the 'customers' table where 'last_name' ends with "EY" or "ON" using a regular expression.
SELECT * FROM customers
WHERE last_name REGEXP "EY$|ON$";

-- Select all columns from the 'customers' table where 'last_name' starts with "MY" or "SE" using a regular expression.
SELECT * FROM customers
WHERE last_name REGEXP "^MY|SE";

-- Select all columns from the 'customers' table where 'last_name' contains either "B" followed by "R" or "U" using a regular expression.
SELECT * FROM customers
WHERE last_name REGEXP "B[RU]";

-- Select all columns from the 'orders' table where 'shipped_date' is NULL (orders that haven't been shipped yet).
SELECT * FROM orders
WHERE shipped_date IS NULL;

-- Select all columns and calculate 'total_price' (quantity * unit_price) from the 'order_items' table.
-- Only include rows where 'order_id' is 2 and order the results by 'total_price' in descending order.
SELECT *, 
       (quantity * unit_price) AS total_price
FROM order_items
WHERE order_id = 2
ORDER BY total_price DESC;

-- Select all columns from the 'customers' table and order the results by 'points' in descending order.
-- Limit the results to the top 3 customers with the highest points.
SELECT * FROM customers
ORDER BY points DESC
LIMIT 3;

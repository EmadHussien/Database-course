USE sql_store;

-- Select all columns from the 'customers' table and order the results by 'first_name'.
-- SELECT * FROM customers ORDER BY first_name;

-- Select the 'name' and 'unit_price' columns from the 'products' table.
-- Calculate a new price by multiplying 'unit_price' by 1.1 (increasing by 10%) and include it in the results as 'new price'.
SELECT name,
       unit_price,
       unit_price * 1.1 AS 'new price'
FROM products;

-- Select all columns from the 'orders' table where the 'order_date' is later than January 1, 2019.
SELECT * FROM orders
WHERE order_date > '2019-01-01';

-- Select all columns and the calculated total price (quantity * unit_price) from the 'order_items' table.
-- Only include rows where 'order_id' is 6 and the total price is greater than 30.
SELECT *, 
       quantity * unit_price AS total_price
FROM order_items
WHERE order_id = 6 
  AND (quantity * unit_price) > 30;

-- Select all columns from the 'products' table where 'quantity_in_stock' is either 49, 38, or 72.
SELECT * FROM products
WHERE quantity_in_stock IN (49, 38, 72);

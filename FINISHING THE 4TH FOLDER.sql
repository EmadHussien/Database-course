-- Update the 'customers' table to increase the 'points' by 50 for customers whose 'birth_date' is before January 1, 1990.
UPDATE customers
SET points = points + 50
WHERE birth_date < "1990-01-01";

-- Update the 'orders' table to set the 'comments' column to "GOLD CUSTOMER" for orders where the 'customer_id' belongs to a gold customer.
-- A gold customer is defined as one having more than 3000 points.
-- This is determined by a subquery that selects 'customer_id' from the 'customers' table where 'points' are greater than 3000.
UPDATE orders
SET comments = "GOLD CUSTOMER"
WHERE customer_id IN 
      (SELECT customer_id 
       FROM customers
       WHERE points > 3000);

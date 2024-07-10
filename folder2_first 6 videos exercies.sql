USE sql_store;

-- SELECT * FROM customers ORDER BY first_name;
/*
SELECT name,
 unit_price,
 unit_price*1.1 AS 'new price'	
 FROM products;
 
 
 SELECT * FROM ORDERS 
 WHERE ORDER_DATE > '2019-01-01';
 
 
 
 SELECT * , QUANTITY* UNIT_PRICE FROM ORDER_ITEMS 
 WHERE ORDER_ID = 6 AND (QUANTITY * UNIT_PRICE) > 30 ;
 
 
 
 SELECT * FROM products
 WHERE quantity_in_stock IN (49,38,72);
 */

--  YOU MUST ADD ALL THE COLUMNS THAT IS IN THE SELECT STATEMENT IN T HE  GROUP  CLAUSE EXCEPT THE AGGREGATE FUNCTION
-- THE JOIN ORDER OF TABLES DOESN'T MATTER


USE sql_store;

-- Calculate and aggregate sales, payments, and the difference for different periods in 2019.
-- Select the total sales, total payments, and the expected difference for the first half of 2019.
SELECT 
    "FIRST HALF OF 2019" AS DATE_RANGE,
    SUM(INVOICE_TOTAL) AS TOTAL_SALES,
    SUM(PAYMENT_TOTAL) AS TOTAL_PAYMENTS,
    SUM(INVOICE_TOTAL - PAYMENT_TOTAL) AS WHAT_WE_EXPECT
FROM invoices
WHERE INVOICE_DATE BETWEEN '2019-01-01' AND '2019-06-30'

UNION

-- Select the total sales, total payments, and the expected difference for the second half of 2019.
SELECT 
    "SECOND HALF OF 2019" AS DATE_RANGE,
    SUM(INVOICE_TOTAL) AS TOTAL_SALES,
    SUM(PAYMENT_TOTAL) AS TOTAL_PAYMENTS,
    SUM(INVOICE_TOTAL - PAYMENT_TOTAL) AS WHAT_WE_EXPECT
FROM invoices
WHERE INVOICE_DATE BETWEEN '2019-07-01' AND '2019-12-31'

UNION 

-- Select the total sales, total payments, and the expected difference for the entire year of 2019.
SELECT 
    "TOTAL" AS DATE_RANGE,
    SUM(INVOICE_TOTAL) AS TOTAL_SALES,
    SUM(PAYMENT_TOTAL) AS TOTAL_PAYMENTS,
    SUM(INVOICE_TOTAL - PAYMENT_TOTAL) AS WHAT_WE_EXPECT
FROM invoices
WHERE INVOICE_DATE BETWEEN '2019-01-01' AND '2019-12-31';

-- Select the date and name of payment methods along with the total amount of payments.
-- Group the results by date and payment method.
SELECT 
    P.date,
    PM.name AS PAYMENT_METHOD,
    SUM(P.amount) AS TOTAL_PAYMENTS
FROM payments P
JOIN payment_methods PM ON P.payment_method = PM.payment_method_id
GROUP BY P.date, PM.name
ORDER BY P.date;

-- Select customer details and the total amount they spent.
-- Join the customers table with orders and order_items to calculate the total spent.
-- Only include customers from the state of VA and group by customer details.
-- Filter the results to include only those who spent more than 100.
SELECT 
    C.CUSTOMER_ID, 
    C.FIRST_NAME, 
    C.LAST_NAME,
    SUM(OI.quantity * OI.unit_price) AS SPENT
FROM CUSTOMERS C
JOIN ORDERS O ON C.CUSTOMER_ID = O.CUSTOMER_ID
JOIN ORDER_ITEMS OI ON O.ORDER_ID = OI.ORDER_ID
WHERE C.state = 'VA'
GROUP BY 
    C.CUSTOMER_ID, 
    C.FIRST_NAME, 
    C.LAST_NAME
HAVING SPENT > 100;

-- Select the name of payment methods and the total amount for each.
-- Use the WITH ROLLUP modifier to include subtotals in the result.
SELECT 
    PM.name AS PAYMENT_METHOD,
    SUM(P.amount) AS TOTAL
FROM payments P
JOIN payment_methods PM ON P.payment_method = PM.payment_method_id
GROUP BY PM.name WITH ROLLUP;

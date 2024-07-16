-- Select 'order_id', 'product_id', 'name', 'quantity', and 'unit_price' from the 'order_items' and 'products' tables.
-- Join the 'order_items' table (OI) with the 'products' table (P) on the 'product_id' column.
SELECT order_id, 
       P.product_id, 
       P.name, 
       quantity, 
       P.unit_price
FROM order_items OI
JOIN products P ON OI.product_id = P.product_id;

-- Select 'payment_id', 'invoice_id', 'amount', client's 'name', and 'payment method' name from the 'payments', 'clients', and 'payment_methods' tables.
-- Join the 'payments' table (P) with the 'clients' table (C) on 'client_id'.
-- Join the 'payments' table (P) with the 'payment_methods' table (PM) on 'payment_method_id'.
SELECT P.payment_id,
       P.invoice_id,
       P.amount,
       C.name,
       PM.name AS "payment method"
FROM payments P
JOIN clients C ON P.client_id = C.client_id
JOIN payment_methods PM ON P.payment_method = PM.payment_method_id;


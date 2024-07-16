-- Insert new rows into the 'products' table with specified values for 'name', 'quantity_in_stock', and 'unit_price'.
-- The values being inserted are ("BAG", 5, 17), ("SHAVING MACHINES", 50, 10), and ("NAPKINS", 60, 18).
INSERT INTO products 
(name, quantity_in_stock, unit_price)
VALUES ("BAG", 5, 17),
       ("SHAVING MACHINES", 50, 10),
       ("NAPKINS", 60, 18);

-- Create a new table 'invoices_archive' and populate it with selected columns from the 'invoices' and 'clients' tables.
-- The new table includes 'invoice_id', 'number', client's 'name', 'invoice_total', 'payment_total', 'invoice_date', 'due_date', and 'payment_date'.
-- Join the 'invoices' table (I) with the 'clients' table (C) using 'client_id'.
-- Only include rows where 'payment_date' is not null (invoices that have been paid).
CREATE TABLE invoices_archive AS
SELECT I.invoice_id, 
       I.number, 
       C.name, 
       I.invoice_total, 
       I.payment_total, 
       I.invoice_date, 
       I.due_date, 
       I.payment_date
FROM invoices I
JOIN clients C USING (client_id)
WHERE I.payment_date IS NOT NULL;

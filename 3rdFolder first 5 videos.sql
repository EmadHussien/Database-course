
/*
SELECT ORDER_ID , P.PRODUCT_ID , P.NAME ,quantity, P.unit_price  
	FROM 
	order_items OI 
    JOIN 
    PRODUCTS P
	ON OI.product_id = P.PRODUCT_ID;
    
    */
    
    SELECT 
    P.PAYMENT_ID,
    P.INVOICE_ID,
    P.AMOUNT,
    C.NAME,
    PM.NAME
    AS "PAYMENT METHOD"
    FROM PAYMENTS P 
    JOIN clients C 
		ON P.CLIENT_ID = C.client_id
	JOIN payment_methods PM 
		ON P.PAYMENT_METHOD = PM.payment_method_id;
    
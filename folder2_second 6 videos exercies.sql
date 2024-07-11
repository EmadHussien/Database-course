USE sql_store;
/*
SELECT * FROM CUSTOMERS
	WHERE BIRTH_DATE BETWEEN "1990-01-01" AND "2000-01-01";
  
  SELECT * FROM CUSTOMERS 
	WHERE ADDRESS LIKE "%TRAIL%" OR ADDRESS LIKE "%AVENUE%"; 
    
    SELECT * FROM CUSTOMERS 
		WHERE PHONE LIKE "%9";
  
  
  SELECT  * FROM CUSTOMERS
	WHERE FIRST_NAME REGEXP "ELKA|AMBUR";
    
    SELECT * FROM CUSTOMERS
		WHERE LAST_NAME REGEXP "EY$|ON$";
        
        SELECT * FROM CUSTOMERS
			WHERE LAST_NAME REGEXP "^MY|SE";
        
            SELECT * FROM CUSTOMERS
				WHERE LAST_NAME REGEXP "B[RU]";
                
                
                select * FROM ORDERS
					WHERE SHIPPED_DATE IS NULL;
                    
                    
                    SELECT *  , (QUANTITY * UNIT_PRICE)  AS TOTAL_PRICE 
                    FROM ORDER_ITEMS
						WHERE ORDER_ID = 2
                        ORDER BY TOTAL_PRICE DESC
                        ;
                        -- lw order with 2 columns hy3ml al awl wa7d sorting beh 
                        -- b3den ysort al tany within the first one 
                        
                        
                        
                        SELECT * FROM CUSTOMERS
                        ORDER BY POINTS DESC 
                        LIMIT 3;
                        
                        */
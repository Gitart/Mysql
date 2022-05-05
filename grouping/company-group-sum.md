### Report with company by period 
-- Отчет по компаниям за период     
-- 4 - Зверененя від частних осіб     
-- 3 - Лист зверненнея від організації     
 
 ```sql
 SELECT 
       MAX(o.create_at) datecreate,
       MAX(o.company)   company,
       MAX(i.product)   product,
       SUM(i.weight)    weight,
       SUM(i.qty)       qty
    FROM order_items  i
    LEFT JOIN orders o
    ON    i.order_id = o.id
    WHERE o.typ     = 2 
    AND   o.typeget = 3
    AND   o.create_at  BETWEEN "2022-05-01" AND "2022-05-05"
    GROUP BY i.product_id, o.company 
    ```
    

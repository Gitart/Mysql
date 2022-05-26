### 💇🏻‍♂️ Report with company by period 
-- Отчет по компаниям за период     
-- 4 - Зверененя від частних осіб     
-- 3 - Лист зверненнея від організації     
 
 ```sql
 SELECT 
       MAX(o.create_at) AS datecreate,
       MAX(o.company)   AS company,
       MAX(i.product)   AS product,
       SUM(i.weight)    AS weight,
       SUM(i.qty)       AS qty
    FROM order_items  i
    LEFT JOIN orders o
    ON    i.order_id = o.id
    WHERE o.typ     = 2 
    AND   o.typeget = 3
    AND   o.create_at  BETWEEN "2022-05-01" AND "2022-05-05"
    GROUP BY i.product_id, o.company 
```
    

## Example
```sql

SELECT stock_lists.id, stock_lists.title as titl,  locations.id as idl, locations.title locatins
FROM stock_lists
JOIN locations 
on   locations.id = stock_lists.location_id

UPDATE contracts c
JOIN (
    SELECT order_id, 
          SUM(price)        AS price, 
          SUM(qty)          AS qty, 
          SUM(summ)         AS summ,
          SUM(summ_no_nds)  AS summ_no_nds,
          SUM(price*qty)    AS total_summ
          
    FROM  contract_items
    GROUP BY order_id
) i 
ON  c.id           = i.order_id
SET c.valume       = i.qty,
    c.qty          = i.qty,
    c.total_sum    = i.total_summ,
    c.summ         = i.summ,
    c.price        = i.price;
 -- WHERE c.id = 2;



```

## Update by order id

```sql
UPDATE order_items o
INNER JOIN (
  SELECT id, category_id, category, grp_id, grp  FROM  products
) x 
ON o.product_id = x.id
SET o.category_id = x.category_id ,
    o.category   = x.category ,
    o.grp_id     = x.grp_id,
    o.grp        = x.grp
 WHERE o.order_id = 5;
 ```
 
 
 ### Update Items
 ```sql
 -- Обновление итиговых сведенией по орпдеру 
UPDATE orders o
INNER JOIN (
  SELECT max(order_id) as order_id, sum(summ) as account, sum(qty) as qty, sum(weight) as weight
  FROM  order_items
  GROUP BY order_id
) x 
ON o.id = x.order_id
SET o.account = x.account,
    o.qty     = x.qty,
    o.weight  = x.weight
 WHERE o.id = 2;
 
-- Items sum
update orders set account=suma, qty=qt, weight=wq
select sum(summ) as sum, sum(qty), sum(weight)  into suma, qt, wq
from order_items 
where order_id=idorder;

-- update order by id

where id=idorder;
```

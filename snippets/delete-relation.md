### Удаление ордеров у кторых нет дочерних записей
set sql_safe_updates=0;

```sql
delete orders
from   orders  
left  JOIN  order_items   
ON  order_items.order_id = orders.id 
where order_items.order_id is null;
```

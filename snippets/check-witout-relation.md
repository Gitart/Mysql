## Проверка на подчиненность

* Отсутствующие записи в ордере и существующие в итемсах\

```sql
select orders.id as Order_ID, 
       order_items.order_id, 
       order_items.id,
       "Отсутствующие записи в ордере и существующие в итемсах" as description
from order_items 
left  JOIN  orders  ON orders.id = order_items.order_id
where orders.id is null
```


-- Нет подчиненных записей у ордеров
```sql
select orders.id as Order_ID, 
       order_items.order_id , 
       order_items.id,
       "Отсутствующие записи в ордере и существующие в итемсах" as description
from orders 
left  JOIN  order_items   ON  order_items.order_id=orders.id
where order_items.order_id is null
```

* Просмотр результатов
```sql
select * from order_items where order_id=11;
```

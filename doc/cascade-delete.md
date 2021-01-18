## Каскадное удаление связанных таблиц

Условие :  
Есть основная таблица ORDERS и подчиненная таблица ITEMS     
При удаление записи в таблице ORDRES должны и удалиться подчинененые записи в таблице ITEMS   


```sql
    -- Установка связи в ITEMS с ORDERS 
    -- При удалении ордера - удаляются связанные ITEMS
ALTER TABLE `parts`.`order_items` 
ADD CONSTRAINT `fg_orders`
  FOREIGN KEY (`order_id`)
  REFERENCES `parts`.`orders` (`id`)
  ON DELETE CASCADE
  ON UPDATE CASCADE;
```

# Не работает
```sql
-- Устанока связи ордера с итемся при удалении
ALTER TABLE `parts`.`orders` 
ADD CONSTRAINT `fg_items`
  FOREIGN KEY (`id`)
  REFERENCES `parts`.`order_items` (`order_id`)
  ON DELETE CASCADE
  ON UPDATE NO ACTION;
```

## Проверка потеряных связей со стороны ORDERS   
```sql
-- Отсутствующие записи в ордере и существующие в итемсах\
select orders.id as Order_ID, 
       order_items.order_id, 
       order_items.id,
       "Отсутствующие записи в ордере и существующие в итемсах" as description
from order_items 
left  JOIN  orders  
ON orders.id = order_items.order_id
where orders.id is null;
```

## Проверка потеряных связей со стороны ITEMS
```sql
-- Нет подчиненных записей у ордеров
select orders.id as Order_ID, 
       order_items.order_id , 
       order_items.id,
       " Нет подчиненных записей у ордеров" as description
from orders 
left  JOIN  order_items   
ON  order_items.order_id = orders.id
where order_items.order_id is null;

-- Удаление ордеров у кторых нет дочерних записей
set sql_safe_updates=0;

delete orders
from   orders  
left  JOIN  order_items   
ON  order_items.order_id = orders.id 
where order_items.order_id is null;
```




 

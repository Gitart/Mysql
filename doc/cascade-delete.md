## Каскадное удаление связанных таблиц

**Условие :**  
Есть основная таблица ORDERS и подчиненная таблица ITEMS     
При удаление записи в таблице ORDRES должны и удалиться подчинененые записи в таблице ITEMS   


**ВАЖНО**
Все таблицы должны иметь ENGINE = InnoDB;   
Без этого связи работать **не будут**.



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

## Еще примеры

```sql
CREATE TABLE IF NOT EXISTS `app_info` (
`_id` int(11) NOT NULL AUTO_INCREMENT,
`app_name` varchar(50) DEFAULT NULL,
`app_owner` varchar(50) DEFAULT NULL,
`last_update` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
PRIMARY KEY (`_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;


CREATE  TABLE `myDB`.`tab_info` (
`_id` INT NOT NULL AUTO_INCREMENT ,
`app_id` INT NOT NULL ,
`tab_title` VARCHAR(15) NOT NULL ,
PRIMARY KEY (`_id`) ,
UNIQUE INDEX `app_id_UNIQUE` (`app_id` ASC) ,
INDEX `app_tab_key` (`app_id` ASC) ,
CONSTRAINT `app_tab_key`
  FOREIGN KEY (`app_id` )
  REFERENCES `myDB`.`app_info` (`_id` )
  ON DELETE CASCADE
  ON UPDATE CASCADE); 
  ```
  


 

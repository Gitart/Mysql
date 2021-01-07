# Обновление главной таблицы данными из связных таблий


```sql
UPDATE     `orders` `ord`  
LEFT JOIN  `payment_types`  `pmnt` ON `ord`.`payment_type_id`  = `pmnt`.`id`
LEFT JOIN  `delivery_types` `dlv`  ON `ord`.`delivery_type_id` = `dlv`.`id`
LEFT JOIN  `areas`          `ar`   ON `ord`.`district_id`      = `ar`.`id`
LEFT JOIN  `cities`         `ct`   ON `ord`.`district_id`      = `ct`.`id`
SET ord.payment_type  = pmnt.Title,
    ord.delivery_type = dlv.Title,
    ord.city          = ct.Title,
    ord.district     = ar.Title
WHERE ord.id= 376;
```



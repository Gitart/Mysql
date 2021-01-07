## Вывод данных из основной таблицы и связанных таблиц

```sql
SELECT 
        `ord`.`id`               AS `idorder`,
        `ord`.`address`          AS `address`,
        `ord`.`mobile`           AS `mobile`,
        `ord`.`delivery_type_id` AS `deleivery_id`,
        `ord`.`payment_type_id`  AS `payment_id`,
        `st`.`title`             AS `status_name`,
        `st`.`id`                AS `status_id`,
        `dtp`.`title`            AS `delivery_name,`,
        `pmnt`.`title`           AS `payment_name`,
        `ar`.`title`             AS `area_name`,
        `ct`.`title`             AS `city_name`
    FROM `orders` `ord`  
	LEFT JOIN  `statuses`       `st`   ON `ord`.`status_id`        = `st`.`id` 
    LEFT JOIN  `delivery_types` `dtp`  ON `ord`.`delivery_type_id` = `dtp`.`id`
    LEFT JOIN  `payment_types`  `pmnt` ON `ord`.`payment_type_id`  = `pmnt`.`id`
    LEFT JOIN  `areas`          `ar`   ON `ord`.`district_id`      = `ar`.`id`
    LEFT JOIN  `cities`         `ct`   ON `ord`.`district_id`      = `ct`.`id`
```          

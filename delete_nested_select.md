# Удаление повторяющихся записей

**Задача**
Необходимо удалить повторяющиеся записи и оставить только одну  

Для контроля подсчет записей в базе   


```sql
-- Количество всего записей
SELECT count(*) FROM `parts-point`.stock_products ;

-- Группировка 
SELECT min(id), code, count(*) as cnt FROM `parts-point`.stock_products group by `code` having cnt>1;
```


### Удаление повторений через вложенный запрос очень долго

```sql
SET FOREIGN_KEY_CHECKS=0; -- to disable them
-- Удаление дубликатов кодов 
-- delete from `parts-point`.stock_products where id in (select min(e.id) from (select * from  `parts-point`.stock_products) e group by `code` having count(*)>1);

-- Опасность !!!
-- Очень долгая процедура!!!!!
-- Не двигалась !!!
use `parts-point`;
delete from `parts-point`.`stock_products` where id in (SELECT min(e.id) id  FROM (select id,code from  `parts-point`.stock_products) e group by `code` having count(*)>1) limit 100;
```


## Решение 
Вынести таблицу в view  dbls для последующего использования

```sql
CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `parts-point`.`dbls` AS
    SELECT 
        MAX(`e`.`id`) AS `id`
    FROM
        (SELECT 
            `parts-point`.`stock_products`.`id` AS `id`,
                `parts-point`.`stock_products`.`code` AS `code`
        FROM
            `parts-point`.`stock_products`) `e`
    GROUP BY `e`.`code`
    HAVING (COUNT(0) > 1)
```


## Удаление записей из таблицы - на основаении View
Запустить надо несколько раз пока на выходе в результататх будет 0 записей. 
С каждым разом количество будет уменьшаться - это происходит в том случае если 
повторяющихся записей больше чем 2

```sql
delete from `parts-point`.`stock_products` where id in (select id from dbls)
```

## Контроль
```sql
select  max(e.id) id from (select id,code from  `parts-point`.stock_products) e group by `code` having count(*)>1 limit 10;
```


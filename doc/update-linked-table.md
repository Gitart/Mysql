## Обновление таблицы суммарными данными из другой связанной таблицы

```sql
CREATE DEFINER=`root`@`localhost` PROCEDURE `RecalcOrder`(idorder bigint )
BEGIN

/**********************************************************************
   Расчет позиций в ордере и оприходывание на склад

-- 03/12/2020
-- Пересчет сум ордера по позиция внутри ордера
-- Приход расход со склада
-- Запись в лог

-- Добвление позиций на склад  если приходный ордер 
-- Вычитание позиций со склада если расходный ордер
-- С учетом остаков на складе 
-- С учетом не снижаемого запаса 
-- С учетом резервирования 
-- С учетом если нулевой остаток 
**********************************************************************/

-- Eur & Usd
DECLARE Vero  DOUBLE;
DECLARE Vusd  DOUBLE;

-- DECLARE Vdisc DOUBLE;
-- Получение скидки
-- SELECT discount INTO Vdisc FROM orders WHERE id = NEW.order_id;

/*
IF Vdisc = 0.0 THEN
   SET Vdisc = 1;
END IF;   
*/

--  Получение курса валют 
SELECT euro, usd INTO Vero, Vusd 
FROM exchanges ORDER BY id DESC LIMIT 1;

-- Обновление ордера суммарными данными
UPDATE  orders AS ord 
INNER JOIN
(SELECT  min(order_id)   AS itm_order_id,        
         sum(price)      AS itm_Price, 
         sum(qt)         AS itm_Qt, 
         sum(price_euro) * Vero * sum(qt) AS itm_Eur, 
         sum(price_uah)  AS itm_Uah, 
         sum(sum)        AS itm_Sum
FROM     order_items      
GROUP BY order_id) AS itm
ON       ord.id = itm.itm_order_id
SET 
     ord.qt           = itm.itm_Qt,
     ord.price        = itm.itm_Price,
     ord.price_euro   = Vero,
     ord.sum_eur      = itm.itm_Eur,
     ord.sum_usd      = itm.itm_Qt * Vusd,
     ord.sum          = itm.itm_Uah,
     ord.tags         = "Upd sum ok",
     ord.exchange_eur = Vero,
     ord.exchange_usd = Vusd
WHERE
     ord.id = itm.itm_order_id
 AND ord.id = idorder;   

-- Create log record
-- user_id = 0 System user
INSERT logs (description, num, func_name, user, action, user_id) 
VALUES ("Upd order", idorder, "RecalcOrder", "PROC", "UPDATE", 0);

END
```



## Sample 2
```sql
UPDATE
    lp_plates_backup AS t
    INNER JOIN  (
        SELECT
            plate_uid, brand, model, date_validated
        FROM
            lp_pictures_backup as parent
        WHERE
            brand <> '' AND
            date_validated = (
                 SELECT MAX(date_validated)
                 FROM lp_pictures_backup as t2
                 WHERE t2.plate_uid = parent.plate_uid
                 GROUP BY
                     plate_uid)
) AS m ON
    m.plate_uid = t.uid
SET
    t.brand = m.brand,
    t.model = m.model
WHERE
    t.brand <> m.brand
    OR
    t.model <> m.model;
```

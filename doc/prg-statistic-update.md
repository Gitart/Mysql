## Update statistic by site

```sql
CREATE DEFINER=`root`@`localhost` PROCEDURE `Stat`(param nvarchar(45))
BEGIN
    -- DECLARE totalProduct INT DEFAULT 0;
    -- DECLARE prices       INT DEFAULT 0;
    -- SELECT  @cntproduct  = count(*) FROM stock_products;
    -- SELECT count(*), sum(price) INTO totalProduct, prices FROM stock_products;
    -- INSERT statistics (title, count, price, date) VALUES(param, totalProduct, prices, current_date());
    -- INSERT statistics (title, count, date) SELECT "Products", count(*),  current_date()  FROM products;
    -- INSERT tests (title) VALUES("Добавлена запись новая");


UPDATE statistics SET date=current_date(), title="Количество позиций в справочнике",  count = (SELECT count(*) FROM  products), icon="address card"    WHERE id=1; 
UPDATE statistics SET date=current_date(), title="Количество пользователей",          count = (SELECT count(*) FROM  users), icon="list alternate outline"       WHERE id=2; 
UPDATE statistics SET date=current_date(), title="Количество ордеров",                count = (SELECT count(*) FROM  orders) , icon="certificate"     WHERE id=3; 
UPDATE statistics SET date=current_date(), title="Сумма ордеров в Гривне",            count = (SELECT sum(sum) FROM  orders), icon="book"      WHERE id=4; 
UPDATE statistics SET date=current_date(), title="Сумма ордеров в Евро",              count = (SELECT sum(sum_eur) FROM  orders), icon="bell"          WHERE id=5; 
UPDATE statistics SET date=current_date(), title="Количество операций за сегодня",    count = (SELECT count(*) FROM  orders), icon="calculator"  WHERE id=6; 
UPDATE statistics SET date=current_date(), title="Оформленных ордеров на сумму",      count = (SELECT sum(sum) FROM  orders), icon="briefcase"  WHERE id=7;
UPDATE statistics SET date=current_date(), title="Количество запчастей на складе",    count = (SELECT sum(qt)  FROM  stock_products), icon="sitemap"  WHERE id=8; 

END
```

## Загрузка  

### Закачка через предварительно созданую выгрузку 

```sql
-- ALTER TABLE  `parts-point`.`stock_products` ADD CONSTRAINT Uniq_code UNIQUE KEY(`code`);
SET SQL_SAFE_UPDATES = 0;
SET FOREIGN_KEY_CHECKS=0; -- to disable them
SET FOREIGN_KEY_CHECKS=1; -- to re-enable them


DELETE FROM `parts-point`.`stock_products`;

use `parts-point`;
-- LOCK TABLES `stock_products` WRITE;
/*!40000 ALTER TABLE `stock_products` DISABLE KEYS */;
INSERT INTO `stock_products` VALUES (1,1,1,37,'PORSCHE','2020-11-18 15:10:18',' ......
...
...
/*!40000 ALTER TABLE `stock_products` ENABLE KEYS */;
-- UNLOCK TABLES;
```

**! Внимание** 
При формированиии выгрузки программно добавляется много мусора, который тормозит закачку.  
Его надо убрать в конце и в начале процедуры. 


Проверка блокировок

```sql
SHOW ENGINE INNODB STATUS;
```


Для исключения повтора 
```sql
ALTER TABLE  `parts-point`.`stock_products` ADD CONSTRAINT Uniq_code UNIQUE KEY(`code`);
```

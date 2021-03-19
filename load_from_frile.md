Загрузка

### Закачка через предварительно созданую выгрузку 

```sql
-- ALTER TABLE  `parts-point`.`stock_products` ADD CONSTRAINT Uniq_code UNIQUE KEY(`code`);
SET SQL_SAFE_UPDATES = 0;


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

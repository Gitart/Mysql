## Данные за текущий месяц текущего года

```sql
-- Данные за текущий месяц текущего года
SELECT sum(sum), count(*) FROM orders WHERE MONTH(updated_at) = MONTH(CURRENT_DATE()) AND YEAR(updated_at) = YEAR(CURRENT_DATE())


SELECT CURRENT_TIME();
SELECT CURRENT_DATE();
SELECT NOW();
SELECT DATE_ADD(NOW(), INTERVAL -10 DAY);


SELECT *  FROM orders WHERE updated_at BETWEEN "2021-01-04" AND NOW() ORDER BY updated_at desc;
```

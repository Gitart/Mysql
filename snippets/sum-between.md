# Суммирование между двумя датами

```sql
select sum(sum) from orders where  updated_at between "2020-11-01" and "2020-12-01";
```

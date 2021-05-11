
## Позволяет вставлять пустую дату

```sql
SET GLOBAL sql_mode = ALLOW_INVALID_DATES;
```
## Show status
```sql
  SELECT @@ALLOW_INVALID_DATES.sql_mode;
  SELECT @@sql_mode;
```

## Samples
```sql
  Insert Into test (dates) values("");
```

## Block table on time load data
```sql
LOCK TABLES `areas` WRITE;
```



# SAMPLE USAGE EVENTS IN MYSQL

```sql
use parts;
```

### Просмотр доступности использования событий
```sql
-- Show events on off
show variables like 'event_scheduler';
```

### Включить доступность использования событий

```sql
-- On sheduler
set global event_scheduler = ON;
```

### Просмотр всех заданий
```sql
SHOW EVENTS LIKE "e%";

-- Просомтр событий другой способ 
SELECT * FROM `INFORMATION_SCHEMA`.`EVENTS`;
-- WHERE `EVENT_NAME` = 'myevent' AND EVENT_SCHEMA = 'myschema';
```

### Удаление события
```sql
DROP EVENT `e_minuts_event`;
```

### Остнаовить событие
```sql
ALTER EVENT `e_minuts_event` DISABLE;
```

### Запустить событие  
```sql
ALTER EVENT `e_minuts_event` ENABLE;
```

### Создание нового события возникающего каждую минуту

```sql
CREATE EVENT `e_minuts_event` ON SCHEDULE 
EVERY 1 MINUTE 
ON COMPLETION PRESERVE
COMMENT "Запуск каждую минуту"
DO
insert into  tst (title) values("Inser")  ;
```

### Создание задания через минуту после запуска
```sql
CREATE EVENT `myevent`  
      ON SCHEDULE 
      AT CURRENT_TIMESTAMP + INTERVAL 1 MINUTE 
      ON COMPLETION PRESERVE
    DO
      insert into  tst (title) values("Inser")  ;
```      
      
      
### Периодичность 

```sql
   EVERY 1 HOUR
   EVERY 1 DAY
   EVERY 5 SECOND
   EVERY 1 MONTH
```

### Более сложный пример
```sql
      EVERY 1 DAY START '2020-02-12 23:59:59' END CURRENT_TIMESTAMP + INTERVAL 1 WEEK
 ```
 
 


      

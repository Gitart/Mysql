# EVENTS

## EVERY DAY
```sql
use parts;

-- CREATE EVENTS
CREATE EVENT e_hourly
ON SCHEDULE EVERY '1' DAY
STARTS '2023-08-30 10:00:00' -- should be in the future
DO
TRUNCATE parts.logs;
INSERT INTO parts.logs (DESCRIPTION) VALUES ('Clear logs');

-- PREVIEW EVENTS
show events;

--  DROP EVENTS
drop event if exists e_hourly;
```

## One Time Doing
```sql
-- Create cheduler events 
-- Выполняется один раз по заранее установленому времени 
-- Время должно быть установлено в будующем 
-- После выполнения журнал задания очиститься 
CREATE EVENT eventonce ON SCHEDULE AT '2023-05-12 14:01:00' 
DO
INSERT INTO m_works (title) VALUES ('Event is worked');
```

### Начиная с сегодняшнего дня и до завтра каждый час
```sql
CREATE EVENT everydays 
ON      SCHEDULE EVERY 1 HOUR
STARTS  CURRENT_TIMESTAMP
ENDS    CURRENT_TIMESTAMP + INTERVAL 1 DAY
comment 'Начиная с сегодняшнего дня и до завтра каждый час'
DO
INSERT INTO m_works (title) VALUES ('Event is every Hours worked');
```


## Просмотр заданий в 
```sql
SELECT * FROM information_schema.EVENTS
WHERE EVENT_SCHEMA = 'boiler' 
AND   ACTION_STATE = 'ENABLED';
```

## Остановить событие
```sql
ALTER EVENT everydays DISABLE;
```

## Drop the Event (Optional):
If you want to completely remove the event from the database, you can use the DROP EVENT statement:
```sql
DROP EVENT everydays;
```

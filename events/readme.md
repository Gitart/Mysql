# ⌛ EVENTS

![image](https://github.com/Gitart/Mysql/assets/3950155/614a3df0-9824-43b6-aa22-5334e6227694)


## Every Day start in 9.00 am
```sql
use parts;

-- CREATE EVENTS

ON SCHEDULE EVERY 1 DAY
STARTS TIMESTAMP(CURRENT_DATE, '09:00:00') -- Start time at 9:00 AM

DELIMITER //
CREATE EVENT e_hourly

ON SCHEDULE EVERY 1 DAY 
STARTS TIMESTAMP(CURRENT_DATE, '09:20:00') -- Start time at 9:00 AM
DO
BEGIN
-- TRUNCATE parts.logs;
SET SQL_SAFE_UPDATES = 0;
DELETE FROM `parts`.`logs` ;
INSERT INTO parts.logs (DESCRIPTION) VALUES ('Clear logs');
END
//
DELIMITER ;


-- PREVIEW EVENTS
-- show events;

-- SET GLOBAL event_scheduler = ON;
```











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

### Start and finsh events
```sql
CREATE EVENT event_start_finish
ON SCHEDULE EVERY 1 MINUTE
STARTS CURRENT_TIMESTAMP
ENDS CURRENT_TIMESTAMP + INTERVAL 1 HOUR
DO
   INSERT INTO messages(message,created_at)
   VALUES('Test MySQL recurring Event',NOW());
```

## Просмотр заданий в 
```sql
show events;

OR

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

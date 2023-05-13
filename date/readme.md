## Wоrk with date 

```
SELECT DATEDIFF("2017-06-25", "2017-06-15");
SELECT DATE_FORMAT("2017-06-15", "%M %d %Y");
select TIMESTAMPDIFF(HOUR, "2017-06-15 15:04:02", "2017-06-16 11:04:05") 
```

## Example 
```
SELECT HOUR(TIMEDIFF('2023-04-21 12:30:00', '2023-04-21 10:00:00')) as hours_diff,
       MINUTE(TIMEDIFF('2023-04-21 12:30:00', '2023-04-21 10:00:00')) as minutes_diff;
       
SELECT sum(hours_difference) from stops ;
SELECT * from stops ;
INSERT INTO `boiler`.`stops`(`boiler_room_id`,`start_date`,`end_date`) VALUES(1,"2023-09-21 11:30:01", "2023-09-21 12:40:01");
```

## Upadete
```
UPDATE `boiler`.`works` SET `title` = 'Создать общую схему приложения3', `due_date` = '2023-04-21 12:10:00', `created_at` = '2023-04-21 12:10:00', `step` = '12' WHERE (`id` = '134')
select DATE_ADD('2023-04-21 12:10:00', INTERVAL 5 DAY)
```


## delete records older than 6 months
```sql
DELETE FROM Table1 WHERE dateAdded < DATEADD(MONTH, -6, GETDATE())
```


## Check column exists or not in a table using SQL
```
//SQL Syntax
SHOW COLUMNS FROM `table` LIKE 'fieldname';

//SQL Query
SHOW COLUMNS FROM `posts` LIKE 'user_id';
```

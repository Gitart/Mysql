### Для пакетного удаления или обновления 
Необходимо отключить защиту от массового изменения.

```mysql
set sql_safe_updates=0;
delete  FROM parts.bmw;
```

### Оптимизация таблицы 
После большого количества записей, таблица начинает работать медленно.  
Для ускорения процесса необходима оптимизация. 

```mysql
use parts;
optimize table bmw;
```

### Загрузка данных CSV 

```mysql
SET autocommit=0;
SET unique_checks=1;
SET foreign_key_checks=0;

LOAD DATA INFILE "c:/WORK/DATA/bmw.csv"                                  INTO TABLE bmw COLUMNS TERMINATED BY ';' ENCLOSED BY '\"' LINES TERMINATED BY '\n' IGNORE 1 LINES ;
-- LOAD DATA INFILE "c:/WORK/DATA/BMW_16016_-26-11-20_13-46-50.txt"         INTO TABLE bmw COLUMNS TERMINATED BY ';' ENCLOSED BY '\"' LINES TERMINATED BY '\n' IGNORE 1 LINES;
-- LOAD DATA INFILE "c:/WORK/DATA/Ford Sonder_16319_-26-11-20_13-47-08.txt" INTO TABLE bmw COLUMNS TERMINATED BY ';' ENCLOSED BY '\"' LINES TERMINATED BY '\n' IGNORE 1 LINES;
-- LOAD DATA INFILE "c:/WORK/DATA/KIA_20157_-26-11-20_13-49-16.txt"         INTO TABLE bmw COLUMNS TERMINATED BY ';' ENCLOSED BY '\"' LINES TERMINATED BY '\n' IGNORE 1 LINES;

-- SELECT @@GLOBAL.secure_file_priv;

SET unique_checks=1;
SET foreign_key_checks=1;
SELECT count(*) FROM parts.bmw;
```

## Путь к данным для закачки
```
  -- set secure-file-priv="c:\WORK\DATA";
```

## Пример запуска
```
mysqld --console --secure-file-priv=c:\WORK\DATA  --tmp-table-size=50000000000000 --max-heap-table-size=1222222222222
```
  
## Просмoтр  в панели инстументов 

```
set global secure_file_priv="c:\WORK\DATA";
SHOW VARIABLES LIKE "secure_file_priv";

SELECT @@GLOBAL.secure_file_priv;
```

## Включать возможность использовать загрузку
```
set global local_infile = 0;
SHOW VARIABLES LIKE "local_infile";
```

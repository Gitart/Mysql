# Для пакетного удаления или обновления 
Необходимо отключить защиту от массового изменения.
**MySQL Ver 8.0**

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

# 💡 Загрузка данных CSV 
 Эта установка позволяет загружать файл CSV с локального диска

Сделаем некоторые настройки в файле инициализации **c:\ProgramData\MySQL\MySQL Server 8.0\my.ini** 

1. Установка - флаг local-infile=1 в секции [client]
2. Установка - secure-file-priv="c:\WORK\DATA" в секции [server]
3. Перезапуск сервере MySql
4. Если используете Workbench можно установки сделать во вкладке - **"Connection"** - **"Advanced"** - **"Other"** - **OPT_LOCAL_INFILE=1**


 [☝ Fixed](https://stackoverflow.com/questions/63361962/error-2068-hy000-load-data-local-infile-file-request-rejected-due-to-restrict)   
 
- his restriction can be removed from MySQL Workbench 8.0 in the following way. 
- Edit the connection, on the Connection tab, 
- go to the 'Advanced' sub-tab, and in the 'Others:' box add the line 'OPT_LOCAL_INFILE=1'.
- This should allow a client using the Workbench to run LOAD DATA INFILE as usual.
- Quoted from this link: https://bugs.mysql.com/bug.php?id=91872

![image](https://github.com/Gitart/Mysql/assets/3950155/4f41a1a0-51a0-420d-961b-04dd9e35172f)

### Example 
```sql
 LOAD DATA LOCAL INFILE "c:/WORK/DATA/ac.csv"  
 INTO TABLE ss 
 COLUMNS TERMINATED BY ',' 
 ENCLOSED BY '\"' 
 LINES TERMINATED BY '\n' 
 IGNORE 1 LINES ;
```


```mysql
SET autocommit=0;
SET unique_checks=1;
SET foreign_key_checks=0;

LOAD DATA INFILE "c:/WORK/DATA/bmw.csv"
INTO TABLE bmw
COLUMNS TERMINATED BY ';'
ENCLOSED BY '\"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES ;
```

## Another examples
```mysql
LOAD DATA INFILE "c:/WORK/DATA/BMW_16016_-26-11-20_13-46-50.txt"         INTO TABLE bmw COLUMNS TERMINATED BY ';' ENCLOSED BY '\"' LINES TERMINATED BY '\n' IGNORE 1 LINES;
LOAD DATA INFILE "c:/WORK/DATA/Ford Sonder_16319_-26-11-20_13-47-08.txt" INTO TABLE bmw COLUMNS TERMINATED BY ';' ENCLOSED BY '\"' LINES TERMINATED BY '\n' IGNORE 1 LINES;
LOAD DATA INFILE "c:/WORK/DATA/KIA_20157_-26-11-20_13-49-16.txt"         INTO TABLE bmw COLUMNS TERMINATED BY ';' ENCLOSED BY '\"' LINES TERMINATED BY '\n' IGNORE 1 LINES;

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

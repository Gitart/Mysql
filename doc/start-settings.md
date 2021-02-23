Перед началом работы сделайте необходимые настройки базы данных

### Разрешение вставки пустой даты в поля таблиц

 ```sql
 SET sql_mode = ALLOW_INVALID_DATES;           // САМЫЙ РАБОЧИЙ ВАРИАНТ ДРУГИЕ НЕ РАБОТАЮТ
 SET GLOBAL sql_mode = ALLOW_INVALID_DATES;   // изменить глобальную конфигурацию постоянное изменение.
 set SESSION sql_mode='SOMETHING';            // изменить конфигурацию сеанса Переменная SESSION влияет
```
### Проверка состояния
```sql
SELECT @@sql_mode;
```

### Проверка состояния глобального уровня
```sql
@@GLOBAL.sql_mode
```


### Или так
```sql
show variables like 'sql_mode';
```


Без этой команды любая дата с пустым значением будет 
вызывать ошибку подобного вида

```
Error 1292: Incorrect datetime value: '0000-00-00' for column 'eka_print' at row 1
```

**Внимание !**   
После перезагрузки сервера опять все вернется на ствои места 
для того чтобы все сохранилось необходимо внести изменения 
в настроечный файл

Установка режима на всё время (my.cnf/my.ini)  
Чтобы после перезагрузке сервера изменения сохранились, придётся править конфигурационный файл.  


## Oter parameters
```sql
ONLY_FULL_GROUP_BY：
 For GROUP BY aggregation operations, if the column in the SELECT does not appear in the GROUP BY, then this SQL is illegal because the column is not in the GROUP BY clause
 
NO_AUTO_VALUE_ON_ZERO：
 This value affects the insertion of self-growing columns. By default, inserting 0 or NULL means that the next self-increasing value is generated. If the user wants to insert a value of 0, and the column is self-growing, then this option is useful.
 
STRICT_TRANS_TABLES：
 In this mode, if a value cannot be inserted into a transaction table, the current operation is interrupted, and there is no restriction on non-transactional tables
 
NO_ZERO_IN_DATE：
 In strict mode, zero days and months are not allowed
 
NO_ZERO_DATE：
 Set this value, mysql database does not allow the insertion of a zero date, and inserting a zero date will throw an error instead of a warning.
 
ERROR_FOR_DIVISION_BY_ZERO：
 During INSERT or UPDATE, if data is divided by zero, an error is generated instead of a warning. If the mode is not given, MySQL returns NULL when the data is divided by zero
 
NO_AUTO_CREATE_USER：
 Prohibit GRANT from creating users with empty passwords
 
NO_ENGINE_SUBSTITUTION：
 If the required storage engine is disabled or not compiled, an error is thrown. When this value is not set, replace with the default storage engine and throw an exception
 
PIPES_AS_CONCAT：
 Treat "||" as a string concatenation operator instead of an OR operator, which is the same as the Oracle database and similar to the string concatenation function Concat
ANSI_QUOTES：
 When ANSI_QUOTES is enabled, double quotes cannot be used to quote a string because it is interpreted as an identifier
 ```
 
 
 ## Пример конфигурационного файла 
 mysql/my.ini
 
 ```
 [mysqld]
# Set 3306 port
port=3306
 # Set mysql installation directory
 basedir=D:\\MySQL\mysql-8.0.15-winx64 # This needs to be modified according to the actual address, remember to use double slashes \\ here, single slashes will make mistakes here, but if you look at other people’s tutorials, some are Single slash. Try it yourself
 # Set the storage directory of the mysql database data
 datadir=D:\\MySQL\mysql-8.0.15-winx64\\Data # Same as above
 # Allow maximum number of connections
max_connections=200
 # Allow the number of connection failures. This is to prevent someone from trying to attack the database system from this host
max_connect_errors=10
 # The character set used by the server is UTF8 by default
character-set-server=utf8
 # The default storage engine that will be used when creating a new table
default-storage-engine=INNODB
 # Use "mysql_native_password" plug-in authentication by default
default_authentication_plugin=mysql_native_password
 # Allow time null
sql_mode=ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION
[mysql]
 # Set the default character set of the mysql client
default-character-set=utf8
[client]
 # Set the port used by default when the mysql client connects to the server
port=3306
default-character-set=utf8
```
### Пример установки
```
sql_mode=ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION
```


[Линк](http://fkn.ktu10.com/?q=node/7016)

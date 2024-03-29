
![image](https://github.com/Gitart/Mysql/assets/3950155/24478c13-ab29-4137-ba83-e9cd574e07ec)

**команды резервного копирования и восстановления для администрирования базы данных**
<hr>


## Best
1. Используйте строгие права доступа к файлам бэкапа, чтобы исключить несанкционированный доступ.
2. Храните бэкапы в зашифрованном виде, чтобы исключить несанкционированный доступ к данным.
3. Используйте резервное копирование для хранения бэкапов на удаленных серверах, чтобы исключить потерю данных.
4. Регулярно обновляйте бэкапы, чтобы исключить устаревание данных.
5. Проверяйте целостность бэкапов, чтобы удостовериться, что они работоспособны.


В этой статье показано несколько практических примеров того, как выполнять различные операции резервного копирования баз данных **MySQL** с помощью команды **mysqldump**, а также мы увидим, как их восстановить с помощью команд **mysql** и **mysqlimport** в **Linux**.

**mysqldump** — это клиентская программа командной строки, она используется для выгрузки локальной или удаленной базы данных [**MySQL**](https://blog.sedicomm.com/2019/12/12/mysqldumper-instrument-rezervnogo-kopirovaniya-bazy-dannyh-mysql/) или набора баз данных для резервного копирования в один файл.

Мы предполагаем, что у вас уже установлен **MySQL** в системе  с правами администратора, и мы предполагаем, что у вас уже есть небольшой опыт работы в **MySQL**.

#### Как сделать резервную копию базы данных MySQL?

Чтобы создать резервную копию баз данных **MySQL**, база данных должна существовать на сервере базы данных, и у вас должен быть к ней доступ. Формат команды будет таким:

```sql
# mysqldump -u [username] –p[password] [database_name] > [dump_file.sql]
```

 

Параметры указанной [**команды**](https://blog.sedicomm.com/2019/10/23/kak-zapuskat-zaprosy-mysql-mariadb-neposredstvenno-iz-komandnoj-stroki-v-linux/) следующие:

* **\[username]**: действительное имя пользователя **MySQL**.
* **\[password]**: действительный пароль **MySQL** для пользователя.
* **\[database\_name]**: действительное имя базы данных, резервную копию которой вы хотите сделать .
* **\[dump\_file.sql]**: имя файла резервной копии, которую вы хотите сгенерировать.

#### Как сделать резервную копию только одной базы данных MySQL?
Чтобы сделать резервную копию одной базы данных, используйте команду следующим образом. Команда создаст дамп структуры базы данных **\[rsyslog]** с данными в один файл дампа с именем **rsyslog.sql**.

```sql
# mysqldump -u root -p mysql > mysql.sql
```

#### Как сделать резервную копию нескольких баз данных MySQL?

Если вы хотите сделать резервную копию нескольких баз данных, выполните следующую команду. В следующем примере команда создает резервную копию структуры баз данных **\[rsyslog, syslog]** и самих данных в одном файле с именем **rsyslog\_syslog.sql**.

```
# mysqldump -u root -p  --databases mysql sys > mysql information_sys.sql
```

#### Как сделать резервную копию всех баз данных MySQL?

Если вы хотите сделать резервную копию всех баз данных, используйте следующую команду с опцией **–all-database**. Следующая команда выполняет резервное копирование всех баз данных с их структурой и данными в файл **all-database.sql**.

```sql
# mysqldump -u root -p --all-databases > all-databases.sql
```

#### Как сделать резервную копию только структуры базы данных MySQL?

Если вам требуется только резервное копирование структуры базы данных без данных, используйте в команде параметр **–no-data**. Приведенная ниже команда экспортирует структуру базы данных **\[rsyslog]** в файл **rsyslog\_structure.sql**.

```sql
# mysqldump -u root -p -–no-data rsyslog > rsyslog_structure.sql
```

#### Как сделать резервную копию только данных из базы данных MySQL?

Для резервного копирования исключительно данных из базы данных (без структуры), используйте параметр **–no-create-info** вместе со следующей командой. Эта команда переносит базу данных **\[rsyslog]Data** в файл **rsyslog\_data.sql**.

```sql
# mysqldump -u root -p --no-create-db --no-create-info rsyslog > rsyslog_data.sql
```

#### Как сделать резервную копию одной таблицы из базы данных?

С помощью приведенной ниже команды вы можете сделать резервную копию одной таблицы или определенных таблиц вашей базы данных. Например, следующая команда создает резервную копию таблицы **wp\_posts** только из базы данных **wordpress**.
```sql
# mysqldump -u root -p wordpress wp_posts > wordpress_posts.sql
```

#### Как сделать резервную копию нескольких таблиц базы данных?

Если вы хотите сделать резервную копию нескольких таблиц из базы данных, разделите каждую таблицу пробелом:

```
# mysqldump -u root -p wordpress wp_posts wp_comments > wordpress_posts_comments.sql
```

#### Как сделать резервную копию удаленной базы данных MySQL?

Следующая команда переносит резервную копию базы данных **\[ gallery ]**** **удаленного сервера **\[192.168.0.100]** на локальный сервер:

```sql
# mysqldump -h 192.168.0.100 -u root -p gallery > gallery.sql
```

#### Как восстановить базу данных MySQL?

В этой статье мы увидели, как делать резервные копии исключительно баз данных, таблиц, структур и непосредственно самих данных, теперь мы увидим, как их восстановить, используя следующий формат:

```sql
# mysql -u [username] –p[password] [database_name] < [dump_file.sql]
```


#### Как восстановить одну базу данных MySQL?

Чтобы восстановить базу данных, необходимо создать пустую базу данных на целевом компьютере и восстановить базу данных с помощью команды **msyql**. Например, следующая команда восстановит файл **rsyslog.sql** в базе данных **rsyslog**.

```sql
# mysql -u root -p mysql < mysql.sql
```


Если вы хотите восстановить базу данных, которая уже существует на целевой машине, вам нужно будет использовать команду **mysqlimport**.

```sql
# mysqlimport -u root -p rsyslog < rsyslog.sql
```

## Example Backup
```bat
echo start backup audit
"c:\Program Files\MySQL\MySQL Server 8.0\bin\mysqlpump.exe" -h localhost -P 3306 -uroot -pDBuser audit> audit.sql

rem восстановление базы
"c:\Program Files\MySQL\MySQL Server 8.0\bin\mysql.exe"  -uroot -pDBuser mydbnew < charity.sql
```

## Пример выполнения запроса

```bat
@echo off
cls
rem chcp 1252
chcp 65001

echo Start process ...

rem Выполнение запроса

"c:\Program Files\MySQL\MySQL Server 8.0\bin\mysql.exe"  -uroot -pSuperpassword mydbnew < create.sql
```

![image](https://github.com/Gitart/Mysql/assets/3950155/2ed32192-5a56-4817-9896-9a719117d634)

## Advanced
Creted batch file for backup databases everyday in time

```bat
@echo off
setlocal
chcp 65001


set MYSQL_PATH="c:\Program Files\MySQL\MySQL Server 8.0\bin\mysqlpump.exe"
set DB_USER=root
set DB_PASSWORD=DBuser
set DB_NAME=audit
set BACKUP_DIR=c:\BACKUPDB\backup

echo start %DB_NAME%
%MYSQL_PATH% -u%DB_USER% -p%DB_PASSWORD% %DB_NAME% > %BACKUP_DIR%\backup_%DB_NAME%_%date:~-4,4%%date:~-10,2%%date:~-7,2%.sql

set DB_NAME=boiler
%MYSQL_PATH% -u%DB_USER% -p%DB_PASSWORD% %DB_NAME% > %BACKUP_DIR%\backup_%DB_NAME%_%date:~-4,4%%date:~-10,2%%date:~-7,2%.sql


echo  %date% [%time%] Копии сделаны %DB_NAME% >> log.txt
```

## Backup database

```bat
@echo off
setlocal
chcp 65001

set MYSQL_PATH="c:\Program Files\MySQL\MySQL Server 8.0\bin\mysqlpump.exe"
set DB_USER=root
set DB_PASSWORD=db_password
set DB_NAME=audit
set BACKUP_DIR=c:\BACKUPDB\backup

echo start %DB_NAME%
%MYSQL_PATH% -u%DB_USER% -p%DB_PASSWORD% %DB_NAME% > %BACKUP_DIR%\backup_%DB_NAME%_%date:~-4,4%%date:~-10,2%%date:~-7,2%.sql

set DB_NAME=boiler
%MYSQL_PATH% -u%DB_USER% -p%DB_PASSWORD% %DB_NAME% > %BACKUP_DIR%\backup_%DB_NAME%_%date:~-4,4%%date:~-10,2%%date:~-7,2%.sql

set DB_NAME=charity
%MYSQL_PATH% -u%DB_USER% -p%DB_PASSWORD% %DB_NAME% > %BACKUP_DIR%\backup_%DB_NAME%_%date:~-4,4%%date:~-10,2%%date:~-7,2%.sql

echo  %date% [%time%] Копии сделаны %DB_NAME% >> log.txt

curl -XGET -i "https://alertzy.app/send?accountKey=keyalertzy&title=Копия&message=База:данных🔔"+%DB_NAME%

rem pause
```

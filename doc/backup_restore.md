# MySQL Backup and Restore

Last update on February 26 2020 08:08:28 (UTC/GMT +8 hours)

## Backup and Restore

In this page, we are going to discuss **how to take backups of MySQL databases** and **restoring** them.

**Take backup by copying table files**

You can simple copy the table files of a MySQL database to a separate location and accomplish a backup. Later, when necessary, you simply copy them back to the original location to restore the database.

If you are using WAMP server for MySQL, then you can find table files within wamp > bin > mysql > mysql5.1.36 > data > databaseName. Where databaseName is a folder whose name is same as your database.

If you have installed MySQL manually, then you can find table files within Program Files > MySQL >MySQL Server 5.0 > data > databaseName. Where databaseName is a folder whose name is same as your database.

Remember in mysql5.1.36 and MySQL Server 5.0, 5.1.36 and 5.0 indicates the version of the MySQL, which differs if you are working on a different version of MySQL.

**Take backup of delimited text files**

SELECT \* INTO OUTFILE C:\\\\publisher\_backup.txt FROM publisher;

The above MySQL statement will take a backup of the publisher table into a file called publisher\_backup.txt located in the C drive of your windows system.

Using [LOAD DATA INFILE](https://www.w3resource.com/mysql/string-functions/mysql-load_file-function.php) statement, you can restore data from the delimited text files.

**Take backup using mysqldump**

**mysqldump** command can be executed from mysql prompt. For all the code for mysqldump commands bellow, the database is the name of the database.

**Take backup of a database**

```sql
mysqldump database > backup-file.sql;

```

Copy

**Restore a database**

```sql
mysql database < backup-file.sql;

```

Copy

**Copying data from one server to another**

```sql
mysqldump --opt database | mysql --host=remote_host -C database

```

Copy

Where remote\_host indicates a remote server where you want to take backup.

**Dump several databases with single command**

```sql
mysqldump --databases database1 [database2 ...] > backup_of_databases.sql

```

Copy

**Dump all databases using \-\-all\-databases option**

```sql
mysqldump --all-databases > backup_of_all_databases.sql

```

Copy

**Take backup using mysqlhotcopy**

mysqlhotcopy command can be used to take backup of MyISAM and ARCHIVE tables. It runs on Unix.

For all the code for mysqlhotcopy commnd bellow, the database is the name of the database.

```sql
mysqlhotcopy database [/path_to_new_directory]

```

Copy

Where path\_to\_new\_directory is the directory where backup will be taken.

**Save MySQL query results into a text or CSV file**

Here is an easy way to write MySQL query results into a .txt or .CSV files through the select statement.

**Save query result into a .txt file :**

```sql
mysql> SELECT code, name, continent FROM country INTO OUTFILE 'e:/country.txt';Query OK, 239 rows affected (0.03 sec)

```

Copy

**Sample from .txt file:**

ABW Aruba North America
AFG Afghanistan Asia
AGO Angola Africa
AIA Anguilla North America
ALB Albania Europe
AND Andorra Europe
ANT Netherlands Antilles North America
ARE United Arab Emirates Asia
ARG Argentina

**Save query result into a country.csv file :**

```sql
mysql> SELECT code, name, continent FROM country
INTO OUTFILE 'e:/country.csv'
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n';Query OK, 239 rows affected (0.00 sec)

```

Copy

**Sample from country.csv file :**

"ABW","Aruba","North America"
"AFG","Afghanistan","Asia"
"AGO","Angola","Africa"
"AIA","Anguilla","North America"
"ALB","Albania","Europe"
"AND","Andorra","Europe"

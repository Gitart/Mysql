## Расшифровка кодов ошибок MySQL. 

Они разделяются на два типа: первые – это ошибки на стороне сервера и вторые ошибки у клиента, клиентской программы. Поиск ошибок желательно осуществлять по их коду, так как описания и названия могут меняться от релиза к релизу MySQL.
Диапазон допустимых кодов от **1001** и до **2059**. В настоящий момент в базе хранятся только имя ошибки, описание на английском и описание на ломанном русском, в дальнейшем планируется улучшение русского перевода и добавления путей решений и устранения ошибок с различных форумов на просторах интернета

Искать

1001

ER\_NISAMCHKisamchk
isamchk

1004

ER\_CANT\_CREATE\_FILECan’t create file ‘%s’ (errno: %d)
Не удается создать файл%s ‘(ошибка : %d)

1005

ER\_CANT\_CREATE\_TABLECan’t create table ‘%s’ (errno: %d)
Не удается создать таблицу “%s ‘(ошибка : %d)

1006

ER\_CANT\_CREATE\_DBCan’t create database ‘%s’ (errno: %d)
He удается создать базу данных ‘%s’ (errno: %d)

1007

ER\_DB\_CREATE\_EXISTSCan’t create database ‘%s’; database exists
He удается создать базу данных ‘%s’; база данных уже существует

1008

ER\_DB\_DROP\_EXISTSCan’t drop database ‘%s’; database doesn’t exist
He удается удалить базу данных; база данных не существует

1009

ER\_DB\_DROP\_DELETEError dropping database (can’t delete ‘%s’, errno: %d)
Ошибка при удалении базы данных (не удается удалить ‘%s’, errno: %d)

1010

ER\_DB\_DROP\_RMDIRError dropping database (can’t rmdir ‘%s’, errno: %d)
Ошибка при удалении базы данных (не удается выполнить rmdir ‘%s’)

1011

ER\_CANT\_DELETE\_FILEError on delete of ‘%s’ (errno: %d)
Ошибка при удалении ‘%s’ (errno: %d)

1012

ER\_CANT\_FIND\_SYSTEM\_RECCan’t read record in system table
He удается прочитать запись в системной таблице

1013

ER\_CANT\_GET\_STATCan’t get status of ‘%s’ (errno: %d)
He удается получить состояние ‘%s’ (errno: %d)

1014

ER\_CANT\_GET\_WDCan’t get working directory (errno: %d)
He удается получить рабочий каталог (errno: %d)

1015

ER\_CANT\_LOCKCan’t lock file (errno: %d)
He удается заблокировать файл (errno: %d)

1016

ER\_CANT\_OPEN\_FILECan’t open file: ‘%s’ (errno: %d)
He удается открыть файл ‘%s’ (errno: %d)

1017

ER\_FILE\_NOT\_FOUNDCan’t find file: ‘%s’ (errno: %d)
He удается найти файл ‘%s’ (errno: %d)

1018

ER\_CANT\_READ\_DIRCan’t read dir of ‘%s’ (errno: %d)
He удается прочитать каталог “%s” (errno: %d)

1019

ER\_CANT\_SET\_WDCan’t change dir to ‘%s’ (errno: %d)
He удается заменить каталог на “%s”

1020

ER\_CHECKREADRecord has changed since last read in table ‘%s’
Запись изменилась с момента последнего считывания таблицы “%s”

1021

ER\_DISK\_FULLDisk full (%s); waiting for someone to free some space…
Диск переполнен; необходимо освободить некоторое пространство

1022

ER\_DUP\_KEYCan’t write; duplicate key in table ‘%s’
He удается выполнить запись; дублированный ключ в таблице “%s”

1023

ER\_ERROR\_ON\_CLOSEError on close of ‘%s’ (errno: %d)
Ошибка при закрытии “%s” (errno: %d)

1024

ER\_ERROR\_ON\_READError reading file ‘%s’ (errno: %d)
Ошибка при чтении файла “%s” (errno: %d)

1025

ER\_ERROR\_ON\_RENAMEError on rename of ‘%s’ to ‘%s’ (errno: %d)
Ошибка при переименовании “%s” в “%s” (errno: %d)

1026

ER\_ERROR\_ON\_WRITEError writing file ‘%s’ (errno: %d)
Ошибка при записи файла “%s” (errno: %d)

1027

ER\_FILE\_USED%s’ is locked against change
“%s” заблокирован от изменений

1028

ER\_FILSORT\_ABORTSort aborted
Сортировка прервана

1029

ER\_FORM\_NOT\_FOUNDView ‘%s’ doesn’t exist for ‘%s’
Представление “%sf не существует для “%s”

1030

ER\_GET\_ERRNOGot error %d from storage engine
Получена ошибка %d от механизма хранения

1031

ER\_ILLEGAL\_HATable storage engine for ‘%s’ doesn’t have this option
Механизм хранения таблиц для “%s” эту опцию не поддерживает

1032

ER\_KEY\_NOT\_FOUNDCan’t find record in ‘%s’
He удается найти запись в “%s”

1033

ER\_NOT\_FORM\_FILEIncorrect information in file: ‘%s’
Некорректная информация в файле “%s”

1034

ER\_NOT\_KEYFILEIncorrect key file for table ‘%s’; try to repair it
Некорректный файл ключей для таблицы “%s”

1035

ER\_OLD\_KEYFILEOld key file for table ‘%s’; repair it!
Старый файл ключей для таблицы “%s”; восстановите его!

1036

ER\_OPEN\_AS\_READONLYTable ‘%s’ is read only
Таблица “%s” является таблицей только для чтения

1037

ER\_OUTOFMEMORYOut of memory; restart server and try again (needed %d bytes)
Недостаточно памяти; перезапустите сервер и повторите попытку (требуется %d байт)

1038

ER\_OUT\_OF\_SORTMEMORYOut of sort memory, consider increasing server sort buffer size
Недостаточно памяти для сортировки; увеличьте размер буфера сортировки на сервере

1039

ER\_UNEXPECTED\_EOFUnexpected EOF found when reading file ‘%s’ (errno: %d)
Обнаружен неожиданный конец файла при чтении файла “%s” (errno: %d)

1040

ER\_CON\_COUNT\_ERRORToo many connections
Слишком много соединений

1041

ER\_OUT\_OF\_RESOURCESOut of memory; check if mysqld or some other process uses all available memory; if not, you may have to use ‘ulimit’ to allow mysqld to use more memory or you can add more swap space
Недостаточно памяти; проверьте, использует ли mysqld или какой\-то другой процесс всю доступную память; если нет, возможно, понадобится применить “ulimit”, чтобы разрешить mysqld использовать больше памяти, или же потребуется добавить дополнительное пространство для свопинга

1042

ER\_BAD\_HOST\_ERRORCan’t get hostname for your address
He удается получить имя хоста для указанного адреса

1043

ER\_HANDSHAKE\_ERRORBad handshake
Ошибочное подтверждение

1044

ER\_DBACCESS\_DENIED\_ERRORAccess denied for user ‘%s’@’%s’ to database ‘%s’
Пользователю “%sf@”%s” в доступе к базе данных “%s” отказано

1045

ER\_ACCESS\_DENIED\_ERRORAccess denied for user ‘%s’@’%s’ (using password: %s)
Пользователю “%s”@”%s” в доступе отказано (используемый пароль: %s)

1046

ER\_NO\_DB\_ERRORNo database selected
He выбрана база данных

1047

ER\_UNKNOWN\_COM\_ERRORUnknown command
Неизвестная команда

1048

ER\_BAD\_NULL\_ERRORColumn ‘%s’ cannot be null
Столбцы “%s” не могут быть NULL

1049

ER\_BAD\_DB\_ERRORUnknown database ‘%s’
Неизвестная база данных “%s”

1050

ER\_TABLE\_EXISTS\_ERRORTable ‘%s’ already exists
Таблица “%s” уже существует

1051

ER\_BAD\_TABLE\_ERRORUnknown table ‘%s’
Неизвестная таблица “%s”

1052

ER\_NON\_UNIQ\_ERRORColumn ‘%s’ in %s is ambiguous
Столбец “%s” в таблице %s неоднозначен

1053

ER\_SERVER\_SHUTDOWNServer shutdown in progress
Сервер находится в процессе завершения работы

1054

ER\_BAD\_FIELD\_ERRORUnknown column ‘%s’ in ‘%s’
Неизвестный столбец “%s” в таблице “%s!

1055

ER\_WRONG\_FIELD\_WITH\_GROUP%s’ isn’t in GROUP BY
“%s” не указано в GROUP BY

1056

ER\_WRONG\_GROUP\_FIELDCan’t group on ‘%s’
He удается выполнить группировку на “%s”

1057

ER\_WRONG\_SUM\_SELECTStatement has sum functions and columns in same statement
Оператор содержит суммарные функции и столбцы в одном и том же выражении

1058

ER\_WRONG\_VALUE\_COUNTColumn count doesn’t match value count
Количество столбцов не совпадает с количеством значений

1059

ER\_TOO\_LONG\_IDENTIdentifier name ‘%s’ is too long
Имя идентификатора “%s” слишком длинное

1060

ER\_DUP\_FIELDNAMEDuplicate column name ‘%s’
Дублированное имя столбца “%s”

1061

ER\_DUP\_KEYNAMEDuplicate key name ‘%s’
Дублированное имя ключа “%s”

1062

ER\_DUP\_ENTRYDuplicate entry ‘%s’ for key %d
Дублированная запись “%s” для ключа %d

1063

ER\_WRONG\_FIELD\_SPECIncorrect column specifier for column ‘%s’
Некорректный спецификатор для столбца “%s”

1064

ER\_PARSE\_ERROR%s near ‘%s’ at line %d
%s рядом с “%s” в строке %d

1065

ER\_EMPTY\_QUERYQuery was empty
Запрос был пустой

1066

ER\_NONUNIQ\_TABLENot unique table/alias: ‘%s’
Неуникальное имя/псевдоним таблицы: “%s”

1067

ER\_INVALID\_DEFAULTInvalid default value for ‘%s’
Недействительное значение по умолчанию для “%s”

1068

ER\_MULTIPLE\_PRI\_KEYMultiple primary key defined
Определено несколько первичных ключей

1069

ER\_TOO\_MANY\_KEYSToo many keys specified; max %d keys allowed
Указано слишком много ключей; максимально допустимое число ключей равно %d

1070

ER\_TOO\_MANY\_KEY\_PARTSToo many key parts specified; max %d parts allowed
Указано слишком много ключевых частей; максимально допускается %d частей

1071

ER\_TOO\_LONG\_KEYSpecified key was too long; max key length is %d bytes
Указанный ключ был слишком длинным, максимальная длина ключа равняется %d байтам

1072

ER\_KEY\_COLUMN\_DOES\_NOT\_EXITSKey column ‘%s’ doesn’t exist in table
Столбец ключей “%s” в таблице не существует

1073

ER\_BLOB\_USED\_AS\_KEYBLOB column ‘%s’ can’t be used in key specification with the used table type
BLOB\-столбец “%s” не может быть указан в спецификации ключа с используемым типом таблицы

1074

ER\_TOO\_BIG\_FIELDLENGTHColumn length too big for column ‘%s’ (max = %lu); use BLOB or TEXT instead
Размер для столбца “%s” слишком большой (максимально допустимый размер равен %d); вместо этого используйте BLOB

1075

ER\_WRONG\_AUTO\_KEYIncorrect table definition; there can be only one auto column and it must be defined as a key
Некорректное определение таблицы; возможен только один столбец auto\_increment и определять его следует как ключ

1076

ER\_READY%s: ready for connections. Version: ‘%s’ socket: ‘%s’ port: %d
%s: готов для соединений. Версия: “%s”, сокет: “%s”, порт: %d

1077

ER\_NORMAL\_SHUTDOWN%s: Normal shutdown
%s: нормальное завершение работы

1078

ER\_GOT\_SIGNAL%s: Got signal %d. Aborting!
%s: получен сигнал %d – принудительное завершение работы!

1079

ER\_SHUTDOWN\_COMPLETE%s: Shutdown complete
%s: работа завершена

1080

ER\_FORCING\_CLOSE%s: Forcing close of thread %ld user: ‘%s’
%s: принудительное закрытие потока %ld пользователь:!%sf.

1081

ER\_IPSOCK\_ERRORCan’t create IP socket
He удается создать сокет IP

1082

ER\_NO\_SUCH\_INDEXTable ‘%s’ has no index like the one used in CREATE INDEX; recreate the table
Таблица “%s” не содержит индекса, подобного использованному в CREATE INDEX; создайте таблицу заново

1083

ER\_WRONG\_FIELD\_TERMINATORSField separator argument is not what is expected; check the manual
Аргумент разделителя полей не соответствует ожидаемому; сверьтесь с руководством

1084

ER\_BLOBS\_AND\_NO\_TERMINATEDYou can’t use fixed rowlength with BLOBs; please use ‘fields terminated by’
Нельзя использовать строки фиксированной длины в таблицах BLOB; используйте “поля, оканчивающиеся на”

1085

ER\_TEXTFILE\_NOT\_READABLEThe file ‘%s’ must be in the database directory or be readable by all
Файл “%s” должен находиться в каталоге базы данных или быть доступным для чтения всем

1086

ER\_FILE\_EXISTS\_ERRORFile ‘%s’ already exists
Файл f%s” уже существует

1087

ER\_LOAD\_INFORecords: %ld Deleted: %ld Skipped: %ld Warnings: %ld
Записи: %ld Удаленные: %ld Пропущенные: %ld Предупреждения: %ld

1088

ER\_ALTER\_INFORecords: %ld Duplicates: %ld
Записи: %ld Дубликаты:%ld

1089

ER\_WRONG\_SUB\_KEYIncorrect prefix key; the used key part isn’t a string, the used length is longer than the key part, or the storage engine doesn’t support unique prefix keys
Некорректная часть подключа; используемая часть ключа не является строкой, примененная длина больше части ключа или механизм хранения не поддерживает уникальные подключи

1090

ER\_CANT\_REMOVE\_ALL\_FIELDSYou can’t delete all columns with ALTER TABLE; use DROP TABLE instead
С помощью ALTER TABLE удалить все столбцы нельзя; вместо ALTER TABLE используйте DROP TABLE

1091

ER\_CANT\_DROP\_FIELD\_OR\_KEYCan’t DROP ‘%s’; check that column/key exists
He удается удалить “%s” с помощью DROP; проверьте существование столбцов/ключей

1092

ER\_INSERT\_INFORecords: %ld Duplicates: %ld Warnings: %ld
Записи: %ld Дубликаты: %ld Предупреждения: %ld

1093

ER\_UPDATE\_TABLE\_USEDYou can’t specify target table ‘%s’ for update in FROM clause
Нельзя указать целевую таблицу “%s” для обновления в конструкции FROM

1094

ER\_NO\_SUCH\_THREADUnknown thread id: %lu
Неизвестный идентификатор потока: %lu

1095

ER\_KILL\_DENIED\_ERRORYou are not owner of thread %lu
Вы не являетесь владельцем данного потока

1096

ER\_NO\_TABLES\_USEDNo tables used
Никакие таблицы не используются

1097

ER\_TOO\_BIG\_SETToo many strings for column %s and SET
Слишком много строк для столбца %s и SET

1098

ER\_NO\_UNIQUE\_LOGFILECan’t generate a unique log\-filename %s.(1\-999)
He удается создать уникальное имя системного файла %s (1\-999)

1099

ER\_TABLE\_NOT\_LOCKED\_FOR\_WRITETable ‘%s’ was locked with a READ lock and can’t be updated
Таблица “%s” была заблокирована с помощью блокировки READ и обновить ее нельзя

1100

ER\_TABLE\_NOT\_LOCKEDTable ‘%s’ was not locked with LOCK TABLES
Таблица “%s” не была заблокирована с помощью LOCK TABLES

1101

ER\_BLOB\_CANT\_HAVE\_DEFAULTBLOB/TEXT column ‘%s’ can’t have a default value
Столбец BLOB/TEXT с именем “%s” не может содержать значения по умолчанию

1102

ER\_WRONG\_DB\_NAMEIncorrect database name ‘%s’
Некорректное имя базы данных “%s”

1103

ER\_WRONG\_TABLE\_NAMEIncorrect table name ‘%s’
Некорректное имя таблицы “%s”

1104

ER\_TOO\_BIG\_SELECTThe SELECT would examine more than MAX\_JOIN\_SIZE rows; check your WHERE and use SET SQL\_BIG\_SELECTS=1 or SET MAX\_JOIN\_SIZE=# if the SELECT is okay
SELECT обработает больше, чем указано в MAX\_JOIN\_SIZE строк; проверьте условие WHERE и используйте SET SQL\_\_BIG\_SELECTS=1 или SET SQL\_MAX\_JOIN\_SIZE=#, если SELECT задан корректно

1105

ER\_UNKNOWN\_ERRORUnknown error
Неизвестная ошибка

1106

ER\_UNKNOWN\_PROCEDUREUnknown procedure ‘%s’
Неизвестная процедура “%s”

1107

ER\_WRONG\_PARAMCOUNT\_TO\_PROCEDUREIncorrect parameter count to procedure ‘%s’
Некорректное число параметров в процедуре “%s”

1108

ER\_WRONG\_PARAMETERS\_TO\_PROCEDUREIncorrect parameters to procedure ‘%s’
Некорректные параметры в процедуре “%s”

1109

ER\_UNKNOWN\_TABLEUnknown table ‘%s’ in %s
Неизвестная таблица “%s” в %s

1110

ER\_FIELD\_SPECIFIED\_TWICEColumn ‘%s’ specified twice
Столбец “%s” указан дважды

1111

ER\_INVALID\_GROUP\_FUNC\_USEInvalid use of group function
Недопустимое применение групповой функции

1112

ER\_UNSUPPORTED\_EXTENSIONTable ‘%s’ uses an extension that doesn’t exist in this MySQL version
Таблица “%s” использует расширение, которое не существует в этой версии MySQL

1113

ER\_TABLE\_MUST\_HAVE\_COLUMNSA table must have at least 1 column
Таблица должна содержать, по крайней мере, один столбец

1114

ER\_RECORD\_FILE\_FULLThe table ‘%s’ is full
Таблица “%s” заполнена

1115

ER\_UNKNOWN\_CHARACTER\_SETUnknown character set: ‘%s’
Неизвестный набор символов “%s”

1116

ER\_TOO\_MANY\_TABLESToo many tables; MySQL can only use %d tables in a join
Слишком много таблиц; MySQL может использовать не больше %d таблиц за одно соединение

1117

ER\_TOO\_MANY\_FIELDSToo many columns
Слишком много столбцов

1118

ER\_TOO\_BIG\_ROWSIZERow size too large. The maximum row size for the used table type, not counting BLOBs, is %ld. You have to change some columns to TEXT or BLOBs
Размер строк слишком большой. Максимальный размер строк для используемого типа таблиц, без учета BLOB, равен %ld. Некоторые столбцы необходимо заменить на TEXT или BLOB

1119

ER\_STACK\_OVERRUNThread stack overrun: Used: %ld of a %ld stack. Use ‘mysqld –thread\_stack=#’ to specify a bigger stack if needed
Переполнение стека потока: Использовано %ld из %ld процентов стека. Используйте mysqld\-0 thread\_stack=#”, чтобы при необходимости указать больший размер стека

1120

ER\_WRONG\_OUTER\_JOINCross dependency found in OUTER JOIN; examine your ON conditions
В OUTER JOIN обнаружена перекрестная зависимость; проверьте условия ON

1121

ER\_NULL\_COLUMN\_IN\_INDEXTable handler doesn’t support NULL in given index. Please change column ‘%s’ to be NOT NULL or use another handler
Столбец “%s” используется с UNIQUE или INDEX и не определен как NOT NULL

1122

ER\_CANT\_FIND\_UDFCan’t load function ‘%s’
He удается загрузить функцию “%s”

1123

ER\_CANT\_INITIALIZE\_UDFCan’t initialize function ‘%s’; %s
He удается запустить функцию “%s”; %s

1124

ER\_UDF\_NO\_PATHSNo paths allowed for shared library
He разрешены никакие пути к совместно используемой библиотеке

1125

ER\_UDF\_EXISTSFunction ‘%s’ already exists
Функция “%s” уже существует

1126

ER\_CANT\_OPEN\_LIBRARYCan’t open shared library ‘%s’ (errno: %d %s)
He удается открыть совместно используемую библиотеку “%sf (errno: %d %s)

1127

ER\_CANT\_FIND\_DL\_ENTRYCan’t find symbol ‘%s’ in library
He удается найти функцию “%s” в библиотеке

1128

ER\_FUNCTION\_NOT\_DEFINEDFunction ‘%s’ is not defined
Функция “%s” не определена

1129

ER\_HOST\_IS\_BLOCKEDHost ‘%s’ is blocked because of many connection errors; unblock with ‘mysqladmin flush\-hosts’
Хост “%s” заблокирован по причине многочисленных ошибок соединения; разблокируйте с помощью “mysqladmin flush\-hosts”

1130

ER\_HOST\_NOT\_PRIVILEGEDHost ‘%s’ is not allowed to connect to this MySQL server
Хосту “%s” запрещено подключение к данному серверу MySQL

1131

ER\_PASSWORD\_ANONYMOUS\_USERYou are using MySQL as an anonymous user and anonymous users are not allowed to change passwords
Вы подключились к MySQL как анонимный пользователь, а анонимным пользователям запрещено изменять пароли

1132

ER\_PASSWORD\_NOT\_ALLOWEDYou must have privileges to update tables in the mysql database to be able to change passwords for others
Недостаточно привилегий для обновления таблиц в базе данных mysql и изменения паролей других пользователей

1133

ER\_PASSWORD\_NO\_MATCHCan’t find any matching row in the user table
He удается найти совпадающую строку в таблице user

1134

ER\_UPDATE\_INFORows matched: %ld Changed: %ld Warnings: %ld
Совпавшие строки: %ld Измененные: %ld Предупреждения: %ld

1135

ER\_CANT\_CREATE\_THREADCan’t create a new thread (errno %d); if you are not out of available memory, you can consult the manual for a possible OS\-dependent bug
He удается создать новый поток (errno %d); если причина не в недостаточном количестве доступной памяти, сверьтесь с руководством: не исключена ошибка, связанная с ОС

1136

ER\_WRONG\_VALUE\_COUNT\_ON\_ROWColumn count doesn’t match value count at row %ld
Количество столбцов не соответствует количеству значений в строке %ld

1137

ER\_CANT\_REOPEN\_TABLECan’t reopen table: ‘%s’
He удается повторно открыть таблицу:”%s”

1138

ER\_INVALID\_USE\_OF\_NULLInvalid use of NULL value
Недопустимое использование NULL

1139

ER\_REGEXP\_ERRORGot error ‘%s’ from regexp
Получена ошибка с regexp

1140

ER\_MIX\_OF\_GROUP\_FUNC\_AND\_FIELDSMixing of GROUP columns (MIN(),MAX(),COUNT(),…) with no GROUP columns is illegal if there is no GROUP BY clause
Смешивание столбцов GROUP (MIN(),MAX(),COUNT О,…) со столбцами не\-GROUP недопустимо при отсутствии конструкции GROUP BY

1141

ER\_NONEXISTING\_GRANTThere is no such grant defined for user ‘%s’ on host ‘%s’
Такая привилегия не была определена для пользователя “%s” на хосте “%sf

1142

ER\_TABLEACCESS\_DENIED\_ERROR%s command denied to user ‘%s’@’%s’ for table ‘%s’
В использовании команды %s для таблицы “%s” пользователю •%s•@”%s” отказано

1143

ER\_COLUMNACCESS\_DENIED\_ERROR%s command denied to user ‘%s’@’%s’ for column ‘%s’ in table ‘%s’
Пользователю “Is”G”ls” отказано в KOMaHflt %s для столбца “%s” в таблице “%sf

1144

ER\_ILLEGAL\_GRANT\_FOR\_TABLEIllegal GRANT/REVOKE command; please consult the manual to see which privileges can be used
Недопустимая команда GRANT/REVOKE; проконсультируйтесь с руководством на предмет используемых привилегий

1145

ER\_GRANT\_WRONG\_HOST\_OR\_USERThe host or user argument to GRANT is too long
Аргумент хоста или пользователя для GRANT слишком длинный

1146

ER\_NO\_SUCH\_TABLETable ‘%s.%s’ doesn’t exist
Таблица “%s %s” не существует

1147

ER\_NONEXISTING\_TABLE\_GRANTThere is no such grant defined for user ‘%s’ on host ‘%s’ on table ‘%s’
Такая привилегия не была определена для пользователя “%s” на хосте “%s” для таблицы “%s”

1148

ER\_NOT\_ALLOWED\_COMMANDThe used command is not allowed with this MySQL version
Используемая команда не разрешена в этой версии MySQL

1149

ER\_SYNTAX\_ERRORYou have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use
Ошибка в синтаксисе SQL; проверьте в руководстве по используемой вами версии MySQL\-сервера, какой синтаксис будет корректным

1150

ER\_DELAYED\_CANT\_CHANGE\_LOCKDelayed insert thread couldn’t get requested lock for table %s
Потоку задержанных вставок не удалось получить запрашиваемую блокировку для таблицы %s

1151

ER\_TOO\_MANY\_DELAYED\_THREADSToo many delayed threads in use
Используется слишком много задержанных потоков

1152

ER\_ABORTING\_CONNECTIONAborted connection %ld to db: ‘%s’ user: ‘%s’ (%s)
Прервано подключение %ld к базе данных: “%s” пользователь: “%s”

1153

ER\_NET\_PACKET\_TOO\_LARGEGot a packet bigger than ‘max\_allowed\_packet’ bytes
Полученный пакет больше “max\_allowedjpacket” байт

1154

ER\_NET\_READ\_ERROR\_FROM\_PIPEGot a read error from the connection pipe
Получена ошибка при чтении с канала соединения

1155

ER\_NET\_FCNTL\_ERRORGot an error from fcntl()
Получена ошибка от fcntl()

1156

ER\_NET\_PACKETS\_OUT\_OF\_ORDERGot packets out of order
Получены поврежденные пакеты

1157

ER\_NET\_UNCOMPRESS\_ERRORCouldn’t uncompress communication packet
He удается извлечь коммуникационный пакет

1158

ER\_NET\_READ\_ERRORGot an error reading communication packets
Получена ошибка при чтении коммуникационных пакетов

1159

ER\_NET\_READ\_INTERRUPTEDGot timeout reading communication packets
Получен тайм\-аут при чтении коммуникационных пакетов

1160

ER\_NET\_ERROR\_ON\_WRITEGot an error writing communication packets
Получена ошибка при записи коммуникационных пакетов

1161

ER\_NET\_WRITE\_INTERRUPTEDGot timeout writing communication packets
Получен тайм\-аут при записи коммуникационных пакетов

1162

ER\_TOO\_LONG\_STRINGResult string is longer than ‘max\_allowed\_packet’ bytes
Строка результата длиннее “max\_allowed\_packet” байт

1163

ER\_TABLE\_CANT\_HANDLE\_BLOBThe used table type doesn’t support BLOB/TEXT columns
Используемый тип таблицы не поддерживает столбцы BLOB/TEXT

1164

ER\_TABLE\_CANT\_HANDLE\_AUTO\_INCREMENTThe used table type doesn’t support AUTO\_INCREMENT columns
Используемый тип таблицы не поддерживает столбцы AUTO\_INCREMENT

1165

ER\_DELAYED\_INSERT\_TABLE\_LOCKEDINSERT DELAYED can’t be used with table ‘%s’ because it is locked with LOCK TABLES
Команда INSERT DELAYED не может быть использована с таблицей “%s”, поскольку она заблокирована через LOCK TABLES

1166

ER\_WRONG\_COLUMN\_NAMEIncorrect column name ‘%s’
Некорректное имя столбца “%s”

1167

ER\_WRONG\_KEY\_COLUMNThe used storage engine can’t index column ‘%s’
Используемый механизм хранения не может проиндексировать столбец “%s”

1168

ER\_WRONG\_MRG\_TABLEUnable to open underlying table which is differently defined or of non\-MyISAM type or doesn’t exist
Все таблицы в таблице MERGE не являются одинаково определенными

1169

ER\_DUP\_UNIQUECan’t write, because of unique constraint, to table ‘%s’
He удается выполнить запись в таблицу “%s” по причине ограничения уникальности

1170

ER\_BLOB\_KEY\_WITHOUT\_LENGTHBLOB/TEXT column ‘%s’ used in key specification without a key length
BLOB/TEXT\-столбец “%s” использовался в спецификации ключа без указания длины ключа

1171

ER\_PRIMARY\_CANT\_HAVE\_NULLAll parts of a PRIMARY KEY must be NOT NULL; if you need NULL in a key, use UNIQUE instead
Все части PRIMARY KEY должны быть NOT NULL; при необходимости в наличии значения NULL в ключе используйте UNIQUE

1172

ER\_TOO\_MANY\_ROWSResult consisted of more than one row
Результат состоял из более чем одной строки

1173

ER\_REQUIRES\_PRIMARY\_KEYThis table type requires a primary key
Для данной таблицы требуется первичный ключ

1174

ER\_NO\_RAID\_COMPILEDThis version of MySQL is not compiled with RAID support
Данная версия MySQL не компилировалась с поддержкой RAID

1175

ER\_UPDATE\_WITHOUT\_KEY\_IN\_SAFE\_MODEYou are using safe update mode and you tried to update a table without a WHERE that uses a KEY column
Вы используете безопасный режим обновления и попытались обновить таблицу без условия WHERE, использующего столбец KEY

1176

ER\_KEY\_DOES\_NOT\_EXITSKey ‘%s’ doesn’t exist in table ‘%s’
Ключ f%sf не существует в таблице !%s”

1177

ER\_CHECK\_NO\_SUCH\_TABLECan’t open table
He удается открыть таблицу

1178

ER\_CHECK\_NOT\_IMPLEMENTEDThe storage engine for the table doesn’t support %s
Механизм хранения для таблицы не поддерживает %s

1179

ER\_CANT\_DO\_THIS\_DURING\_AN\_TRANSACTIONYou are not allowed to execute this command in a transaction
Вам запрещено выполнение данной команды в транзакции

1180

ER\_ERROR\_DURING\_COMMITGot error %d during COMMIT
Получена ошибка %d во время выполнения COMMIT

1181

ER\_ERROR\_DURING\_ROLLBACKGot error %d during ROLLBACK
Получена ошибка %d во время выполнения ROLLBACK

1182

ER\_ERROR\_DURING\_FLUSH\_LOGSGot error %d during FLUSH\_LOGS
Получена ошибка %d во время выполнения FLUSH\_LOGS

1183

ER\_ERROR\_DURING\_CHECKPOINTGot error %d during CHECKPOINT
Получена ошибка %d во время выполнения CHECKPOINT

1184

ER\_NEW\_ABORTING\_CONNECTIONAborted connection %ld to db: ‘%s’ user: ‘%s’ host: ‘%s’ (%s)
Прервано подключение %ld к базе данных “%s” пользователь: “%s” хост 4%s” (%s)

1185

ER\_DUMP\_NOT\_IMPLEMENTEDThe storage engine for the table does not support binary table dump
Механизм хранения таблицы не поддерживает бинарный дамп таблиц

1186

ER\_FLUSH\_MASTER\_BINLOG\_CLOSEDBinlog closed, cannot RESET MASTER
Бинарный журнал закрыт, не удается выполнить RESET MASTER

1187

ER\_INDEX\_REBUILDFailed rebuilding the index of dumped table ‘%s’
Неудачная попытка восстановления индекса из дампа таблицы “%s”

1188

ER\_MASTERError from master: ‘%s’
Ошибка главного сервера:”%s”

1189

ER\_MASTER\_NET\_READNet error reading from master
Сетевая ошибка при чтении с главного сервера

1190

ER\_MASTER\_NET\_WRITENet error writing to master
Сетевая ошибка при выполнении записи на главный сервер

1191

ER\_FT\_MATCHING\_KEY\_NOT\_FOUNDCan’t find FULLTEXT index matching the column list
He удается найти индекс FULLTEXT, соответствующий списку столбца

1192

ER\_LOCK\_OR\_ACTIVE\_TRANSACTIONCan’t execute the given command because you have active locked tables or an active transaction
He удается выполнить данную команду по причине наличия активных заблокированных таблиц или активной транзакции

1193

ER\_UNKNOWN\_SYSTEM\_VARIABLEUnknown system variable ‘%s’
Неизвестная системная переменная “%s”

1194

ER\_CRASHED\_ON\_USAGETable ‘%s’ is marked as crashed and should be repaired
Таблица “%s” помечена как поврежденная и должна быть исправлена

1195

ER\_CRASHED\_ON\_REPAIRTable ‘%s’ is marked as crashed and last (automatic?) repair failed
failed/Таблица “%s” помечена как поврежденная и последняя попытка(автоматического?) исправления была неудачной

1196

ER\_WARNING\_NOT\_COMPLETE\_ROLLBACKSome non\-transactional changed tables couldn’t be rolled back
Некоторые нетранзакционные измененные таблицы возврату в первоначальное состояние не подлежат

1197

ER\_TRANS\_CACHE\_FULLMulti\-statement transaction required more than ‘max\_binlog\_cache\_size’ bytes of storage; increase this mysqld variable and try again
Для транзакции с множественными операторами потребовалось больше, чем указано в “max\_binlog\_cache\_size” байтов в кэше; увеличьте значение данной переменной и повторите попытку

1198

ER\_SLAVE\_MUST\_STOPThis operation cannot be performed with a running slave; run STOP SLAVE first
Данная операция не может быть выполнена при работающем ведомом сервере, сначала выполните STOP SLAVE

1199

ER\_SLAVE\_NOT\_RUNNINGThis operation requires a running slave; configure slave and do START SLAVE
Для данной операции требуется запустить подчиненный сервер; сконфигурируйте подчиненный сервер и выполните START SLAVE

1200

ER\_BAD\_SLAVEThe server is not configured as slave; fix in config file or with CHANGE MASTER TO
Сервер не сконфигурирован как подчиненный; устраните ошибку в файле конфигурации или воспользуйтесь CHANGE MASTER TO

1201

ER\_MASTER\_INFOCould not initialize master info structure; more error messages can be found in the MySQL error log
He удалось инициализировать информационную структуру на главном сервере; дополнительные сообщения об ошибках можно найти в журнале ошибок MySQL

1202

ER\_SLAVE\_THREADCould not create slave thread; check system resources
He удалось создать поток для подчиненного сервера; проверьте ресурсы системы

1203

ER\_TOO\_MANY\_USER\_CONNECTIONSUser %s already has more than ‘max\_user\_connections’ active connections
Количество активных соединений пользователя %s уже превышает “max\_user\_connections”

1204

ER\_SET\_CONSTANTS\_ONLYYou may only use constant expressions with SET
С SET можно использовать только константные выражения

1205

ER\_LOCK\_WAIT\_TIMEOUTLock wait timeout exceeded; try restarting transaction
Превышено время ожидания блокировки; попробуйте перезапустить транзакцию

1206

ER\_LOCK\_TABLE\_FULLThe total number of locks exceeds the lock table size
Общее количество блокировок превышает размер таблицы блокировки

1207

ER\_READ\_ONLY\_TRANSACTIONUpdate locks cannot be acquired during a READ UNCOMMITTED transaction
Получение блокировки обновления невозможно во время выполнения транзакции READ UNCOMMITTED

1208

ER\_DROP\_DB\_WITH\_READ\_LOCKDROP DATABASE not allowed while thread is holding global read lock
Выполнение DROP DATABASE невозможно, пока в потоке используется глобальная блокировка чтения

1209

ER\_CREATE\_DB\_WITH\_READ\_LOCKCREATE DATABASE not allowed while thread is holding global read lock
Выполнение CREATE DATABASE невозможно, пока в потоке используется глобальная блокировка чтения

1210

ER\_WRONG\_ARGUMENTSIncorrect arguments to %s
Некорректные аргументы для %s

1211

ER\_NO\_PERMISSION\_TO\_CREATE\_USER%s’@’%s’ is not allowed to create new users
Пользователю “%s!@”%s” запрещено создавать новых пользователей

1212

ER\_UNION\_TABLES\_IN\_DIFFERENT\_DIRIncorrect table definition; all MERGE tables must be in the same database
Таблица определена некорректно; все таблицы MERGE должны находиться в одной и той же базе данных

1213

ER\_LOCK\_DEADLOCKDeadlock found when trying to get lock; try restarting transaction
Обнаружена ошибка взаимной блокировки при попытке получить блокировку; попробуйте перезапустить транзакцию

1214

ER\_TABLE\_CANT\_HANDLE\_FTThe used table type doesn’t support FULLTEXT indexes
Используемый тип таблицы не поддерживает индексы FULLTEXT

1215

ER\_CANNOT\_ADD\_FOREIGNCannot add foreign key constraint
He удается добавить ограничение внешнего ключа

1216

ER\_NO\_REFERENCED\_ROWCannot add or update a child row: a foreign key constraint fails
He удается добавить или обновить дочернюю строку: ограничение внешнего ключа дает сбой

1217

ER\_ROW\_IS\_REFERENCEDCannot delete or update a parent row: a foreign key constraint fails
He удается удалить или обновить родительскую строку: ограничение внешнего ключа дает сбой

1218

ER\_CONNECT\_TO\_MASTERError connecting to master: %s
Ошибка при подключении к главному серверу: %s

1219

ER\_QUERY\_ON\_MASTERError running query on master: %s
Ошибка при выполнении запроса на главном сервере: %s

1220

ER\_ERROR\_WHEN\_EXECUTING\_COMMANDError when executing command %s: %s
Ошибка при выполнении команды %s: %s

1221

ER\_WRONG\_USAGEIncorrect usage of %s and %s
Некорректное использование %s и %s

1222

ER\_WRONG\_NUMBER\_OF\_COLUMNS\_IN\_SELECTThe used SELECT statements have a different number of columns
Используемые операторы SELECT имеют разное количество столбцов

1223

ER\_CANT\_UPDATE\_WITH\_READLOCKCan’t execute the query because you have a conflicting read lock
He удается выполнить запрос из\-за конфликта блокировок чтения

1224

ER\_MIXING\_NOT\_ALLOWEDMixing of transactional and non\-transactional tables is disabled
Опция смешивания транзакционных и нетранзакционных таблиц отключена

1225

ER\_DUP\_ARGUMENTOption ‘%s’ used twice in statement
Опция “%s” используется в операторе дважды

1226

ER\_USER\_LIMIT\_REACHEDUser ‘%s’ has exceeded the ‘%s’ resource (current value: %ld)
Пользователь “%s” превысил лимит по использованию ресурса “%s”

1227

ER\_SPECIFIC\_ACCESS\_DENIED\_ERRORAccess denied; you need (at least one of) the %s privilege(s) for this operation
В доступе отказано; для выполнения данной операции требуется привилегия %s

1228

ER\_LOCAL\_VARIABLEVariable ‘%s’ is a SESSION variable and can’t be used with SET GLOBAL
Переменная “%s” является сеансовой переменной и не может использоваться в SET GLOBAL

1229

ER\_GLOBAL\_VARIABLEVariable ‘%s’ is a GLOBAL variable and should be set with SET GLOBAL
Переменная “%s” является глобальной переменной и должна устанавливаться с помощью SET GLOBAL

1230

ER\_NO\_DEFAULTVariable ‘%s’ doesn’t have a default value
Переменная “%s” не имеет значения по умолчанию

1231

ER\_WRONG\_VALUE\_FOR\_VARVariable ‘%s’ can’t be set to the value of ‘%s’
Переменной “%s” не может быть присвоено значение “%s”

1232

ER\_WRONG\_TYPE\_FOR\_VARIncorrect argument type to variable ‘%s’
Некорректный тип аргумента в переменной “%s”

1233

ER\_VAR\_CANT\_BE\_READVariable ‘%s’ can only be set, not read
Переменную “%s” можно только устанавливать, но не считывать

1234

ER\_CANT\_USE\_OPTION\_HEREIncorrect usage/placement of ‘%s’
Некорректное использование/размещение “%s”

1235

ER\_NOT\_SUPPORTED\_YETThis version of MySQL doesn’t yet support ‘%s’
Данная версия MySQL еще не поддерживает “%s”

1236

ER\_MASTER\_FATAL\_ERROR\_READING\_BINLOGGot fatal error %d from master when reading data from binary log: ‘%s’
Получена неисправимая ошибка %d: “%s” с ведущего сервера при чтении данных из бинарного журнала

1237

ER\_SLAVE\_IGNORED\_TABLESlave SQL thread ignored the query because of replicate\-\*\-table rules
Запрос был проигнорирован потоком SQL подчиненного сервера из\-за правил replicate\-\*\-table

1238

ER\_INCORRECT\_GLOBAL\_LOCAL\_VARVariable ‘%s’ is a %s variable
Переменная “%sf является переменной %s

1239

ER\_WRONG\_FK\_DEFIncorrect foreign key definition for ‘%s’: %s
Некорректное определение внешнего ключа для “%s”: %s

1240

ER\_KEY\_REF\_DO\_NOT\_MATCH\_TABLE\_REFKey reference and table reference don’t match
Ссылка на ключ и ссылка на таблицу не совпадают

1241

ER\_OPERAND\_COLUMNSOperand should contain %d column(s)
Операнд должен содержать %d столбцов

1242

ER\_SUBQUERY\_NO\_1\_ROWSubquery returns more than 1 row
Подзапрос возвращает более чем 1 строку

1243

ER\_UNKNOWN\_STMT\_HANDLERUnknown prepared statement handler (%.\*s) given to %s
Для %s указан неизвестный обработчик операторов (%\*s)

1244

ER\_CORRUPT\_HELP\_DBHelp database is corrupt or does not exist
База данных справочника повреждена или не существует

1245

ER\_CYCLIC\_REFERENCECyclic reference on subqueries
Циклическая ссылка в подзапросах

1246

ER\_AUTO\_CONVERTConverting column ‘%s’ from %s to %s
Преобразование столбца “%s” из %s в %s

1247

ER\_ILLEGAL\_REFERENCEReference ‘%s’ not supported (%s)
Ссылка “%s” не поддерживается (%s)

1248

ER\_DERIVED\_MUST\_HAVE\_ALIASEvery derived table must have its own alias
У каждой производной таблицы должен быть свой собственный псевдоним

1249

ER\_SELECT\_REDUCEDSelect %u was reduced during optimization
Во время оптимизации %u было сокращено

1250

ER\_TABLENAME\_NOT\_ALLOWED\_HERETable ‘%s’ from one of the SELECTs cannot be used in %s
Таблица “%s”, указанная в одном из операторов SELECT не может быть использована в %s

1251

ER\_NOT\_SUPPORTED\_AUTH\_MODEClient does not support authentication protocol requested by server; consider upgrading MySQL client
Клиент не поддерживает протокол аутентификации, запрашиваемый сервером; требуется обновление версии клиента MySQL

1252

ER\_SPATIAL\_CANT\_HAVE\_NULLAll parts of a SPATIAL index must be NOT NULL
Все части индекса SPATIAL должны быть NOT NULL

1253

ER\_COLLATION\_CHARSET\_MISMATCHCOLLATION ‘%s’ is not valid for CHARACTER SET ‘%s’
Операция COLLATION “%s” недопустима для CHARACTER SET “%s”

1254

ER\_SLAVE\_WAS\_RUNNINGSlave is already running
Подчиненный сервер уже выполняется

1255

ER\_SLAVE\_WAS\_NOT\_RUNNINGSlave already has been stopped
Подчиненный сервер уже остановлен

1256

ER\_TOO\_BIG\_FOR\_UNCOMPRESSUncompressed data size too large; the maximum size is %d (probably, length of uncompressed data was corrupted)
Размер несжатых данных слишком велик; максимально допустимый размер равен %d (не исключено повреждение размера несжатых данных)

1257

ER\_ZLIB\_Z\_MEM\_ERRORZLIB: Not enough memory
ZLIB: Недостаточно памяти

1258

ER\_ZLIB\_Z\_BUF\_ERRORZLIB: Not enough room in the output buffer (probably, length of uncompressed data was corrupted)
ZLIB: Недостаточно места в выходном буфере (не исключено повреждение размера несжатых данный)

1259

ER\_ZLIB\_Z\_DATA\_ERRORZLIB: Input data corrupted
ZLIB: Повреждение входных данных

1260

ER\_CUT\_VALUE\_GROUP\_CONCATRow %u was cut by GROUP\_CONCAT()
%d строк усечено GROUP\_CONCAT()

1261

ER\_WARN\_TOO\_FEW\_RECORDSRow %ld doesn’t contain data for all columns
Строка %ld не содержит данных для всех столбцов

1262

ER\_WARN\_TOO\_MANY\_RECORDSRow %ld was truncated; it contained more data than there were input columns
Строка %ld была усечена; она содержала данных больше, чем было входных столбцов

1263

ER\_WARN\_NULL\_TO\_NOTNULLColumn set to default value; NULL supplied to NOT NULL column ‘%s’ at row %ld
Данные усечены; значение NULL занесено в столбец NOT NULL в строке %ld

1264

ER\_WARN\_DATA\_OUT\_OF\_RANGEOut of range value for column ‘%s’ at row %ld
Данные усечены; недостаточный диапазон для столбца “%s” в строке %ld

1265

WARN\_DATA\_TRUNCATEDData truncated for column ‘%s’ at row %ld
Данные усечены для столбца “%s” в строке %ld

1266

ER\_WARN\_USING\_OTHER\_HANDLERUsing storage engine %s for table ‘%s’
Использование механизма хранения %s для таблицы “%s”

1267

ER\_CANT\_AGGREGATE\_2COLLATIONSIllegal mix of collations (%s,%s) and (%s,%s) for operation ‘%s’
Недопустимое сочетание сопоставлений (%s,%s) и (%s,%s) для операции ” %s”

1268

ER\_DROP\_USERCannot drop one or more of the requested users
He удается удалить одного или более из запрашиваемых пользователей

1269

ER\_REVOKE\_GRANTSCan’t revoke all privileges for one or more of the requested users
He удается отменить все привилегии, предоставленные одному или более из запрашиваемых пользователей

1270

ER\_CANT\_AGGREGATE\_3COLLATIONSIllegal mix of collations (%s,%s), (%s,%s), (%s,%s) for operation ‘%s’
Недопустимое сочетание сопоставлений (%s,%s), (%s,%s), (%s,%s) для операции “%s”

1271

ER\_CANT\_AGGREGATE\_NCOLLATIONSIllegal mix of collations for operation ‘%s’
Недопустимое сочетание сопоставлений для операции “%s”

1272

ER\_VARIABLE\_IS\_NOT\_STRUCTVariable ‘%s’ is not a variable component (can’t be used as XXXX.variable\_name)
Переменная “%s” не является переменной составляющей (не может ис пользоваться как XXXX.variable\_name)

1273

ER\_UNKNOWN\_COLLATIONUnknown collation: ‘%s’
Неизвестное сопоставление: “%s”

1274

ER\_SLAVE\_IGNORED\_SSL\_PARAMSSSL parameters in CHANGE MASTER are ignored because this MySQL slave was compiled without SSL support; they can be used later if MySQL slave with SSL is started
SSL\-параметры в CHANGE MASTER игнорируются, потому что данный подчиненный сервер скомпилирован без поддержки SSL; их можно будет использовать потом, если подчиненный сервер MySQL будет запущен с опцией SSL

1275

ER\_SERVER\_IS\_IN\_SECURE\_AUTH\_MODEServer is running in –secure\-auth mode, but ‘%s’@’%s’ has a password in the old format; please change the password to the new format
Сервер работает в режиме —secure\-auth, но использует пароль старого формата; измените формат пароля на новый.

1276

ER\_WARN\_FIELD\_RESOLVEDField or reference ‘%s%s%s%s%s’ of SELECT #%d was resolved in SELECT #%d
Поле или ссылка “%s%s%s%s%s” в SELECT #%d была разрешена в SELECT #%d

1277

ER\_BAD\_SLAVE\_UNTIL\_CONDIncorrect parameter or combination of parameters for START SLAVE UNTIL
Некорректный параметр или комбинация параметров для START SLAVE UNTIL

1278

ER\_MISSING\_SKIP\_SLAVEIt is recommended to use –skip\-slave\-start when doing step\-by\-step replication with START SLAVE UNTIL; otherwise, you will get problems if you get an unexpected slave’s mysqld restart
Рекомендуется использовать —skip\-slave\-start при выполнении пошаговой репликации с помощью START SLAVE UNTIL; иначе возникнут проблемы в случае неожиданного перезапуска mysqld на подчиненном сервере

1279

ER\_UNTIL\_COND\_IGNOREDSQL thread is not to be started so UNTIL options are ignored
Поток SQL пока запускаться не будет, поэтому опции UNTIL игнорируются

1280

ER\_WRONG\_NAME\_FOR\_INDEXIncorrect index name ‘%s’
Некорректное имя индекса “%s”

1281

ER\_WRONG\_NAME\_FOR\_CATALOGIncorrect catalog name ‘%s’
Некорректное имя каталога “%s” 398 Глава 9. Обработка ошибок в MySQL

1282

ER\_WARN\_QC\_RESIZEQuery cache failed to set size %lu; new query cache size is %lu
Попытка установить размер %lu для кэша запросов была неудачной; новый размер кэша запросов равен %lu

1283

ER\_BAD\_FT\_COLUMNColumn ‘%s’ cannot be part of FULLTEXT index
Столбец “%s” не может быть частью индекса FULLTEXT

1284

ER\_UNKNOWN\_KEY\_CACHEUnknown key cache ‘%s’
Неизвестный кэш ключей “%s”

1285

ER\_WARN\_HOSTNAME\_WONT\_WORKMySQL is started in –skip\-name\-resolve mode; you must restart it without this switch for this grant to work
MySQL запущен в режиме —skip\-name\-resolve; необходимо перезапустить его без этой опции, чтобы данная привилегия работала

1286

ER\_UNKNOWN\_STORAGE\_ENGINEUnknown storage engine ‘%s’
Неизвестный тип таблиц “%s”

1287

ER\_WARN\_DEPRECATED\_SYNTAX%s’ is deprecated and will be removed in a future release. Please use %s instead
“%s” устарела; вместо нее используйте “%s”

1288

ER\_NON\_UPDATABLE\_TABLEThe target table %s of the %s is not updatable
Целевая таблица %s из %s не обновляется

1289

ER\_FEATURE\_DISABLEDThe ‘%s’ feature is disabled; you need MySQL built with ‘%s’ to have it working
Функция “%s” отключена; чтобы она работала, потребуется выполнить сборку MySQL с “%sf

1290

ER\_OPTION\_PREVENTS\_STATEMENTThe MySQL server is running with the %s option so it cannot execute this statement
Сервер MySQL запущен с опцией %s, поэтому не может выполнить данный оператор

1291

ER\_DUPLICATED\_VALUE\_IN\_TYPEColumn ‘%s’ has duplicated value ‘%s’ in %s
Столбец f%sf содержит дублированное значение “%s” в %s

1292

ER\_TRUNCATED\_WRONG\_VALUETruncated incorrect %s value: ‘%s’
Усеченное некорректное значение %s: “%sf

1293

ER\_TOO\_MUCH\_AUTO\_TIMESTAMP\_COLSIncorrect table definition; there can be only one TIMESTAMP column with CURRENT\_TIMESTAMP in DEFAULT or ON UPDATE clause
Таблица определена некорректно; только один столбец может быть указан с CURRENTJTIMESTAMP в конструкции DEFAULT или ON UPDATE

1294

ER\_INVALID\_ON\_UPDATEInvalid ON UPDATE clause for ‘%s’ column
Недопустимая конструкция ON UPDATE для столбца “%sf

1295

ER\_UNSUPPORTED\_PSThis command is not supported in the prepared statement protocol yet
Данная команда еще не поддерживается в протоколе подготовленных операторов

1296

ER\_GET\_ERRMSGGot error %d ‘%s’ from %s
He удается создать %s через другую хранимую процедуру

1297

ER\_GET\_TEMPORARY\_ERRMSGGot temporary error %d ‘%s’ from %s
%s %s уже существует

1298

ER\_UNKNOWN\_TIME\_ZONEUnknown or incorrect time zone: ‘%s’
%s %s не существует

1299

ER\_WARN\_INVALID\_TIMESTAMPInvalid TIMESTAMP value in column ‘%s’ at row %ld
He удалось удалить %s %s с помощью DROP

1300

ER\_INVALID\_CHARACTER\_STRINGInvalid %s character string: ‘%s’
He удалось создать %s %s с помощью CREATE

1301

ER\_WARN\_ALLOWED\_PACKET\_OVERFLOWEDResult of %s() was larger than max\_allowed\_packet (%ld) – truncated
%s без подходящей метки: %s

1302

ER\_CONFLICTING\_DECLARATIONSConflicting declarations: ‘%s%s’ and ‘%s%s’
Повторное определение метки %s

1303

ER\_SP\_NO\_RECURSIVE\_CREATECan’t create a %s from within another stored routine
%s с конечной меткой без совпадений

1304

ER\_SP\_ALREADY\_EXISTS%s %s already exists
Обращение к неинициализированной переменной %s

1305

ER\_SP\_DOES\_NOT\_EXIST%s %s does not exist
Оператор SELECT в хранимой процедуре должен содержать INTO

1306

ER\_SP\_DROP\_FAILEDFailed to DROP %s %s
RETURN разрешено использовать только в FUNCTION

1307

ER\_SP\_STORE\_FAILEDFailed to CREATE %s %s
В FUNCTION запрещено использование операторов, подобных SELECT,INSERT, UPDATE (и других)

1308

ER\_SP\_LILABEL\_MISMATCH%s with no matching label: %s
Журнал регистрации обновлений устарел и был заменен бинарным журналом регистрации; команда SET SQL\_LOG\_UPDATE игнорируется

1309

ER\_SP\_LABEL\_REDEFINERedefining label %s
Журнал регистрации обновлений устарел и был заменен бинарным журналом регистрации; команда SET SQL\_LOG\_UPDATE переведена как SET SQL\_LOG\_\_BIN

1310

ER\_SP\_LABEL\_MISMATCHEnd\-label %s without match
Выполнение запроса было прервано

1311

ER\_SP\_UNINIT\_VARReferring to uninitialized variable %s
Неправильное число аргументов для %s %s; ожидалось %u, получено %u

1312

ER\_SP\_BADSELECTPROCEDURE %s can’t return a result set in the given context
Неопределенная команда CONDITION: %s

1313

ER\_SP\_BADRETURNRETURN is only allowed in a FUNCTION
RETURN в FUNCTION %s не обнаружен.

1314

ER\_SP\_BADSTATEMENT%s is not allowed in stored procedures
FUNCTION %s завершилась без RETURN

1315

ER\_UPDATE\_LOG\_DEPRECATED\_IGNOREDThe update log is deprecated and replaced by the binary log; SET SQL\_LOG\_UPDATE has been ignored. This option will be removed in MySQL 5.6.
Оператором курсора должен быть SELECT

1316

ER\_UPDATE\_LOG\_DEPRECATED\_TRANSLATEDThe update log is deprecated and replaced by the binary log; SET SQL\_LOG\_UPDATE has been translated to SET SQL\_LOG\_BIN. This option will be removed in MySQL 5.6.
Оператор курсора SELECT не должен содержать INTO

1317

ER\_QUERY\_INTERRUPTEDQuery execution was interrupted
Неопределенный курсор CURSOR: %s

1318

ER\_SP\_WRONG\_NO\_OF\_ARGSIncorrect number of arguments for %s %s; expected %u, got %u
Курсор уже открыт

1319

ER\_SP\_COND\_MISMATCHUndefined CONDITION: %s
Курсор не открыт

1320

ER\_SP\_NORETURNNo RETURN found in FUNCTION %s
Необъявленная переменная: %s

1321

ER\_SP\_NORETURNENDFUNCTION %s ended without RETURN
Неправильное число переменных FETCH

1322

ER\_SP\_BAD\_CURSOR\_QUERYCursor statement must be a SELECT
Данных для выборки (FETCH) нет

1323

ER\_SP\_BAD\_CURSOR\_SELECTCursor SELECT must not have INTO
Дублированный параметр: %s

1324

ER\_SP\_CURSOR\_MISMATCHUndefined CURSOR: %s
Дублированная переменная: %s

1325

ER\_SP\_CURSOR\_ALREADY\_OPENCursor is already open
Дублированное условие: %s

1326

ER\_SP\_CURSOR\_NOT\_OPENCursor is not open
Дублированный курсор: %s

1327

ER\_SP\_UNDECLARED\_VARUndeclared variable: %s
He удалось изменить %s %s с помощью ALTER

1328

ER\_SP\_WRONG\_NO\_OF\_FETCH\_ARGSIncorrect number of FETCH variables
Значение подвыборки не поддерживается

1329

ER\_SP\_FETCH\_NO\_DATANo data – zero rows fetched, selected, or processed
Использование USE в хранимой процедуре запрещено

1330

ER\_SP\_DUP\_PARAMDuplicate parameter: %s
Объявление переменной или условия после объявления курсора или обработчика

1331

ER\_SP\_DUP\_VARDuplicate variable: %s
Объявление курсора после объявления обработчика

1332

ER\_SP\_DUP\_CONDDuplicate condition: %s
He найдена конструкция Case для оператора CASE

1333

ER\_SP\_DUP\_CURSDuplicate cursor: %s
Размер файла конфигурации слишком большой

1334

ER\_SP\_CANT\_ALTERFailed to ALTER %s %s
Некорректно заданный заголовок типа файла в файле “%s”

1335

ER\_SP\_SUBSELECT\_NYISubquery value not supported
Неожиданный конец файла при анализе комментария “%s”

1336

ER\_STMT\_NOT\_ALLOWED\_IN\_SF\_OR\_TRG%s is not allowed in stored function or trigger
Ошибка при анализе параметра “%s”

1337

ER\_SP\_VARCOND\_AFTER\_CURSHNDLRVariable or condition declaration after cursor or handler declaration
Неожиданный конец файла при пропуске неизвестного параметра “%s”

1338

ER\_SP\_CURSOR\_AFTER\_HANDLERCursor declaration after handler declaration
Курсор заявление после декларации обработчик

1339

ER\_SP\_CASE\_NOT\_FOUNDCase not found for CASE statement
Дело не найдено для сазе

1340

ER\_FPARSER\_TOO\_BIG\_FILEConfiguration file ‘%s’ is too big
Конфигурация файл%s ‘ слишком большой

1341

ER\_FPARSER\_BAD\_HEADERMalformed file type header in file ‘%s’
Заголовок в файле с искаженной тип файл%s ‘

1342

ER\_FPARSER\_EOF\_IN\_COMMENTUnexpected end of file while parsing comment ‘%s’
Неожиданный конец файла во время разбора комментарий ‘%s’

1343

ER\_FPARSER\_ERROR\_IN\_PARAMETERError while parsing parameter ‘%s’ (line: ‘%s’)
Ошибка при разборе параметра ‘%s’ (линия : ‘%s’)

1344

ER\_FPARSER\_EOF\_IN\_UNKNOWN\_PARAMETERUnexpected end of file while skipping unknown parameter ‘%s’
Неожиданный конец файла, пропуская неизвестный параметр ‘%s’

1345

ER\_VIEW\_NO\_EXPLAINEXPLAIN/SHOW can not be issued; lacking privileges for underlying table
EXPLAIN / ШОУ не может быть выдан;

1346

ER\_FRM\_UNKNOWN\_TYPEFile ‘%s’ has unknown type ‘%s’ in its header
Файл ‘ %s’ имеет неизвестный тип “%s ‘ в его заголовке

1347

ER\_WRONG\_OBJECT%s.%s’ is not %s
% с. % с ‘не % с

1348

ER\_NONUPDATEABLE\_COLUMNColumn ‘%s’ is not updatable
Колонка “%s ‘ не является обновляемым

1349

ER\_VIEW\_SELECT\_DERIVEDView’s SELECT contains a subquery in the FROM clause
Посмотреть профиль ВЫБОР содержит вложенный запрос в предложении FROM

1350

ER\_VIEW\_SELECT\_CLAUSEView’s SELECT contains a ‘%s’ clause
Посмотреть профиль ВЫБОР содержит ‘%s’ пункт

1351

ER\_VIEW\_SELECT\_VARIABLEView’s SELECT contains a variable or parameter
Посмотреть профиль ВЫБОР содержит переменную или параметр

1352

ER\_VIEW\_SELECT\_TMPTABLEView’s SELECT refers to a temporary table ‘%s’
Посмотреть профиль ВЫБОР относится к временной таблицы ‘%s’

1353

ER\_VIEW\_WRONG\_LISTView’s SELECT and view’s field list have different column counts
ВЫБОР и Посмотреть профиль Просмотреть список на местах имеют разные счетчики столбцов

1354

ER\_WARN\_VIEW\_MERGEView merge algorithm can’t be used here for now (assumed undefined algorithm)
Вид алгоритм слияния не могут быть использованы здесь на данный момент (предположительно определено алгоритм)

1355

ER\_WARN\_VIEW\_WITHOUT\_KEYView being updated does not have complete key of underlying table in it
Посмотреть обновляется не имеет полной ключ базовой таблицы в нем

1356

ER\_VIEW\_INVALIDView ‘%s.%s’ references invalid table(s) or column(s) or function(s) or definer/invoker of view lack rights to use them
Посмотреть “%s. %s ‘ указывает на недопустимый стол (ы ) или колонки (ы) или функция (ы) или Определитель / Вызывающий вид прав отсутствия их использовать

1357

ER\_SP\_NO\_DROP\_SPCan’t drop or alter a %s from within another stored routine
Невозможно удалить или изменить %s из другой хранимой процедуре

1358

ER\_SP\_GOTO\_IN\_HNDLRGOTO is not allowed in a stored procedure handler
GOTO не допускается в обработчике хранимой процедуры

1359

ER\_TRG\_ALREADY\_EXISTSTrigger already exists
Запуск уже существует

1360

ER\_TRG\_DOES\_NOT\_EXISTTrigger does not exist
Триггера не существует

1361

ER\_TRG\_ON\_VIEW\_OR\_TEMP\_TABLETrigger’s ‘%s’ is view or temporary table
Триггера ‘%s’ представляет собой вид или временная таблица

1362

ER\_TRG\_CANT\_CHANGE\_ROWUpdating of %s row is not allowed in %strigger
Обновление подряд %s не допускается в % strigger

1363

ER\_TRG\_NO\_SUCH\_ROW\_IN\_TRGThere is no %s row in %s trigger
Существует ряд Нет% с в триггер %s

1364

ER\_NO\_DEFAULT\_FOR\_FIELDField ‘%s’ doesn’t have a default value
Поле ‘ %s’ не имеет значения по умолчанию

1365

ER\_DIVISION\_BY\_ZERODivision by 0
Деление на 0

1366

ER\_TRUNCATED\_WRONG\_VALUE\_FOR\_FIELDIncorrect %s value: ‘%s’ for column ‘%s’ at row %ld
Неправильные %s значение : “%s на столбец”%s ‘в строке %ld

1367

ER\_ILLEGAL\_VALUE\_FOR\_TYPEIllegal %s ‘%s’ value found during parsing
Незаконное % с ‘%s’ найденное значение в процессе синтаксического

1368

ER\_VIEW\_NONUPD\_CHECKCHECK OPTION on non\-updatable view ‘%s.%s’
CHECK OPTION на не обновляемого представления “%s. % С ‘

1369

ER\_VIEW\_CHECK\_FAILEDCHECK OPTION failed ‘%s.%s’
ПРОВЕРКА ВАРИАНТ удалось ‘ %s. % С ‘

1370

ER\_PROCACCESS\_DENIED\_ERROR%s command denied to user ‘%s’@’%s’ for routine ‘%s’
Команда %s запрещена пользователю ‘ %s ‘ @ ​​’ %s на обычной ‘%s ‘

1371

ER\_RELAY\_LOG\_FAILFailed purging old relay logs: %s
Не удалось продувки старые журналы реле : % с

1372

ER\_PASSWD\_LENGTHPassword hash should be a %d\-digit hexadecimal number
Пароль хэш должен быть %d – значное шестнадцатеричное число

1373

ER\_UNKNOWN\_TARGET\_BINLOGTarget log not found in binlog index
Целевая журнала не найден в Двоичный индекс

1374

ER\_IO\_ERR\_LOG\_INDEX\_READI/O error reading log index file
Ошибка ввода / вывода индекс журнала чтение файла

1375

ER\_BINLOG\_PURGE\_PROHIBITEDServer configuration does not permit binlog purge
Конфигурация сервера не позволяет Двоичный чистку

1376

ER\_FSEEK\_FAILFailed on fseek()
Не удалось на FSEEK ( )

1377

ER\_BINLOG\_PURGE\_FATAL\_ERRFatal error during log purge
Фатальная ошибка во время журнала продувки

1378

ER\_LOG\_IN\_USEA purgeable log is in use, will not purge
Промываемый журнал находится в использовании, не очистит

1379

ER\_LOG\_PURGE\_UNKNOWN\_ERRUnknown error during log purge
Неизвестная ошибка при журнала продувки

1380

ER\_RELAY\_LOG\_INITFailed initializing relay log position: %s
Не удалось инициализации реле позиция журнала : % с

1381

ER\_NO\_BINARY\_LOGGINGYou are not using binary logging
Вы не используете двоичную регистрацию

1382

ER\_RESERVED\_SYNTAXThe ‘%s’ syntax is reserved for purposes internal to the MySQL server
Синтаксис “%s ‘ зарезервирован для целей внутреннего к серверу MySQL

1383

ER\_WSAS\_FAILEDWSAStartup Failed
WSAStartup удалось

1384

ER\_DIFF\_GROUPS\_PROCCan’t handle procedures with different groups yet
Не можете справиться процедур с различными группами еще

1385

ER\_NO\_GROUP\_FOR\_PROCSelect must have a group with this procedure
Выберите должны иметь группу с этой процедурой

1386

ER\_ORDER\_WITH\_PROCCan’t use ORDER clause with this procedure
Нельзя использовать пункт заказ с этой процедурой

1387

ER\_LOGGING\_PROHIBIT\_CHANGING\_OFBinary logging and replication forbid changing the global server %s
Двоичной лесозаготовки и репликация не дай изменения сервер глобального %s

1388

ER\_NO\_FILE\_MAPPINGCan’t map file: %s, errno: %d
Не удается отобразить файл :%s, ошибка:%d

1389

ER\_WRONG\_MAGICWrong magic in %s
Неправильный магия в % с

1390

ER\_PS\_MANY\_PARAMPrepared statement contains too many placeholders
Подготовлено заявление содержит слишком много заполнители

1391

ER\_KEY\_PART\_0Key part ‘%s’ length cannot be 0
Основные части ‘%s’ длина не может быть 0

1392

ER\_VIEW\_CHECKSUMView text checksum failed
Просмотр текстовых Контрольная удалось

1393

ER\_VIEW\_MULTIUPDATECan not modify more than one base table through a join view ‘%s.%s’
Невозможно изменить более одной базовой таблицы через присоединиться вид ‘% с. % С ‘

1394

ER\_VIEW\_NO\_INSERT\_FIELD\_LISTCan not insert into join view ‘%s.%s’ without fields list
Не удается вставить в присоединиться вид ‘% с. % С ‘ без списка полей

1395

ER\_VIEW\_DELETE\_MERGE\_VIEWCan not delete from join view ‘%s.%s’
Не удается удалить из присоединиться вид ‘% с. % С ‘

1396

ER\_CANNOT\_USEROperation %s failed for %s
Операция % с Сбой % с

1397

ER\_XAER\_NOTAXAER\_NOTA: Unknown XID
XAER\_NOTA : неизвестно XID

1398

ER\_XAER\_INVALXAER\_INVAL: Invalid arguments (or unsupported command)
XAER\_INVAL : инвалидные параметры (или не поддерживается команда)

1399

ER\_XAER\_RMFAILXAER\_RMFAIL: The command cannot be executed when global transaction is in the %s state
XAER\_RMFAIL : Команда не может быть выполнена, когда глобальная транзакция находится в состоянии в %s

1400

ER\_XAER\_OUTSIDEXAER\_OUTSIDE: Some work is done outside global transaction
XAER\_OUTSIDE : Некоторые работы выполняются вне глобальной транзакции

1401

ER\_XAER\_RMERRXAER\_RMERR: Fatal error occurred in the transaction branch – check your data for consistency
XAER\_RMERR : Фатальная ошибка в ветви транзакции – проверить данные на соответствие

1402

ER\_XA\_RBROLLBACKXA\_RBROLLBACK: Transaction branch was rolled back
XA\_RBROLLBACK : филиал сделка откат

1403

ER\_NONEXISTING\_PROC\_GRANTThere is no such grant defined for user ‘%s’ on host ‘%s’ on routine ‘%s’
Там нет такой грант определены для пользователя ‘%s’ на хосте ‘%s’ на обычной ‘%s’

1404

ER\_PROC\_AUTO\_GRANT\_FAILFailed to grant EXECUTE and ALTER ROUTINE privileges
Не удалось предоставить EXECUTE и ALTER рутины привилегии

1405

ER\_PROC\_AUTO\_REVOKE\_FAILFailed to revoke all privileges to dropped routine
Не удалось отменить все привилегии упал рутины

1406

ER\_DATA\_TOO\_LONGData too long for column ‘%s’ at row %ld
Данные слишком долго для столбца ‘%s’ в строке%ld

1407

ER\_SP\_BAD\_SQLSTATEBad SQLSTATE: ‘%s’
Плохой SQLSTATE : ‘%s’

1408

ER\_STARTUP%s: ready for connections. Version: ‘%s’ socket: ‘%s’ port: %d %s
% с : Готов принимать соединения.

1409

ER\_LOAD\_FROM\_FIXED\_SIZE\_ROWS\_TO\_VARCan’t load value from file with fixed size rows to variable
Не удается загрузить значение из файла с фиксированного размера строк в переменной

1410

ER\_CANT\_CREATE\_USER\_WITH\_GRANTYou are not allowed to create a user with GRANT
Вы не можете создать пользователя с Грантом

1411

ER\_WRONG\_VALUE\_FOR\_TYPEIncorrect %s value: ‘%s’ for function %s
Неправильные %s значение : “%s на функции %s

1412

ER\_TABLE\_DEF\_CHANGEDTable definition has changed, please retry transaction
Определение таблицы изменилось, повторите попытку сделки

1413

ER\_SP\_DUP\_HANDLERDuplicate handler declared in the same block
Дубликат обработчик заявил в том же блоке

1414

ER\_SP\_NOT\_VAR\_ARGOUT or INOUT argument %d for routine %s is not a variable or NEW pseudo\-variable in BEFORE trigger
OUT или INOUT аргумент%d для рутинной % с не является переменной или НОВЫЙ псевдопеременная в перед срабатыванием

1415

ER\_SP\_NO\_RETSETNot allowed to return a result set from a %s
Не разрешается возвращать результирующий набор из %s

1416

ER\_CANT\_CREATE\_GEOMETRY\_OBJECTCannot get geometry object from data you send to the GEOMETRY field
Не удается получить геометрии объекта из данных отправке на поле ГЕОМЕТРИИ

1417

ER\_FAILED\_ROUTINE\_BREAK\_BINLOGA routine failed and has neither NO SQL nor READS SQL DATA in its declaration and binary logging is enabled; if non\-transactional tables were updated, the binary log will miss their changes
Процедура не удалось, и не имеет ни Нет SQL, ни ЧИТАЕТ SQL DATA в его декларации и двоичный включено ведение журнала;

1418

ER\_BINLOG\_UNSAFE\_ROUTINEThis function has none of DETERMINISTIC, NO SQL, or READS SQL DATA in its declaration and binary logging is enabled (you \*might\* want to use the less safe log\_bin\_trust\_function\_creators variable)
Эта функция не имеет ни одного из детерминированных, NO SQL или ЧИТАЕТ SQL DATA в своем заявлении и двоичный ведение журнала включено (вы \* возможно \* хотите использовать менее безопасные log\_bin\_trust\_function\_creators переменных )

1419

ER\_BINLOG\_CREATE\_ROUTINE\_NEED\_SUPERYou do not have the SUPER privilege and binary logging is enabled (you \*might\* want to use the less safe log\_bin\_trust\_function\_creators variable)
Вы не имеете SUPER привилегии и двоичный ведение журнала включено (вы \* может \* хотите использовать менее безопасные log\_bin\_trust\_function\_creators переменных )

1420

ER\_EXEC\_STMT\_WITH\_OPEN\_CURSORYou can’t execute a prepared statement which has an open cursor associated with it. Reset the statement to re\-execute it.
Вы не можете выполнить подготовленное заявление, которое имеет открытый курсор, связанный с ним.

1421

ER\_STMT\_HAS\_NO\_OPEN\_CURSORThe statement (%lu) has no open cursor.
В заявлении ( % лу ) не имеет открытого курсора.

1422

ER\_COMMIT\_NOT\_ALLOWED\_IN\_SF\_OR\_TRGExplicit or implicit commit is not allowed in stored function or trigger.
Явное или неявное обязательство не допускается в сохраненной функции или триггера.

1423

ER\_NO\_DEFAULT\_FOR\_VIEW\_FIELDField of view ‘%s.%s’ underlying table doesn’t have a default value
Поле зрения “%s. % С ‘ базовая таблица не имеет значения по умолчанию

1424

ER\_SP\_NO\_RECURSIONRecursive stored functions and triggers are not allowed.
Рекурсивные хранимые функции и триггеры не допускаются.

1425

ER\_TOO\_BIG\_SCALEToo big scale %d specified for column ‘%s’. Maximum is %lu.
Слишком большой масштаб %d указано для столбец “%s ‘.

1426

ER\_TOO\_BIG\_PRECISIONToo big precision %d specified for column ‘%s’. Maximum is %lu.
Слишком большой точности %d указано для столбец “%s ‘.

1427

ER\_M\_BIGGER\_THAN\_DFor float(M,D), double(M,D) or decimal(M,D), M must be >= D (column ‘%s’).
Для поплавка ( M, D), дважды ( M, D ) или десятичной ( M, D ), М должны бытьu003e = D ( столбец “%s ‘).

1428

ER\_WRONG\_LOCK\_OF\_SYSTEM\_TABLEYou can’t combine write\-locking of system tables with other tables or lock types
Вы не можете комбинировать рецензию блокировку системных таблиц с другими таблицами или заблокировать типы

1429

ER\_CONNECT\_TO\_FOREIGN\_DATA\_SOURCEUnable to connect to foreign data source: %s
Не удается подключиться к внешней источника данных : % с

1430

ER\_QUERY\_ON\_FOREIGN\_DATA\_SOURCEThere was a problem processing the query on the foreign data source. Data source error: %s
Существовал проблема обработки запроса на внешнем источнике данных.

1431

ER\_FOREIGN\_DATA\_SOURCE\_DOESNT\_EXISTThe foreign data source you are trying to reference does not exist. Data source error: %s
Иностранный источник данных вы пытаетесь ссылкой не существует.

1432

ER\_FOREIGN\_DATA\_STRING\_INVALID\_CANT\_CREATECan’t create federated table. The data source connection string ‘%s’ is not in the correct format
Не удается создать таблицу федеративного.

1433

ER\_FOREIGN\_DATA\_STRING\_INVALIDThe data source connection string ‘%s’ is not in the correct format
Строка подключения источника данных “%s ‘не в правильном формате

1434

ER\_CANT\_CREATE\_FEDERATED\_TABLECan’t create federated table. Foreign data src error: %s
Не удается создать таблицу федеративного.

1435

ER\_TRG\_IN\_WRONG\_SCHEMATrigger in wrong schema
Запуск в неправильном схеме

1436

ER\_STACK\_OVERRUN\_NEED\_MOREThread stack overrun: %ld bytes used of a %ld byte stack, and %ld bytes needed. Use ‘mysqld –thread\_stack=#’ to specify a bigger stack.
Стек потоков переполнен : байт LD% используемых стека байт LD%, и нуждался % байт LD.

1437

ER\_TOO\_LONG\_BODYRoutine body for ‘%s’ is too long
Регулярное тело для ‘%s’ слишком длинный

1438

ER\_WARN\_CANT\_DROP\_DEFAULT\_KEYCACHECannot drop default keycache
Невозможно удалить умолчанию keycache

1439

ER\_TOO\_BIG\_DISPLAYWIDTHDisplay width out of range for column ‘%s’ (max = %lu)
Ширина дисплея вне диапазона для столбец “%s ” (макс. = % лу )

1440

ER\_XAER\_DUPIDXAER\_DUPID: The XID already exists
XAER\_DUPID :XID уже существует

1441

ER\_DATETIME\_FUNCTION\_OVERFLOWDatetime function: %s field overflow
Функция даты и времени : % с Переполнение поля

1442

ER\_CANT\_UPDATE\_USED\_TABLE\_IN\_SF\_OR\_TRGCan’t update table ‘%s’ in stored function/trigger because it is already used by statement which invoked this stored function/trigger.
Невозможно обновить таблицу ‘%s’ в хранимой функции / триггера, так как он уже используется заявлении, которое вызывается эту хранимую функцию / курок.

1443

ER\_VIEW\_PREVENT\_UPDATEThe definition of table ‘%s’ prevents operation %s on table ‘%s’.
Определение таблица “%s ‘ предотвращает операция %s таблицы”%s ‘.

1444

ER\_PS\_NO\_RECURSIONThe prepared statement contains a stored routine call that refers to that same statement. It’s not allowed to execute a prepared statement in such a recursive manner
Подготовленный оператор содержит хранимую стандартного вызова, который ссылается на тот же заявлении.

1445

ER\_SP\_CANT\_SET\_AUTOCOMMITNot allowed to set autocommit from a stored function or trigger
Не допускается устанавливать автоматической фиксации из хранимой функции или триггера

1446

ER\_MALFORMED\_DEFINERDefiner is not fully qualified
Definer не полное

1447

ER\_VIEW\_FRM\_NO\_USERView ‘%s’.’%s’ has no definer information (old table format). Current user is used as definer. Please recreate the view!
Посмотреть “%s ‘.’ %s ‘ не имеет никакой информации Definer (старый в виде таблицы).

1448

ER\_VIEW\_OTHER\_USERYou need the SUPER privilege for creation view with ‘%s’@’%s’ definer
Вам нужен SUPER привилегии для зрения создания с ‘%s’ @ ‘ %s’ Definer

1449

ER\_NO\_SUCH\_USERThe user specified as a definer (‘%s’@’%s’) does not exist
Указанный в качестве определителя (‘%s’ @ ‘ %s’) пользователь не существует

1450

ER\_FORBID\_SCHEMA\_CHANGEChanging schema from ‘%s’ to ‘%s’ is not allowed.
Изменение схемы из ‘%s’ в ‘%s’ не допускается.

1451

ER\_ROW\_IS\_REFERENCED\_2Cannot delete or update a parent row: a foreign key constraint fails (%s)
Не можете удалить или обновить родительскую строку : ограничение внешнего ключа не удается ( %s)

1452

ER\_NO\_REFERENCED\_ROW\_2Cannot add or update a child row: a foreign key constraint fails (%s)
Невозможно добавить или обновить дочернюю строку : ограничение внешнего ключа не удается ( %s)

1453

ER\_SP\_BAD\_VAR\_SHADOWVariable ‘%s’ must be quoted with \`…\`, or renamed
Переменная ‘ %s’ должна быть указана с \`…\`, или переименованы

1454

ER\_TRG\_NO\_DEFINERNo definer attribute for trigger ‘%s’.’%s’. The trigger will be activated under the authorization of the invoker, which may have insufficient privileges. Please recreate the trigger.
Нет Определитель атрибут для запуска ‘%s’ ‘%s’..

1455

ER\_OLD\_FILE\_FORMAT%s’ has an old format, you should re\-create the ‘%s’ object(s)
%s ‘ имеет старый формат, вы должны заново создать ‘ ‘ объект % с (ы)

1456

ER\_SP\_RECURSION\_LIMITRecursive limit %d (as set by the max\_sp\_recursion\_depth variable) was exceeded for routine %s
Рекурсивные предел %d (как указано в переменной max\_sp\_recursion\_depth ) был превышен на рутинной % с

1457

ER\_SP\_PROC\_TABLE\_CORRUPTFailed to load routine %s. The table mysql.proc is missing, corrupt, or contains bad data (internal code %d)
Не удалось загрузить рутинной %s.

1458

ER\_SP\_WRONG\_NAMEIncorrect routine name ‘%s’
Неправильное имя процедуры ‘%s’

1459

ER\_TABLE\_NEEDS\_UPGRADETable upgrade required. Please do “REPAIR TABLE \`%s\`” or dump/reload to fix it!
Требуется обновление Таблица.

1460

ER\_SP\_NO\_AGGREGATEAGGREGATE is not supported for stored functions
СОВОКУПНАЯ не поддерживается для хранимых функций

1461

ER\_MAX\_PREPARED\_STMT\_COUNT\_REACHEDCan’t create more than max\_prepared\_stmt\_count statements (current value: %lu)
Не удается создать более max\_prepared\_stmt\_count отчетности ( текущее значение : % лу )

1462

ER\_VIEW\_RECURSIVE\`%s\`.\`%s\` contains view recursion
\`% с \`. \`% с \` содержит вид рекурсии

1463

ER\_NON\_GROUPING\_FIELD\_USEDNon\-grouping field ‘%s’ is used in %s clause
Номера для группировки поле “%s ” используется в пункте %s

1464

ER\_TABLE\_CANT\_HANDLE\_SPKEYSThe used table type doesn’t support SPATIAL indexes
Используемая таблица браузер не поддерживает пространственных индексов

1465

ER\_NO\_TRIGGERS\_ON\_SYSTEM\_SCHEMATriggers can not be created on system tables
Триггеры не могут быть созданы для системных таблиц

1466

ER\_REMOVED\_SPACESLeading spaces are removed from name ‘%s’
Ведущие пробелы удаляются из имени “%s ‘

1467

ER\_AUTOINC\_READ\_FAILEDFailed to read auto\-increment value from storage engine
Не удалось прочитать значение автоприращения от механизма хранения

1468

ER\_USERNAMEuser name
имя пользователя

1469

ER\_HOSTNAMEhost name
имя хоста

1470

ER\_WRONG\_STRING\_LENGTHString ‘%s’ is too long for %s (should be no longer than %d)
Строка “%s ‘ слишком длинный для % с ( должна быть не более %d)

1471

ER\_NON\_INSERTABLE\_TABLEThe target table %s of the %s is not insertable\-into
Целевая таблица % х годов % с не вставляться – в

1472

ER\_ADMIN\_WRONG\_MRG\_TABLETable ‘%s’ is differently defined or of non\-MyISAM type or doesn’t exist
Таблица ‘%s’ по\-разному определяется или типа не\- MyISAM или не существует

1473

ER\_TOO\_HIGH\_LEVEL\_OF\_NESTING\_FOR\_SELECTToo high level of nesting for select
Слишком высокий уровень вложенности для выбора

1474

ER\_NAME\_BECOMES\_EMPTYName ‘%s’ has become ”
Имя “%s ” стал ”

1475

ER\_AMBIGUOUS\_FIELD\_TERMFirst character of the FIELDS TERMINATED string is ambiguous; please use non\-optional and non\-empty FIELDS ENCLOSED BY
Первый символ из полей завершенная строка неоднозначно;

1476

ER\_FOREIGN\_SERVER\_EXISTSThe foreign server, %s, you are trying to create already exists.
Иностранный сервера,% с, вы пытаетесь создать, уже существует.

1477

ER\_FOREIGN\_SERVER\_DOESNT\_EXISTThe foreign server name you are trying to reference does not exist. Data source error: %s
Название иностранной сервер вы пытаетесь ссылкой не существует.

1478

ER\_ILLEGAL\_HA\_CREATE\_OPTIONTable storage engine ‘%s’ does not support the create option ‘%s’
Хранения Таблица двигатель “%s ‘не поддерживаетсоздание опция’ %s ‘

1479

ER\_PARTITION\_REQUIRES\_VALUES\_ERRORSyntax error: %s PARTITIONING requires definition of VALUES %s for each partition
Синтаксическая ошибка: %s PARTITIONING требуется определение ЗНАЧЕНИЯ % с для каждого раздела

1480

ER\_PARTITION\_WRONG\_VALUES\_ERROROnly %s PARTITIONING can use VALUES %s in partition definition
Только %s PARTITIONING можете использовать значения %s в определении разделов

1481

ER\_PARTITION\_MAXVALUE\_ERRORMAXVALUE can only be used in last partition definition
MAXVALUE может использоваться только в последнем определении разделов

1482

ER\_PARTITION\_SUBPARTITION\_ERRORSubpartitions can only be hash partitions and by key
Подразделы может быть только хеш\- разделов и ключ

1483

ER\_PARTITION\_SUBPART\_MIX\_ERRORMust define subpartitions on all partitions if on one partition
Необходимо определить подразделы на всех разделах, если на одном разделе

1484

ER\_PARTITION\_WRONG\_NO\_PART\_ERRORWrong number of partitions defined, mismatch with previous setting
Неверное количество разделов, определенных, несоответствие с предыдущей настройке

1485

ER\_PARTITION\_WRONG\_NO\_SUBPART\_ERRORWrong number of subpartitions defined, mismatch with previous setting
Неверное количество подразделов определенных, несоответствие с предыдущей настройке

1486

ER\_CONST\_EXPR\_IN\_PARTITION\_FUNC\_ERRORConstant/Random expression in (sub)partitioning function is not allowed
Постоянное / Random выражение в (под) функции секционирования не допускается

1486

ER\_WRONG\_EXPR\_IN\_PARTITION\_FUNC\_ERRORConstant, random or timezone\-dependent expressions in (sub)partitioning function are not allowed
Постоянные, случайные или часовой пояс в зависимости от выражения в (под) функции секционирования не допускаются

1487

ER\_NO\_CONST\_EXPR\_IN\_RANGE\_OR\_LIST\_ERRORExpression in RANGE/LIST VALUES must be constant
Выражение в диапазоне / Список значений должен быть постоянным

1488

ER\_FIELD\_NOT\_FOUND\_PART\_ERRORField in list of fields for partition function not found in table
Поле в списке полей для функции распределения не найден в таблице

1489

ER\_LIST\_OF\_FIELDS\_ONLY\_IN\_HASH\_ERRORList of fields is only allowed in KEY partitions
Список полей допускается только в ключевых разделов

1490

ER\_INCONSISTENT\_PARTITION\_INFO\_ERRORThe partition info in the frm file is not consistent with what can be written into the frm file
Информация раздела в файле FRM не согласуется с тем, что можно записать в файл FRM

1491

ER\_PARTITION\_FUNC\_NOT\_ALLOWED\_ERRORThe %s function returns the wrong type
Функция% с возвращает неправильный тип

1492

ER\_PARTITIONS\_MUST\_BE\_DEFINED\_ERRORFor %s partitions each partition must be defined
Для %s разделов каждый раздел должен быть определен

1493

ER\_RANGE\_NOT\_INCREASING\_ERRORVALUES LESS THAN value must be strictly increasing for each partition
Значения меньше стоимости должны быть строго возрастает для каждого раздела

1494

ER\_INCONSISTENT\_TYPE\_OF\_FUNCTIONS\_ERRORVALUES value must be of same type as partition function
ЗНАЧЕНИЯ значение должно быть одного типа, как функции распределения

1495

ER\_MULTIPLE\_DEF\_CONST\_IN\_LIST\_PART\_ERRORMultiple definition of same constant in list partitioning
Несколько определение же константой в список разделов

1496

ER\_PARTITION\_ENTRY\_ERRORPartitioning can not be used stand\-alone in query
Разметка не может использоваться автономно в запросе

1497

ER\_MIX\_HANDLER\_ERRORThe mix of handlers in the partitions is not allowed in this version of MySQL
Сочетание обработчиков в разделах не допускается в данной версии MySQL

1498

ER\_PARTITION\_NOT\_DEFINED\_ERRORFor the partitioned engine it is necessary to define all %s
Для многораздельной двигателя необходимо определить все % с

1499

ER\_TOO\_MANY\_PARTITIONS\_ERRORToo many partitions (including subpartitions) were defined
Слишком много разделов (в том числе подразделов ) были определены

1500

ER\_SUBPARTITION\_ERRORIt is only possible to mix RANGE/LIST partitioning with HASH/KEY partitioning for subpartitioning
Это возможно только смешивать RANGE / разделов списка с хэш / ключ разделения для subpartitioning

1501

ER\_CANT\_CREATE\_HANDLER\_FILEFailed to create specific handler file
Не удалось создать определенный файл обработчика

1502

ER\_BLOB\_FIELD\_IN\_PART\_FUNC\_ERRORA BLOB field is not allowed in partition function
Поле BLOB не допускается в функции секционирования

1503

ER\_UNIQUE\_KEY\_NEED\_ALL\_FIELDS\_IN\_PFA %s must include all columns in the table’s partitioning function
% С должны включить все столбцы в функции секционирования таблицы

1504

ER\_NO\_PARTS\_ERRORNumber of %s = 0 is not an allowed value
Количество % с = 0 не является допустимое значение

1505

ER\_PARTITION\_MGMT\_ON\_NONPARTITIONEDPartition management on a not partitioned table is not possible
Управление разделов на не секционированной таблицы не возможно

1506

ER\_FOREIGN\_KEY\_ON\_PARTITIONEDForeign key clause is not yet supported in conjunction with partitioning
Предложение Внешний ключ пока не поддерживается в сочетании с разбиением

1507

ER\_DROP\_PARTITION\_NON\_EXISTENTError in list of partitions to %s
Ошибка в списке разделов, %s

1508

ER\_DROP\_LAST\_PARTITIONCannot remove all partitions, use DROP TABLE instead
Не можете удалить все разделы, используйте DROP TABLE вместо

1509

ER\_COALESCE\_ONLY\_ON\_HASH\_PARTITIONCOALESCE PARTITION can only be used on HASH/KEY partitions
COALESCE раздел может быть использован только на ХЭШ / KEY разделов

1510

ER\_REORG\_HASH\_ONLY\_ON\_SAME\_NOREORGANIZE PARTITION can only be used to reorganize partitions not to change their numbers
REORGANIZE раздел может быть использован только реорганизовать разделы не менять свои номера

1511

ER\_REORG\_NO\_PARAM\_ERRORREORGANIZE PARTITION without parameters can only be used on auto\-partitioned tables using HASH PARTITIONs
REORGANIZE PARTITION без параметров может быть использован только на авто – распределяли таблиц с использованием хэш\- перегородки

1512

ER\_ONLY\_ON\_RANGE\_LIST\_PARTITION%s PARTITION can only be used on RANGE/LIST partitions
%s раздел может быть использован только на RANGE / LIST разделов

1513

ER\_ADD\_PARTITION\_SUBPART\_ERRORTrying to Add partition(s) with wrong number of subpartitions
Попытка Добавить раздел (ы) с неправильным числом подразделов

1514

ER\_ADD\_PARTITION\_NO\_NEW\_PARTITIONAt least one partition must be added
По крайней мере один раздел должен быть добавлен

1515

ER\_COALESCE\_PARTITION\_NO\_PARTITIONAt least one partition must be coalesced
По крайней мере один раздел должен быть объединились

1516

ER\_REORG\_PARTITION\_NOT\_EXISTMore partitions to reorganize than there are partitions
Еще разделы по реорганизации, чем Есть разделы

1517

ER\_SAME\_NAME\_PARTITIONDuplicate partition name %s
Дубликат имя раздела % с

1518

ER\_NO\_BINLOG\_ERRORIt is not allowed to shut off binlog on this command
Не допускается, чтобы отключить Двоичный по этой команде

1519

ER\_CONSECUTIVE\_REORG\_PARTITIONSWhen reorganizing a set of partitions they must be in consecutive order
При реорганизации набор разделов они должны быть в последовательном порядке

1520

ER\_REORG\_OUTSIDE\_RANGEReorganize of range partitions cannot change total ranges except for last partition where it can extend the range
Реорганизовать разделов дальности не может изменить общий диапазоны для последнего раздела, где она может расширить диапазон за исключением

1521

ER\_PARTITION\_FUNCTION\_FAILUREPartition function not supported in this version for this handler
Статистическая не поддерживается в этой версии для этого обработчика

1522

ER\_PART\_STATE\_ERRORPartition state cannot be defined from CREATE/ALTER TABLE
Состояние раздела не может быть определена с CREATE / ALTER TABLE

1523

ER\_LIMITED\_PART\_RANGEThe %s handler only supports 32 bit integers in VALUES
Обработчик в %s поддерживает только 32\-битные целые числа в ЦЕННОСТЕЙ

1524

ER\_PLUGIN\_IS\_NOT\_LOADEDPlugin ‘%s’ is not loaded
Плагин ‘%s’ не загружен

1525

ER\_WRONG\_VALUEIncorrect %s value: ‘%s’
Неправильные %s значение : “%s ‘

1526

ER\_NO\_PARTITION\_FOR\_GIVEN\_VALUETable has no partition for value %s
Таблица не имеет раздел для значение % с

1527

ER\_FILEGROUP\_OPTION\_ONLY\_ONCEIt is not allowed to specify %s more than once
Не допускается указывать % с более чем один раз

1528

ER\_CREATE\_FILEGROUP\_FAILEDFailed to create %s
Не удалось создать % с

1529

ER\_DROP\_FILEGROUP\_FAILEDFailed to drop %s
Не удалось удалить % с

1530

ER\_TABLESPACE\_AUTO\_EXTEND\_ERRORThe handler doesn’t support autoextend of tablespaces
Обработчик браузер не поддерживает AUTOEXTEND табличных

1531

ER\_WRONG\_SIZE\_NUMBERA size parameter was incorrectly specified, either number or on the form 10M
Параметр размера был неправильно определен, либо номер или на форме 10M

1532

ER\_SIZE\_OVERFLOW\_ERRORThe size number was correct but we don’t allow the digit part to be more than 2 billion
Размер телефона был правилен, но мы не позволяем цифра часть не может быть более 2 млрд.

1533

ER\_ALTER\_FILEGROUP\_FAILEDFailed to alter: %s
Не удалось изменить : % с

1534

ER\_BINLOG\_ROW\_LOGGING\_FAILEDWriting one row to the row\-based binary log failed
Написание одну строку в рядной бинарного журнала не удалось

1535

ER\_BINLOG\_ROW\_WRONG\_TABLE\_DEFTable definition on master and slave does not match: %s
Определение таблицы на ведущего и ведомого не соответствует : % с

1536

ER\_BINLOG\_ROW\_RBR\_TO\_SBRSlave running with –log\-slave\-updates must use row\-based binary logging to be able to replicate row\-based binary log events
Ведомый работает с – войти – рабовладельцы обновления должны использовать строки на основе двоичную регистрацию, чтобы иметь возможность повторить двоичных событий журнала строк на основе

1537

ER\_EVENT\_ALREADY\_EXISTSEvent ‘%s’ already exists
Событие “%s ‘уже существует

1538

ER\_EVENT\_STORE\_FAILEDFailed to store event %s. Error code %d from storage engine.
Не удалось сохранить событие %s.

1539

ER\_EVENT\_DOES\_NOT\_EXISTUnknown event ‘%s’
Неизвестный событие ‘%s’

1540

ER\_EVENT\_CANT\_ALTERFailed to alter event ‘%s’
Не удалось изменить событие ‘%s’

1541

ER\_EVENT\_DROP\_FAILEDFailed to drop %s
Не удалось удалить % с

1542

ER\_EVENT\_INTERVAL\_NOT\_POSITIVE\_OR\_TOO\_BIGINTERVAL is either not positive or too big
ИНТЕРВАЛ либо не положительный или слишком большой

1543

ER\_EVENT\_ENDS\_BEFORE\_STARTSENDS is either invalid or before STARTS
Концами либо недействительным или до начала

1544

ER\_EVENT\_EXEC\_TIME\_IN\_THE\_PASTEvent execution time is in the past. Event has been disabled
Время выполнения событие в прошлом.

1545

ER\_EVENT\_OPEN\_TABLE\_FAILEDFailed to open mysql.event
Не удалось открыть mysql.event

1546

ER\_EVENT\_NEITHER\_M\_EXPR\_NOR\_M\_ATNo datetime expression provided
Нет выражение даты и времени при условии,

1547

ER\_COL\_COUNT\_DOESNT\_MATCH\_CORRUPTEDColumn count of mysql.%s is wrong. Expected %d, found %d. The table is probably corrupted
Колонка кол MySQL. % С неправильно.

1548

ER\_CANNOT\_LOAD\_FROM\_TABLECannot load from mysql.%s. The table is probably corrupted
Не удается загрузить из MySQL. % С.

1549

ER\_EVENT\_CANNOT\_DELETEFailed to delete the event from mysql.event
Не удалось удалить событие из mysql.event

1550

ER\_EVENT\_COMPILE\_ERRORError during compilation of event’s body
Ошибка при компиляции тела мероприятия

1551

ER\_EVENT\_SAME\_NAMESame old and new event name
То же самое старое и новое название события

1552

ER\_EVENT\_DATA\_TOO\_LONGData for column ‘%s’ too long
Данные за столбец “%s ‘ слишком долго

1553

ER\_DROP\_INDEX\_FKCannot drop index ‘%s’: needed in a foreign key constraint
Невозможно удалить индекс “%s ‘ : необходимо в ограничении внешнего ключа

1554

ER\_WARN\_DEPRECATED\_SYNTAX\_WITH\_VERThe syntax ‘%s’ is deprecated and will be removed in MySQL %s. Please use %s instead
Синтаксис “%s ‘ устарела и будет удалена в MySQL % с.

1555

ER\_CANT\_WRITE\_LOCK\_LOG\_TABLEYou can’t write\-lock a log table. Only read access is possible
Вы не можете написать – блокировки таблицы журнала.

1556

ER\_CANT\_LOCK\_LOG\_TABLEYou can’t use locks with log tables.
Вы не можете использовать замки с таблицами журнала.

1557

ER\_FOREIGN\_DUPLICATE\_KEYUpholding foreign key constraints for table ‘%s’, entry ‘%s’, key %d would lead to a duplicate entry
Поддержание внешнего ключа для таблицы “%s ‘, вход ‘%s ‘, ключ%d приведет к дублирования ввода

1558

ER\_COL\_COUNT\_DOESNT\_MATCH\_PLEASE\_UPDATEColumn count of mysql.%s is wrong. Expected %d, found %d. Created with MySQL %d, now running %d. Please use mysql\_upgrade to fix this error.
Колонка кол MySQL. % С неправильно.

1559

ER\_TEMP\_TABLE\_PREVENTS\_SWITCH\_OUT\_OF\_RBRCannot switch out of the row\-based binary log format when the session has open temporary tables
Невозможно переключить из двоичном формате журнала рядной когда сессия есть открытые временные таблицы

1560

ER\_STORED\_FUNCTION\_PREVENTS\_SWITCH\_BINLOG\_FORMATCannot change the binary logging format inside a stored function or trigger
Невозможно изменить двоичный формат ведения журнала внутри хранимой функции или триггера

1561

ER\_NDB\_CANT\_SWITCH\_BINLOG\_FORMATThe NDB cluster engine does not support changing the binlog format on the fly yet
Кластер двигатель NDB браузер не поддерживает изменения Двоичный формат на лету еще

1562

ER\_PARTITION\_NO\_TEMPORARYCannot create temporary table with partitions
Невозможно создать временную таблицу с разделами

1563

ER\_PARTITION\_CONST\_DOMAIN\_ERRORPartition constant is out of partition function domain
Постоянная разделов находится вне функции секционирования области

1564

ER\_PARTITION\_FUNCTION\_IS\_NOT\_ALLOWEDThis partition function is not allowed
Эта функция раздел не допускается

1565

ER\_DDL\_LOG\_ERRORError in DDL log
Ошибка в журнале DDL

1566

ER\_NULL\_IN\_VALUES\_LESS\_THANNot allowed to use NULL value in VALUES LESS THAN
Не разрешается использовать NULL значение в величине меньше, чем

1567

ER\_WRONG\_PARTITION\_NAMEIncorrect partition name
Неправильное имя раздела

1568

ER\_CANT\_CHANGE\_TX\_ISOLATIONTransaction isolation level can’t be changed while a transaction is in progress
Уровень изоляции транзакций не может быть изменен в то время как транзакция выполняется

1569

ER\_DUP\_ENTRY\_AUTOINCREMENT\_CASEALTER TABLE causes auto\_increment resequencing, resulting in duplicate entry ‘%s’ for key ‘%s’
ALTER TABLE вызывает auto\_increment Resequencing, в результате дублирования ввода ‘ %s на ключевой ‘%s ‘

1570

ER\_EVENT\_MODIFY\_QUEUE\_ERRORInternal scheduler error %d
Внутренняя ошибка планировщик %d

1571

ER\_EVENT\_SET\_VAR\_ERRORError during starting/stopping of the scheduler. Error code %u
Ошибка при Запуск / остановка планировщика.

1572

ER\_PARTITION\_MERGE\_ERROREngine cannot be used in partitioned tables
Двигатель не может быть использован в секционированных таблиц

1573

ER\_CANT\_ACTIVATE\_LOGCannot activate ‘%s’ log
Невозможно активировать ‘%s’ журнал

1574

ER\_RBR\_NOT\_AVAILABLEThe server was not built with row\-based replication
Сервер не был построен с рядной репликации

1575

ER\_BASE64\_DECODE\_ERRORDecoding of base64 string failed
Расшифровка base64 строки не удалось

1576

ER\_EVENT\_RECURSION\_FORBIDDENRecursion of EVENT DDL statements is forbidden when body is present
Рекурсия события DDL заявления запрещено, когда тело присутствует

1577

ER\_EVENTS\_DB\_ERRORCannot proceed because system tables used by Event Scheduler were found damaged at server start
Не удается выполнить, потому что системные таблицы, используемые Event Scheduler были найдены повреждения при запуске сервера

1578

ER\_ONLY\_INTEGERS\_ALLOWEDOnly integers allowed as number here
Только целые допускается в качестве числа здесь

1579

ER\_UNSUPORTED\_LOG\_ENGINEThis storage engine cannot be used for log tables”
Этот двигатель хранения не могут быть использованы для таблиц журнала “

1580

ER\_BAD\_LOG\_STATEMENTYou cannot ‘%s’ a log table if logging is enabled
Вы не можете ‘%s’ таблица журнала, если включено ведение журнала

1581

ER\_CANT\_RENAME\_LOG\_TABLECannot rename ‘%s’. When logging enabled, rename to/from log table must rename two tables: the log table to an archive table and another table back to ‘%s’
Невозможно переименовать ‘%s’.

1582

ER\_WRONG\_PARAMCOUNT\_TO\_NATIVE\_FCTIncorrect parameter count in the call to native function ‘%s’
Неправильное количество параметров в вызове собственной функции ‘%s’

1583

ER\_WRONG\_PARAMETERS\_TO\_NATIVE\_FCTIncorrect parameters in the call to native function ‘%s’
Неверные параметры в вызове собственной функции ‘%s’

1584

ER\_WRONG\_PARAMETERS\_TO\_STORED\_FCTIncorrect parameters in the call to stored function ‘%s’
Неверные параметры в вызове хранимой функции ‘%s’

1585

ER\_NATIVE\_FCT\_NAME\_COLLISIONThis function ‘%s’ has the same name as a native function
Эта функция ‘%s’ имеет то же имя, родной функции

1586

ER\_DUP\_ENTRY\_WITH\_KEY\_NAMEDuplicate entry ‘%s’ for key ‘%s’
Дублировать запись ‘%s’ для ключа “%s ‘

1587

ER\_BINLOG\_PURGE\_EMFILEToo many files opened, please execute the command again
Слишком много файлов открыто, пожалуйста, выполните команду снова

1588

ER\_EVENT\_CANNOT\_CREATE\_IN\_THE\_PASTEvent execution time is in the past and ON COMPLETION NOT PRESERVE is set. The event was dropped immediately after creation.
Время выполнения событие в прошлом и по окончании не сохраняют установлен.

1589

ER\_EVENT\_CANNOT\_ALTER\_IN\_THE\_PASTEvent execution time is in the past and ON COMPLETION NOT PRESERVE is set. The event was dropped immediately after creation.
Время выполнения событие в прошлом и по окончании не сохраняют установлен.

1590

ER\_SLAVE\_INCIDENTThe incident %s occured on the master. %s
Инцидент % с произошло на главном.

1591

ER\_NO\_PARTITION\_FOR\_GIVEN\_VALUE\_SILENTTable has no partition for some existing values
Таблица не имеет раздел для некоторых существующих значений

1592

ER\_BINLOG\_UNSAFE\_STATEMENTUnsafe statement written to the binary log using statement format since BINLOG\_FORMAT = STATEMENT. %s
Небезопасная заявление записываются в двоичном журнале с использованием формата отчетности с BINLOG\_FORMAT = ЗАЯВЛЕНИЕ.

1593

ER\_SLAVE\_FATAL\_ERRORFatal error: %s
Фатальная ошибка: % с

1594

ER\_SLAVE\_RELAY\_LOG\_READ\_FAILURERelay log read failure: %s
Журнал Реле читать провал : % с

1595

ER\_SLAVE\_RELAY\_LOG\_WRITE\_FAILURERelay log write failure: %s
Реле журнала ошибка записи : % с

1596

ER\_SLAVE\_CREATE\_EVENT\_FAILUREFailed to create %s
Не удалось создать % с

1597

ER\_SLAVE\_MASTER\_COM\_FAILUREMaster command %s failed: %s
Мастер команда% с не удалось: % с

1598

ER\_BINLOG\_LOGGING\_IMPOSSIBLEBinary logging not possible. %s
Двоичной регистрации невозможно.

1599

ER\_VIEW\_NO\_CREATION\_CTXView \`%s\`.\`%s\` has no creation context
Зайти % с \`. \`% С \` не имеет контекст создания

1600

ER\_VIEW\_INVALID\_CREATION\_CTXCreation context of view \`%s\`.\`%s’ is invalid
Контекст Создание зрения \`% ов \`. \`% С ” недопустим

1601

ER\_SR\_INVALID\_CREATION\_CTXCreation context of stored routine \`%s\`.\`%s\` is invalid
Контекст Создание хранимой рутинной \`% с \`. \`% С \` является недействительным

1602

ER\_TRG\_CORRUPTED\_FILECorrupted TRG file for table \`%s\`.\`%s\`
Поврежденный TRG файл для таблицы ‘% с \`. \`% С \`

1603

ER\_TRG\_NO\_CREATION\_CTXTriggers for table \`%s\`.\`%s\` have no creation context
Не Триггеры для таблицы \` % с \`. “ Имеют никакого контекста слова %s

1604

ER\_TRG\_INVALID\_CREATION\_CTXTrigger creation context of table \`%s\`.\`%s\` is invalid
Создание триггера контекст таблицы \` % с \`. \`% С \` является недействительным

1605

ER\_EVENT\_INVALID\_CREATION\_CTXCreation context of event \`%s\`.\`%s\` is invalid
Контекст Создание событий \`% с \`. \`% С \` является недействительным

1606

ER\_TRG\_CANT\_OPEN\_TABLECannot open table for trigger \`%s\`.\`%s\`
Не могу открыть стол для запуска \`% ов \`. \`% С \`

1607

ER\_CANT\_CREATE\_SROUTINECannot create stored routine \`%s\`. Check warnings
Невозможно создать хранимую рутинной \` %s \`.

1608

ER\_SLAVE\_AMBIGOUS\_EXEC\_MODEAmbiguous slave modes combination. %s
Неоднозначное ведомом режимах комбинации.

1608

ER\_NEVER\_USEDAmbiguous slave modes combination. %s
Неоднозначное ведомом режимах комбинации.

1609

ER\_NO\_FORMAT\_DESCRIPTION\_EVENT\_BEFORE\_BINLOG\_STATEMENTThe BINLOG statement of type \`%s\` was not preceded by a format description BINLOG statement.
Двоичный утверждение типа \`% ов \` не предшествовала Описание формата Двоичный заявлении.

1610

ER\_SLAVE\_CORRUPT\_EVENTCorrupted replication event was detected
Поврежденный событие репликации был обнаружен

1611

ER\_LOAD\_DATA\_INVALID\_COLUMNInvalid column reference (%s) in LOAD DATA
Ссылка Неверный колонка ( %s) в LOAD DATA

1612

ER\_LOG\_PURGE\_NO\_FILEBeing purged log %s was not found
Будучи очищены журнал %s не найден

1613

ER\_XA\_RBTIMEOUTXA\_RBTIMEOUT: Transaction branch was rolled back: took too long
XA\_RBTIMEOUT : филиал сделка откат : занимает слишком много времени

1614

ER\_XA\_RBDEADLOCKXA\_RBDEADLOCK: Transaction branch was rolled back: deadlock was detected
XA\_RBDEADLOCK : филиал сделка откат : тупик был обнаружен

1615

ER\_NEED\_REPREPAREPrepared statement needs to be re\-prepared
Подготовлено заявление должно быть повторно подготовлен

1616

ER\_DELAYED\_NOT\_SUPPORTEDDELAYED option not supported for table ‘%s’
ЗАДЕРЖАН вариант не поддерживается для таблицы “%s ‘

1617

WARN\_NO\_MASTER\_INFOThe master info structure does not exist
Мастер информационная структура не существует

1618

WARN\_OPTION\_IGNORED<%s> option ignored
u003c с % u003e опция игнорируется

1619

WARN\_PLUGIN\_DELETE\_BUILTINBuilt\-in plugins cannot be deleted
Встроенные плагины не могут быть удалены

1620

WARN\_PLUGIN\_BUSYPlugin is busy and will be uninstalled on shutdown
Плагин занят и будет удалена при завершении работы

1621

ER\_VARIABLE\_IS\_READONLY%s variable ‘%s’ is read\-only. Use SET %s to assign the value
%s переменная ‘ %s’ только для чтения.

1622

ER\_WARN\_ENGINE\_TRANSACTION\_ROLLBACKStorage engine %s does not support rollback for this statement. Transaction rolled back and must be restarted
Хранение двигателя % с браузер не поддерживает откат для этого заявления.

1623

ER\_SLAVE\_HEARTBEAT\_FAILUREUnexpected master’s heartbeat data: %s
Данные сердцебиение Нечаянная мастера : % с

1624

ER\_SLAVE\_HEARTBEAT\_VALUE\_OUT\_OF\_RANGEThe requested value for the heartbeat period is either negative or exceeds the maximum allowed (%s seconds).
Запрашиваемая значение для периода сердечных сокращений либо отрицательный или превышает максимально допустимое ( %s секунды ).

1625

ER\_NDB\_REPLICATION\_SCHEMA\_ERRORBad schema for mysql.ndb\_replication table. %s
Плохой схемы для mysql.ndb\_replication таблице.

1626

ER\_CONFLICT\_FN\_PARSE\_ERRORError in parsing conflict function. %s
Ошибка при разборе функцию конфликта.

1627

ER\_EXCEPTIONS\_WRITE\_ERRORWrite to exceptions table failed. %s”
Пишите исключений таблице не удалось.

1628

ER\_TOO\_LONG\_TABLE\_COMMENTComment for table ‘%s’ is too long (max = %lu)
Комментарий для таблицы “%s ‘ слишком длинный (макс. = % лу )

1629

ER\_TOO\_LONG\_FIELD\_COMMENTComment for field ‘%s’ is too long (max = %lu)
Комментарий для поля ‘%s’ слишком длинный (макс. = % лу )

1630

ER\_FUNC\_INEXISTENT\_NAME\_COLLISIONFUNCTION %s does not exist. Check the ‘Function Name Parsing and Resolution’ section in the Reference Manual
ФУНКЦИИ % с не существует.

1631

ER\_DATABASE\_NAMEDatabase
база данных

1632

ER\_TABLE\_NAMETable
стол

1633

ER\_PARTITION\_NAMEPartition
раздел

1634

ER\_SUBPARTITION\_NAMESubpartition
подразделу

1635

ER\_TEMPORARY\_NAMETemporary
временный

1636

ER\_RENAMED\_NAMERenamed
переименованный

1637

ER\_TOO\_MANY\_CONCURRENT\_TRXSToo many active concurrent transactions
Слишком много активных параллельные транзакции

1638

WARN\_NON\_ASCII\_SEPARATOR\_NOT\_IMPLEMENTEDNon\-ASCII separator arguments are not fully supported
Аргументы сепаратор не\-ASCII поддерживаются не полностью

1639

ER\_DEBUG\_SYNC\_TIMEOUTdebug sync point wait timed out
точка отладки синхронизации ожидание истекло

1640

ER\_DEBUG\_SYNC\_HIT\_LIMITdebug sync point hit limit reached
точка отладки синхронизации хит Достигнут предел

1641

ER\_DUP\_SIGNAL\_SETDuplicate condition information item ‘%s’
Дублировать состояние информационного элемента ‘%s’

1642

ER\_SIGNAL\_WARNUnhandled user\-defined warning condition
Неизвестное определяемые пользователем условие предупреждение

1643

ER\_SIGNAL\_NOT\_FOUNDUnhandled user\-defined not found condition
Неизвестное определяемые пользователем не найден состояние

1644

ER\_SIGNAL\_EXCEPTIONUnhandled user\-defined exception condition
Неизвестное определяемые пользователем состояние исключение

1645

ER\_RESIGNAL\_WITHOUT\_ACTIVE\_HANDLERRESIGNAL when handler not active
RESIGNAL когда обработчик не активен

1646

ER\_SIGNAL\_BAD\_CONDITION\_TYPESIGNAL/RESIGNAL can only use a CONDITION defined with SQLSTATE
СИГНАЛ / RESIGNAL можно использовать только состояние, определяемое с SQLSTATE

1647

WARN\_COND\_ITEM\_TRUNCATEDData truncated for condition item ‘%s’
Данные усечены для Состояние ‘%s’

1648

ER\_COND\_ITEM\_TOO\_LONGData too long for condition item ‘%s’
Данные слишком долго для Состояние ‘%s’

1649

ER\_UNKNOWN\_LOCALEUnknown locale: ‘%s’
Неизвестно Язык: ‘%s’

1650

ER\_SLAVE\_IGNORE\_SERVER\_IDSThe requested server id %d clashes with the slave startup option –replicate\-same\-server\-id
Запрашиваемая идентификатор сервера %d столкновения с параметром запуска раб – повторить – же – сервера идентификатор

1651

ER\_QUERY\_CACHE\_DISABLEDQuery cache is disabled; restart the server with query\_cache\_type=1 to enable it
Кэш запросов отключена;

1652

ER\_SAME\_NAME\_PARTITION\_FIELDDuplicate partition field name ‘%s’
Дублирование разделов имя поля ‘%s’

1653

ER\_PARTITION\_COLUMN\_LIST\_ERRORInconsistency in usage of column lists for partitioning
Непоследовательность в использовании списков столбцов для разделения

1654

ER\_WRONG\_TYPE\_COLUMN\_VALUE\_ERRORPartition column values of incorrect type
Перегородки значения столбцов из неправильного типа

1655

ER\_TOO\_MANY\_PARTITION\_FUNC\_FIELDS\_ERRORToo many fields in ‘%s’
Слишком много полей в ‘%s’

1656

ER\_MAXVALUE\_IN\_VALUES\_INCannot use MAXVALUE as value in VALUES IN
Нельзя использовать MAXVALUE как значение значений в

1657

ER\_TOO\_MANY\_VALUES\_ERRORCannot have more than one value for this type of %s partitioning
Не может иметь более одного значения для этого типа секционирования %s

1658

ER\_ROW\_SINGLE\_PARTITION\_FIELD\_ERRORRow expressions in VALUES IN only allowed for multi\-field column partitioning
Выражения Row значений в только разрешенных для разделения столбца многопрофильной

1659

ER\_FIELD\_TYPE\_NOT\_ALLOWED\_AS\_PARTITION\_FIELDField ‘%s’ is of a not allowed type for this type of partitioning
Поле ‘ %s’ имеет не допускается типа для этого типа разделов

1660

ER\_PARTITION\_FIELDS\_TOO\_LONGThe total length of the partitioning fields is too large
Общая длина полей разделения слишком велик

1661

ER\_BINLOG\_ROW\_ENGINE\_AND\_STMT\_ENGINECannot execute statement: impossible to write to binary log since both row\-incapable engines and statement\-incapable engines are involved.
Невозможно выполнить заявление: нельзя писать в двоичный журнал, поскольку обе строки – не в состоянии двигатели и заявление – неспособным двигатели участвуют.

1662

ER\_BINLOG\_ROW\_MODE\_AND\_STMT\_ENGINECannot execute statement: impossible to write to binary log since BINLOG\_FORMAT = ROW and at least one table uses a storage engine limited to statement\-based logging.
Невозможно выполнить заявление: нельзя писать в двоичный журнал с BINLOG\_FORMAT = СТРОКА и по крайней мере одна таблица использует механизм хранения ограничивается заявление на основе регистрации.

1663

ER\_BINLOG\_UNSAFE\_AND\_STMT\_ENGINECannot execute statement: impossible to write to binary log since statement is unsafe, storage engine is limited to statement\-based logging, and BINLOG\_FORMAT = MIXED. %s
Невозможно выполнить заявление: нельзя писать в двоичный журнал с заявлением небезопасно, механизм хранения ограничивается заявление на основе регистрации, и BINLOG\_FORMAT = MIXED.

1664

ER\_BINLOG\_ROW\_INJECTION\_AND\_STMT\_ENGINECannot execute statement: impossible to write to binary log since statement is in row format and at least one table uses a storage engine limited to statement\-based logging.
Невозможно выполнить заявление: нельзя писать в двоичный журнал с заявлением в формате строк и по крайней мере одна таблица использует механизм хранения ограничивается заявление на основе регистрации.

1665

ER\_BINLOG\_STMT\_MODE\_AND\_ROW\_ENGINECannot execute statement: impossible to write to binary log since BINLOG\_FORMAT = STATEMENT and at least one table uses a storage engine limited to row\-based logging.%s
Невозможно выполнить заявление: нельзя писать в двоичный журнал с BINLOG\_FORMAT = ЗАЯВЛЕНИЕ и по крайней мере одна таблица использует механизм хранения ограничен грести на основе рубок % с.

1666

ER\_BINLOG\_ROW\_INJECTION\_AND\_STMT\_MODECannot execute statement: impossible to write to binary log since statement is in row format and BINLOG\_FORMAT = STATEMENT.
Невозможно выполнить заявление: нельзя писать в двоичный журнал с заявлением в формате строк и BINLOG\_FORMAT = ЗАЯВЛЕНИЕ.

1667

ER\_BINLOG\_MULTIPLE\_ENGINES\_AND\_SELF\_LOGGING\_ENGINECannot execute statement: impossible to write to binary log since more than one engine is involved and at least one engine is self\-logging.
Невозможно выполнить заявление: нельзя писать в двоичный журнал с более чем одним двигателем участвует и по крайней мере один двигатель самостоятельно регистрация.

1668

ER\_BINLOG\_UNSAFE\_LIMITThe statement is unsafe because it uses a LIMIT clause. This is unsafe because the set of rows included cannot be predicted.
В заявлении небезопасно, поскольку он использует оговорку предел.

1669

ER\_BINLOG\_UNSAFE\_INSERT\_DELAYEDThe statement is unsafe because it uses INSERT DELAYED. This is unsafe because the times when rows are inserted cannot be predicted.
В заявлении небезопасно, поскольку он использует INSERT DELAYED.

1670

ER\_BINLOG\_UNSAFE\_SYSTEM\_TABLEThe statement is unsafe because it uses the general log, slow query log, or performance\_schema table(s). This is unsafe because system tables may differ on slaves.
В заявлении небезопасно, поскольку он использует общий журнал, журнал медленных запросов или performance\_schema таблицу (ы).

1671

ER\_BINLOG\_UNSAFE\_AUTOINC\_COLUMNSStatement is unsafe because it invokes a trigger or a stored function that inserts into an AUTO\_INCREMENT column. Inserted values cannot be logged correctly.
О себе небезопасно, потому что это вызывает триггер или хранимую функцию, которая вставляет в столбец AUTO\_INCREMENT.

1672

ER\_BINLOG\_UNSAFE\_UDFStatement is unsafe because it uses a UDF which may not return the same value on the slave.
О себе небезопасно, поскольку он использует UDF, которые не могут вернуться и то же значение на раб.

1673

ER\_BINLOG\_UNSAFE\_SYSTEM\_VARIABLEStatement is unsafe because it uses a system variable that may have a different value on the slave.
О себе небезопасно, поскольку он использует системную переменную, которая может иметь различное значение на раба.

1674

ER\_BINLOG\_UNSAFE\_SYSTEM\_FUNCTIONStatement is unsafe because it uses a system function that may return a different value on the slave.
О себе небезопасно, поскольку он использует системную функцию, которая может вернуть другое значение на раб.

1675

ER\_BINLOG\_UNSAFE\_NONTRANS\_AFTER\_TRANSStatement is unsafe because it accesses a non\-transactional table after accessing a transactional table within the same transaction.
О себе небезопасно, потому что обращается к таблице нетранзакционных после доступа к таблице транзакций в рамках одной транзакции.

1676

ER\_MESSAGE\_AND\_STATEMENT%s Statement: %s
% с себе : % с

1677

ER\_SLAVE\_CONVERSION\_FAILEDColumn %d of table ‘%s.%s’ cannot be converted from type ‘%s’ to type ‘%s’
Колонка %d из таблицы “%s. % С ‘не может быть преобразован из типа”%s ‘ ввести ‘%s’

1678

ER\_SLAVE\_CANT\_CREATE\_CONVERSIONCan’t create conversion table for table ‘%s.%s’
Невозможно создать таблицу преобразования для таблицы “% с. % С ‘

1679

ER\_INSIDE\_TRANSACTION\_PREVENTS\_SWITCH\_BINLOG\_FORMATCannot modify @@session.binlog\_format inside a transaction
Невозможно изменить @ @ session.binlog\_format внутри транзакции

1680

ER\_PATH\_LENGTHThe path specified for %s is too long.
Путь, указанный для % с слишком длинный.

1681

ER\_WARN\_DEPRECATED\_SYNTAX\_NO\_REPLACEMENT%s’ is deprecated and will be removed in a future release.
% с ‘ устарела и будет удалена в будущих версиях.

1682

ER\_WRONG\_NATIVE\_TABLE\_STRUCTURENative table ‘%s’.’%s’ has the wrong structure
Родной таблица “%s ‘.’ %s ‘ имеет неправильную структуру

1683

ER\_WRONG\_PERFSCHEMA\_USAGEInvalid performance\_schema usage.
Недопустимое использование performance\_schema.

1684

ER\_WARN\_I\_S\_SKIPPED\_TABLETable ‘%s’.’%s’ was skipped since its definition is being modified by concurrent DDL statement
Таблица “%s ‘.’ %s ‘ был пропущен, поскольку ее определение вносятся изменения одновременным заявлением DDL

1685

ER\_INSIDE\_TRANSACTION\_PREVENTS\_SWITCH\_BINLOG\_DIRECTCannot modify @@session.binlog\_direct\_non\_transactional\_updates inside a transaction
Невозможно изменить @ @ session.binlog\_direct\_non\_transactional\_updates внутри транзакции

1686

ER\_STORED\_FUNCTION\_PREVENTS\_SWITCH\_BINLOG\_DIRECTCannot change the binlog direct flag inside a stored function or trigger
Невозможно изменить Двоичный прямой флаг внутри хранимой функции или триггера

1687

ER\_SPATIAL\_MUST\_HAVE\_GEOM\_COLA SPATIAL index may only contain a geometrical type column
Пространственный индекс может содержать только столбец геометрическая типа

1688

ER\_TOO\_LONG\_INDEX\_COMMENTComment for index ‘%s’ is too long (max = %lu)
Комментарий для индекса ” %s ‘ слишком длинный (макс. = % лу )

1689

ER\_LOCK\_ABORTEDWait on a lock was aborted due to a pending exclusive lock
Ожидание блокировки была прервана из\-за отложенного исключительной блокировки

1690

ER\_DATA\_OUT\_OF\_RANGE%s value is out of range in ‘%s’
Значение %s находится вне диапазона в ‘%s’

1691

ER\_WRONG\_SPVAR\_TYPE\_IN\_LIMITA variable of a non\-integer based type in LIMIT clause
Переменная типа не целое, основанной в пункте LIMIT

1692

ER\_BINLOG\_UNSAFE\_MULTIPLE\_ENGINES\_AND\_SELF\_LOGGING\_ENGINEMixing self\-logging and non\-self\-logging engines in a statement is unsafe.
Смешивание собственного рубками и несамоходных протоколирования двигатели в заявлении небезопасно.

1693

ER\_BINLOG\_UNSAFE\_MIXED\_STATEMENTStatement accesses nontransactional table as well as transactional or temporary table, and writes to any of them.
О себе доступ нетранзактных стол, а также транзакций или временную таблицу, и записывает в любой из них.

1694

ER\_INSIDE\_TRANSACTION\_PREVENTS\_SWITCH\_SQL\_LOG\_BINCannot modify @@session.sql\_log\_bin inside a transaction
Невозможно изменить @ @ session.sql\_log\_bin внутри транзакции

1695

ER\_STORED\_FUNCTION\_PREVENTS\_SWITCH\_SQL\_LOG\_BINCannot change the sql\_log\_bin inside a stored function or trigger
Невозможно изменить SQL\_LOG\_BIN внутри хранимой функции или триггера

1696

ER\_FAILED\_READ\_FROM\_PAR\_FILEFailed to read from the .par file
Не удалось прочитать из номинальной файле.

1697

ER\_VALUES\_IS\_NOT\_INT\_TYPE\_ERRORVALUES value for partition ‘%s’ must have type INT
Значение значения для раздела ‘%s’ должно иметь тип INT

1698

ER\_ACCESS\_DENIED\_NO\_PASSWORD\_ERRORAccess denied for user ‘%s’@’%s’
Доступ закрыт для пользователя ‘ %s ‘ @ ​​’ %s ‘

1699

ER\_SET\_PASSWORD\_AUTH\_PLUGINSET PASSWORD has no significance for users authenticating via plugins
Установить пароль не имеет никакого значения для пользователей аутентификации через плагины

1700

ER\_GRANT\_PLUGIN\_USER\_EXISTSGRANT with IDENTIFIED WITH is illegal because the user %\-.\*s already exists
ГРАНТ с отождествляется с незаконно, так как пользователь % \-. \* Ы уже существует

1701

ER\_TRUNCATE\_ILLEGAL\_FKCannot truncate a table referenced in a foreign key constraint (%s)
Невозможно усечь таблицу ссылается ключевого ограничения ( %s) иностранной

1702

ER\_PLUGIN\_IS\_PERMANENTPlugin ‘%s’ is force\_plus\_permanent and can not be unloaded
Плагин ‘%s’ является force\_plus\_permanent и не может быть выгружен

1703

ER\_SLAVE\_HEARTBEAT\_VALUE\_OUT\_OF\_RANGE\_MINThe requested value for the heartbeat period is less than 1 millisecond. The value is reset to 0, meaning that heartbeating will effectively be disabled.
Запрашиваемая значение для периода сердечных сокращений меньше 1 миллисекунды.

1704

ER\_SLAVE\_HEARTBEAT\_VALUE\_OUT\_OF\_RANGE\_MAXThe requested value for the heartbeat period exceeds the value of \`slave\_net\_timeout’ seconds. A sensible value for the period should be less than the timeout.
Запрашиваемая значение для периода сердечных сокращений превышает стоимость \` slave\_net\_timeout ” секунд.

1705

ER\_STMT\_CACHE\_FULLMulti\-row statements required more than ‘max\_binlog\_stmt\_cache\_size’ bytes of storage; increase this mysqld variable and try again
Заявления Многорядные требуется больше, чем ” max\_binlog\_stmt\_cache\_size ‘ байт хранения;

1706

ER\_MULTI\_UPDATE\_KEY\_CONFLICTPrimary key/partition key update is not allowed since the table is updated both as ‘%s’ and ‘%s’.
Первичный ключ / раздел обновления ключа не допускается, так как таблица обновляется и как “%s ‘и’%s ‘.

1707

ER\_TABLE\_NEEDS\_REBUILDTable rebuild required. Please do “ALTER TABLE \`%s\` FORCE” or dump/reload to fix it!
Таблица восстановить требуется.

1708

WARN\_OPTION\_BELOW\_LIMITThe value of ‘%s’ should be no less than the value of ‘%s’
Значение ‘%s’ не должно быть меньше, чем значение ‘%s’

1709

ER\_INDEX\_COLUMN\_TOO\_LONGIndex column size too large. The maximum column size is %lu bytes.
Размер индекса столбец слишком велик.

1710

ER\_ERROR\_IN\_TRIGGER\_BODYTrigger ‘%s’ has an error in its body: ‘%s’
Триггер “%s ‘ имеет ошибку в своем теле : ‘%s ‘

1711

ER\_ERROR\_IN\_UNKNOWN\_TRIGGER\_BODYUnknown trigger has an error in its body: ‘%s’
Неизвестный триггер имеет ошибку в своем теле : ‘%s’

1712

ER\_INDEX\_CORRUPTIndex %s is corrupted
Индекс % с поврежден

1713

ER\_UNDO\_RECORD\_TOO\_BIGUndo log record is too big.
Отменить запись журнала является слишком большой.

1714

ER\_BINLOG\_UNSAFE\_INSERT\_IGNORE\_SELECTINSERT IGNORE… SELECT is unsafe because the order in which rows are retrieved by the SELECT determines which (if any) rows are ignored. This order cannot be predicted and may differ on master and the slave.
INSERT IGNORE… SELECT небезопасно, потому что порядок, в котором строки извлекаются в зависимости от выбранного ( если таковые имеются) строки игнорируются.

1715

ER\_BINLOG\_UNSAFE\_INSERT\_SELECT\_UPDATEINSERT… SELECT… ON DUPLICATE KEY UPDATE is unsafe because the order in which rows are retrieved by the SELECT determines which (if any) rows are updated. This order cannot be predicted and may differ on master and the slave.
INSERT… SELECT… НА дубликат ключа UPDATE небезопасно, потому что порядок, в котором строки извлекаются в зависимости от выбранного ( если таковые имеются) строки обновляются.

1716

ER\_BINLOG\_UNSAFE\_REPLACE\_SELECTREPLACE… SELECT is unsafe because the order in which rows are retrieved by the SELECT determines which (if any) rows are replaced. This order cannot be predicted and may differ on master and the slave.
ЗАМЕНА… ВЫБОР небезопасно, потому что порядок, в котором строки извлекаются в зависимости от выбранного ( если таковые имеются) строк будут заменены.

1717

ER\_BINLOG\_UNSAFE\_CREATE\_IGNORE\_SELECTCREATE… IGNORE SELECT is unsafe because the order in which rows are retrieved by the SELECT determines which (if any) rows are ignored. This order cannot be predicted and may differ on master and the slave.
СОЗДАТЬ… IGNORE ВЫБОР небезопасно, потому что порядок, в котором строки извлекаются в зависимости от выбранного ( если таковые имеются) строки игнорируются.

1718

ER\_BINLOG\_UNSAFE\_CREATE\_REPLACE\_SELECTCREATE… REPLACE SELECT is unsafe because the order in which rows are retrieved by the SELECT determines which (if any) rows are replaced. This order cannot be predicted and may differ on master and the slave.
СОЗДАТЬ… Replace Select небезопасно, потому что порядок, в котором строки извлекаются в зависимости от выбранного ( если таковые имеются) строк будут заменены.

1719

ER\_BINLOG\_UNSAFE\_UPDATE\_IGNOREUPDATE IGNORE is unsafe because the order in which rows are updated determines which (if any) rows are ignored. This order cannot be predicted and may differ on master and the slave.
UPDATE IGNORE небезопасно, потому что порядок, в котором строки обновляются определяет, какие ( если таковые имеются) строки игнорируются.

1720

ER\_PLUGIN\_NO\_UNINSTALLPlugin ‘%s’ is marked as not dynamically uninstallable. You have to stop the server to uninstall it.
Плагин ‘%s’ помечен как не динамически невозможно установить.

1721

ER\_PLUGIN\_NO\_INSTALLPlugin ‘%s’ is marked as not dynamically installable. You have to stop the server to install it.
Плагин ‘%s’ помечен как не динамически устанавливаемый.

1722

ER\_BINLOG\_UNSAFE\_WRITE\_AUTOINC\_SELECTStatements writing to a table with an auto\-increment column after selecting from another table are unsafe because the order in which rows are retrieved determines what (if any) rows will be written. This order cannot be predicted and may differ on master and the slave.
Заявления писать в таблицу со столбцом автоинкрементного после выбора из другой таблицы являются небезопасными, потому что порядок, в котором строки извлекаются определяет, какие ( если таковые имеются) строки будут написаны.

1723

ER\_BINLOG\_UNSAFE\_CREATE\_SELECT\_AUTOINCCREATE TABLE… SELECT… on a table with an auto\-increment column is unsafe because the order in which rows are retrieved by the SELECT determines which (if any) rows are inserted. This order cannot be predicted and may differ on master and the slave.
CREATE TABLE… SELECT… на столе с колонки автоинкрементного небезопасно, потому что порядок, в котором строки извлекаются в зависимости от выбранного ( если таковые имеются) строки вставляются.

1724

ER\_BINLOG\_UNSAFE\_INSERT\_TWO\_KEYSINSERT… ON DUPLICATE KEY UPDATE on a table with more than one UNIQUE KEY is unsafe
INSERT… ON дубликат ключа UPDATE в таблице с более чем одной уникальный ключ небезопасно

1725

ER\_TABLE\_IN\_FK\_CHECKTable is being used in foreign key check.
Таблица используется в проверке внешнего ключа.

1726

ER\_UNSUPPORTED\_ENGINEStorage engine ‘%s’ does not support system tables. \[%s.%s\]
Двигатель хранения “%s ‘не поддерживает системные таблицы.

1727

ER\_BINLOG\_UNSAFE\_AUTOINC\_NOT\_FIRSTINSERT into autoincrement field which is not the first part in the composed primary key is unsafe.
Вставьте в автоинкремент области, которая не является первая часть в первичный ключ состоит небезопасно.

2000

CR\_UNKNOWN\_ERRORUnknown MySQL error
Неизвестная ошибка MySQL

2001

CR\_SOCKET\_CREATE\_ERRORCan’t create UNIX socket (%d)
Невозможно создать сокет UNIX ( %d)

2002

CR\_CONNECTION\_ERRORCan’t connect to local MySQL server through socket ‘%s’ (%d)
Не удается подключиться к локальному серверу MySQL через сокет ‘%s’ ( %d)

2003

CR\_CONN\_HOST\_ERRORCan’t connect to MySQL server on ‘%s’ (%d)
Не удается подключиться к серверу MySQL на ‘%s’ ( %d)

2004

CR\_IPSOCK\_ERRORCan’t create TCP/IP socket (%d)
Не удается создать TCP / IP сокет ( %d)

2005

CR\_UNKNOWN\_HOSTUnknown MySQL server host ‘%s’ (%d)
Сервер Неизвестный MySQL хост ‘%s’ ( %d)

2006

CR\_SERVER\_GONE\_ERRORMySQL server has gone away
Сервер MySQL ушел

2007

CR\_VERSION\_ERRORProtocol mismatch; server version = %d, client version = %d
Протокол несоответствие;

2008

CR\_OUT\_OF\_MEMORYMySQL client ran out of memory
Клиент MySQL не хватило памяти

2009

CR\_WRONG\_HOST\_INFOWrong host info
Неправильный Информация хозяин

2010

CR\_LOCALHOST\_CONNECTIONLocalhost via UNIX socket
LocalHost через гнездо UNIX

2011

CR\_TCP\_CONNECTION%s via TCP/IP
% с помощью TCP / IP

2012

CR\_SERVER\_HANDSHAKE\_ERRError in server handshake
Ошибка в серверной рукопожатия

2013

CR\_SERVER\_LOSTLost connection to MySQL server during query
Потеряно соединение с сервером MySQL во время запроса

2014

CR\_COMMANDS\_OUT\_OF\_SYNCCommands out of sync; you can’t run this command now
Команды из синхронизации;

2015

CR\_NAMEDPIPE\_CONNECTIONNamed pipe: %s
Названный трубы: % с

2016

CR\_NAMEDPIPEWAIT\_ERRORCan’t wait for named pipe to host: %s pipe: %s (%lu)
Не могу дождаться именованного канала для размещения : % с трубы: % с ( % лу )

2017

CR\_NAMEDPIPEOPEN\_ERRORCan’t open named pipe to host: %s pipe: %s (%lu)
Не могу открыть назвал трубу для размещения :%s трубу :%s ( % LU)

2018

CR\_NAMEDPIPESETSTATE\_ERRORCan’t set state of named pipe to host: %s pipe: %s (%lu)
Невозможно установить состояние именованного канала для размещения : % с трубы: % с ( % лу )

2019

CR\_CANT\_READ\_CHARSETCan’t initialize character set %s (path: %s)
Невозможно инициализировать набор символов %s (путь : %s)

2020

CR\_NET\_PACKET\_TOO\_LARGEGot packet bigger than ‘max\_allowed\_packet’ bytes
Получил пакет больше, чем ‘ max\_allowed\_packet ‘ байт

2021

CR\_EMBEDDED\_CONNECTIONEmbedded server
Встроенный сервер

2022

CR\_PROBE\_SLAVE\_STATUSError on SHOW SLAVE STATUS:
Ошибка на SHOW SLAVE STATUS :

2023

CR\_PROBE\_SLAVE\_HOSTSError on SHOW SLAVE HOSTS:
Ошибка на SHOW SLAVE HOSTS :

2024

CR\_PROBE\_SLAVE\_CONNECTError connecting to slave:
Ошибка соединения с раба :

2025

CR\_PROBE\_MASTER\_CONNECTError connecting to master:
Ошибка соединения с мастером :

2026

CR\_SSL\_CONNECTION\_ERRORSSL connection error: %s
Ошибка подключения SSL : % с

2027

CR\_MALFORMED\_PACKETMalformed packet
сформированный пакет

2028

CR\_WRONG\_LICENSEThis client library is licensed only for use with MySQL servers having ‘%s’ license
Этот клиент библиотека предоставляется только для работы с серверами MySQL, имеющих ‘%s’ лицензию

2029

CR\_NULL\_POINTERInvalid use of null pointer
Неправильное использование нулевого указателя

2030

CR\_NO\_PREPARE\_STMTStatement not prepared
О себе не готовы

2031

CR\_PARAMS\_NOT\_BOUNDNo data supplied for parameters in prepared statement
Нет данных, поставляемые для параметров в подготовленном заявлении

2032

CR\_DATA\_TRUNCATEDData truncated
данные усеченной

2033

CR\_NO\_PARAMETERS\_EXISTSNo parameters exist in the statement
Параметры не существуют в заявлении

2034

CR\_INVALID\_PARAMETER\_NOInvalid parameter number
Неверный номер параметра

2035

CR\_INVALID\_BUFFER\_USECan’t send long data for non\-string/non\-binary data types (parameter: %d)
Не удается отправить длинные данные для non\-string/non\-binary типов данных (параметр : %d)

2036

CR\_UNSUPPORTED\_PARAM\_TYPEUsing unsupported buffer type: %d (parameter: %d)
Использование неподдерживаемый тип буфера : %d (параметр : %d)

2037

CR\_SHARED\_MEMORY\_CONNECTIONShared memory: %s
Общая память : % с

2038

CR\_SHARED\_MEMORY\_CONNECT\_REQUEST\_ERRORCan’t open shared memory; client could not create request event (%lu)
Не удается открыть общую память;

2039

CR\_SHARED\_MEMORY\_CONNECT\_ANSWER\_ERRORCan’t open shared memory; no answer event received from server (%lu)
Не удается открыть общую память;

2040

CR\_SHARED\_MEMORY\_CONNECT\_FILE\_MAP\_ERRORCan’t open shared memory; server could not allocate file mapping (%lu)
Не удается открыть общую память;

2041

CR\_SHARED\_MEMORY\_CONNECT\_MAP\_ERRORCan’t open shared memory; server could not get pointer to file mapping (%lu)
Не удается открыть общую память;

2042

CR\_SHARED\_MEMORY\_FILE\_MAP\_ERRORCan’t open shared memory; client could not allocate file mapping (%lu)
Не удается открыть общую память;

2043

CR\_SHARED\_MEMORY\_MAP\_ERRORCan’t open shared memory; client could not get pointer to file mapping (%lu)
Не удается открыть общую память;

2044

CR\_SHARED\_MEMORY\_EVENT\_ERRORCan’t open shared memory; client could not create %s event (%lu)
Не удается открыть общую память;

2045

CR\_SHARED\_MEMORY\_CONNECT\_ABANDONED\_ERRORCan’t open shared memory; no answer from server (%lu)
Не удается открыть общую память;

2046

CR\_SHARED\_MEMORY\_CONNECT\_SET\_ERRORCan’t open shared memory; cannot send request event to server (%lu)
Не удается открыть общую память;

2047

CR\_CONN\_UNKNOW\_PROTOCOLWrong or unknown protocol
Неверный или неизвестный протокол

2048

CR\_INVALID\_CONN\_HANDLEInvalid connection handle
Неверный дескриптор соединения

2049

CR\_SECURE\_AUTHConnection using old (pre\-4.1.1) authentication protocol refused (client option ‘secure\_auth’ enabled)
Соединения, используя старые (до 4.1.1 ) протокол аутентификации отказался (опция клиент ‘ secure\_auth ‘ включен )

2050

CR\_FETCH\_CANCELEDRow retrieval was canceled by mysql\_stmt\_close() call
Поиск строк был отменен призыв mysql\_stmt\_close ( )

2051

CR\_NO\_DATAAttempt to read column without prior row fetch
Попытка прочитать колонку без предварительного подряд выборки

2052

CR\_NO\_STMT\_METADATAPrepared statement contains no metadata
Подготовлено заявление не содержит метаданные

2053

CR\_NO\_RESULT\_SETAttempt to read a row while there is no result set associated with the statement
Попытка прочитать строку в то время как нет результирующий набор, связанный с инструкцией

2054

CR\_NOT\_IMPLEMENTEDThis feature is not implemented yet
Эта функция пока не реализована

2055

CR\_SERVER\_LOST\_EXTENDEDLost connection to MySQL server at ‘%s’, system error: %d
Потеряно соединение с сервером MySQL на ‘%s’, системной ошибки : %d

2056

CR\_STMT\_CLOSEDStatement closed indirectly because of a preceeding %s() call
Заявление закрыт косвенно из\-за звонка предшествующих % с ( )

2057

CR\_NEW\_STMT\_METADATAThe number of columns in the result set differs from the number of bound buffers. You must reset the statement, rebind the result set columns, and execute the statement again
Столбцов в результирующем наборе отличается от числа связанных буферов.

2058

CR\_ALREADY\_CONNECTEDThis handle is already connected. Use a separate handle for each connection.
Эта ручка уже подключен.

2059

CR\_AUTH\_PLUGIN\_CANNOT\_LOADAuthentication plugin ‘%s’ cannot be loaded: %s
Плагин аутентификации ‘%s’ не может быть загружен : % с

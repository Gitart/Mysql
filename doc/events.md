# MySQL Event Scheduler или встроенный диспетчер событий в MySQL

[![mysql-crontab](https://adw0rd.com/media/2009/06/mysql-crontab2.png "mysql-crontab")](http://adw0rd.ru/2009/mysql-event-sheduler/)

В **MySQL 5.1** появился свой **планировщик задач**! Ранее, мне и многим другим разработчикам приходилось использовать [cron](http://ru.wikipedia.org/wiki/cron) для таких целей, как "подчистка устаревшей информации" или "пересчет счетчиков" в базе данных и т.д.

### Включение планировщика

Планировщик по умолчанию выключен, для того чтобы его включить надо добавить в **my.ini** или в **my.cnf**

```
[mysqld]
event_scheduler = on

```

Так же вы можете для конкретной сессии запустить планировщик в mysql\-консоле

```
mysql> set global event_scheduler = ON;

```

Для проверки, работает ли планировщик, выполните запрос:

```
mysql> show variables like 'event_scheduler';
+-----------------+-------+
| Variable_name   | Value |
+-----------------+-------+
| event_scheduler | ON    |
+-----------------+-------+
1 row in set (0.00 sec)

```

Официальное руководство по [настройке](http://dev.mysql.com/doc/refman/5.1/en/events-configuration.html).

### Создание задания

Синтаксис достаточно прост, при создании задания необходимо обязательно указать:

*   Имя задания (event\_name)
*   Интервал или точное время (schedule и interval)
*   SQL\-запрос для выполнения (sql\_statement)

```
CREATE
    [DEFINER = { user | CURRENT_USER }]
    EVENT
    [IF NOT EXISTS]
    event_name
    ON SCHEDULE schedule
    [ON COMPLETION [NOT] PRESERVE]
    [ENABLE | DISABLE | DISABLE ON SLAVE]
    [COMMENT 'comment']
    DO sql_statement;

schedule:
    AT timestamp [+ INTERVAL interval] ...
  | EVERY interval
    [STARTS timestamp [+ INTERVAL interval] ...]
    [ENDS timestamp [+ INTERVAL interval] ...]

interval:
    quantity {YEAR | QUARTER | MONTH | DAY | HOUR | MINUTE |
              WEEK | SECOND | YEAR_MONTH | DAY_HOUR | DAY_MINUTE |
              DAY_SECOND | HOUR_MINUTE | HOUR_SECOND | MINUTE_SECOND}

```

Так же вы можете указать:

*   DEFINER \- имя пользователя, от кого запускать задание (с его правами соответственно)
*   COMMENT \- комментарий
*   ON COMPLETION PRESERVE \- задание после выполнения сохраняется
*   ON COMPLETION NOT PRESERVE \- задание выполняется один раз, после чего уничтожается из списка заданий (по умолчанию)

**Пример короткой записи:**

```
CREATE EVENT `myevent`
    ON SCHEDULE
      AT CURRENT_TIMESTAMP + INTERVAL 10 MINUTE
      ON COMPLETION PRESERVE
    DO
      UPDATE `myschema`.`mytable` SET `mycol` = `mycol` + 1;

```

Официальное руководство по [CREATE EVENT](http://dev.mysql.com/doc/refman/5.1/en/create-event.html)

### Изменение задания

При изменении, вы можете сменить владельца, переименовать название, изменить SQL\-запрос и поменять другие свойства задания.

```
ALTER
    [DEFINER = { user | CURRENT_USER }]
    EVENT event_name
    [ON SCHEDULE schedule]
    [ON COMPLETION [NOT] PRESERVE]
    [RENAME TO new_event_name]
    [ENABLE | DISABLE | DISABLE ON SLAVE]
    [COMMENT 'comment']
    [DO sql_statement]

```

Для отображения всех свойств задания используйте:

```
SELECT * FROM `INFORMATION_SCHEMA`.`EVENTS`
    WHERE `EVENT_NAME` = 'myevent' AND EVENT_SCHEMA = 'myschema'\G

```

```
*************************** 1. row ***************************
   EVENT_CATALOG: NULL
    EVENT_SCHEMA: myschema
      EVENT_NAME: myevent
         DEFINER: john@smith
      EVENT_BODY: SQL
EVENT_DEFINITION: INSERT INTO myschema.mytable VALUES (UNIX_TIMESTAMP())
      EVENT_TYPE: RECURRING
      EXECUTE_AT: NULL
  INTERVAL_VALUE: 5
  INTERVAL_FIELD: SECOND
        SQL_MODE: NULL
          STARTS: 0000-00-00 00:00:00
            ENDS: 0000-00-00 00:00:00
          STATUS: ENABLED
   ON_COMPLETION: NOT PRESERVE
         CREATED: 2006-02-09 22:36:06
    LAST_ALTERED: 2006-02-09 22:36:06
   LAST_EXECUTED: NULL
   EVENT_COMMENT:
1 row in set (0.00 sec)

```

Либо используйте:

```
show events like "event_name%"\G

```

Официальное руководство по [ALTER EVENT](http://dev.mysql.com/doc/refman/5.1/en/alter-event.html)

### Удаление задания

```
DROP EVENT [IF EXISTS] event_name

```

Официальное руководство по [DROP EVENT](http://dev.mysql.com/doc/refman/5.1/en/drop-event.html)

### Диспетчер событий и привилегии в MySQL

Официальное руководство по [установке привелегий](http://dev.mysql.com/doc/refman/5.1/en/events-privileges.html)

### Примеры использования

**Задача:** Удаление не активированных учетных записей пользователей, которые не активировались в течении 3\-х дней. Запускать событие необходимо каждый день.

```
CREATE EVENT `not_active_users`
    ON SCHEDULE
      EVERY 1 DAY
    DO
      DELETE FROM `users`
        WHERE `active` = 'not', UNIX_TIMESTAMP(`date`) >= UNIX_TIMESTAMP(NOW()) - (3 * 24 * 3600);

```

**Задача:** А теперь сменим для задания **"not\_active\_users"** временной интервал.

```
ALTER EVENT `not_active_users`
    ON SCHEDULE
      EVERY 12 HOUR;

```

**Задача:** Удалить задание.

```
DROP EVENT `not_active_users`;

```

Официальные страницы руководства: [Using the Event Scheduler](http://dev.mysql.com/doc/refman/5.1/en/events.html)

## Комментарии [![](https://adw0rd.com/static/images/smorg_feed.png)](https://adw0rd.com/2009/6/12/mysql-event-sheduler/feed/)

Konstantin [12 июня 2009 г. 14:30](https://adw0rd.com/2009/06/12/mysql-event-sheduler/#comment-3185)

Для событий исполняемых с определенной периодичностью, можно также указать время старта и время прекращения цикличного выполнения, например для примера приведенного в статье:

CREATE EVENT `not_active_users`
ON SCHEDULE
EVERY 1 DAY START '2009\-06\-12 23:59:59' END CURRENT\_TIMESTAMP + INTERVAL 1 WEEK
DO
DELETE FROM `users`
WHERE `active` = 'not', UNIX\_TIMESTAMP(`date`) >= UNIX\_TIMESTAMP(NOW()) \- (3 \* 24 \* 3600);

Событие исполнится \-2009\-06\-12 23:59:59 и не будет исполнятся через 1 неделю, подробнее смотрите http://dev.mysql.com/doc/refman/5.1/en/create\-event.html

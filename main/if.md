## Пути JSON

Путь JSON предназначен для значений и может использоваться для извлечения или изменения частей документа JSON. Функция [JSON\_EXTRACT()](https://dev.mysql.com/doc/refman//en/json-search-functions.html#function_json-extract) демонстрирует это, извлекая одно или несколько значений:

```sql
-- returns "SitePoint":
SELECT JSON_EXTRACT('{"id": 1, "website": "SitePoint"}', '$.website');

```

Все определения пути начинаются с символа `$` , за которым следуют другие селекторы:

*   точка, за которой следует имя, например `$.website`
*   `[N]` где N — позиция в массиве с нулевым индексом
*   подстановочный знак `.[*]` оценивает все члены объекта
*   подстановочный знак `[*]` оценивает все члены массива
*   подстановочный знак оценивается как `prefix**suffix` все пути, которые начинаются с именованного префикса и заканчиваются именованным суффиксом

Следующие примеры относятся к следующему документу JSON:

```sql
{
  "a": 1,
  "b": 2,
  "c": [3, 4],
  "d": {
    "e": 5,
    "f": 6
  }
}

```

Примеры путей:

*   `$.a` возвращается `1`
*   `$.c` возвращается `[3, 4]`
*   `$.c[1]` возвращается `4`
*   `$.d.e` возвращается `5`
*   `$**.e` возвращается `[5]`

## Извлечение путей JSON в запросах

Вы можете извлечь имя и первый тег вашей таблицы **книг** , используя запрос:

```sql
SELECT
  title, tags->"$[0]" AS `tag1`
FROM `book`;

```

В более сложном примере предположим, что у вас есть таблица **пользователей** с данными профиля JSON. Например:

| я бы | имя | профиль |
| --- | --- | --- |
| 1 | Крейг | { «электронная почта»: \[«craig@email1.com», «craig@email2.com»\], «твиттер»: «@craigbuckler» } |
| 2 | СайтПоинт | { «электронная почта»: \[\], «твиттер»: «@sitepointdotcom» } |

Вы можете извлечь имя Twitter, используя путь JSON. Например:

```sql
SELECT
  name, profile->"$.twitter" AS `twitter`
FROM `user`;

```

Вы можете использовать путь JSON в предложении WHERE, чтобы возвращать только пользователей с учетной записью Twitter:

```sql
SELECT
  name, profile->"$.twitter" AS `twitter`
FROM `user`
WHERE
  profile->"$.twitter" IS NOT NULL;

```

[![Распродажа $3/месяц](https://cdn.sanity.io/images/708bnrs8/production/12e9f50316d9a0265b4583c6d257cae13f1f8eba-768x209.png?w=768&h=209&auto=format)](https://sitepoint.com/premium/library/?ref_medium=articlebanner)

## Изменение части документа JSON

Существует несколько [функций MySQL для изменения частей документа JSON](https://dev.mysql.com/doc/refman//en/json-modification-functions.html) с использованием обозначения пути. Это включает:

*   `JSON_SET(doc, path, val[, path, val]...)` : вставляет или обновляет данные в документе
*   `JSON_INSERT(doc, path, val[, path, val]...)` : вставляет данные в документ
*   `JSON_REPLACE(doc, path, val[, path, val]...)` : заменяет данные в документе
*   `JSON_MERGE(doc, doc[, doc]...)` : объединяет два или более документа
*   `JSON_ARRAY_APPEND(doc, path, val[, path, val]...)` : добавляет значения в конец массива
*   `JSON_ARRAY_INSERT(doc, path, val[, path, val]...)` : вставляет массив в документ
*   `JSON_REMOVE(doc, path[, path]...)` : удаляет данные из документа

Таким образом, вы можете добавить «технический» тег к любой книге, в которой уже есть тег «JavaScript»:

```sql
UPDATE `book`
  SET tags = JSON_MERGE(tags, '["technical"]')
WHERE
  JSON_SEARCH(tags, 'one', 'JavaScript') IS NOT NULL;

```

## Дальнейшая информация

Руководство по MySQL предоставляет дополнительную информацию о [типе данных JSON](https://dev.mysql.com/doc/refman/en/json.html) и [связанных с ним функциях JSON](https://dev.mysql.com/doc/refman//en/json-functions.html) .

Еще раз призываю вас не использовать JSON, если в этом нет крайней необходимости. Вы можете эмулировать всю ориентированную на документы базу данных NoSQL в MySQL, но это сведет на нет многие [преимущества SQL](https://www.sitepoint.com/sql-vs-nosql-choose/) , и вы с таким же успехом можете переключиться на настоящую систему NoSQL! Тем не менее, типы данных JSON могут сэкономить усилия для более неясных требований к данным в приложении SQL.

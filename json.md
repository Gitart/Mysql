# Как использовать поля данных JSON в базах данных MySQL

[Базы данных](https://www.sitepoint.com/programming/databases/) [Открытый исходный код](https://www.sitepoint.com/web/open-source/)


**В моей статье « [SQL vs NoSQL: различия](https://www.sitepoint.com/sql-vs-nosql-differences/) » отмечалось, что грань между базами данных SQL и NoSQL становится все более размытой, поскольку каждый лагерь перенимает черты другого. Базы данных MySQL 5.7+ InnoDB и PostgreSQL 9.2+ напрямую поддерживают типы документов JSON в одном поле. В этой статье мы более подробно рассмотрим реализацию JSON в MySQL 8.0.**

Обратите внимание, что любая база данных будет принимать документы JSON в виде одного строкового большого двоичного объекта. Однако MySQL и PostgreSQL поддерживают проверенные данные JSON в реальных парах ключ/значение, а не в простой строке.

## Просто потому, что вы можете хранить JSON…

*… из этого не следует, что вы должны.*

Нормализация — это метод, используемый для оптимизации структуры базы данных. Правило первой нормальной формы (1NF) гласит, что каждый столбец должен содержать одно значение, что явно нарушается при хранении документов JSON с несколькими значениями.

Если у вас есть четкие требования к реляционным данным, используйте соответствующие поля с одним значением. JSON следует использовать с осторожностью в крайнем случае. Поля значений JSON не могут быть проиндексированы, поэтому избегайте их использования в столбцах, которые регулярно обновляются или просматриваются. Кроме того, меньше клиентских приложений поддерживают JSON, а технология новее, поэтому она может быть менее стабильной, чем другие типы.

Тем не менее, есть хорошие варианты использования JSON для редко заполняемых данных или пользовательских атрибутов.

## Создайте таблицу с полем JSON

Рассмотрим магазин, торгующий книгами. Все книги имеют идентификатор, ISBN, название, издательство, количество страниц и другие четкие реляционные данные. Предположим, вы хотите добавить любое количество тегов категорий к каждой книге. Вы можете добиться этого в SQL, используя:

1.  таблица **тегов** , в которой хранится имя каждого тега с уникальным идентификатором, и
2.  таблица **tagmap** с записями «многие ко многим», сопоставляющими идентификаторы книг с идентификаторами тегов

Это будет работать, но это громоздко и требует значительных усилий для второстепенной функции. Таким образом, вы можете определить поле **tags** JSON в таблице **book** вашей базы данных MySQL :

```sql
CREATE TABLE `book` (
  `id` MEDIUMINT(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(200) NOT NULL,
  `tags` JSON DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=INNODB;

```

Обратите внимание, что столбцы JSON не могут иметь значение по умолчанию, использоваться в качестве первичного ключа, использоваться в качестве внешнего ключа или иметь индекс. Вы можете создать [вторичные индексы для сгенерированных виртуальных столбцов](https://dev.mysql.com/doc/refman/en/create-table-secondary-indexes.html) , но проще и практичнее сохранить значение в отдельном поле, если индексы требуются.

## Добавление данных JSON

Целые документы JSON можно передавать в **инструкциях INSERT** или **UPDATE** . Например, теги нашей книги можно передать в виде массива (внутри строки):

```sql
INSERT INTO `book` (`title`, `tags`)
VALUES (
  'ECMAScript 2015: A SitePoint Anthology',
  '["JavaScript", "ES2015", "JSON"]'
);

```

JSON также может быть создан с помощью:

*   [Функция JSON\_ARRAY()](https://dev.mysql.com/doc/refman/en/json-creation-functions.html#function_json-array) , которая создает массивы. Например:

    ```sql
    -- returns [1, 2, "abc"]:
    SELECT JSON_ARRAY(1, 2, 'abc');

    ```

*   [Функция JSON\_OBJECT()](https://dev.mysql.com/doc/refman//en/json-creation-functions.html#function_json-object) , которая создает объекты. Например:

    ```sql
    -- returns {"a": 1, "b": 2}:
    SELECT JSON_OBJECT('a', 1, 'b', 2);

    ```

*   [Функция JSON\_QUOTE()](https://dev.mysql.com/doc/refman//en/json-creation-functions.html#function_json-quote) , которая заключает строку в кавычки как значение JSON. Например:

    ```sql
    -- returns "[1, 2, \"abc\"]":
    SELECT JSON_QUOTE('[1, 2, "abc"]');

    ```

*   или вы можете `(CAST anyValue AS JSON)` .

Функция [JSON\_TYPE()](https://dev.mysql.com/doc/refman//en/json-attribute-functions.html#function_json-type) позволяет вам проверять типы значений JSON. Он должен возвращать OBJECT, ARRAY, скалярный тип (INTEGER, BOOLEAN и т. д.), NULL или ошибку. Например:

```sql
-- returns ARRAY:
SELECT JSON_TYPE('[1, 2, "abc"]');

-- returns OBJECT:
SELECT JSON_TYPE('{"a": 1, "b": 2}');

-- returns an error:
SELECT JSON_TYPE('{"a": 1, "b": 2');

```

Функция [JSON\_VALID()](https://dev.mysql.com/doc/refman//en/json-attribute-functions.html#function_json-valid) возвращает 1, если JSON действителен, или 0 в противном случае:

```sql
-- returns 1:
SELECT JSON_TYPE('[1, 2, "abc"]');

-- returns 1:
SELECT JSON_TYPE('{"a": 1, "b": 2}');

-- returns 0:
SELECT JSON_TYPE('{"a": 1, "b": 2');

```

Попытка вставить недопустимый документ JSON вызовет ошибку, и вся запись не будет вставлена/обновлена.

## Поиск данных JSON

Функция [JSON\_CONTAINS()](https://dev.mysql.com/doc/refman//en/json-search-functions.html#function_json-contains) принимает искомый документ JSON и другой документ для сравнения. Он возвращает 1, когда совпадение найдено. Например:

```sql
-- all books with the 'JavaScript' tag:
SELECT * FROM `book` WHERE JSON_CONTAINS(tags, '["JavaScript"]');

```

Аналогичная [функция JSON\_SEARCH()](https://dev.mysql.com/doc/refman//en/json-search-functions.html#function_json-search) возвращает путь к заданному совпадению или NULL, если совпадений нет. Он передает искомый документ JSON, `'one'` чтобы найти первое совпадение или `'all'` найти все совпадения, и строку поиска (где `%` соответствует любое количество символов и `_` соответствует одному символу таким же образом, как и [`LIKE`](https://dev.mysql.com/doc/refman//en/string-comparison-functions.html#operator_like) ). Например:

```sql
-- all books with tags starting 'Java':
SELECT * FROM `book` WHERE JSON_SEARCH(tags, 'one', 'Java%') IS NOT NULL;
```

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












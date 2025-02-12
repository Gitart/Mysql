## Works and tips


### Pivot table
```sql
SELECT 
    product,
    GROUP_CONCAT(CASE WHEN qty <10  THEN qty END) AS 'd10',
    GROUP_CONCAT(CASE WHEN qty>100  THEN qty END) AS 'd100'
FROM order_items
GROUP BY product;
```

### REGEXPR
```sql
SELECT * FROM shop.products WHERE size REGEXP '^(70|75|80|85|90|95)';
```

```sql
UPDATE remeber_sizes SET s85=CONCAT(s85, 'rrrrr')  WHERE id = 168;
UPDATE `remeber_sizes` SET s90 = CONCAT(CAST(s90 AS CHAR), '1E') WHERE id = 168;
```

### GROUP BY
```sql
SELECT remeber_sizesremeber_sizesremeber_sizes category_name, brand_name, model,
MIN(name) name,
        sum(qty) qty,
        sum(price) price,
        sum(qty) * sum(price) summ
        
FROM shop.products
where qty>0 and category_name!=""
group by category_name, brand_name, model
order by brand_name, model, qty asc


SELECT 
 brand_name, size, count(*)
FROM shop.products
Where size 
group by brand_name, size
order by brand_name, size


SELECT * FROM shop.products

SELECT brand_name, color 
FROM `products` 
WHERE brand_name!='' 
AND qty>0 
GROUP BY brand_name,  color 
ORDER BY brand_name

SELECT brand_name, color 
FROM `products` 
WHERE brand_name<>'' 
AND qty>0 
GROUP BY brand_name,  color 
ORDER BY brand_name
```


### UPDATE
```sql
UPDATE accounts
SET industry_id = FLOOR(1 + (RAND() * 10))
WHERE industry_id IS NULL;
```


### LEFT JOIN
```sql
SELECT 
    a.id AS account_id,
    a.name AS account_name,
    i.name AS industry_name,
    i.description AS industry_description
FROM 
    accounts a
LEFT JOIN 
    industries i ON a.industry_id = i.id;
```


### SELECT

```sql
SELECT 
        o.id              AS id,
        o.num             AS num_doc,
        o.account         AS account,
        o.created_at      AS datecreate,
        o.company         AS company,
        o.typ             AS type,
        o.contract        AS contract,
        o.location_id     AS location_id,
        o.location        AS location,
        o.stock_from      AS stock_from,
        o.stock_from_name AS stock_from_name,
        o.user_id         AS user_id,
        o.description     AS user_name,
        st.title          AS stock,
        st.id             AS stock_id,
        st.ved_id         AS ved_id,
        st.code           AS stock_bo_code,
        o.boiler_id       AS boiler_id,
        o.boiler_name     AS boiler,
        o.status_id       AS status_id,
        o.ttn             AS ttn,
        o.remark          AS comment,
        o.recipient_id    AS status_bo,
        o.ttn_date        AS ttn_date,
        i.id              As item_id,
        i.category        AS category,
        i.grp_id          AS grp_id,
        i.grp             AS grp,
        i.product_id      AS product_id,
        i.product         AS product,
        i.weight          AS weight,
        i.ei              AS ei,
        i.price           AS price,
        i.summ            AS summ,
        i.qty             AS qty,
        i.humidity        AS humidity,
    pr.own_product    AS own_product,
        pr.code           AS code,
        pr.describe       AS product_bo,
        ct.id             AS contract_id,
        ct.status         AS contract_status,
        concat(ct.num_contract," ",ct.company_name) AS contract_company
        FROM              order_items i
        LEFT JOIN         orders      o  ON i.order_id    = o.id
        LEFT JOIN         stock_lists st ON i.stock_id    = st.id
    LEFT JOIN         products    pr ON i.product_id  = pr.id
        LEFT JOIN         contracts   ct ON o.contract_id = ct.id
        WHERE             status_id   NOT IN ("1","2","101") 
        
        AND              o.ttn_date <  '2023-09-14'
```


### Enum
```sql
SELECT 
    product,
    GROUP_CONCAT(CASE WHEN qty <10  THEN qty END) AS 'd10',
    GROUP_CONCAT(CASE WHEN qty>100  THEN qty END) AS 'd100'
FROM order_items
GROUP BY product;
```




### Orders
```sql
SELECT           i.stock_id            AS stock_id,
                 st.title              AS stock ,
                 MIN(o.typ)            AS typ,        
                 MIN(st.ved_id)        AS ved_id,
                 MIN(st.ved)           AS ved,
                 MIN(vd.descr)         AS ved_name,
                 MIN(DATE(o.ttn_date)) AS date_ttn,
                 i.product_id          AS product_id,
                 i.product             AS product,
                 i.ei                  AS ei,
                 SUM(i.qty)            AS qty
                 FROM   order_items i
            LEFT JOIN   orders      o         ON i.order_id   = o.id
            LEFT JOIN   stock_lists st        ON i.stock_id   = st.id
            LEFT JOIN   products    pr        ON i.product_id = pr.id
            LEFT JOIN   veds        vd        ON st.ved_id    = vd.id
            WHERE       o.status_id           = 3
            AND         o.typ                != 5
            GROUP BY    st.ved_id, i.stock_id, st.title, i.product_id, i.product, i.ei, o.typ, o.ttn_date
            HAVING      qty!=0 AND DATE(o.ttn_date) <='2001-09-14'  AND  st.ved_id IN (2)
```

### Alter
```sql
ALTER TABLE `boiler`.`orders` ADD INDEX `idx_contractid` (`contract_id` ASC);
```

### CREATE TABLE
```sql
CREATE TABLE users2 (
    id CHAR(36) PRIMARY KEY DEFAULT (UUID()),
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


CREATE TABLE orders (
    id          INT           AUTO_INCREMENT PRIMARY KEY,
    client_id   INT           COMMENT 'ID клиента',
    order_date  DATE          COMMENT 'Дата заказа',
    total_sum   DECIMAL(10,2) COMMENT 'Сумма заказа',
    qty         INT           COMMENT 'Количество товаров',
    status_id   INT           COMMENT 'Статус заказа'
);



CREATE TABLE order_items (
    id          INT           AUTO_INCREMENT PRIMARY KEY,
    order_id    INT           COMMENT 'ID заказа',
    product_id  INT           COMMENT 'ID товара',
    quantity    INT           COMMENT 'Количество',
    price       DECIMAL(10,2) COMMENT 'Цена',
    FOREIGN KEY (order_id) REFERENCES orders (id),
    FOREIGN KEY (product_id) REFERENCES product (id)
    
);
```

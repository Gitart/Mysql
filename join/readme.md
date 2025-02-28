## Example
```sql

SELECT stock_lists.id, stock_lists.title as titl,  locations.id as idl, locations.title locatins
FROM stock_lists
JOIN locations 
on   locations.id = stock_lists.location_id

UPDATE contracts c
JOIN (
    SELECT order_id, 
          SUM(price)        AS price, 
          SUM(qty)          AS qty, 
          SUM(summ)         AS summ,
          SUM(summ_no_nds)  AS summ_no_nds,
          SUM(price*qty)    AS total_summ
          
    FROM  contract_items
    GROUP BY order_id
) i 
ON  c.id           = i.order_id
SET c.valume       = i.qty,
    c.qty          = i.qty,
    c.total_sum    = i.total_summ,
    c.summ         = i.summ,
    c.price        = i.price;
 -- WHERE c.id = 2;
```

## Example left join
```sql
SELECT
          o.id         AS id,
          o.num        AS num_doc,
          o.account    AS account,
          o.created_at  AS datecreate,
          o.company    AS company,
          o.typ        AS type,
          i.id         As item_id, 
          i.category   AS category,
          i.grp        AS grp,
          i.product    AS product,
          i.weight     AS weight,
          i.ei         AS ei,
          i.price      AS price,
          i.summ       AS summ,
          (CASE
            WHEN (o.typ = 1) THEN i.qty
            ELSE (i.qty * -1)
          END)         AS qty,
          i.summ       AS summ
        FROM order_items i
        LEFT JOIN orders    o 
        ON i.order_id   = o.id

```


## Join Update

```sql
SELECT * FROM transactions  JOIN orders ON transactions.code  = orders.ttn  WHERE transactions.error = 'upds';
SELECT * FROM transactions WHERE transactions.error = 'upds';
SELECT * FROM transactions WHERE id_doc= '';

-- UPDATE transactions set error='empty_id_doc' where id_doc='';

SET SQL_SAFE_UPDATES = 0;

UPDATE transactions
JOIN orders ON transactions.code  = orders.ttn  
SET transactions.id_doc = orders.id,  transactions.id_company=orders.company_id,  transactions.id_contract=orders.contract_id, transactions.error='upds'
WHERE  transactions.error = 'upds';

-- Документ
select * from orders where ttn="В2002020";


-- Повтры в ИД 
SELECT id_doc, COUNT(*) as count
FROM transactions
GROUP BY id_doc
HAVING COUNT(*) > 1;

```


## Works and tips


```sql
SELECT * FROM shop.products WHERE size REGEXP '^(70|75|80|85|90|95)';
```

```sql
UPDATE remeber_sizes SET s85=CONCAT(s85, 'rrrrr')  WHERE id = 168;
UPDATE `remeber_sizes` SET s90 = CONCAT(CAST(s90 AS CHAR), '1E') WHERE id = 168;
```

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
```

```sql
UPDATE accounts
SET industry_id = FLOOR(1 + (RAND() * 10))
WHERE industry_id IS NULL;
```

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



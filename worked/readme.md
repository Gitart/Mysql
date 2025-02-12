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


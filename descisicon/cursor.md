## Use cursor

```sql
CREATE DEFINER=`root`@`localhost` PROCEDURE `ordersloop`()
BEGIN
DECLARE idorder INT;
DECLARE cur1 CURSOR FOR SELECT id FROM orders;
OPEN cur1;
 
 read_loop: LOOP
 FETCH cur1 INTO idorder;
 -- select idorder;
 CALL `maindb`.`UpdateOrderGroup`(idorder);
 END LOOP;

  CLOSE cur1;
END
```


## Update Order
```sql
CREATE DEFINER=`root`@`localhost` PROCEDURE `UpdateOrderGroup`(idorder int)
BEGIN
UPDATE order_items o
INNER JOIN (
  SELECT id, category_id, category, grp_id, grp, ei  FROM  products
) x 
ON o.product_id = x.id
SET o.category_id = x.category_id ,
    o.category   = x.category ,
    o.grp_id     = x.grp_id,
    o.grp        = x.grp,
    o.ei         = x.ei
 WHERE o.order_id = idorder;
END
```

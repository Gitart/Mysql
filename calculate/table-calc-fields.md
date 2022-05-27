## Create table with calculate field

-- https://www.mysqltutorial.org/mysql-generated-columns

```sql
SELECT * FROM work.companies;

CREATE TABLE `Product` (
  `id`            int(11) DEFAULT NULL,
  `amount`        int(11) DEFAULT NULL,
  `sold_out`      int(11) DEFAULT NULL,
  `faulty`        int(11) DEFAULT NULL,
  `remain_amount` int(11) GENERATED ALWAYS AS ((`amount` - (`sold_out` + `faulty`))) VIRTUAL
) ENGINE=InnoDB ;


INSERT Product VALUES(1, 10, 4, 1, DEFAULT);
INSERT Product (id, amount, sold_out, faulty) VALUES (2, 5, 4, 1);


CREATE TABLE order_details (
    id int primary key AUTO_INCREMENT,
                  price DOUBLE, 
                            quantity INT, 
                            amount DOUBLE AS (price * quantity),
                            GENERATED ALWAYS AS 
                            );

SELECT  reec(price, quantity) as sumn 
FROM  order_details

INSERT INTO order_details (price, quantity) 
VALUES(100,1),(300,4),(60,8);
 ```



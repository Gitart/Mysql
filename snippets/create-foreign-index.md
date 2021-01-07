## Create foreign index
[Link resource](https://www.mysqltutorial.org/mysql-foreign-key/)


```sql
ALTER TABLE `parts`.`orders`  ADD INDEX `idx_delivery_idx` (`delivery_type_id` ASC) VISIBLE;
ALTER TABLE `parts`.`orders`  ADD INDEX `idx_payment_idx`  (`payment_type_id` ASC) VISIBLE;
ALTER TABLE `parts`.`orders`  ADD INDEX `idx_city_idx`     (`city_id` ASC) VISIBLE;
ALTER TABLE `parts`.`orders`  ADD INDEX `idx_area_idx`     (`district_id` ASC) VISIBLE;


ALTER TABLE       `parts`.`orders` 
ADD CONSTRAINT    `idx_delivery`  
FOREIGN KEY      (`delivery_type_id`)  
REFERENCES         `parts`.`delivery_types` (`id`)
ON DELETE NO ACTION 
ON UPDATE NO ACTION;

ALTER TABLE       `parts`.`orders` 
ADD CONSTRAINT `idx_payment`
FOREIGN KEY (`payment_type_id`)
REFERENCES `parts`.`payment_types` (`id`)
ON DELETE NO ACTION
ON UPDATE NO ACTION;
  
ALTER TABLE       `parts`.`orders`   
ADD CONSTRAINT `idx_city`
FOREIGN KEY (`city_id`)
REFERENCES `parts`.`cities` (`id`)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE       `parts`.`orders` 
ADD CONSTRAINT `idx_area`
  FOREIGN KEY (`district_id`)
  REFERENCES `parts`.`areas` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
```


## Create foreign key

```sql
CREATE TABLE categories(
    categoryId INT AUTO_INCREMENT PRIMARY KEY,
    categoryName VARCHAR(100) NOT NULL
) ENGINE=INNODB;

CREATE TABLE products(
    productId INT AUTO_INCREMENT PRIMARY KEY,
    productName varchar(100) not null,
    categoryId INT,
    CONSTRAINT fk_category
    FOREIGN KEY (categoryId) 
        REFERENCES categories(categoryId)
) ENGINE=INNODB;
```

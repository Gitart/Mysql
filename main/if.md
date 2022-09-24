## MySQL simple `IF-THEN` statement

The `IF-THEN` statement allows you to execute a set of SQL statements based on a specified condition. The following illustrates the syntax of the `IF-THEN` statement:

`IF condition THEN
   statements;
END IF;`

Code language: SQL (Structured Query Language) (sql)

In this syntax:

*   First, specify a condition to execute the code between the `IF-THEN` and `END IF` . If the `condition` evaluates to `TRUE`, the statements between `IF-THEN` and `END IF` will execute. Otherwise, the control is passed to the next statement following the `END IF`.
*   Second, specify the code that will execute if the `condition` evaluates to `TRUE`.

We’ll use the `customers` table from the sample database for the demonstration:

![](https://www.mysqltutorial.org/wp-content/uploads/2019/08/customers.png)

![](https://www.mysqltutorial.org/wp-content/uploads/2019/08/customers.png)

See the following `GetCustomerLevel()` stored procedure.

`DELIMITER $$

CREATE PROCEDURE GetCustomerLevel(
    IN  pCustomerNumber INT,
    OUT pCustomerLevel  VARCHAR(20))
BEGIN
    DECLARE credit DECIMAL(10,2) DEFAULT 0;

    SELECT creditLimit
    INTO credit
    FROM customers
    WHERE customerNumber = pCustomerNumber;

    IF credit > 50000 THEN
        SET pCustomerLevel = 'PLATINUM';
    END IF;
END$$

DELIMITER ;`

Code language: SQL (Structured Query Language) (sql)

The stored procedure `GetCustomerLevel()` accepts two parameters: `pCustomerNumber` and `pCustomerLevel`.

*   First, select `creditLimit` of the customer specified by the `pCustomerNumber` from the `customers` table and store it in the local variable `credit`.
*   Then, set value for the `OUT` parameter `pCustomerLevel` to `PLATINUM` if the credit limit of the customer is greater than `50,000`.

This statement finds all customers that have a credit limit greater than `50,000`:

`SELECT
    customerNumber,
    creditLimit
FROM
    customers
WHERE
    creditLimit > 50000
ORDER BY
    creditLimit DESC;`

Code language: SQL (Structured Query Language) (sql)

Here is the partial output:

![](https://www.mysqltutorial.org/wp-content/uploads/2019/09/mysql-if-statement-customers-data.png)

![](https://www.mysqltutorial.org/wp-content/uploads/2019/09/mysql-if-statement-customers-data.png)

These statements call the `GetCustomerLevel()` stored procedure for customer 141 and show the value of the `OUT` parameter `pCustomerLevel`:

`CALL GetCustomerLevel(141, @level);
SELECT @level;`

Code language: SQL (Structured Query Language) (sql)

![](https://www.mysqltutorial.org/wp-content/uploads/2019/09/mysql-if-statement-if-output.png)

![](https://www.mysqltutorial.org/wp-content/uploads/2019/09/mysql-if-statement-if-output.png)

Because the customer 141 has a credit limit greater than `50,000`, its level is set to `PLATINUM` as expected.

## MySQL `IF-THEN-ELSE` statement

In case you want to execute other statements when the `condition` in the `IF` branch does not evaluate to `TRUE`, you can use the `IF-THEN-ELSE` statement as follows:

`IF condition THEN
   statements;
ELSE
   else-statements;
END IF;`

Code language: SQL (Structured Query Language) (sql)

In this syntax, if the `condition` evaluates to `TRUE`, the `statements` between `IF-THEN` and `ELSE` execute. Otherwise, the `else-statements` between the `ELSE` and `END IF` execute.

Let’s modify the `GetCustomerLevel()` stored procedure.

First, drop the `GetCustomerLevel()` stored procedure:

`DROP PROCEDURE GetCustomerLevel;`

Code language: SQL (Structured Query Language) (sql)

Then, create the `GetCustomerLevel()` stored procedure with the new code:

`DELIMITER $$

CREATE PROCEDURE GetCustomerLevel(
    IN  pCustomerNumber INT,
    OUT pCustomerLevel  VARCHAR(20))
BEGIN
    DECLARE credit DECIMAL DEFAULT 0;

    SELECT creditLimit
    INTO credit
    FROM customers
    WHERE customerNumber = pCustomerNumber;

    IF credit > 50000 THEN
        SET pCustomerLevel = 'PLATINUM';
    ELSE
        SET pCustomerLevel = 'NOT PLATINUM';
    END IF;
END$$

DELIMITER ;`

Code language: SQL (Structured Query Language) (sql)

In this new stored procedure, we include the `ELSE` branch. If the `credit` is not greater than `50,000`, we set the customer level to `NOT PLATINUM` in the block between `ELSE` and `END IF`.

This query finds customers that have credit limit less than or equal `50,000`:

`SELECT
    customerNumber,
    creditLimit
FROM
    customers
WHERE
    creditLimit <= 50000
ORDER BY
    creditLimit DESC;`

Code language: SQL (Structured Query Language) (sql)

This picture shows the partial output:

![](https://www.mysqltutorial.org/wp-content/uploads/2019/09/mysql-if-else-statement-customers-data.png)

![](https://www.mysqltutorial.org/wp-content/uploads/2019/09/mysql-if-else-statement-customers-data.png)

The following statements call the stored procedure for customer number `447`  and show the value of the `OUT` parameter `pCustomerLevel`:

`CALL GetCustomerLevel(447, @level);
SELECT @level;`

Code language: SQL (Structured Query Language) (sql)

![mysql if else statement - output](https://www.mysqltutorial.org/wp-content/uploads/2019/09/mysql-if-else-statement-output.png)

![mysql if else statement - output](https://www.mysqltutorial.org/wp-content/uploads/2019/09/mysql-if-else-statement-output.png)

The credit limit of the customer `447` is less than `50,000`, therefore, the statement in the `ELSE` branch executes and sets the value of the `OUT` parameter `pCustomerLevel` to `NOT PLATINUM`.

## MySQL `IF-THEN-ELSEIF-ELSE` statement

If you want to execute statements conditionally based on multiple conditions, you use the following `IF-THEN-ELSEIF-ELSE` statement:

`IF condition THEN
   statements;
ELSEIF elseif-condition THEN
   elseif-statements;
...
ELSE
   else-statements;
END IF;`

Code language: SQL (Structured Query Language) (sql)

In this syntax, if the `condition` evaluates to `TRUE` , the `statements` in the `IF-THEN` branch executes; otherwise, the next `elseif-condition` is evaluated.

If the `elseif-condition` evaluates to `TRUE`, the `elseif-statement` executes; otherwise, the next `elseif-condition` is evaluated.

The `IF-THEN-ELSEIF-ELSE` statement can have multiple `ELSEIF` branches.

If no condition in the `IF` and `ELSE IF` evaluates to `TRUE`, the `else-statements` in the `ELSE` branch will execute.

We will modify the `GetCustomerLevel()` stored procedure to use the `IF-THEN-ELSEIF-ELSE` statement.

First, drop the `GetCustomerLevel()` stored procedure:

`DROP PROCEDURE GetCustomerLevel;`

Code language: SQL (Structured Query Language) (sql)

Then, create the new `GetCustomerLevel()` stored procedure that uses the the `IF-THEN-ELSEIF-ELSE` statement.

`DELIMITER $$

CREATE PROCEDURE GetCustomerLevel(
    IN  pCustomerNumber INT,
    OUT pCustomerLevel  VARCHAR(20))
BEGIN
    DECLARE credit DECIMAL DEFAULT 0;

    SELECT creditLimit
    INTO credit
    FROM customers
    WHERE customerNumber = pCustomerNumber;

    IF credit > 50000 THEN
        SET pCustomerLevel = 'PLATINUM';
    ELSEIF credit <= 50000 AND credit > 10000 THEN
        SET pCustomerLevel = 'GOLD';
    ELSE
        SET pCustomerLevel = 'SILVER';
    END IF;
END $$

DELIMITER ;`

Code language: SQL (Structured Query Language) (sql)

In this stored procedure:

*   If the credit is greater than `50,000`, the level of the customer is `PLATINUM`.
*   If the credit is less than or equal `50,000` and greater than `10,000`, then the level of customer is `GOLD`.
*   Otherwise, the level of the customer is `SILVER`.

These statements call the stored procedure `GetCustomerLevel()` and show the level of the customer `447`:

`CALL GetCustomerLevel(447, @level);
SELECT @level;`

Code language: SQL (Structured Query Language) (sql)

![](https://www.mysqltutorial.org/wp-content/uploads/2019/09/mysql-if-elseif-else-statement-output-2.png)

![](https://www.mysqltutorial.org/wp-content/uploads/2019/09/mysql-if-elseif-else-statement-output-2.png)

If you test the stored procedure with the customer that has a credit limit of 10000 or less, you will get the output as `SILVER`.

In this tutorial, you have learned how to use MySQL `IF` statement to conditionally execute a block of code based on specified conditions.

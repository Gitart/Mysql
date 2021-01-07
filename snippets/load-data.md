## Load data

```sql
use parts;
DELETE FROM bmw;
TRUNCATE bmw;

SET autocommit=0;
SET unique_checks=1;
SET foreign_key_checks=0;

   LOAD DATA INFILE "c:/WORK/DATA/bmw.csv"                                  INTO TABLE bmw COLUMNS TERMINATED BY ';' ENCLOSED BY '\"' LINES TERMINATED BY '\n' IGNORE 1 LINES ;
   LOAD DATA INFILE "c:/WORK/DATA/BMW_16016_-26-11-20_13-46-50.txt"         INTO TABLE bmw COLUMNS TERMINATED BY ';' ENCLOSED BY '\"' LINES TERMINATED BY '\n' IGNORE 1 LINES;
   LOAD DATA INFILE "c:/WORK/DATA/Ford Sonder_16319_-26-11-20_13-47-08.txt" INTO TABLE bmw COLUMNS TERMINATED BY ';' ENCLOSED BY '\"' LINES TERMINATED BY '\n' IGNORE 1 LINES;
   LOAD DATA INFILE "c:/WORK/DATA/KIA_20157_-26-11-20_13-49-16.txt"         INTO TABLE bmw COLUMNS TERMINATED BY ';' ENCLOSED BY '\"' LINES TERMINATED BY '\n' IGNORE 1 LINES;
   -- SELECT @@GLOBAL.secure_file_priv;

SET unique_checks=1;
SET foreign_key_checks=1;
SELECT count(*) FROM parts.bmw;
```

## Convert string date to date format
We have date in string format and we needed convert to date this field
  
```sql
SET SQL_SAFE_UPDATES = 0;

update boiler.contracts set date_contract=STR_TO_DATE(remark, "%d.%m.%Y");
update boiler.contracts set date_end=STR_TO_DATE(remark, "%d.%m.%Y");
update boiler.counters set check_current=STR_TO_DATE(remark, "%Y.%m/%d");
```

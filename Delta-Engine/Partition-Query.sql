--- THIS SCRIPT IS USED TO ENABLE PARTITION IN DATABRICKS

%sql


DROP TABLE IF EXISTS COVID_DELTA;

CREATE TABLE COVID_DELTA
USING DELTA
PARTITIONED BY ("COLUMN NAME")

SELECT *
FROM DELTA. '/DELTA/COVID_DELTA'



--example quert to run

%sql

select * from COVID_DELTA
where columnname='Busan'

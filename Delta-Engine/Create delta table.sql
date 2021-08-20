
#delta lake tables are stored in metastore, which is where the path of thable is saved.

#different types to create delta table in azure databricks
#1.using sql
CREATE TABLE TABLENAME(

COLUMN1 TYPE,
COLUMN2 TYPE
COLUMN TYPW3
.
.
.

)
USING DELTA


#2.using PYTHON

df.write.format("delta").saveAsTable("tablename")

---we can also create this table by identifying its path
df.write.format("delta").save("path of data file") #e.g./mnt/delta/data




/*to read data from delta table*/

select * from tablename

--OR
SELECT * FROM delta.'/mnt/delta_table/data' # here '/mnt/delta_table/data' is the location of table

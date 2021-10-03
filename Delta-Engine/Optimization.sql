

 #there two alogarithams available in databricks to optimize our queries
 #1.bin-packing(used to merger small files with large. OPTIMIZE is command used for this)
 #2.Z-Ordering

---to optimize delta location
OPTIMIZE delta. '/delta/covid_delta/' # location of delta file system

%sql

----to optimize table
OPTIMIZE covid_delta  #delta table name



#2. z-ORDER CLUSTERING (to map multiple dimension into one dimension)

%sql
OPTIMIZE delta.'/delta/covid_delta/'
where province='busan'
zorder by (date)
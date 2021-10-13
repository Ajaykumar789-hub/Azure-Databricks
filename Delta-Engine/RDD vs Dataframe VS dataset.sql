Overview
Understand the difference between 3 spark APIs – RDDs, Dataframes, and Datasets
We will see how to create RDDs, Dataframes, and Datasets
 

Introduction:
It has been 11 years now since Apache Spark came into existence and it impressively continuously to be the 
first choice of big data developers. Developers have always loved it for providing simple and powerful APIs that can do any kind of analysis on big data.



What are RDDs?
RDDs or Resilient Distributed Datasets is the fundamental data structure of the Spark. It is the collection of objects which is capable of storing the data partitioned across the multiple nodes of the cluster and also allows them to do processing in parallel.

It is fault-tolerant if you perform multiple transformations on the RDD and then due to any reason any node fails. The RDD, in that case, is capable of recovering automatically.

There are 3 ways of creating an RDD:

Parallelizing an existing collection of data
Referencing to the external data file stored
Creating RDD from an already existing RDD


# parallelizing data collection
my_list = [1, 2, 3, 4, 5]
my_list_rdd = sc.parallelize(my_list)

## 2. Referencing to external data file
file_rdd = sc.textFile("path_of_file")


When to use RDDs?
We can use RDDs in the following situations-

When we want to do low-level transformations on the dataset. Read more about RDD Transformations: PySpark to perform Transformations
It does not automatically infer the schema of the ingested data, we need to specify the schema of each and every dataset when we create an RDD. Learn how to infer the schema to the RDD here: Building Machine Learning Pipelines using PySpark

What are Dataframes?

Overview
Understand the difference between 3 spark APIs – RDDs, Dataframes, and Datasets
We will see how to create RDDs, Dataframes, and Datasets
 

Introduction
It has been 11 years now since Apache Spark came into existence and it impressively continuously to be the first choice of big data developers. Developers have always loved it for providing simple and powerful APIs that can do any kind of analysis on big data.

RDDs Dataframes datasets

Initially, in 2011 in they came up with the concept of RDDs, then in 2013 with Dataframes and later in 2015 with the concept of Datasets. None of them has been depreciated, we can still use all of them. In this article, we will understand and see the difference between all three of them.

 

Table of Contents
What are RDDs?
When to use RDDs?
What are Dataframes?
What are Datasets?
RDD vs Dataframes vs Datasets?
 

What are RDDs?
RDDs or Resilient Distributed Datasets is the fundamental data structure of the Spark. It is the collection of objects which is capable of storing the data partitioned across the multiple nodes of the cluster and also allows them to do processing in parallel.

It is fault-tolerant if you perform multiple transformations on the RDD and then due to any reason any node fails. The RDD, in that case, is capable of recovering automatically.

RDDsThere are 3 ways of creating an RDD:

Parallelizing an existing collection of data
Referencing to the external data file stored
Creating RDD from an already existing RDD
# parallelizing data collection
my_list = [1, 2, 3, 4, 5]
my_list_rdd = sc.parallelize(my_list)

## 2. Referencing to external data file
file_rdd = sc.textFile("path_of_file")
view rawrdd_23.py hosted with ❤ by GitHub
 

When to use RDDs?
We can use RDDs in the following situations-

When we want to do low-level transformations on the dataset. Read more about RDD Transformations: PySpark to perform Transformations
It does not automatically infer the schema of the ingested data, we need to specify the schema of each and every dataset when we create an RDD. Learn how to infer the schema to the RDD here: Building Machine Learning Pipelines using PySpark
 

What are Dataframes?
It was introduced first in Spark version 1.3 to overcome the limitations of the Spark RDD. Spark Dataframes are the distributed collection of the data points, but here, the data is organized into the named columns. They allow developers to debug the code during the runtime which was not allowed with the RDDs.

Dataframes can read and write the data into various formats like CSV, JSON, AVRO, HDFS, and HIVE tables. It is already optimized to process large datasets for most of the pre-processing tasks so that we do not need to write complex functions on our own.

It uses a catalyst optimizer for optimization purposes.

spark.createDataFrame(
    [
        (1, 'Lakshay'), # create your data here, make sure to be consistent in the types.
        (2, 'Aniruddha'),
        .
        .
        .
        .
        (100, 'Siddhart')
    ],
    ['id', 'Name'] # add your columns label here
)

What are Datasets?
Spark Datasets is an extension of Dataframes API with the benefits of both RDDs and the Datasets. It is fast as well as provides a type-safe interface. Type safety means that the compiler will validate the data types of all the columns in the dataset while compilation only and will throw an error if there is any mismatch in the data types.


RDDs vs Dataframes vs Datasets
RDDs |	Dataframes |	Datasets
Data Representation:	RDD is a distributed collection of data elements without any schema.|	It is also the distributed collection organized into the named columns|	It is an extension of Dataframes with more features like type-safety and object-oriented interface.
Optimization	No in-built optimization engine for RDDs.| Developers need to write the optimized code themselves.|	It uses a catalyst optimizer for optimization.	It also uses a catalyst optimizer for optimization purposes.
Projection of Schema	Here, we need to define the schema manually.|	It will automatically find out the schema of the dataset.|	It will also automatically find out the schema of the dataset by using the SQL Engine.
Aggregation Operation	RDD is slower than both Dataframes and Datasets to perform simple operations like grouping the data.|	It provides an easy API to perform aggregation operations. It performs aggregation faster than both RDDs and Datasets.|	Dataset is faster than RDDs but a bit slower than Dataframes.
 

# MOdule 06

## Objectives

- Integrate Pyspark source code with our cluster
- Demonstrate the use of Jupyter Hub notebooks and our cluster
- Demonstrate the usage of version control for the Spark cluster deployment of code
- Demonstrate the usage of object storage with the Spark cluster integration 

## Assignment Setup

On our `spark-edge` class cluster server, `http://system22h030.itm.iit.edu`, connect via SSH and retrieve the contents of the `login.txt` file. In addition, create a new ssh keypair on the `http://system22h030.itm.iit.edu` server to clone your GitHub repo into your account.

Place the public portion of the new keypair in your GitHub repo. Create and configure a new `config` file (on the spark-edge server). Clone your provided private repo to the `spark-edge` server.

See the tutorial documents:

* [Jupyter Notebook Spark Tutorial](https://github.com/illinoistech-itm/jhajek/blob/master/itmd-521/JupyterHub/Readme.md "webpage for Jupyter Notebook Spark Tutorial")
* [Jupyter Hub Running Spark Jobs](https://github.com/illinoistech-itm/jhajek/blob/master/itmd-521/JupyterHub/hub-tutorial.md#running-spark-jobs "webpage for Running Spark Jobs")
* [Complete Jupyter Notebook Spark Cluster example](https://github.com/illinoistech-itm/jhajek/blob/master/itmd-521/JupyterHub/example-hub-applications.ipynb "webpage for complete demo of Notebook")

## Assignment Details

Using the sample code provided, you will begin the Data Engineering portion of the course. You will read the raw data sets listed below, process them with the provided code, and save them a `parquet` file, an `uncompressed csv`, and a `compressed csv` using `lz4`

* 00.txt
* 10.txt
* 20.txt
* 30.txt
* 40.txt
* 50.txt
* 60.txt
* 70.txt
* 80.txt
* 90.txt

### Note

Include additional code to parse records that are within the range of human livability for the AirTemperature Value. There is also an AirTemperature Quality Code (ATQualityCode) that should function as value checksum. 

### Deliverable

Your code can be a single file with loops, but is recommended to split the work up into many smaller files.

Make sure to update the value "Your App Name" to include your intials and the data set

```java
spark = SparkSession.builder.appName("Your App Name")\
    .config('spark.driver.host','spark-edge.service.consul').config(conf=conf).getOrCreate()
```

Create a sub-folder under `labs` named:`module-09` under the `itmd-521` folder. Place all code deliverables there.

Submit to Canvas the URL to the folder in your GitHub repo. 

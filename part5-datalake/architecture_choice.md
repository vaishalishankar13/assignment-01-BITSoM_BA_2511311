## Storage Systems
For storing patient's record and treatment we use MySQL(Structured database) which stores the data consistently and is used for fast querying.
For real time data of patients which is gathered through monitoring devices which also includes time-series data, databases like Cassandra can be used.
datalake is used for historical and raw data of patients which is got through various sources .
and Datawarehouse is used for storing structured data after processing . Snowflake can be used to this purpose. Data stored in data warehouse can be used for reporting and analytical purpose.

## OLTP vs OLAP Boundary
OLTP systems are used to handle day-day transactions which includes- monitoring data from devices, billing and treatment data, patient's admission data. These have to be robust, fast and reliable.

OLAP systems begins after the data is loaded to datawarehouse after the ETL process is applied on the data derived from OLTP systems. OLAP systems are used for storage and analytical purpose. 

In my architecture diagram  1 and 2 are the OLTP layers and 3,4,5 are OLAP layers.

## Trade-offs
Tradeoff here is to handle the real-time data which leads to architectural complexity. Hence to handle it efficiently there is hybrid architecture where real time data is processed through realtime streaming and other data like(reports) are processed through batch processing.
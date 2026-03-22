## Anomaly Analysis.
# 1.1
Insert Anomaly
For example adding the new product_name would require customer_name also to be added and hence product name cannot be added independently without a customer.

Update Anomaly
suppose  sales_rep_name Deepak Joshi got replaced by Vishal Mishra then when we update the information and forget to update one column then it causes inconsistence in data.

Delete Anomaly
Deletion of a particular row causes loss of important information that is required. Example-suppose we want to delete a row with customer name Rohan Mehta but I will lead to other important information like his email id also to be deleted.

## Normalization Justification
# 1.3
Keeping the data in one table leads to redundancy for example if a customer orders something information like customer customer_email and customer_city is repeated each time.
It also leads to update, delete, insert anomaly as discussed above.
Hence, normalization of data is important to reduce redundancy of data and to have data integrity.
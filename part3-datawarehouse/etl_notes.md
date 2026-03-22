Decision 1 — Standardization of date format
Problem: Dates were present in different formats like DD/MM/YYYY or MM/DD/YYYY or DD-MM-YYYY which would make the SQL query give wrong results while using the sorting query .
Resolution: All the dates were converted into standard format-MM/DD/YYYY.

Decision 2- Inconsistent naming of Category was converted to proper naming
Problem- The same category would be taken as different group due to inconsistency in its naming.
Resolution: Transformation was applied to convert them into same case( Example- electronic and Electronic was converted to standard form- Electronic using proper function in excel) 

Decision 3-Handling NULL Store Locations
problem- Several rows had missing store_city values (NaN), even when a store_name was present. Deleting these would lose significant sales data.
Resolution- Performed a lookup based on existing store_name and store_city pairs. For example, if "Mumbai Central" was associated with "Mumbai" in row A, row B's missing city was filled with "Mumbai" before loading the dim_store table.
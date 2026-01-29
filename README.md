# -Task-9-SQL-Data-Modeling-Build-a-Star-Schema
Understand the business goal
The aim was not just to store data, but to design it for fast analytics using a star schema.

Review the dataset
examined the dataset to understand what columns represent measurements and what columns describe context.

Identify the fact table
chose Sales as the fact because it contains numeric, aggregatable values like sales and profit.

Identify dimension tables
separated descriptive data into dimensions:

Product

Region

Date
These explain the “who, what, where, and when” of each sale.

Decide grain of the fact table
You defined what one row in the fact table represents.
In this case, one sales record per product per region per time period.

Create dimension tables first
You designed each dimension with:

A surrogate primary key

Clean, unique attribute values

Create the fact table
built the fact table containing:

Foreign keys to all dimensions

Measures like sales and profit

Map data from source to dimensions
inserted distinct values into each dimension table to avoid duplication.

Load the fact table
populated the fact table by mapping dimension values to their corresponding surrogate keys.

Create indexes on foreign keys
added indexes to improve join and query performance.

Run analytical queries
validated the model by running aggregations like total sales and profit by region.

Validate data quality
You checked record counts and ensured no missing or broken key relationships existed.

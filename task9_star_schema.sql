
CREATE TABLE dim_product (
 product_key SERIAL PRIMARY KEY,
 category VARCHAR(100)
);

CREATE TABLE dim_region (
 region_key SERIAL PRIMARY KEY,
 region VARCHAR(50)
);

CREATE TABLE dim_date (
 date_key SERIAL PRIMARY KEY,
 year INT,
 month INT,
 day INT
);

CREATE TABLE fact_sales (
 order_id INT,
 product_key INT REFERENCES dim_product(product_key),
 region_key INT REFERENCES dim_region(region_key),
 sales NUMERIC,
 profit NUMERIC
);

-- PROJECT: Mexico Toy Sales Analytics
-- STEP 1: Data Quality Assessment
-- TABLE: Sales

-- 1. Total number of records
SELECT COUNT(*) AS total_sales
FROM sales;

-- 2. Missing values check
SELECT
    COUNT(*) - COUNT(Sale_ID) AS missing_sale_id,
    COUNT(*) - COUNT(Date) AS missing_date,
    COUNT(*) - COUNT(Store_ID) AS missing_store_id,
    COUNT(*) - COUNT(Product_ID) AS missing_product_id,
    COUNT(*) - COUNT(Units) AS missing_units
FROM sales;

-- 3. Unique sales ID check
SELECT
    COUNT(*) AS total_rows,
    COUNT(DISTINCT Sale_ID) AS unique_sales
FROM sales;

------------------------------------------------------------
-- DATA CLEANING SCRIPT
------------------------------------------------------------

------------------------------------------------------------
-- 1. STANDARDIZE DATE FORMAT
------------------------------------------------------------

-- Inspect current date values
SELECT *
FROM Orders;

-- Add new DATE column
ALTER TABLE Orders
ADD order_date1 DATE;

-- Convert text/datetime column into proper DATE format
UPDATE Orders
SET order_date1 = CAST(order_date AS DATE);

-- Remove old column
ALTER TABLE Orders
DROP COLUMN order_date;


------------------------------------------------------------
-- 2. HANDLING NULL VALUES
------------------------------------------------------------

-- Check NULLs in Customers table
SELECT *
FROM Customers
WHERE city IS NULL;

-- Fix specific NULL values based on source data
UPDATE Customers
SET city = 'Pereira',
    region = 'Risaralda'
WHERE customer_id = 1094923901;

-- Search for NULLs across key tables
SELECT *
FROM Orders
WHERE product_id IS NULL;

SELECT *
FROM Products
WHERE product_name IS NULL;

-- (No more NULLs found)


------------------------------------------------------------
-- 3. REMOVING DUPLICATES
------------------------------------------------------------

WITH duplicates AS (
    SELECT 
        *,
        ROW_NUMBER() OVER (
            PARTITION BY product_name 
            ORDER BY product_id
        ) AS rn
    FROM Products
)
DELETE FROM duplicates
WHERE rn > 1;


------------------------------------------------------------
-- 4. TRIM SPACES IN CRITICAL TEXT FIELDS
------------------------------------------------------------

-- Clean text fields in Products table
UPDATE Products
SET product_name = TRIM(product_name);

UPDATE Products
SET brand = TRIM(brand);

UPDATE Products
SET category = TRIM(category);

-- Clean text fields in Customers table
UPDATE Customers
SET first_name = TRIM(first_name);

UPDATE Customers
SET last_name = TRIM(last_name);

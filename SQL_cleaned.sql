CREATE DATABASE retail_sales;
USE retail_sales;

SELECT *
FROM retail_sales;


--1. CREATE A STAGING TABLE
CREATE DATABASE clean_retail_sales;
SELECT * INTO clean_retail_sales FROM retail_sales;

SELECT * 
FROM clean_retail_sales;


SELECT *, Total_Spent/Quantity as 'Check'
FROM clean_retail_sales
WHERE Category Like 'Patisserie'
	AND Item LIKE 'Item_11_PAT';

	-- calculate the price per unit on blanks
SELECT *
FROM clean_retail_sales
WHERE Total_Spent IS NOT NULL
	AND Quantity IS NOT NULL
	AND Price_Per_Unit IS NULL;

SELECT a.Category, a.item, a.Price_Per_Unit, a.Quantity, a.Total_Spent, b.Price_Per_Unit,b.Item
FROM clean_retail_sales a
LEFT JOIN clean_retail_sales b
	ON a.Category = b.Category
WHERE a.Total_Spent IS NOT NULL
	AND a.Quantity IS NOT NULL
	AND b.Price_Per_Unit IS NULL;


  UPDATE a
SET a.Price_Per_Unit = b.Total_Spent / b.Quantity
FROM clean_retail_sales a
JOIN clean_retail_sales b 
	ON a.Category = b.Category
WHERE a.Price_Per_Unit IS NULL
  AND b.Quantity IS NOT NULL
  AND b.Total_Spent IS NOT NULL;

  -- calculate the total spent on blanks if qnty and total spent not found, delete the roll
SELECT *
FROM clean_retail_sales
WHERE Total_Spent IS NULL
	AND Quantity IS  NULL;

DELETE FROM clean_retail_sales
WHERE Total_Spent IS NULL
	AND Quantity IS NULL;

-- fill in blank item names

SELECT a.Category, a.item, a.Price_Per_Unit, b.Price_Per_Unit,b.Item 
FROM clean_retail_sales a
INNER JOIN clean_retail_sales b
	ON a.Category = b.Category
	AND a.Price_Per_Unit = b.Price_Per_Unit
WHERE a.item IS NULL
	AND b.Item IS NOT NULL
	AND b.Price_Per_Unit IS NOT NULL;

UPDATE a
SET a.item = b.item
FROM clean_retail_sales a
INNER JOIN clean_retail_sales b
	ON a.Category = b.Category
	AND a.Price_Per_Unit = b.Price_Per_Unit
WHERE a.item IS NULL
	AND b.Item IS NOT NULL
	AND b.Price_Per_Unit IS NOT NULL;

SELECT * 
FROM clean_retail_sales 
WHERE item IS NULL;

-- fill in blank Discounts to No-discount
SELECT *
FROM clean_retail_sales
WHERE Discount_Applied IS NULL;


UPDATE clean_retail_sales
SET Discount_Applied = 0
FROM clean_retail_sales
WHERE Discount_Applied IS NULL;

-- Clean Item Names

SELECT 
    item,
    CASE 
        WHEN CHARINDEX('_', item, CHARINDEX('_', item) + 1) > 0 THEN
            SUBSTRING(item, 1, CHARINDEX('_', item, CHARINDEX('_', item) + 1) - 1)
        ELSE
            item
    END AS cleaned_item
FROM clean_retail_sales;


UPDATE clean_retail_sales
SET item = 
    CASE 
        WHEN CHARINDEX('_', item, CHARINDEX('_', item) + 1) > 0 THEN
            SUBSTRING(item, 1, CHARINDEX('_', item, CHARINDEX('_', item) + 1) - 1)
        ELSE
            item
    END;


-- create a view
CREATE VIEW view_retail_sales AS
SELECT *
FROM clean_retail_sales;


SELECT TOP 10 * FROM cleaned_retail_supply;

--- 1. Total Sales Overall
Select SUM(TOTAL_SALES) AS Total_sales
FROM cleaned_retail_supply


--- 2. Sales by Month
Select MONTH, sum(TOTAL_SALES) as Total_Sales_by_Month
FROM cleaned_retail_supply
GROUP BY MONTH
ORDER BY Total_Sales_by_Month DESC;

--- 3. Top 10 Suppliers by Sales
SELECT Top 10 SUPPLIER, SUM(TOTAL_SALES) as Total_Sales
FROM cleaned_retail_supply
GROUP BY Supplier
ORDER BY Total_Sales DESC;

--- 4. Top 10 Products 
SELECT Top 10 ITEM_DESCRIPTION, SUM(TOTAL_SALES) as Total_Sales
FROM cleaned_retail_supply
GROUP BY ITEM_DESCRIPTION
ORDER BY Total_Sales DESC; 

--- 5. Sales by Item Type
SELECT Top 10 ITEM_TYPE, SUM(TOTAL_SALES) as Total_Sales
FROM cleaned_retail_supply
GROUP BY ITEM_TYPE
ORDER BY Total_Sales DESC; 

--- 6. Warehouse vs Retail Comparison
SELECT 
SUM(RETAIL_SALES) AS Retail_Sales,
SUM(WAREHOUSE_SALES) AS Warehouse_Sales
FROM cleaned_retail_supply;
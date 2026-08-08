USE retail_sales_project;

# find the number of rows
SELECT COUNT(*) AS Number_of_Rows
FROM Superstore;

# To get the information baout the columns
DESCRIBE Superstore;

# displaying first 10 rows of the dataset
SELECT *
FROM Superstore
LIMIT 10;

# find distinct values of each column
SELECT DISTINCT `Ship Mode`
FROM Superstore;

SELECT DISTINCT `Segment`
FROM Superstore;

SELECT DISTINCT `Country`
FROM Superstore;

SELECT DISTINCT `City`
FROM Superstore;

SELECT DISTINCT `State`
FROM Superstore;

SELECT DISTINCT `Region`
FROM Superstore;

SELECT DISTINCT `Category`
FROM Superstore;

SELECT DISTINCT `Sub-Category`
FROM Superstore;

# Checking for NULL Values
SELECT *
FROM Superstore
WHERE `Ship Mode` IS NULL OR 
	  `Segment` IS NULL OR
      `Country` IS NULL OR
      `City` IS NULL OR
      `State` IS NULL OR
      `Region` IS NULL OR
      `Postal Code` IS NULL OR
      `Category` IS NULL OR
      `Sub-Category` IS NULL OR
      `Discount` IS NULL OR
      `Sales` IS NULL OR
      `Profit` IS NULL OR
      `Quantity` IS NULL ;
      
# Checking if Sales are negative
SELECT *
FROM Superstore
WHERE Sales < 0;

# Checking if Quantity is invalid
SELECT *
FROM Superstore
WHERE Quantity <= 0;

# Sales summary
SELECT MIN(Sales) AS Min_Sales,
       MAX(Sales) AS Max_Sales,
       AVG(Sales) AS Avg_Sales
FROM Superstore;

# Profit summary
SELECT MIN(Profit) AS Min_Profit,
       MAX(Profit) AS Max_Profit,
       AVG(Profit) AS Avg_Profit
FROM Superstore;




-- QUESTION 1
--------------------------------------------------------------
-- List all products ordered by their unit price in descending order.
SELECT * 
FROM products
ORDER BY unitprice DESC;

-- QUESTION 2
--------------------------------------------------------------
-- Find the total quantity of each product sold.
SELECT productid, SUM(quantity) as Total_Quantity 
FROM sales
GROUP BY productid;

-- QUESTION 3
--------------------------------------------------------------
-- Show the top 5 customers with the highest total purchase amount.
SELECT customerid, SUM(totalamount) as total_purchase_amount 
FROM sales
GROUP BY customerid
ORDER BY total_purchase_amount DESC
LIMIT 5;

-- QUESTION 4
--------------------------------------------------------------
-- List all active products with a unit price greater than $100.
SELECT productname, unitprice
FROM products
WHERE unitprice > 100
ORDER BY unitprice DESC;

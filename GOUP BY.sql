#The SQL GROUP BY Statement
#The GROUP BY statement groups rows that have the same values into summary rows, like "find the number of customers in each country".

#The GROUP BY statement is often used with aggregate functions (COUNT(), MAX(), MIN(), SUM(), AVG()) to group the result-set by one or more columns.

/*GROUP BY Syntax
SELECT column_name(s)
FROM table_name
WHERE condition
GROUP BY column_name(s)
ORDER BY column_name(s);*/

#Listing the nmber of customers in each country

USE northwind;

SELECT COUNT(CustomerId), Country
FROM Customers
GROUP BY Country;

#The following SQL statement lists the number of customers in each country, 
#sorted high to low:

SELECT COUNT(CustomerID), Country
FROM Customers
GROUP BY Country
ORDER BY COUNT(CustomerID) DESC;

#Listing the number of orders sent by each shipper
SELECT Shippers.CompanyName, COUNT(Orders.OrderID) AS NumberOfOrders FROM Orders
LEFT JOIN Shippers ON Orders.ShipperID = Shippers.ShipperID
GROUP BY CompanyName;


SELECT * FROM Orders;
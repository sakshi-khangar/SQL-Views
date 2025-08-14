CREATE DATABASE Orders;
USE Orders;
CREATE TABLE Orders (OrderID INT PRIMARY KEY, Customer_Name varchar(50),Product varchar(50),Quantity INT,Price DECIMAL (10,2),OrderDate DATE,Status varchar(20));
INSERT INTO Orders VALUES (101,'Sneha Singh','Laptop',1,55000,'2023-05-10','Delivered'),
(102,'Priya Waghmare','Smartphone',2,30000,'2024-02-14','Shipped'),
(103,'Neha Singh','Headphones',3,4500,'2023-08-02','Delivered'),
(104,'Rajesh Kumar','Tablet',1,20000,'2024-07-05','Pending'),
(105,'Riya Verma','Smartwatch',2,8000,'2023-12-12','Delivered'),
(106,'Sachi Patil','Camera',1,45000,'2024-01-18','Shipped'),
(107,'Amit Sharma','Charger',3,1500,'2025-01-30','Delivered');

#Delivered Orders
CREATE VIEW DeliveredOrders AS SELECT OrderID,Customer_Name,Product,Quantity,Price,OrderDate FROM Orders WHERE Status ='Delivered';
SELECT * FROM DeliveredOrders;

#High Value Orders
CREATE VIEW HighValueOrder as SELECT OrderID,Customer_Name,Product,Quantity,Price, (Quantity * Price ) AS TotalAmount FROM Orders WHERE (Quantity * Price ) > 25000;
SELECT * FROM HighValueOrder;

#Orders Group by Product Type
CREATE VIEW OrdersByProductType AS SELECT Product, COUNT(*) AS TotalOrder,SUM(Quantity) AS TotalQuantity FROM Orders GROUP BY Product;
SELECT * FROM OrdersByProductType;

#Orders Placed in 2024
CREATE VIEW Orders2024 AS SELECT OrderID,Customer_Name,Product,Quantity,Price,OrderDate,Status FROM Orders WHERE year(OrderDate)=2024;
SELECT * FROM Orders2024;

#Pending Orders only
CREATE VIEW PendingOrders AS SELECT OrderID,Customer_Name,Product,Quantity,Price,OrderDate FROM Orders WHERE Status = 'Pending' ;
SELECT * FROM PendingOrders;

#Latest Orders
CREATE VIEW LatestOrders AS SELECT * FROM Orders order by OrderDate DESC LIMIT 2;
SELECT * FROM LatestOrders;

#Hide Price For security
CREATE VIEW PublicOrder AS SELECT OrderID,Customer_Name,Product,Quantity,OrderDate,Status FROM Orders;
SELECT * FROM PublicOrder;

#Modify a View
CREATE OR REPLACE VIEW HighValueOrder AS SELECT OrderID,Customer_Name,Product,Quantity,Price,Status,(Quantity * Price) AS TotalAmount FROM Orders WHERE (Quantity * Price ) >25000;
SELECT * FROM HighValueOrder;

#Drop a View
DROP view if exists PendingOrders;


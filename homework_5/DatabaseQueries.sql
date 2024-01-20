--TASKS 1-5

--TASK 1
--Вывести сред/стоимость товаров из категорий 1, 2, 5, 
--у которых название начинается с буквы t
SELECT
AVG(Price) AS avg_price
FROM Products
WHERE ProductName LIKE "t%"
AND
CategoryID IN (1, 2, 5)

--TASK 2
--Посчитать стоимость заказа 10248
SELECT
SUM(Price) AS total_price
FROM Products
JOIN OrderDetails ON Products.ProductID = OrderDetails.ProductID
WHERE OrderDetails.OrderID = 10248

--TASK 3
--Вывести ко-во товаров с ценой от 10 до 250 EUR
SELECT
COUNT(*) AS total_products
FROM Products
WHERE Price BETWEEN 10 AND 250

--TASK 4
--Вывести сумму, на которую было отправлено товаров 
--клиентам в Germany
SELECT
SUM(Price) AS total_price
FROM Products
JOIN Suppliers ON Products.SupplierID = Suppliers.SupplierID
WHERE Country LIKE "%Germany%"

--TASK 5 (link)
--https://dbdiagram.io/d/65ac1b3dac844320ae5956ce
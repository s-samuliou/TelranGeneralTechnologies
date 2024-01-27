-- 1 уровень сложности: В рамках БД "песочница" напишите след/запросы:

--ЗАДАНИЕ 1
--Вывести заказы со стоимостью от 5000 EUR (проекция: номер_заказа, стоимость_заказа)
SELECT 
	OrderDetails.OrderID,
    SUM(OrderDetails.Quantity) * Products.Price  AS price_of_orders
FROM OrderDetails
JOIN Products ON OrderDetails.ProductID = Products.ProductID
GROUP BY OrderDetails.OrderID
HAVING price_of_orders > 5000


--ЗАДАНИЕ 2
--Вывести страны, в которые было отправлено 3 и более заказов
SELECT
	Customers.Country,
	COUNT(Customers.Country) AS CountryWith3AndMoreOrders
FROM Orders
JOIN Customers ON Orders.CustomerID = Customers.CustomerID
GROUP BY Orders.CustomerID
HAVING CountryWith3AndMoreOrders >= 3


--ЗАДАНИЕ 3
--Вывести ТОП-10 самых продаваемых товаров (проекция: название_товара, ко_во_проданных_единиц)
SELECT 
	Products.ProductName,
    SUM(OrderDetails.Quantity) AS TotalSaleProduct
FROM OrderDetails
JOIN Products ON OrderDetails.ProductID = Products.ProductID
GROUP BY OrderDetails.ProductID
ORDER BY TotalSaleProduct DESC
LIMIT 10


--ЗАДАНИЕ 4
--Расчитать З/П менеджеров (ставка - 5% от суммы проданных заказов)
SELECT 
	Employees.LastName,
    Products.ProductName,
    AVG(Products.Price) AS AvgPrice,
    COUNT(OrderDetails.Quantity) AS TotalOrders,
    AVG(Products.Price) * COUNT(OrderDetails.Quantity) * .05 AS Salary 
FROM Employees
JOIN Orders ON Employees.EmployeeID = Orders.EmployeeID
JOIN OrderDetails ON Orders.OrderID = OrderDetails.OrderID
JOIN Products ON OrderDetails.ProductID = Products.ProductID
GROUP BY Employees.EmployeeID


--ЗАДАНИЕ 5
--Дополните схему БД "онлайн-шахматы" функционалом групповых чатов
--https://dbdiagram.io/d/lesson6-65aebbfcac844320ae785f65


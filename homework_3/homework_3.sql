--В рамках БД "песочница"  напишите след/запросы:
--1. Вывести данные о товарах (название товара, ценасоскидкой_0.5%)
SELECT 
	ProductName,
    Price * 0.995 AS Prise_discount_0.5
FROM Products

--2. Вывести заказы клиентов не из France  (номерзаказа, имяклиента, страна_клиента)
SELECT
	Orders.OrderID,
    Customers.CustomerName,
    Customers.Country
FROM Orders
JOIN Customers ON Orders.CustomerID = Customers.CustomerID
WHERE Country Not LIKE "%france%"

--3. Вывести название и стоимость в USD одного самого дорогого проданного товара (не используя агрегацию)
SELECT 
	ProductName,
    Price * 1.1 AS Price_usd
FROM Products
ORDER BY Price DESC
LIMIT 1

--4. Вывести список стран, которые поставляют морепродукты
SELECT Country
FROM Products
JOIN Categories ON Products.CategoryID = Categories.CategoryID
JOIN Suppliers ON Products.SupplierID = Suppliers.SupplierID
WHERE CategoryName LIKE '%seafood%'

--5. Вывести два самых дорогих товара из категории Beverages из USA
SELECT *
FROM Products
JOIN Categories ON Products.CategoryID = Categories.CategoryID
JOIN Suppliers ON Products.SupplierID = Suppliers.SupplierID
WHERE Categories.CategoryName LIKE '%beverages%'
	  AND
	  Country LIKE '%usa%'
ORDER BY Products.Price DESC
LIMIT 2



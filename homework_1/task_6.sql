SELECT Country, City, Address
FROM Suppliers
WHERE Country != "Japan"
	  AND
      Country != "Brazil"
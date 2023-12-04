SELECT ContactName
FROM Customers
WHERE NOT Country = "France"
	  AND
      NOT Country = "USA"
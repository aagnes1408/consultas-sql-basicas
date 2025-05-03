-- Listar produtos com pre�o acima da m�dia
SELECT ProductKey, ProductName, UnitPrice
FROM DimProduct
WHERE UnitPrice > (
  SELECT AVG(UnitPrice) FROM DimProduct
)
ORDER BY UnitPrice DESC

--Ver ocupa��es com mais de 300 clientes

SELECT Occupation, COUNT(*) AS TotalClientes
FROM DimCustomer
WHERE Occupation IS NOT NULL
GROUP BY Occupation
HAVING COUNT(*) > 300
ORDER BY TotalClientes DESC

--Ver todos os produtos com nome contendo "Bluetooth"

SELECT ProductName, UnitPrice
FROM DimProduct
WHERE ProductName LIKE '%Bluetooth%'
ORDER BY UnitPrice DESC
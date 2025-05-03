--Listar 10 produtos mais baratos
SELECT TOP 10 ProductKey, ProductName, UnitPrice
FROM DimProduct
ORDER BY UnitPrice ASC

--Quantidade de clientes por gênero

SELECT Gender, COUNT(*) AS Total
FROM DimCustomer
WHERE Gender IS NOT NULL
GROUP BY Gender


--Filtrar produtos com "Home Theater" no nome

SELECT ProductKey, ProductName, UnitPrice
FROM DimProduct
WHERE ProductName LIKE '%Home Theater%';



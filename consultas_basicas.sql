--1:Listar todos os clientes ordenados pelo nome.

SELECT TOP 100 FirstName,LastName
FROM DimCustomer
WHERE FirstName IS NOT NULL
AND LastName IS NOT NULL
ORDER BY FirstName

--2:Listar todos os produtos que custam mais de 100.

SELECT TOP 100  ProductKey,ProductName,UnitPrice
FROM  DimProduct
WHERE UnitPrice > 100
ORDER BY UnitPrice DESC

--3: Mostrar clientes por Ocupações distintas .
SELECT  DISTINCT Occupation 
FROM DimCustomer
WHERE Occupation IS NOT NULL
ORDER BY Occupation


--4: Listar produtos com desconto (alias).

SELECT ProductKey , DiscountAmount AS Desconto
FROM FactSales
WHERE DiscountAmount > 0

--5: Listar as vendas ordenadas por data.
SELECT TOP 100 SalesKey,DateKey,SalesAmount
FROM FactSales
ORDER BY DateKey 


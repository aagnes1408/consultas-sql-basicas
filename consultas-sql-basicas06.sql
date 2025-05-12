--Listar produtos e suas subcategorias apenas quando existe correspondência entre o ProductSubcategoryKey das duas tabelas.
SELECT
	ProductKey,
	ProductName,
	DimProduct.ProductSubcategoryKey,
	ProductSubcategoryName
FROM 
	DimProduct
INNER JOIN DimProductSubcategory
	ON DimProduct.ProductSubcategoryKey = DimProductSubcategory.ProductSubcategoryKey
-- Trazer todos os produtos da tabela DimProduct, mesmo que não haja subcategoria correspondente na tabela DimProductSubcategory.
SELECT
	ProductKey,
	ProductName,
	DimProduct.ProductSubcategoryKey,
	ProductSubcategoryName
FROM 
	DimProduct
LEFT JOIN DimProductSubcategory
	ON DimProduct.ProductSubcategoryKey = DimProductSubcategory.ProductSubcategoryKey
	
--Trazer todas as subcategorias da tabela DimProductSubcategory, mesmo que não haja produtos correspondentes na tabela DimProduct.
	SELECT
	ProductKey,
	ProductName,
	DimProduct.ProductSubcategoryKey,
	ProductSubcategoryName
FROM 
	DimProduct
RIGHT JOIN DimProductSubcategory
	ON DimProduct.ProductSubcategoryKey = DimProductSubcategory.ProductSubcategoryKey

--Listar todos os produtos e todas as subcategorias, incluindo os que não têm correspondência entre as tabelas.
SELECT
  p.ProductKey,
  p.ProductName,
  s.ProductSubcategoryName
FROM DimProduct p
FULL OUTER JOIN DimProductSubcategory s
  ON p.ProductSubcategoryKey = s.ProductSubcategoryKey

--Retornar todas as combinações possíveis entre e produtos e subcategorias, sem necessidade de correspondência.

SELECT
  p.ProductName,
  s.ProductSubcategoryName
FROM DimProduct p
CROSS JOIN DimProductSubcategory s;

--Comparar produtos com eles mesmos, verificando os IDs de subcategoria para listar produtos relacionados.

SELECT 
  p1.ProductKey AS Produto_1,
  p1.ProductName AS Nome_Produto_1,
  p2.ProductKey AS Produto_2,
  p2.ProductName AS Nome_Produto_2
FROM DimProduct p1
INNER JOIN DimProduct p2
  ON p1.ProductSubcategoryKey = p2.ProductSubcategoryKey
WHERE p1.ProductKey <> p2.ProductKey;

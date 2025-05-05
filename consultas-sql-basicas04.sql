-- Mostra o nome dos produtos.Se o tamanho estiver em branco (NULL), exibe “Tamanho não informado”.Ordena pelo nome do produto.
SELECT 
  ProductName,
  ISNULL(Size, 'Tamanho não informado') AS TamanhoTratado
FROM DimProduct
ORDER BY ProductName;

-- Classificar o preço como 'Alto', 'Médio' ou 'Baixo' com CASE
SELECT 
  ProductName,
  UnitPrice,
  CASE 
    WHEN UnitPrice > 2000 THEN 'Alto'
    WHEN UnitPrice BETWEEN 1000 AND 2000 THEN 'Médio'
    ELSE 'Baixo'
  END AS FaixaPreco
FROM DimProduct

-- Usando IIF para simplificar uma condição
SELECT 
  ProductName,
  UnitPrice,
  IIF(UnitPrice > 1000, 'Caro', 'Acessível') AS Classificacao
FROM DimProduct

-- Combinar condições com AND e OR

SELECT 
  ProductName,
  UnitPrice
FROM DimProduct
WHERE UnitPrice > 500 AND ProductName LIKE '%LCD HDTV%'
ORDER BY UnitPrice DESC;

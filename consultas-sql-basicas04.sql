-- Mostra o nome dos produtos.Se o tamanho estiver em branco (NULL), exibe �Tamanho n�o informado�.Ordena pelo nome do produto.
SELECT 
  ProductName,
  ISNULL(Size, 'Tamanho n�o informado') AS TamanhoTratado
FROM DimProduct
ORDER BY ProductName;

-- Classificar o pre�o como 'Alto', 'M�dio' ou 'Baixo' com CASE
SELECT 
  ProductName,
  UnitPrice,
  CASE 
    WHEN UnitPrice > 2000 THEN 'Alto'
    WHEN UnitPrice BETWEEN 1000 AND 2000 THEN 'M�dio'
    ELSE 'Baixo'
  END AS FaixaPreco
FROM DimProduct

-- Usando IIF para simplificar uma condi��o
SELECT 
  ProductName,
  UnitPrice,
  IIF(UnitPrice > 1000, 'Caro', 'Acess�vel') AS Classificacao
FROM DimProduct

-- Combinar condi��es com AND e OR

SELECT 
  ProductName,
  UnitPrice
FROM DimProduct
WHERE UnitPrice > 500 AND ProductName LIKE '%LCD HDTV%'
ORDER BY UnitPrice DESC;

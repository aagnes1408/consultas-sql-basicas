--Mostrar apenas os 9 primeiros caracteres do nome do produto
SELECT 
  ProductName,
  LEFT(ProductName, 9) AS InicioNome
FROM DimProduct
ORDER BY ProductName;
-- Mostrar os 10 �ltimos caracteres do nome do produto
SELECT 
  ProductName,
  RIGHT(ProductName, 6) AS NomeFim
FROM DimProduct
-- Mostrar o tamanho (n�mero de caracteres) do nome do produto
SELECT 
  ProductName,
  LEN(ProductName) AS TamanhoNome
FROM DimProduct
-- Nome em mai�sculas
SELECT 
  ProductName,
  UPPER(ProductName) AS NomeMaiusculo
FROM DimProduct
-- Nome em min�sculas
SELECT 
  ProductName,
  LOWER(ProductName) AS NomeMinusculo
FROM DimProduct
-- Verificar se o nome do produto cont�m a palavra 'Digital'
SELECT 
  ProductName,
  CHARINDEX('Digital', ProductName) AS PosicaoDigital
FROM DimProduct
WHERE CHARINDEX('Digital', ProductName) > 0;
-- Mostrar a data formatada no estilo DD/MM/AAAA
SELECT 
  ProductName,
  FORMAT(AvailableForSaleDate, 'dd/MM/yyyy') AS DataFormatada
FROM DimProduct
ORDER BY AvailableForSaleDate
-- Extrair ano, m�s e dia da data de in�cio de venda
SELECT 
  ProductName,
  AvailableForSaleDate,
  YEAR(AvailableForSaleDate) AS Ano,
  MONTH(AvailableForSaleDate) AS Mes,
  DAY(AvailableForSaleDate) AS Dia
FROM DimProduct
ORDER BY AvailableForSaleDate
-- Mostrar quantos dias o produto est� dispon�vel desde a data de in�cio de venda
SELECT 
  ProductName,
  AvailableForSaleDate,
  DATEDIFF(DAY, AvailableForSaleDate, GETDATE()) AS DiasDisponivel
FROM DimProduct
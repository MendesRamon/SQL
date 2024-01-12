/** =====ANÁLISE DE VENDAS=====

Select com Join e Group By para analise de vendas (TOP 10)
Com análise de produtos com maior venda (faturamento), no tempo.
E, faturamento médio.

**/

SELECT TOP (10)
--AGRUPADORES
	p.EnglishProductName,
	v.[SalesTerritoryKey],
	v.ShipDate,
--TOTALIZADORES
	COUNT(*) AS QTD,
	SUM(v.[SalesAmount]) TOTAL_SALES,
	SUM(v.[SalesAmount])/COUNT(*)  AS AVERAGE_SALES_PRODUCT
FROM [AdventureWorksDW2019].[dbo].[FactResellerSales] v

LEFT  JOIN 
  [AdventureWorksDW2019].[dbo].[DimProduct] p ON
   v.ProductKey = p.ProductKey
GROUP BY
   p.EnglishProductName,
   v.ShipDate,
   v.[SalesTerritoryKey]

HAVING
	MAX(v.ShipDate) >= '2011-01-01'

ORDER BY
	 SUM(v.[SalesAmount]) DESC


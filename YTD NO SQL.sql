
/**
----YTD EM CONSULTA SQL (WINDOWS FUNCTION)-----

YTD é uma sigla que significa Year to Date e se refere a um período que começa no início do ano (em janeiro)
e termina na data em que um relatório financeiro ou contábil é finalizado, como se fosse a expressão
“do começo do ano até hoje” ou “acumulado do ano”.
**/

SELECT 
    ProductKey,
	CONVERT(VARCHAR, ShipDate, 23) AS ShipDate,
    SalesAmount,
    SUM(SalesAmount) OVER (PARTITION BY ShipDate ORDER BY ShipDate ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS Acumulado
FROM 
    [AdventureWorksDW2019].[dbo].[FactInternetSales]
WHERE FORMAT(ShipDate,'yyyy' ) = '2011'
ORDER BY 
    ShipDate;


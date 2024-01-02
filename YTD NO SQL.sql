
/**
----YTD EM CONSULTA SQL (WINDOWS FUNCTION)-----

YTD � uma sigla que significa Year to Date e se refere a um per�odo que come�a no in�cio do ano (em janeiro)
e termina na data em que um relat�rio financeiro ou cont�bil � finalizado, como se fosse a express�o
�do come�o do ano at� hoje� ou �acumulado do ano�.
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


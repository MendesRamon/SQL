
/**
----YTD EM CONSULTA SQL (WINDOWS FUNCTION)-----

YTD é uma sigla que significa Year to Date e se refere a um período que começa no início do ano (em janeiro)
e termina na data em que um relatório financeiro ou contábil é finalizado, como se fosse a expressão
“do começo do ano até hoje” ou “acumulado do ano”.

----SQL----
Para este cálculo foi feito uma consulta selecionamento apenas três colunas necessárias para a análise, 
convertendo o formato da data para uma melhor visualização dos dados e o uso da cláusula OVER para
para acumular a soma dos valores de venda desde o início (ROWS BETWEEN UNBOUNDED PRECEDING) do período
até a data atual (AND CURRENT ROW)
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


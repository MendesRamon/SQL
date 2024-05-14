# Linguagem SQL

### Scripts em SQL para Análise De Dados


<br>
<div align="left">
<img src="https://github.com/MendesRamon/TCC_PUC_MINAS/assets/141190770/05e74746-8f72-4f96-b142-d9390ac4cbcf" width="700px" />
<div/>

Esta pasta estará sempre em atualização, serindo de dicionário de métricas de análise de dados em SQL.

- ***Análise de Vendas***
 É usado a técnica de *Join* para unir duas tabelas, trazendo o nome dos produtos por extenso, somando as vendas e a média de vendas por produto.
 Também., é usado o *Group By* para consolidar os dados (agrupar), junto com o *Having* que filtra, no caso, a data selecionada. O uso do *Order By*, junto com o *Top* (SqlServer), 
 ajudando a criar o *storytelling* da análise.

- ***Média Moda***
  A *média moda* é uma medida de tedencia central estatística usada para identificar os valores que mais se repetem.
  Nesta análise é usada uma estrutura um pouco mais complexa com o uso de função de janela como o *Partition By* e estrutura *With*

- ***Year To Date***
 O *year to date* (YTD) é uma análise de acumulado no ano, podendo ser aplicado a diversos cenários.
  Nesta consulta foi utilizado a função de janela *Partition By*, junto com o filtro *Where* e a ordenação dos dados com *Order By*.

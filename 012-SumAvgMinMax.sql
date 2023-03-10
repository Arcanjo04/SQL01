#SUM, AVG, MIN E MAX

#Utilize a tabela PEDIDOS para realizar os seguintes calculos:
-- a)Soma de Receita_Total
-- b)Media de Receita_Total
-- c)Minimo de Receita_Total
-- d)Maximo de Receita_Total

SELECT *
FROM pedidos;

SELECT 
	SUM(Receita_Venda) AS 'Soma de Receita',
    AVG(Receita_Venda) AS 'Media de Receita',
    MIN(Receita_Venda) AS 'Menor Receita',
    MAX(Receita_Venda) AS 'Maior Receita'
FROM pedidos;
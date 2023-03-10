-- 1. Do total de vendas por produto, qual foi a quantidade maxima vendida? E a quantidade minima e a média?

SELECT 
	MAX(Vendas) AS 'Maximo Vendas',
    MIN(Vendas) AS 'Minimo Vendas',
    AVG(Vendas) AS 'Media Vendas'
FROM(
SELECT ID_Produto,
	COUNT(*) AS 'Vendas'
FROM pedidos
GROUP BY ID_Produto) AS T;
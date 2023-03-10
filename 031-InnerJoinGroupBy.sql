-- INNER JOIN + GROUP BY

-- 1.
-- 1.1 Faça um agrupamento para mostrar o total de receita por ID do produto
-- 1.2 Altere a consulta criada para mostrar o nome do produto em vez do ID do produto. 

SELECT 
	Nome_Produto,
    SUM(Receita_Venda) AS 'Receita Total'
FROM pedidos
INNER JOIN produtos
	ON pedidos.ID_Produto = produtos.ID_Produto
GROUP BY Nome_Produto;
    
-- 2.
-- 2.1 Faça um agrupamento para mostrar o total de receita e custo por ID da loja. 
-- 2.2 Altere a consulta criada para mostrar o nome da loja em vez do ID da loja. 

SELECT 
	Loja,
	SUM(Receita_Venda) AS 'Receita Total',
	SUM(Custo_Venda) AS 'Custo Total'
FROM pedidos
INNER JOIN lojas
	ON pedidos.ID_Loja = lojas.ID_Loja
GROUP BY Loja;
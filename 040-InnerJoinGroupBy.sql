# 1. VIEWS + JOIN E GROUP BY: Aplicando Join nas views criadas.

-- 1. Crie uma view que seja a junção entre as tabelas de pedidos e de produtos . Ou seja, essa view deve conter todas as colunas da tabela pedidos e as colunas Nome_Produto, Marca_Produto e Num_Serie da tabela produtos. 

SELECT * FROM pedidos;
SELECT * FROM produtos;

CREATE VIEW vwPedidosCompleta AS
SELECT 
	pe.*,
    pr.Nome_Produto,
    pr.Marca_Produto,
    pr.Num_Serie
FROM pedidos as pe
INNER JOIN produtos AS pr
	ON pe.ID_Produto = pr.ID_Produto;
    
SELECT * FROM vwPedidosCompleta;

-- 2. Crie uma view que será o resultado de um agrupamento da tabela de pedidos. A ideia é que voce tenha nessa view o total de Receita e Custo agrupados por Nome_Produto. 

CREATE VIEW vwResultadoFinal AS
SELECT 
	pr.Nome_Produto,
    SUM(Receita_Venda) AS 'Receita_Total',
    SUM(Custo_Venda) AS 'Custo_Total'
FROM pedidos AS pe
INNER JOIN produtos AS pr
	ON pe.ID_Produto = pr.ID_Produto
GROUP BY Nome_Produto;
SELECT * FROM vwResultadoFinal
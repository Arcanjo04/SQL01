# 1. VIEWS + GROUP BY: Criando Views com consultas filtradas

-- 1. Crie uma view que será o resultado de um agrupamento da tabela de pedidos. A ideia é que voce tenha nessa view o total da Receita e Custo agrupados por ID_Produto.

SELECT * FROM pedidos;

CREATE VIEW vwReceitaECustoTotal AS
SELECT
	ID_Produto,
    SUM(Receita_Venda) AS 'Total Receita',
    SUM(Custo_Venda) AS 'Total Custo'
FROM pedidos
GROUP BY ID_Produto;

SELECT * FROM vwReceitaECustoTotal;

-- 2. Altere a view anterior para mostrar o agrupamento apenas para os produtos da loja 2. 
ALTER VIEW vwReceitaECustoTotal AS
SELECT
	ID_Produto,
    SUM(Receita_Venda) AS 'Total Receita',
    SUM(Custo_Venda) AS 'Total Custo'
FROM pedidos
WHERE ID_Loja = 2
GROUP BY ID_Produto;

SELECT * FROM vwReceitaECustoTotal;

-- 3. Altere a view anterior para mostrar o agrupamento apenas para os produtos que tiveram uma receita total maior que 1 milhão, na loja 2. 

ALTER VIEW vwReceitaECustoTotal AS
SELECT
	ID_Produto,
    SUM(Receita_Venda) AS 'Total Receita',
    SUM(Custo_Venda) AS 'Total Custo'
FROM pedidos
WHERE ID_Loja = 2
GROUP BY ID_Produto
HAVING SUM(Receita_venda) >= 10000;

SELECT * FROM vwReceitaECustoTotal;
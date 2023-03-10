# Exemplos Views

# 1. VIEWS + WHERE: Criando Views com consultas filtradas.

-- 1. Crie uma View chamada vwReceitaAcima4000 que armazene todas as colunas da tabela Pedidos. A sua View deverá conter apenas as vendas com receita acima de R$4000. 

SELECT * FROM pedidos;

CREATE VIEW vwReceitaAcima600 AS
SELECT
	*
FROM pedidos
WHERE Receita_Venda >= 600;

SELECT * FROM vwreceitaacima600;

ALTER VIEW vwReceitaAcima600 AS
SELECT
	*
FROM pedidos
WHERE Receita_Venda >= 600 AND ID_Loja IN (1, 2, 3, 4);

SELECT * FROM vwreceitaacima600;


-- 2. Crie uma View chamada vwProdutosAtualizada que armazene todas as colunas da tabela Produtos. A sua view deverá conter apenas os produtos das marcas DELL, SANSUMG e SONY. 


SELECT * FROM produtos;

ALTER VIEW vwProdutosAtualizada AS
SELECT  *
FROM produtos
WHERE Marca_Produto IN ('DELL', 'SAMSUNG', 'SONY');
 SELECT * FROM vwProdutosAtualizada;
# Inner Join

-- Inner Join tem como objetivo juntar/relacionar os dados  de uma tabela A com uma tabela B. 

-- Sintaxe
/*SELECT
	Tabela_A.coluna1,
	Tabela_A.coluna2,
	Tabela_A.coluna3,
	Tabela_B.coluna4
FROM
	Tabela_A
INNER JOIN Tabela_B
	ON Tabela_A.id_chave_estrangeira = Tabela_B.id_chave_primaria
*/

-- 1. Faça uma consulta para relacionar as tabelas de produtos e pedidos. 

SELECT * FROM produtos;
SELECT * FROM pedidos;

-- Tabela Fato --> Tabela Pedidos --> Tabela A 
-- Tabela Dimensão --> Tabela Produtos --> Tabela B

-- Chave Primária (dimensão) --> ID_Produto (produto) 
-- Chave Estrangeira (fato) --> ID_Produto (pedidos)

-- Tabela Pedidos --> ID_Pedido, Data_Venda, ID_Produto, Qtd_Vendida, Receita_Venda
-- Tabela Produtos --> Nome_Produto, Marca_Produto

SELECT
	pedidos.ID_Pedido,
	pedidos.Data_Venda,
	pedidos.ID_Produto,
	pedidos.Qtd_Vendida,
	pedidos.Receita_Venda,
	produtos.Nome_Produto,
	produtos.Marca_Produto
FROM pedidos
INNER JOIN produtos
	ON pedidos.ID_Produto = produtos.ID_Produto;


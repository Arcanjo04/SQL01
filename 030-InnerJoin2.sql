-- 2. Faça uma consulta para relacionar as tabelas de clientes e pedidos.

SELECT * FROM pedidos;
SELECT * FROM clientes;

-- 1. Identificar as tabelas fato e dimensão
-- Tabela Fato --> Tabela Pedidos --> Tabela A
-- Tabela Dimensão --> Tabela Clientes --> Tabela B 

-- 2. Identificar as chaves primaria e estrangeira
-- Chave Primária --> ID_Cliente (clientes)
-- Chave Estrangeira (fato) --> ID_Cliente (pedidos)

-- 3. Escolher quais colunas de cada tabela vamos querer visualizar
-- Tabela Pedidos --> ID_Pedido, Data_Venda, ID_Cliente, Qtd_Vendida
-- Tabela Clientes --> Nome, Email, Telefone

SELECT
	pedidos.ID_Pedido AS 'ID pedido',
	pedidos.Data_Venda AS 'Data venda',
	pedidos.ID_Cliente AS 'ID cliente',
	pedidos.Qtd_Vendida AS 'Qtd vendida',
	clientes.Nome AS 'Cliente',
	clientes.Email AS 'email',
	clientes.Telefone AS 'Tel'
FROM pedidos
INNER JOIN clientes
	ON pedidos.ID_Cliente = clientes.ID_Cliente;
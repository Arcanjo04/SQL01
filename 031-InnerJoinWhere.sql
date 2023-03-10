-- 1. Altere a consulta abaixo para incluir a coluna de Sexo da tabela clientes

-- 2. Faça um filtro para mostrar apenas os clientes do Sexo Masculino

SELECT 
	p.ID_Pedido AS 'ID Pedido',
    p.Data_Venda AS 'Data da Venda',
    p.ID_Cliente AS 'ID Clientes',
    p.Qtd_Vendida AS 'Qtd. Vendida',
    c.Nome AS 'Nome do Cliente',
    c.Email AS 'E-mail',
    c.Sexo AS 'Sexo'
FROM pedidos AS p
INNER JOIN clientes AS c
	ON p.ID_Cliente = c.ID_Cliente
WHERE Sexo = 'M';
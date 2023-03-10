-- Descubra todas as informações sobre o cliente que gerou mais receita para a empresa

SELECT * FROM clientes
WHERE ID_Cliente = 
	(SELECT ID_Cliente
	FROM pedidos
    GROUP BY ID_Cliente
    ORDER BY SUM(Receita_Venda)DESC
    LIMIT 1);
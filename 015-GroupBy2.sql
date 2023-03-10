#4. Crie um agrupamento mostrando o total de clientes por escolaridade e sexo.

SELECT *
FROM clientes;

SELECT Sexo, Escolaridade, COUNT(*) AS 'Total-Clientes'
FROM clientes
GROUP BY Sexo, Escolaridade;

#5. Crie um agrupamento mostrando o total de receita por ID_produto e ID_loja.

SELECT *
FROM pedidos;

SELECT ID_Loja, ID_Produto, SUM(Receita_Venda) AS 'total'
FROM pedidos
GROUP BY ID_Loja, ID_Produto;
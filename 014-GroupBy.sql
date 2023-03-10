# GROUP BY: Criando agrupamentos no MySQL

# O GROUP BY permite criar resumos de tabelas, permitindo que seja feitas analises dos dados, como total de produtos por marca, total de clientes por região, total de vendas por produtos e etc.

# Sintaxe 1 (agrupamentos de 1 coluna):

#SELECT Coluna1, COUNT(Coluna)
#FROM Tabela
#GROUP BY Coluna1

# Sintaxe 2 (agrupamentos de mais de 1 coluna):

#SELECT Coluna1, Coluna2, COUNT(Coluna1)
#FROM Tabela
#GROUP BY Coluna1, Coluna2,

#1. Crie um agrupamento mostrando o total de produtos por marca.

SELECT *
FROM produtos;

SELECT Marca_Produto, COUNT(*) AS 'Qdt produtos por marca'
FROM produtos
GROUP BY Marca_Produto
ORDER BY COUNT(*) DESC;

#2. Crie um agrupamento mostrando o total de clientes por sexo.
SELECT *
FROM clientes;

SELECT Sexo, COUNT(*) AS 'Qtd clientes'
FROM clientes
GROUP BY Sexo;

#3. Crie um agrupamento mostrando o total de receita por ID do produto.

SELECT *
FROM pedidos;

SELECT ID_Produto, SUM(Receita_Venda) AS 'Total receita'
FROM pedidos
GROUP BY ID_Produto;
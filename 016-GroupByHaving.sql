# GROUP BY + HAVING: Criando filtros depois de agrupamentos no MySQL

#Conseguimos utilizar o HAVING em conjunto com o GROUP BY para criar filtros depois de um determinado agrupamento. Por exemplo, mostrar apenas os produtos que tiveram uma receita total acima de um determinado valor.

# Sintaxe

#SELECT Coluna1, COUNT(*)
#FROM tabela
#GROUP BY Coluna1
#HAVING COUNT(*) >= 100;

# 1. Crie um agrupamento mostrando o total de clientes por escolaridade.alter

# Filtre o agrupamento resultante para mostrar apenas as escolaridades com mais de 25 clientes.

SELECT * FROM clientes;

SELECT Escolaridade, COUNT(*) AS 'Qtd clientes'
FROM clientes
GROUP BY Escolaridade
HAVING COUNT(*) > 25;

#2. Crie um agrupamento mostrando o total de receita por ID_Produto. Filtre o agrupamento resultante para mostrar os produtos que tiveram uma receita total superior a R$5M

SELECT * FROM pedidos;

SELECT ID_Produto, SUM(Receita_Venda) AS 'Receita Total'
FROM pedidos
GROUP BY ID_Produto
HAVING SUM(Receita_Venda) >= 10000;


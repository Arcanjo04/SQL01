# GROUP BY + WHERE: Criando filtros antes de agrupamentos no MySQL

# Conseguimos utilizar o WHERE em conjunto com o GROUP BY para criar filtros antes de realizar os agrupamentos. Por exemplo, mostrar o total de clientes por escolaridade, so que apenas os clientes do sexo feminino. 

# 1. Crie um agrupamento mostrando o total de clientes por escolaridade, mas apenas os clientes do sexo feminino. 

SELECT * FROM clientes;

SELECT Escolaridade, COUNT(*) AS 'Qtd clientes'
FROM clientes
WHERE Sexo = 'F'
GROUP BY Escolaridade;

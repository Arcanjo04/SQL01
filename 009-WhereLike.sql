# WHERE (LIKE)
# O comando WHERE pode ser usado em conjunto com o like para filtrar as linhas que contenham determinado valor.

# Sintaxe
# SELECT Coluna1, Coluna2, Coluna3
# FROM Tabela
#WHERE Coluna1 LIKE valor;

#Exemplo. Descubra quais clientes usam email do GMAIL 
SELECT *
FROM clientes
WHERE Email LIKE '%gmail%';

#Exemplo. Descubra quais clientes usam email terminando em .br 
SELECT *
FROM clientes
WHERE Email LIKE '%.br%';










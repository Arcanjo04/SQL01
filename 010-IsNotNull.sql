#WHERE (IS NULL e IS NOT NULL)

#O comando WHERE pode ser usado em conjunto com IS NULL ou o IS NOT NULL para filtrar apenas as linhas que são nulas ou não são nulas, respectivamente.

#Sintaxe
#SELECT Coluna1, Coluna2, Coluna3
#FROM Tabela
#WHERE Coluna1 IS NULL

#Exemplo1. Descubra quais clientes não cadastraram o celular

SELECT *
FROM clientes
WHERE Telefone IS NULL;

#Exemplo2. Descubra quais lojas não cadastraram um contato telefônico

SELECT *
FROM lojas
WHERE Telefone IS NOT NULL;
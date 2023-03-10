# WHERE (AND, OR E NOT)

#1. Introdução
#O comando WHERE pode ser usado em conjunto com os operadores AND e OR para filtrar mais de uma coluna ao mesmo tempo, e tambem com o operador NOT para criar negações

#2. Sintaxe
#(AND) selecione coluna1,(e) selecione coluna2 "todas os valores acontecem ao mesmo tempo"
SELECT sexo, escolaridade
FROM clientes
WHERE Sexo = 'F' AND Escolaridade = 'Parcial';

#(OR) selecione coluna1,(ou) selecione coluna2,(ou) selecione coluna3
SELECT sexo, escolaridade
FROM clientes
WHERE Marca_Produto = 'DELL' OR Marca_Produto ='Samsung' OR Marca_Produto ='Sony';

#(NOT) 
SELECT Marca_Produto
FROM clientes
WHERE NOT Marca_Produto = 'DELL';

#Ex.1 Crie um filtro na tabela de PRODUTOS para mostrar apenas as linhas referentes aos produtos Marca_Produto DELL e Preco_Unit maior ou igual a 2000

SELECT *
FROM produtos
WHERE Marca_Produto = 'DELL' AND Preco_Unit >= 2000; 

#Ex.2 Crie um filtro na tabela de PRODUTOS para mostrar as linhas referentes aos produtos da marca DELL ou ALTURA.

SELECT *
FROM produtos
WHERE Marca_Produto = 'Dell' OR Marca_Produto = 'Altura';

#Ex.3 Crie um filtro para mostrar apenas os produtos que não são da Marca_Produto igual a SAMSUNG

SELECT *
FROM produtos
WHERE NOT Marca_Produto = 'Samsung';


# WHERE (IN e NOT IN)

# 1. O comando WHERE pode ser usado em conjunto com IN ou NOT IN como uma alternativa ao operador logico OR. Com ele, é possivel filtrar apenas as linhas que contenham um dos valores especificados em uma lista de valores

# 2. Sintaxe
# SELECT Coluna1, Coluna2, Coluna3
# FROM Tabela
# WHERE Coluna1 IN (valor1, valor2, valor3);
-- WHERE Coluna1 = valor1 OR Coluna1 = valor2 OR Coluna1 = valor3; "simplifição da ação acima"

#Exemplo. Faça um filtro que retorne todos os produtos de uma das 3 marcas a seguir: DELL, SONY ou ALTURA.alter
SELECT *
FROM produtos
WHERE Marca_Produto IN ('DELL', 'SONY', 'ALTURA');

SELECT *
FROM produtos
WHERE Marca_Produto NOT IN ('DELL', 'SONY', 'ALTURA');
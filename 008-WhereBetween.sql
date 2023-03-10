# WHERE (BETWEEN)

# 1. Introdução
# Comando WHERE poder ser usado em conjunto com o BETWEEN para facilitar intervalos. Esses intervalos podem ser de numeros ou de datas.

# 2. Sintaxe
# SELECT Coluna1, Coluna2, Coluna3
# FROM Tabeça
# WHERE Coluna1 BETWEEN valor1 AND valor2;

# Exemplo1. Faça um filtro que retorne todos os produtos com Preco_Unit entre 1000 e 2500.alter
SELECT *
FROM produtos
WHERE Preco_Unit BETWEEN 110 AND 2500;

# Exemplo2. Faça um filtro que retorne todos os clientes que nasceram entre 01/01/1995 e 31/12/1999
SELECT *
FROM clientes
WHERE Data_Nascimento BETWEEN '1995/01/01' AND '1999/12/31';
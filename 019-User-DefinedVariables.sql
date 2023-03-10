# SER-DEFINED VARIABLES

# Uma variavel é um local onde armazenamos um determinado valor, que pode ser usado ao longo do nosso codigo.

# TIpos de dados:

-- INT: Inteiros
-- DECIMAL(M, D): Decimais com D digitos e M casas decimais
-- VARCHAR(N): Textos com N caracteres
-- DATE: Data
-- DATETIME: Data/Hora

# Declaramos uma variavel da seguinte forma:

-- SET @var = 10

#1. Uma loja vendeu 10 unidades de um determinado produto, a um preço de R$10,90 cada. Utiliza variaveis para calcular a receita total gerada nessa venda. 

SET @varQuantidade = 11;
SET @varPreco = 10.9;
SET @varReceita = @varQuantidade * @varPreco;
SELECT @varReceita AS 'Receita Total';

#2. Crie uma consulta a tabela de produtos para mostrar apenas os produtos da marca DELL
# Faça de forma que a marca DELL seja armazenada em uma variavel 

SET @varMarca = 'SAMSUNG';

SELECT *
FROM produtos
WHERE Marca_Produto = @varMarca;
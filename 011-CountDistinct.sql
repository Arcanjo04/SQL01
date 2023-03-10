#COUNT, COUNT(*) e COUNT(DISTINCT)

-- Funções que realizam contagens de valroes nas nossas tabelas

-- A estrutura será:
-- SELECT
-- COUNT(Coluna) AS 'Contagem'
-- FROM Tabela


# 1. COUNT
-- a. Conte a quantidade de clientes a partir da coluna Nome 

SELECT *
FROM Clientes;

SELECT
	COUNT(Nome) AS 'Qtd Clientes'
FROM clientes;

-- b. Conta a quantidade de clientes a partir da coluna Telefone

SELECT 
	COUNT(Telefone) AS 'Todos os numeros'
FROM clientes;

-- c. Houve alguma diferença nos resultados? Por que?
# Teve diferença nos resultados porque o COUNT ignora (ou seja, não considera) os valores nulos de uma coluna.

# 2. COUNT(*)
-- Conte a quantidade total de linhas da tabela de CLIENTES
SELECT
	COUNT(*)
FROM clientes;

# 3. COUNT(DISTINCT)

SELECT *
FROM produtos;

SELECT
	COUNT(DISTINCT Marca_Produto)
FROM produtos;
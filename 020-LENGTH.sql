# Funções de texto do MySQL

# 1. LENGTH> Retorna a quantidade de caracteres de um texto

-- 1. Descubra a quantidade de caracteres do texto 'SQL Impressionador'

SET @varCurso = 'SQL Impressionador';
SELECT LENGTH (@varCurso);

-- 2. Descubra a quantidade de caracteres de cada nome da tabela clientes. 

SELECT * 
FROM clientes;
SELECT
	Nome AS 'Nome',
    LENGTH(Nome) AS 'Qtd. Caracteres'
FROM clientes;
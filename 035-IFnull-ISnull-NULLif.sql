# Funções condicionais no MySQL

# IFNULL, ISNULL e NULLIF

# IFNULL: Retorna o valor alternativo caso a expressão seja NULL

-- IFNULL (expressão, valor_alternativo)

-- 1. Utilize a função IFNULL para retornar um valor alternativo para o valor abaixo.alter

SELECT 
	IFNULL(NULL, 'valor alternativo') as 'Resultado';
    

-- 2. A tabela de lojas pode ter lojas que não possuem telefone de contato. Neste caso, todas as lojas que tiverem um telefone NULL serão direcionados para uma central de atendimento com um numero padrão: 0800-999-99. Utilize a função IFNULL para fazer esse ajuste. 

SELECT *,
	IFNULL(Telefone, '0800-999-99') as 'Telefone corrigido'
FROM lojas;

# ISNULL: Teste se um determinado valor é NULL. Caso seja nulo, retorna 1, caso contrario, retorna zero. 

-- 1. Alguns clientes não cadastraram o telefone de contato. Faça uma consulta com uma coluna extra que identifique esses clientes de alguma forma. 

SELECT *,
	ISNULL(Telefone) as 'Check'
FROM clientes;


SELECT *,
	IF(ISNULL(Telefone), 'verificar', 'ok') as 'Check'
FROM clientes;


# NULLIF: Compra duas expressões e retornar NULL se as duas forem iguais. Se forem, retorna NULL; caso contrario, retorna a primeira expressão. 

SET @var1 = 300;
SET @var2 = 100;

SELECT
	NULLIF (@var1, @var2) as 'Check';
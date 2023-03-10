# Funções condicionais no MySQL
# CASE/THEN: A função CASE é uma outra estrutura para tratar condições dentro do SQL

# Sintaxe:
/*
CASE
	WHEN condição1 THEN resultado1
    WHEN condição2 THEN resultado2
    WHEN condiçãoN THEN resultadoN
    ELSE resultado
END;
*/

-- 1. Utilize a estrutura CASE para criar uma consulta na tabela clientes que substitui o valor 'M' por 'Masculino' e valor 'F' por 'FEMININO'

SELECT *,
	CASE
		WHEN Sexo = 'M' THEN 'Masculino'
        ELSE 'Feminino'
	END AS 'Sexo2'
FROM clientes;

-- 2. Na tabela de pedidos, crie uma estrutura CASE para avaliar as seguites situações de Receita_Venda:

-- Caso Receita_Venda >= 1000 --> 'Faturamento Alto'
-- Caso Receita_Venda >= 500 --> 'Faturamento Medio'
-- Caso Receita_Venda < 400 -- > 'Faturameento Baixo'

SELECT *,
	CASE
		WHEN Receita_Venda >= 1000 THEN 'Faturamento Alto'
        WHEN Receita_Venda >= 500 THEN 'Faturamento Medio'
        ELSE 'Faturameento Baixo'
	END AS 'Status'
    FROM pedidos;

# Functions no MySQL

-- Introdução
-- Uma função é uma rotina, um conjunto de instruções que você pode salvar no seu banco de dados e executar quando quiser, sem a necessidade de criar o codigo do zero toda vez que voce precisa dele 

-- 2. Sintaxe

/*

DELIMITER $$

CREATE FUNCTION nome_funcao(param1 tipo1, param2 tipo2)
RETURNS tipo DETERMINISTIC
BEGIN
	instruções1;
    instruções2;
    instruções3;
    RETURN expressão
END $$

DELIMITER;

SELECT nome_funcao(valor1, valor2);
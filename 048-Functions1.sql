USE base;

# 1. Crie uma função que retorna o seguinte texto: "Ola ____ , tudo bem?"

DELIMITER $$

CREATE FUNCTION fn_BoasVindas(nome VARCHAR(100))
RETURNS VARCHAR(100) DETERMINISTIC
BEGIN
	RETURN CONCAT('ola ', nome, ', tudo bem?');
END $$

DELIMITER ;


SELECT fn_BoasVindas('Nicolas');
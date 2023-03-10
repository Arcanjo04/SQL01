-- 2. Crie uma função chamada fn_Faturamento, que receba como parêmetros de entrada o preço  (DECIMAL) e a quantidadee (INT), e retorne o faturamento da venda, representado pela multiplicação entre preço e quantidade.

DELIMITER $$

CREATE FUNCTION fn_Faturamento(preco DECIMAL(10, 2), quantidade INT)
RETURNS DECIMAL(10,2) DETERMINISTIC
BEGIN
	 RETURN preco * quantidade;
END $$

DELIMITER $$

SELECT fn_Faturamento(10.99, 110);'
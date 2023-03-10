# LCASE e UCASE: Deixam um texto em minusculo e maiusculo, respectivamente

-- 1. Utilize as funções LCASE e UCASE com as variaveis abaixo.

SET @nome = 'Nicolas';
SET @sobrenome = 'Batista';

SELECT
	LCASE(@nome),
    UCASE(@sobrenome)
    
    
-- 2. Utilize as funções LCASE e UCASE nas colunas de nome completo abaixo

SELECT
	LCASE(CONCAT(Nome, ' ', Sobrenome)) AS 'Nome Completo (Concat)',
    UCASE(CONCAT_WS(' ', Nome, Sobrenome)) AS 'Nome Completo (Concat_ws)'
FROM clientes;
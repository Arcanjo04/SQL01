USE base;

-- Subquery como filtro de uma nova consulta

-- 1. Quais foramos pedidos realizados na loja onde o gerente é o Marcelo Castro?

SELECT * FROM pedidos;
SELECT * FROM lojas;

SET  @varNomeGerente = 'Marcelo Castro';

SELECT *
	FROM pedidos
    WHERE ID_Loja = (
		SELECT ID_Loja
        FROM lojas
        WHERE Gerente = @varNomeGerente
        );
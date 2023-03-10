-- Subquery como filtro de uma nova consulta

-- 1. Quais produtos tem o Preco,Unit acima da media?

SELECT AVG(Preco_Unit) FROM produtos; 

SELECT * 
	FROM produtos
    WHERE Preco_Unit > (
		SELECT AVG(Preco_Unit) 
        FROM produtos);

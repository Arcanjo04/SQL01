-- CASE com OR

-- 2. A empresa esta com uma parceria com as empresas das marcas 'DELL' e 'SAMSUNG'. Isso significa que os produtos dessas marcas receberão um desconto de 15% em seu custo de aquisição. Faça uma consulta que retorne uma coluna extra de desconto no custo de aquisição de cada produto.

-- Custo_Unit = x
-- Custo_Unit = x - 15% de x 

SELECT *,
	CASE
		WHEN Marca_Produto = 'DELL' OR Marca_Produto = 'SAMSUNG' THEN (1 - 0.15) * Custo_Unit
        ELSE Custo_Unit
	END AS 'Desconto?'
FROM produtos;

-- Outro exemplo com o mesmo resultado
SELECT *,
	CASE
		WHEN Marca_Produto IN ('DELL', 'SAMSUNG') THEN (1 - 0.15) * Custo_Unit
        ELSE Custo_Unit
	END AS 'Desconto?'
FROM produtos;
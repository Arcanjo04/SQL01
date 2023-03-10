-- 1. faça uma consulta que retorne todas as colunas da tabela de produtos + uma coluna com a media de Preço_Unit. 

SELECT *,
	(SELECT AVG(Preco_Unit) 
    FROM produtos) AS ' Media geral de precos'
	FROM produtos;
    
    
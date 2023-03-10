-- EXISTS E NOT EXISTS

-- O operador EXISTS é usado para testar a existência de qualquer registro em uma subconsulta. 
-- O operador EXISTS retorna TRUE se a subconsulta retornar um ou mais registros. 

/*

Sintaxe

SELECT coluna(s)
FROM tabela
WHERE EXISTS
(SELECT coluna(s) FROM tabela WHERE condição);
*/

-- 1. Voce deverá verificar se todas as categorias possuem pelo menos 1 exemplar de produtos (na tabela produtos) caso alguma categoria não possua nenhum exemplar voce deverá descobrir qual e quais são. 

SELECT 
	ID_Categoria
FROM categorias
WHERE EXISTS (
		SELECT
			ID_Categoria
		FROM produtos
        WHERE categorias.ID_Categoria = produtos.ID_Categoria );

SELECT 
	ID_Categoria
FROM categorias
WHERE NOT EXISTS (
		SELECT
			ID_Categoria
		FROM produtos
        WHERE categorias.ID_Categoria = produtos.ID_Categoria );
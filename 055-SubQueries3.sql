-- 3. Quais produtos são da categoria Notebook?

SELECT * FROM categorias;

SELECT * FROM produtos
WHERE ID_Categoria = (
		SELECT ID_Categoria
        FROM categorias
        WHERE Categoria = 'Notebook');
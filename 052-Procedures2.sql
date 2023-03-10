-- 2. Crie uma procedure capaz de receber 2 parametros: ID e Desconto.

-- Com a informação de ID, ela deve aplicar o desconto para o curso de ID informado. Alem disso, sua procedure deve retornar as seguintes mensagens:

-- 'Desconto de ___ aplicado com sucesso!'
-- 'Curso: ___; Preço antigo = ___; Preço Novo = ___.'
-- 'Codigo finalizado com sucesso!'

DELIMITER $$
CREATE PROCEDURE sp_AplicaDesconto(ID INT, Desconto DECIMAL(10, 2))
BEGIN
	-- Variavel para armazenar o preço com desconto 
    DECLARE varPrecoComDesconto DECIMAL(10, 2);
    -- Variavel para armazenar o nome do curso
    DECLARE varNomeCurso VARCHAR(100);
    -- Variavel para armazenar o preço antigo do curso
    DECLARE varPrecoAntigo DECIMAL(10, 2);
    
    -- Atribuir o valor de preço antigo a variavel varPrecoAntigo
    SET varPrecoAntigo = (SELECT Preco_Curso FROM dCursos WHERE ID_Curso = ID);
    
    -- Atribuir o valor de preço com desconto a variavel varPrecoComDesconto
    SET varPrecoComDesconto = (SELECT Preco_Curso FROM dCursos WHERE ID_Curso = ID) * (1 - Desconto);
    
    -- Atribuir o nome do curso a variavel varNomeCurso
    SET varNomeCurso = (SELECT Nome_Curso FROM dCursos WHERE ID_Curso = ID);
    
    -- Atualizar a tabela com o novo preco
	UPDATE dCursos
    SET Preco_Curso = varPrecoComDesconto
    WHERE ID_Curso = ID;  
    
    SELECT CONCAT('Desconto de', Desconto * 100, '% aplicado com sucesso!');
    SELECT CONCAT('Curso: ', varNomeCurso, '; Preço antigo = ', varPrecoAntigo, '; Preço Novo = ', varPrecoComDesconto);   
    SELECT 'Codigo executado com sucesso';
END $$

DELIMITER ;

SELECT *FROM dCursos;

CALL sp_AtualizaPreco(335, 1)

CALL sp_AplicaDesconto(1, 0.25);
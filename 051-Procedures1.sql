# Stored Procedures no MySQL

-- 1. Introdução 
-- As Stored Procedures podem ser vistas como programas/scripts (se fizermos uma analogia com qualquer linguagem de programação). Uma procedure permite alterar de forma global o banco de dados.

-- Com elas, conseguimos utilizar instruções INSERT, UPDATE, DELETE.

-- Procedures são utilizadas normalmente para juntar várias queries em um unico bloco de código. 

-- 2. Sintaxe 

/*
DELIMITER $$

CREATE PROCEDURE nome_storedProcedure(param1 tipo1, param2 tipo2)

BEGIN
	DECLARE var1 tipo1;
    DECLARE var2 tipo2;
    
    instruções1;
    instruções2;
    instruções3;
END $$

DELIMITER $$

CALL nome_storedProcedure(valor1, valor2)
*/

-- 1. Crie uma procedure que atualiza o preço de um curso com um novo preço. Sua procedure deve ser capaz de pesquisar o ID do curso de acordo com o parâmetro de ID informado com o argumento da procedure. 

USE db_exemplo

DELIMITER  $$

CREATE PROCEDURE sp_AtualizaPreco(NovoPreco DECIMAL(10,2), ID INT)
BEGIN
		-- codigo de atualizar o preco da tabela dCursos
	UPDATE dCursos
    SET Preco_Curso = NovoPreco
    WHERE ID_Curso = ID;
		-- codigo de atualizar o preco da tabela dCursos
    SELECT 'Preco atualizado com sucesso';
END $$
DELIMITER ;

SELECT * FROM dCursos; 

CALL sp_AtualizaPreco(250, 3);
-- ALTER VIEW: Altera uma view existente no banco de dados

SELECT * FROM vwclientes;

ALTER VIEW vwclientes AS
SELECT
	ID_Cliente,
    Nome,
    Data_Nascimento,
    Email,
    Telefone,
    Escolaridade
FROM clientes
WHERE Escolaridade = 'Parcial';

-- DROPVIEW: Exclui uma view de um banco de dados. 

DROP VIEW vwclientes
-- Quais pedidos foram feitos na região 'Sudeste'

SELECT * FROM pedidos;
SELECT * FROM lojas;
SELECT * FROM locais;

SELECT * FROM locais
WHERE Região = 'Sudeste';

SELECT *
	FROM lojas
    WHERE Loja IN (SELECT Cidade 
    FROM locais
    WHERE Região = 'Sudeste');
    
SELECT *
	FROM pedidos
    WHERE ID_Loja IN (
		SELECT ID_Loja
	FROM lojas
    WHERE Loja IN (SELECT Cidade 
    FROM locais
    WHERE Região = 'Sudeste')
    );
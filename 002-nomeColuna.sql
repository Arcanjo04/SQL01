# Comando AS: Renomeando as colunas da sua consulta
SELECT
	ID_Produto 		AS 'IdProd',
	Nome_Produto 	AS 'Referencia',
	Marca_Produto 	AS 'MarcaProd',
	Custo_Unit 		AS 'CustoProd'
FROM produtos;


# Comando AS: Renomeando a Tabela da sua consulta
SELECT
	ID_Produto,
	Nome_Produto,
	Marca_Produto,
	Custo_Unit
FROM produtos;
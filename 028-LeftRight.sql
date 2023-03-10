# LEFT e RIGHT: Permite extrair uma parte de um texto, mais à esquerda, ou mais à direita

-- 1. Separe o texto abaixo em 2 partes: 'SQL e 'Hashtag'

SET @var = 'Brazilian Jiu-jitsu';

SELECT
	LEFT(@var, 9) AS 'Left',
    RIGHT(@var,9) AS 'Right';
    

# 2. Separe os codigos da coluna Num_Serie (tabela 'produtos') em 2 partes.

SELECT * FROM produtos;

SELECT
	LEFT(Num_Serie,7) AS 'Coluna1',
    RIGHT(Num_Serie,6) AS 'Coluna2'
FROM produtos;
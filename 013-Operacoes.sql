#Operações basicas e funcoes de arredondamento

#1. Operações basicas

SELECT
	10 + 20 AS 'Soma',
	100 - 40 AS 'Subtração',
	5 * 20 AS 'MUltiplicação',
	300 / 12 AS 'Divisão',
	(100 - 10) * 4 AS 'Operação',
	22 % 5 AS 'resto da divisão';
    
    
#2. Funções de arredondamento

SELECT
ROUND(87.149, 2) AS 'arredonda',
FLOOR(87.149) AS 'arredonda /baixo',
CEILING(87.149) AS 'arredonda /cima',
TRUNCATE(87.149, 2) AS 'Mantem 2 casas depois do ponto';
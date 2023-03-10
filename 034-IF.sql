# Funções condicionais no MySQL

#IF: Função que permite tratar condições no MySQL

-- IF(teste_logico, valor_se_verdadeiro, valor_se_falso)
-- IF(teste_logico1, valor_se_verdadeiro1, IF(teste_logico2, valor_se_verdadeiro2, valor_se_falso))

-- 1.

SELECT 
	IF(10 > 51, 'Verdadeiro', 'Falso') as Result;
    
-- 2. Uma empresa oferece um bônus de 10% para todos os funcionários que tiveram uma avaliação do RH de acordo com a seguinte regra:

-- NotaDesempenho >= 7 --> Recebe bônus de 10%
-- NotaDesempenho < 7 --> Não recebe bônus

SET @varNotaDesempenho = 8.5;

SELECT
	IF(@varNotaDesempenho >= 7, 0.1, 'Sem bônus') as Resultado;
    
-- 3. Uma empresa oferece um bônus de 10% e 5% para todos os funcionarios que tiveram uma avaliação do RH de acordo com a seguinte regra:

-- NotaDesempenho >= 7 -- > Recebe bônus de 10%
-- NotaDesempenho >= 5 -- > Recebe bônus de 5%
-- NotaDesempenho < 5  -- > Não recebe bônus

SET @varNotaDesempenho = 9;

SELECT 
	IF(@varNotaDesempenho >= 7, 'Recebe bônus de 10%', if(@varNotaDesempenho >= 5, 'Recebe bônus de 5%', 'Não recebe bônus')) as 'Resultado';
    
-- 4. As lojas da nossa empresa que tiveram mais de 20 funcionarios receberão uma reforma de ampliação. Utilize a função IF para criar uma coluna na tabela lojas que informa quais lojas receberão reforma e quais não receberão reforma.

SELECT * FROM lojas;

SELECT *,
	IF(Num_Funcionarios >= 20, 'Recebe reforma', 'Não recebe reforna') as 'Status'
FROM lojas;

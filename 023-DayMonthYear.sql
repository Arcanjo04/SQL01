# Funções de Data no MySQL

# 1. DAY(): Retorna o dia de uma data
# 2. MONTH(): Retorna o mês de uma data
# 3. YEAR(): Retorna o ano de uma data

SELECT * FROM clientes;

SELECT
	Nome,
    Data_Nascimento,
    DAY(Data_Nascimento) AS 'Dia',
    MONTH(Data_Nascimento) AS 'Mês', 
    YEAR(Data_Nascimento) AS 'Ano'
FROM clientes;
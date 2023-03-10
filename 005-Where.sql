#WHERE

#1. Introducao 
#O Comando WHERE tem como objetivo filtrar as linhas de uma tabela  

#2. Sintaxa
#SELECT Coluna1, Coluna2, Coluna3
#FROM  tabela
#WHERE Coluna2= valor;

# Exemplo 1. Crie um filtro na tabela de clientes para mostrar apenas as linhas referente aos clientes Renda_Anual >= 80000

SELECT *
FROM clientes
WHERE Renda_Anual >= 80000;

SELECT *
FROM clientes
WHERE Escolaridade = 'Ensino médio';

# Exemplo 2. Crie um filtro na tabela de clientes para mostrar as linhas referente ao sexo masculino

SELECT *
FROM clientes
WHERE Sexo = 'M';

# Exemplo 3. Crie um filtro na tabela de clientes para mostrar apenas as linhas referentes aos clientes que nasceram após 01/01/2000

SELECT *
FROM Clientes
WHERE Data_Nascimento < '1980-01-01'

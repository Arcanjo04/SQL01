#1. Ordenar a coluna Nome  da tabela coluna de forma ASC.
SELECT * 
FROM clientes
ORDER BY Nome ASC; 

#2. Ordenar a coluna Nome da tabela coluna de forma DESC.
SELECT *
FROM clientes
ORDER BY Nome DESC;

#3. Ordenar a coluna Renda_Anual da tabela coluna de forma ASC.
SELECT *
FROM clientes
ORDER BY Renda_Anual ASC;

#4. Ordenar a coluna Renda_Anual da tabela coluna de forma DESC.
SELECT *
FROM clientes
ORDER BY Renda_Anual DESC;

#5. Ordenar a coluna Data_Nascimento de forma ASC.
SELECT *
FROM clientes
ORDER BY Data_Nascimento ASC;

#5. Ordenar a coluna Data_Nascimento de forma DESC.
SELECT *
FROM clientes
ORDER BY Data_Nascimento DESC;

#5. Ordenar a coluna Renda_Anual, Data_Nascimento de forma DESC.
SELECT *
FROM clientes
ORDER BY Data_Nascimento DESC, Renda_Anual DESC;
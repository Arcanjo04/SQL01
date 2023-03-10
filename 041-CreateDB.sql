### CRUD EM BANCO DE DADOS

# 1. CREATE DATABASE: Criando um banco de dados

-- Para criar um banco de dados, usamos o seguinte comando:

-- CREATE DATABASE nome_bd;

-- CREATE DATABASE IF NOT EXISTS nome_bd;

-- Obs: IF NOT EXISTS não é obrigatorio. Sua função é evitar o erro que pode acontecer se você ja estiver criado um banco de dados com o mesmo nome.

-- Exemplo:

CREATE DATABASE db_Exemplo;

# 2. SHOW DATABASES: Verificando um banco de dados

-- É possivel verificar os bancos de dados existentes utilizando o comando SHOW:

SHOW DATABASES;

# 3. USE: Usando um BD especifico

-- O comando USE define um banco de dados especifico como sendo o padrão do sistema.

USE db_exemplo;

-- Caso queira saber qual é o banco de dados selecionado no momento, você pode usar o comando:

SELECT DATABASE();

USE base;

# 4. DROP: Excluindo um banco de dados

-- Para excluir um banco de dados, usamos o seguinte comando:

DROP DATABASE db_exemplo;
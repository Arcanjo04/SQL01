CREATE DATABASE db_Exemplo;
USE db_exemplo;

CREATE TABLE IF NOT EXISTS dAlunos (
	ID_aluno INT,
	Nome_Aluno VARCHAR(100),
	Email VARCHAR(100)
);

CREATE TABLE dAlunos (
	ID_aluno INT,
	Nome_Aluno VARCHAR(100),
	Email VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS dCursos (
	ID_Curso INT,
	Nome_Curso VARCHAR(100),
	Preco_Curso DECIMAL(10, 2)
);

CREATE TABLE IF NOT EXISTS fMatricula(
	ID_Aluno INT,
    ID_Curso INT,
    Data_Cadastro DATE
);

SHOW TABLES;
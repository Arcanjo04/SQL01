# INSERT INTO

# Inserindo dados nas tabelas

INSERT INTO dAlunos(ID_Aluno, Nome_Aluno, Email)
VALUES
	(1, 'Ana', 'ana123@gmail.com'),
    (2, 'Bruno', 'bruno_vargas@outlook.com'),
    (3,	'Carla', 'carlinha1999@gmail.com'),
    (4, 'Diego', 'diicastroneves@gmail.com');
    
SELECT * FROM dAlunos;    
    
INSERT INTO dCursos(ID_Curso, Nome_Curso, Preco_Curso)
VALUES
	(1, 'Excel', 100),
    (2, 'VBA', 200),
    (3, 'Power BI', 150);

SELECT * FROM dCursos;

INSERT INTO fMatriculas(ID_matricula, ID_aluno, ID_Curso, Data_Cadastro)
VALUES
	(1, 1, 1, '2021/03/11'),
    (3, 2, 3, '2021/01/08'),
    (2, 1, 2, '2021/04/03'),
    (5, 4, 1, '2021/01/08'),
    (6, 4, 3, '2021/05/10');

SELECT * FROM fmatriculas;
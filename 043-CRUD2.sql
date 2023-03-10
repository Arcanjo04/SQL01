# CONSTRAINTS 

# Adicionando constraints  nas colunas das tabelas criadas.alter

-- Restrições (Constraints) são regras aplicadas nas coluns de uma tabela
	-- 1. Podemos especificar que uma coluna não pode ter valores NULL;
    -- 2. Podemos especificar que uma coluna deverá ser uma chave primária ou chave estrangeira
-- São usados para limitar os tipos de dados que são inseridos

# Principais:

# 1. NOT NULL:
-- A constraint NOT NULL faz com que uma coluna não aceite valores NULL. Um valor NULL é diferente de zero ou vazio, ele identifica que nenhum valor foi definido. 
-- A constraint NOT NULL obriga um campo a sempre possuir um valor. 
-- Dessa forma, não é possivel inserir um registro ou atualizar sem entrar com um valor neste campo. 

		-- Nome_Cliente VARCHAR(100) NOTE NULL 
        
# 2. UNIQUE
-- A restrição UNIQUE identifica de forma unica cada registro em uma tabela de um banco de dados. 
-- As constraints UNIQUE e PRIMARY KEY garantem a unicidade em uma coluna ou conjunto de colunas. 
-- Uma constraint PRIMARY KEY automaticamente possui uma restrição UNIQUE definida. 
-- Você pode ter varias constraints  UNIQUE em uma tabela, mas apenas uma Chave Primária por tabela. 

# 3. DEFAULT
-- Essa restrição insere um valor padrão na coluna. 
-- O valor padrão será adicionado a todos os novos registros caso nenhum outro valor seja especificado. 

# PRIMARY KEY (chave primaria)
-- A PRIMARY KEY identifica de uma forma unica cada registro em uma tabela do banco de dados. 
-- Chaves primarias devem conter valores unicos. 
-- Uma coluna de chave primaria não pode conter valores NULL. 
-- Cada tabela deve conter 1 e apenas 1 chave primaria. 

# FOREIGN KEY (chave estrangeira)
-- Uma FOREIGN KEY em uma tabela é um campo que aponta para uma chave primária em outra tabela. 

use db_exemplo;
DROP TABLE IF EXISTS dAlunos;
DROP TABLE IF EXISTS dCursos;
DROP TABLE IF EXISTS fMatricula;

CREATE TABLE IF NOT EXISTS dAlunos(
	ID_Aluno INT,
	Nome_Aluno VARCHAR(100) NOT NULL,
	Email VARCHAR(100) NOT NULL,
	PRIMARY KEY(ID_Aluno)
);

CREATE TABLE IF NOT  EXISTS dCursos(
	ID_Curso INT,
	Nome_Curso VARCHAR(100) NOT NULL,
	Preco_Curso DECIMAL(10, 2) NOT NULL,
	PRIMARY KEY(ID_Curso)
);

CREATE TABLE IF NOT EXISTS fMatriculas(
	ID_Matricula INT,
    ID_Aluno INT NOT NULL,
    ID_Curso INT NOT NULL,
    Data_Cadastro DATE NOT NULL,
    PRIMARY KEY(ID_Matricula),
    FOREIGN KEY(ID_Aluno) REFERENCES dAlunos(ID_Aluno),    
    FOREIGN KEY(ID_Curso) REFERENCES dCursos(ID_Curso)
);
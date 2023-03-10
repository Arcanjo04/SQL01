# 5. INSTR e MID: A INSTR retorna a posição de um determinado caractere e a função MID extrai textos de forma personalizada (de acordo com uma posição inicial).alter

-- 1. Utilize o e-mail abaixo para fazer as seguintes ações:
-- a. Retornar a posição do caractere '@'
-- b. Retornar o id do e-mail

SET @mail = 'mdoservidor@gmail.com';

-- Solução A.
SET @varPosition = INSTR(@mail, '@');
SELECT @varPosition;

-- Solução B.
SET @varID = MID(@mail, 1, @varPosition -1);
SELECT @varID;
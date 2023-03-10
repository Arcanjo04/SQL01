# CONCAT e CONCAT_WS: Utilizados para concatenar textos. A segunda opção permite especificar de 1 vez um separador que será utilizado entre cada texto

-- 1. Crie 2 variaveis: @varNome e @varSobrenome, e declare um nome e um sobrenome, respectivamente. Utiliza as funçõess CONCAT e CONCAT_WS para criar uma 3ª variavel que retorne o nome completo.

SET @varNome = 'Jose';
SET @varSobreNome = 'Mario';
SET @varUltimoNome = 'Jesus';

SET @varNomeCompleto = CONCAT(@varNome, ' ', @varSobreNome);
SET @varNomeCompleto2 = CONCAT_WS(' ', @varNome, @varSobrenome, @varUltimoNome);
SELECT @varNomeCompleto2;
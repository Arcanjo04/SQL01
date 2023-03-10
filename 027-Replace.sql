# 4. REPLACE: Substitui um texto por outro texto.alter

-- 1. No texto abaixo, substitua 'HIMYM' por 'Friends'

SET @texto = 'HIMYM é a melhor serie de comedia';

SET @textonovo = REPLACE(@texto, 'HIMYM', 'Friends');

SELECT @textonovo;

# 2. Substitua o texto 'S' por 'Solteiro'. Em seguida, substitua 'C' por 'Casado'

SELECT * 
FROM clientes

SELECT
	Nome,
    Estado_Civil,
   REPLACE(REPLACE(Estado_Civil, 'S', 'Solteiro'), 'C', 'Casado')
FROM clientes;
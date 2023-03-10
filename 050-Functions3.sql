-- 3. Crie uma função que substitua um texto os caracteres com acentos para caracteres sem acentos, assim como ç por c. 

SELECT * FROM lojas; 

DELIMITER $$

CREATE FUNCTION	fn_RemoveAcentos(texto VARCHAR(100))
RETURNS VARCHAR(100) DETERMINISTIC 
BEGIN
	SET texto = REPLACE(texto, 'á', 'a'),
		texto = REPLACE(texto, 'é', 'e'),
		texto = REPLACE(texto, 'í', 'i'),
		texto = REPLACE(texto, 'ó', 'o'),
		texto = REPLACE(texto, 'ú', 'u'),
		texto = REPLACE(texto, 'á', 'a'),
		texto = REPLACE(texto, 'á', 'a'),
		texto = REPLACE(texto, 'ç', 'c');
    RETURN texto;
END $$

DELIMITER $$

SELECT 
	Loja,
    Endereco,
    fn_RemoveAcentos(Endereco)
FROM lojas;
# CAST

# A função CAST converte um valor de qualuqer tipo em outro tipo de dados especificado

-- Obs.: No CAST, especificamos o INT como SIGNED ou UNSIGNED e o VARCHAR como CHAR.

SET @varNumero = 10.9205;

SELECT @varNumero,
		CAST(@varNumero AS SIGNED),
		CAST(@varNumero AS DECIMAL(10, 2)),
		CAST(@varNumero AS CHAR(3));

SET @varData = '2021-01-01';

SELECT @varData,
		CAST(@varData AS DATE),
		CAST(@varData AS DATETIME);

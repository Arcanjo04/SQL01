#Funções de calculos com Data: DATE_DIFF, DATE_ADD e DATE_SUB

# 1. DATEDIFF: Retorna a diferença entre duas datas

-- Calcular o tempo de entrega (em dias) de um projeto. 

SET @varDataInicio = '2021-04-10';
SET @varDataFim = '2021-07-15';

SELECT DATEDIFF(@varDataFim, @varDataInicio);

# 2. DATE_ADD Adiciona uma quantidade de dias/meses/anos a uma determinada data

-- Um projeto deve ser entregue 10 dias após a data de inicio. Qual é a data final de entrega?

SET @varDataInicio = '2021-04-10';

SELECT DATE_ADD(@varDataInicio, INTERVAL 10 DAY);
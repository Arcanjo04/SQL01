# LIMIT E OFFSET

#Selecione todas as colunas da tabela PEDIDOS
SELECT * FROM Pedidos;

#LIMIT: Utilizada para limitar o numero  de resultados do SELECT
SELECT * FROM pedidos LIMIT 150;

#LIMIT + OFFSET: Indica o inicio da leitura

SELECT *FROM pedidos LIMIT 100 OFFSET 45; 
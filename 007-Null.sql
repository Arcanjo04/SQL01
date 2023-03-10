# WHERE (IS NULL e IS NOT NULL)
#Nao confunda NULL com vazio('')

#Quais clientes nao cadastraram o celular

SELECT *
FROM clientes
WHERE Telefone = '';

SELECT *
FROM clientes
WHERE Telefone IS NULL OR Telefone = ''; 
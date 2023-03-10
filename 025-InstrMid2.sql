# 2. Utilize as funções INSTR e MID para retornar o ID de todos os e-mails da tabela de clientes

SELECT Email, INSTR(Email, '@') FROM clientes;

SELECT Email,
    MID(Email, 1, INSTR(Email, '@') - 1)
FROM clientes;

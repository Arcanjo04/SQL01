# Funções condicionais no MySQL
#CASE/WHEN: Aplicações com AND e OR

# Sintaxe (AND):

/*
CASE
	WHEN condição1 AND condição2 THEN resultado1
    ELSE resultado2
END;

# Sintaxe (OR):

/*
CASE
	WHEN condição1 OR condição2 THEN resultado1
    ELSE resultado2
END;
*/

-- Aplicando AND
# 1. A empresa esta com uma ação do dia das mães/dia dos pais. Como vai funcionar?

-- Caso o cliente seja do sexo Feminino E tenha filhos, receberá ofertas de dia da mães
-- Caso o cliente seja do sexo Masculino E tenhos filhos, receberá ofertas de dia dos pais
-- Caso contrário, não receberá oferta

-- As ofertas serão enviadas por e-maiil, por isso o setor responsavel precisa de uma tabela identificando facilmente quem receberá oferta:

-- 'Oferta dia das mães' --> Mulher com filhos
-- 'Oferta dia dos pais' --> Homem com filhos
-- 'Sem oferta'			 --> Clientes sem filhos

-- Você deve criar uma coluna extra identificando cada status. 

SELECT * ,
	CASE 
		WHEN Sexo = 'F' AND Qtd_Filhos > 0 THEN 'Oferta dia das mães'
		WHEN Sexo = 'M' AND Qtd_Filhos > 0 THEN 'Oferta dia dos pais'
        ELSE 'Sem oferta'
	END AS 'situação'
FROM clientes;






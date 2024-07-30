-- exercício 1

SELECT nome FROM funcionario LIMIT 4;

-- exercício 2:

SELECT * FROM funcionario WHERE cidade = "Valinhos" LIMIT 2;


-- exercício 3: 

SELECT nome, dataNasc FROM funcionario ORDER BY dataNasc ASC LIMIT 1;


-- exercício 4:

SELECT cidade, count(id_funcionario) FROM funcionario GROUP BY cidade LIMIT 2;


-- exercício 5: 

SELECT cargo, count(id_funcionario) FROM funcionario GROUP BY cargo LIMIT 2;


-- exercício 6:

SELECT nome, email FROM funcionario LIMIT 6;


-- exercício 7:

SELECT id_funcionario, MIN(salario) FROM funcionario WHERE salario IS NOT NULL LIMIT 1;


-- exercício 8:

SELECT nome, MAX(salario) FROM funcionario LIMIT 1;


-- exercício 9: 

SELECT nome, endereço FROM funcionario ORDER BY id_funcionario ASC LIMIT 1;


-- exercício 10: 

SELECT * FROM funcionario WHERE cidade = "São Paulo" LIMIT 1;


-- exercício 11:

SELECT * FROM funcionario WHERE YEAR(dataNasc) = 1988 LIMIT 2;
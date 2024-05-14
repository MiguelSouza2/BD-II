-- exercios operações matemáticas:

-- exercício 1:

SELECT nome, PI() +  salario FROM funcionario;

-- exercício 2: 

SELECT nome, SQRT(DAY(dataNasc)) FROM funcionario WHERE cidade LIKE 'Valinhos';

-- exercicio 3:

SELECT LOG(MONTH(dataNasc)) FROM funcionario WHERE YEAR(dataNasc) LIKE 1990;

-- exercício 4:

SELECT nome, DAY(dataNasc) FROM funcionario WHERE POWER(DAY(dataNasc), 3) >= 1000;

-- exercício 5:

SELECT nome, ROUND(salario * (115.5 / 100), 0) FROM funcionario WHERE ROUND(salario * (115.5 / 100), 0) > 1000;

-- exercício 6: 

SELECT nome, ABS(1500 - salario) FROM funcionario;

-- exercício 7:

SELECT id_funcionario, SQRT(id_funcionario) FROM funcionario WHERE MONTH(dataNasc) < 4 AND YEAR(dataNasc) <= 1989;

-- exercício 8:

SELECT nome, ROUND(salario * (35 / 100), 1) FROM funcionario;

-- exercício 9: 

SELECT LOG(id_funcionario) FROM funcionario;

-- exercício 10:

SELECT SQRT(id_funcionario) FROM funcionario;

-- exercícios 11:

SELECT POWER(id_funcionario, 2) FROM funcionario;

-- exrcício 12;

SELECT ABS(id_funcionario - 10) FROM funcionario ORDER BY ABS(id_funcionario - 10);
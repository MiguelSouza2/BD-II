-- exercícios funções string


-- exercício 1:

SELECT UPPER(nome) FROM funcionario;


-- exercício 2:

SELECT DISTINCT LENGTH(MONTHNAME(dataNasc)), MONTHNAME(dataNasc) FROM funcionario ORDER BY MONTH(dataNasc);


-- exercício 3:

SELECT REPLACE(nome, ' ', '-') FROM funcionario;


-- exercicio 4:

SELECT LEFT(nome, 3), RIGHT(nome, 3) FROM funcionario; 


-- exercício 5:

SELECT SQRT(LENGTH(nome)) FROM funcionario;


-- exercício 6:

SELECT DISTINCT SUBSTRING(cidade, 3, 5) FROM funcionario;


-- exercício 7:

SELECT REPLACE(nome, " ", "") FROM funcionario;


-- exercício 8:

SELECT ASCII(id_funcionario) FROM funcionario WHERE cidade LIKE 'Campinas';


-- exercício 9:

SELECT ASCII(nome) FROM funcionario WHERE DAY(dataNasc) > 20;


-- exercício 10:

SELECT RTRIM(LEFT(cidade, 4)) FROM funcionario;


-- exercício 11:

SELECT LTRIM(RIGHT(cidade, 6)) FROM funcionario;


-- exercício 12:

SELECT DISTINCT LOWER(cidade) FROM funcionario;


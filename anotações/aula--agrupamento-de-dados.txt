-- exercícios Agrupamento de dados

-- exercício 1

SELECT cargo, COUNT(*) AS QTDFuncionario FROM funcionario GROUP BY cargo;


-- exercício 2:

SELECT cargo, COUNT(*) AS QTDFuncionario FROM funcionario GROUP BY cargo HAVING cargo != 'null';


-- exercício 3: 

SELECT cargo, AVG(salario) AS Media_Salario_Cargo FROM funcionario GROUP BY cargo;


-- exercício 4:

SELECT cargo, SUM(salario), salario FROM funcionario GROUP BY cargo HAVING salario > 3000;


-- exercício 5:

SELECT cargo, SUM(salario), estado FROM funcionario GROUP BY cargo HAVING estado = 'SP';


-- exercício 6:

UPDATE funcionario SET ativo = 1 WHERE cidade IN ('Jundiaí', 'São Paulo');
SELECT ativo, cidade FROM funcionario;


-- exercício 7: 

UPDATE funcionario SET ativo = 0 WHERE cidade NOT IN ('Jundiaí', 'São Paulo');
SELECT ativo, cidade FROM funcionario;


-- exercício 8:

SELECT COUNT(ativo > 0) AS QTDFuncionario, ativo FROM funcionario GROUP BY ativo;


-- exercício 9:

SELECT cidade, SUM(salario) FROM funcionario GROUP BY cidade;


-- exercício 10: 

SELECT cidade, AVG(salario) FROM funcionario GROUP BY cidade HAVING AVG(salario) != 0;


-- exercício 11:

SELECT cargo, SUM(salario), AVG(salario) FROM funcionario GROUP BY cargo HAVING SUM(salario) < 5000;


-- exercício 12:

SELECT cidade, cargo, SUM(salario), AVG(salario) FROM funcionario GROUP BY cidade;

SELECT cidade, cargo, SUM(salario), AVG(salario) FROM funcionario GROUP BY cargo;
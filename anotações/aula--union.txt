-- lista exercicios UNION



-- exercicio 1:

SELECT  descr, preco FROM produto;


-- exercicio 2:

SELECT numPed, dataPed, frete FROM pedidos ORDER BY frete ASC LIMIT 5;


-- exercicio 3:

SELECT nome, cargo FROM clientes UNION SELECT nome, cargo FROM funcionario WHERE pais = "Reino Unido";


-- exercicio 4:

SELECT nome, sobrenome, cargo, salario FROM funcionario ORDER BY salario DESC LIMIT 3;


-- exercício 5:

SELECT nome, sobrenome FROM funcionario ORDER BY dataNasc ASC LIMIT 1;


-- exercicio 6:

SELECT * FROM pedidos ORDER BY dataPed DESC LIMIT 5;


-- exercicio 7:

SELECT * FROM pedidos WHERE YEAR(dataPed) = 1996 ORDER BY dataPed DESC LIMIT 6;


-- exercicio 8:

SELECT nome, cargo FROM funcionario WHERE pais = "EUA" UNION SELECT contato, cargo FROM fornecedor WHERE pais = "EUA";


-- exercicio 9:

SELECT nome, contato, pais FROM clientes WHERE pais = "Brasil" UNION SELECT nome, contato, pais FROM clientes WHERE pais = "Alemanha";


-- exercicio 10:

SELECT nome, contato, cidade FROM clientes WHERE cidade = "Madrid" UNION SELECT nome, contato, cidade FROM clientes WHERE cidade = "Paris";


-- exercicio 11:

SELECT descr, preco FROM produto WHERE codCategoria = 2 UNION SELECT descr, preco FROM produto WHERE codCategoria = 2;


-- exercicio 12:

SELECT nome, cargo, pais FROM funcionario WHERE pais = "Reino Unido" UNION SELECT contato, cargo, pais FROM fornecedor WHERE pais = "França";
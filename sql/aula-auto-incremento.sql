CREATE DATABASE compras;


-- exercício 1:


CREATE TABLE cargo(
	id_cargo INT AUTO_INCREMENT PRIMARY KEY,
	sigla CHAR(2) NOT NULL,
	nome VARCHAR(30) NULL UNIQUE
);


-- exercício 2: 

INSERT INTO cargo (sigla, nome) VALUES ('AI','Auxiliar de 
Informatica'), ('PC','Programador de Computador'), ('Ti', 'Técnico de 
Informatica');



-- exercício 3: 

CREATE TABLE cliente(
	id_cliente INT AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(50),
	endereço VARCHAR(50),
	cidade VARCHAR(50),
	estado CHAR(2)
);


-- exercício 3: 


CREATE TABLE produto(
	id_produto INT AUTO_INCREMENT PRIMARY KEY,
	descrição VARCHAR(50),
	preço DECIMAL(5,2),
	qtde INT
);

-- exercício 3: 

CREATE TABLE compra(
	id_compra INT AUTO_INCREMENT PRIMARY KEY,
	id_cliente INT,
	FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente),
	id_produto INT,
	FOREIGN KEY (id_produto) REFERENCES produto(id_produto),
	dataCompra DATE,
	qtde INT,
	valor DECIMAL(5,2)
);


-- exercício 4: 

ALTER TABLE cliente ADD sexo CHAR(1);


-- exercício 5: 

INSERT INTO cliente(nome, endereço, cidade, estado, sexo) VALUES(
	'Jose de Oliveira', 'Av. Jatobã, 34', 'Jundiaí', 'SP', 'F' 
), (
	'Maria da Silva', 'Av. Presidente, 12', 'Itatiba', 'MG', 'F' 
), (
	'Antonio Carlos', 'R. Florença, 5', 'Jundiaí', 'SP', 'M' 
), (
	'Luísa de Souza', 'Av. Jatobá, 45', 'Jundiaí', 'MG', 'F' 
), (
	'Carlos de Souza', 'Av. Jatobá, 45', 'Jundiaí', 'SP', 'M' 
);


-- exercício 6: 


INSERT INTO produto(descrição, preço, qtde) VALUES(
	'Lápis', 1.50, 20
), (
	'Borracha', 1.00, 15
), (
	'Caneta', 1.75, 35
), (
	'Compasso', 5.20, 10
), (
	'Régua', 0.75, 16
), (
	'Papel sulfite', 10.50, 5
);


-- exercício 7: 

INSERT INTO compra(id_cliente, id_produto, dataCompra, qtde, valor) VALUES(
	1, 1, 20101201, 2, 1.50
), (
	2, 1, 20101203, 5, 1.50
), (
	1, 3, 20110105, 13, 1.75
), (
	1, 4, 20110111, 1, 5.20
), (
	3, 2, 20110316, 7, 1.00
), (
	4, 5, 20110221, 10, 0.75
), (
	2, 6, 20110607, 2, 10.50
), (
	5, 3, 20110111, 2, 1.75
);

-- exercício 8:

UPDATE cliente
SET estado = 'SP';
-- sem a cláusula WHERE  porque estamos atualizando todas os clientes, sem exceção

-- exercício 9:

SELECT nome, estado FROM cliente;


-- exercício 10:

UPDATE cliente
SET sexo = 'M'
WHERE nome = 'Jose de Oliveira'


-- exercício 11:

SELECT descrição, preço FROM produto;


-- exercício 12:

DELETE FROM produto WHERE descrição = "Papel sulfite";


-- exercício 13: 

UPDATE produto
SET qtde = 15
WHERE descrição = "Lápis";


-- exercício 14:

SELECT descrição FROM produto LIMIT 2;


-- exercício 15:

SELECT SUM(valor) FROM compra WHERE id_produto LIKE 1;


-- exercício 16;

SELECT AVG(valor) FROM compra WHERE id_cliente = 1;


-- exercício 17:

SELECT nome FROM cliente WHERE cidade = 'Jundiái';


-- exercício 18:

SELECT id_cliente, UPPER(nome) FROM cliente WHERE nome LIKE '%Carlos%';


-- exercício 19:

SELECT descrição, preço, qtde FROM produto WHERE preço > 1 AND qtde >= 10;


-- exercício 20:

SELECT * FROM cliente ORDER BY nome;


-- exercício 21:
 
SELECT cidade, COUNT(*) FROM cliente GROUP BY cidade ORDER BY COUNT(*);
 

-- exercício 22:

SELECT SUM(preço), AVG(preço) FROM produto;


-- exercício 23:

SELECT preço FROM produto ORDER BY preço LIMIT 1;

SELECT preço FROM produto ORDER BY preço DESC LIMIT 1; 


-- exercício 24:

SELECT valor FROM compra WHERE YEAR(dataCompra) = 2010;


-- exercício 25:

SELECT * FROM compra WHERE YEAR(dataCompra) = 2011 ORDER BY dataCompra  LIMIT 1;


-- exercício 26:

SELECT nome FROM cliente WHERE sexo = 'F';


-- exercício 27:

SELECT * FROM compra WHERE DAY(dataCompra) = 11 OR DAY(dataCompra) = 07;


-- exercício 28:

SELECT descrição, preço, preço * 1.1 AS "taxado" FROM produto;


-- exercício 29:

SELECT id_cliente, SUM(qtde) FROM compra GROUP BY id_cliente;


-- exercício 30:

UPDATE produto
SET preço = (0.1 * preço) + preço
WHERE qtde < 15;


-- exercício 31:

SELECT id_produto, DAY(dataCompra) FROM compra;


-- exercício 32:

SELECT sexo, COUNT(id_cliente) FROM cliente GROUP BY sexo;


-- exercício 33:

DELETE FROM compra WHERE id_compra = 100;


-- exercício 34:

SELECT descrição, POW(qtde, 2) FROM produto WHERE qtde BETWEEN 15 AND 25;


-- exercício 35:

SELECT SQRT(qtde) FROM produto WHERE descrição LIKE 'C%';


-- exercício 36:

SELECT endereço, nome FROM cliente WHERE endereço LIKE "%Av. Jatobá%";


-- exercício 37:

SELECT nome, TRIM(LENGTH(nome)) FROM cliente;


-- exercício 38:

SELECT id_compra, valor, valor - (valor*0.2) FROM compra WHERE id_cliente = 2;


-- exercício 39:

SELECT YEAR(dataCompra), COUNT(*) FROM compra GROUP BY YEAR(dataCompra);


-- exercício 40:

SELECT id_compra, DAY(dataCompra), MONTHNAME(dataCompra),YEAR(dataCompra) FROM compra;


-- exercício 41:

SELECT id_produto, valor FROM compra WHERE valor > 7;


-- exercício 42:

DELETE FROM compra WHERE id_cliente BETWEEN 3 AND 5;


-- exercício 43: 

DROP TABLE produto;


-- exercício 44:

DROP DATABASE compras;
create database chave_estrangeira

create table funcionario (
	matrícula INTEGER(6) NOT NULL PRIMARY KEY,
	nome VARCHAR(50) NOT NULL,
	endereço VARCHAR(50) NOT NULL,
	cargo VARCHAR(20) NOT NULL
)

create table dependente (
	RG VARCHAR(12) NOT NULL PRIMARY KEY,
	nome VARCHAR(50) NOT NULL,
	parentesco VARCHAR(10) NOT NULL,
	matricula INTEGER (6) NOT NULL, 
	FOREIGN KEY(matricula) REFERENCES funcionario (matricula)
)

create table pessoa (
	id INTEGER(6) NOT NULL,
	código INTEGER(6) NOT NULL,
	nome VARCHAR(255) NOT NULL, 
	sobrenome VARCHAR(255) NOT NULL,
	PRIMARY KEY(id, código)
)

create table DepenFun (
	RG VARCHAR(12) NOT NULL,
	matricula INTEGER(6) NOT NULL,
	FOREIGN KEY(RG) REFERENCES dependente(RG),
	FOREIGN KEY(matricula) REFERENCES funcionario (matricula),
	PRIMARY KEY(RG, matricula)
)
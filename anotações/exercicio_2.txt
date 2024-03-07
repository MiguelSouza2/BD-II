create database locadora_de_autos

create table categoria (
	preço INTEGER(20) NOT NULL,
	descrição VARCHAR(30) NOT NULL,
	códigoCategoria INTEGER(20) NOT NULL PRIMARY KEY
)

create table usuário (
	nome VARCHAR(50) NOT NULL,
	email VARCHAR(40) NOT NULL,
	telefone INTEGER(20) NOT NULL,
	idade INTEGER NOT NULL,
	RG INTEGER NOT NULL,
	CNH VARCHAR(50) NOT NULL PRIMARY KEY
)

alter table usuário add rua VARCHAR(30) NOT NULL;
alter table usuário add número INTEGER(5) NOT NULL;
alter table usuário add bairro VARCHAR(40) NOT NULL;
alter table usuário add cidade VARCHAR(40) NOT NULL;

create table telefone (
	Numero_telefone INTEGER(15) NOT NULL,
	código_telefone INTEGER NOT NULL
)

alter table telefone drop código_telefone;
alter table telefone add código_telefone INTEGER NOT NULL PRIMARY KEY



create table carro (
	nº_chassi INTEGER NOT NULL PRIMARY KEY,
	placa VARCHAR(20) NOT NULL, 
	marca VARCHAR(30) NOT NULL,
	ano INTEGER(10) NOT NULL,
	cor VARCHAR(30) NOT NULL,
	FOREIGN KEY (códigoCategoria) REFERENCES categoria (códigoCategoria)
)


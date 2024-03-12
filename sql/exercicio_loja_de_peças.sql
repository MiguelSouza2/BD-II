create database Loja_de_peças;

create table cliente(
	CPF INTEGER(15) NOT NULL PRIMARY KEY,
	nome VARCHAR(200) NOT NULL,
	rua VARCHAR(50) NOT NULL,
	bairro VARCHAR(50) NOT NULL,
	cidade VARCHAR(50) NOT NULL,
	RG INTEGER(20) NOT NULL
)

create table email_cliente(
	codEmail INTEGER(10) NOT NULL PRIMARY KEY,
	email VARCHAR(30) NOT NULL,
	CPF INTEGER(15) NOT NULL,
	FOREIGN KEY (CPF) REFERENCES cliente(CPF)
)

create table pedido(
	notaFiscal INTEGER (15) NOT NULL PRIMARY KEY,
	preçoTotal DECIMAL(5,2) NOT NULL,
	dataPedido DATE NOT NULL,
	CPF INTEGER(15) NOT NULL,
	FOREIGN KEY (CPF) REFERENCES cliente(CPF)
)

create table mercadoria(
	código INTEGER(20) NOT NULL PRIMARY KEY,
	descrição VARCHAR(50) NOT NULL,
	preço DECIMAL(5,2) NOT NULL, 
	qtdEstoque INTEGER(5) NOT NULL
)

create table itensPedidos(
	notaFiscal INTEGER (15) NOT NULL,
	código INTEGER(20) NOT NULL,
	quantidade INTEGER(5) NOT NULL,
	codigoItem INTEGER(10),
	FOREIGN KEY (notaFiscal) REFERENCES pedido(notaFiscal),
	FOREIGN KEY (código) REFERENCES mercadoria(código)	
)

create table merc_fornecidas(
	código INTEGER(20) NOT NULL,
	códigoInterno INTEGER(15) NOT NULL,
	FOREIGN KEY (código) REFERENCES itensPedidos(código),
	FOREIGN KEY (códigoInterno) REFERENCES fornecedores(códigoInterno)
)

create table fornecedores(
	códigoInterno INTEGER(15) NOT NULL PRIMARY KEY,
	nome VARCHAR(50) NOT NULL,
	rua VARCHAR(50) NOT NULL,
	bairro VARCHAR(50) NOT NULL,
	cidade VARCHAR(50) NOT NULL
)

create telefoneFornecedores(
	codTelefone INTEGER(10) NOT NULL PRIMARY KEY,
	telefoneFornecedores VARCHAR(30) NOT NULL,
	codInterno INTEGER(15) NOT NULL,
	FOREIGN KEY(codInterno) REFERENCES fornecedores(codInterno)
)
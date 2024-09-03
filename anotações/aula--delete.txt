CREATE DATABASE teste;

CREATE TABLE beneficio(
	id_beneficio INTEGER AUTO_INCREMENT,
	nome VARCHAR(50) NOT NULL,
	PRIMARY KEY(id_beneficio)
);

CREATE TABLE instituição(
	id_instituição INT AUTO_INCREMENT,
	nome VARCHAR(100) NOT NULL,
	contato VARCHAR(50),
	telefone VARCHAR(15),
	id_beneficio INT,
	PRIMARY KEY(id_instituição),
	FOREIGN KEY(id_beneficio) REFERENCES beneficio(id_beneficio)
	
);

INSERT INTO beneficio(nome) VALUES('Cursos técnicos');

INSERT INTO instituição(nome, contato, telefone, id_beneficio) VALUES ('EtecVav', 'Helenice Antonio', '11-4527-3093', 1);

DELETE FROM beneficio WHERE id_beneficio = 1;

CREATE TABLE transporte(
	id_transporte INT AUTO_INCREMENT,
	empresa VARCHAR(100) NOT NULL, 
	percentualDesconto DECIMAL(5.2),
	id_beneficio INT,
	PRIMARY KEY(id_transporte),
	FOREIGN  KEY(id_beneficio) REFERENCES beneficio(id_beneficio) ON DELETE CASCADE
)

INSERT INTO beneficio(nome) VALUES('Transporte em grupo até 12 pessoas');

INSERT INTO transporte(empresa, percentualDesconto, id_beneficio) VALUES ('Van Vai-Volta', 15, 2);

DELETE FROM beneficio WHERE id_beneficio = 2;

CREATE TABLE PlanoDeSaude(
	id_plano_de_saude INT AUTO_INCREMENT,
	empresa VARCHAR(100) NOT NULL,
	telefone VARCHAR(15),
	id_beneficio INT,
	PRIMARY KEY(id_plano_de_saude),
	FOREIGN KEY (id_beneficio) REFERENCES beneficio(id_beneficio) ON DELETE SET NULL
);

INSERT INTO beneficio (nome) VALUES ('saude');

INSERT INTO PlanoDeSaude (empresa,telefone,id_beneficio) VALUES ('Unimed','11-3416-2121',5);

DELETE FROM beneficio WHERE id_beneficio = 5;

DROP TABLE beneficio;

DROP TABLE instituição;

DROP TABLE transporte;

DROP TABLE PlanoDeSaude;



-- exercícios:


-- exercício 1:

CREATE DATABASE empresa;

CREATE TABLE Fornecedor (
    codFor INT AUTO_INCREMENT PRIMARY KEY,
    empresa VARCHAR(40),
    contato VARCHAR(30),
    cargo VARCHAR(30),
    endereco VARCHAR(60),
    cidade VARCHAR(15),
    CEP VARCHAR(10),
    pais VARCHAR(15)
);


CREATE TABLE Categoria (
    codCategoria INT AUTO_INCREMENT PRIMARY KEY,
    descr VARCHAR(50)
);


CREATE TABLE Clientes (
    codCli CHAR(5) PRIMARY KEY,
    nome VARCHAR(40),
    contato VARCHAR(30),
    cargo VARCHAR(30),
    endereco VARCHAR(60),
    cidade VARCHAR(15),
    regiao VARCHAR(15),
    CEP VARCHAR(10),
    pais VARCHAR(15),
    telefone VARCHAR(24),
    celular VARCHAR(16)
);


CREATE TABLE Funcionario (
    codFun INT AUTO_INCREMENT PRIMARY KEY,
    sobrenome VARCHAR(20),
    nome VARCHAR(10),
    cargo VARCHAR(30),
    dataNasc DATE,
    endereco VARCHAR(60),
    cidade VARCHAR(15),
    CEP VARCHAR(10),
    pais VARCHAR(15),
    fone VARCHAR(24),
    salario DECIMAL(5,2)
);


CREATE TABLE Produto (
    codProduto INT AUTO_INCREMENT PRIMARY KEY,
    descr VARCHAR(40),
    codFor INT,
    codCategoria INT,
    preco DECIMAL(5,2),
    unidades CHAR(1),
    descontinuado CHAR(1),
    FOREIGN KEY (codFor) REFERENCES Fornecedor(codFor),
    FOREIGN KEY (codCategoria) REFERENCES Categoria(codCategoria)
);


CREATE TABLE Pedidos (
    numPed INT PRIMARY KEY,
    codCli CHAR(5),
    codFunc INT,
    dataPed DATE,
    dataEntrega DATE,
    frete DECIMAL(5,2),
    FOREIGN KEY (codCli) REFERENCES Clientes(codCli),
    FOREIGN KEY (codFunc) REFERENCES Funcionario(codFun)
);


CREATE TABLE DetalhesPed (
    numPed INT,
    codProduto INT,
    preco DECIMAL(5,2),
    qtde INT,
    desconto DECIMAL(5,2),
    PRIMARY KEY (numPed, codProduto),
    FOREIGN KEY (numPed) REFERENCES Pedidos(numPed),
    FOREIGN KEY (codProduto) REFERENCES Produto(codProduto)
);
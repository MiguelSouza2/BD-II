create database recursos_humanos;

create table funcionario(
	id_funcionario INTEGER NOT NULL PRIMARY KEY,
	nome VARCHAR(50) NULL,
	endereço VARCHAR(100) NULL,
	cidade VARCHAR(50) NULL,
	estado CHAR(2) NULL,
	email VARCHAR(50) NULL UNIQUE,
	dataNasc DATE NULL
);

alter table funcionario add salario DECIMAL(7,2), add cargos VARCHAR(2) NULL;

alter table funcionario drop column cargos;

alter table funcionario add cargo VARCHAR(2) NULL, add ativo bit;

INSERT INTO funcionario (
	id_funcionario, 
	nome,
	endereço,
	cidade,
	estado,
	email,
	dataNasc
) VALUES (
	1,
	'josé da Silva',
	'Av. São Paulo, 34',
	'Itu',
	'SP',
	'zesilva@yahoo.com.br',
	'1991-02-24'
);

INSERT INTO funcionario VALUES(
	2,
	'João Oliveira',
	'Rua da Saúde, 138',
	'Jundiaí',
	'SP',
	'jojo@hotmail.com',
	'1988-01-11',
	750,
	'TI',
	1
);

INSERT INTO funcionario VALUES(
	3, 
	'Ana Pimenta',
	'Rua da Saúde, 11',
	'Jundiaí',
	'SP',
	'pimentinha@hotmail.com',
	'1987-01-01',
	750,
	'TI',
	0
), (
	4,
	'Mario Lopes',
	'Rua Angelica, 143',
	'Jundiaí',
	'SP',
	'mlopes@hotmail.com',
	'1985-04-10',
	750,
	'TI',
	0
)


INSERT INTO funcionario(
	id_funcionario,
	nome, 
	endereço,
	cidade,
	estado,
	email,
	dataNasc
) VALUES(
	5,
	'Carlos Dias',
	'Av. Lapa, 121',
	'Itu',
	'SP',
	'carlao@gmail.com',
	'1990-03-31'
), (
	6,
	'Ana Maria da Cunha',
	'Av. São Paulo, 388',
	'Itu',
	'SP',
	'aninhacunha@gmail.com',
	'1988-04-12'
), (
	7,
	'Claudia Regina Martins',
	'Rua Holanda, 89',
	'Campinas',
	'SP',
	'cregina@gmall.com',
	'1988-12-04'
), (
	8,
	'Marcela Tatho',
	'Rua Bélgica, 43',
	'Campinas',
	'SP',
	'marctatho@gamil.com',
	'1987-11-09'
), (
	9,
	'Jorge Luis Rodrigues',
	'Av da Saudade, 1989',
	'São Paulo',
	'SP',
	'jorgeluis@yahoo.com.br',
	'1990-05-05'
), (
	10,
	'Ana Paula Camargo',
	'Rua Costa e Silva, 33',
	'Jundiaí',
	'SP',
	'apcamargo@gmail.com',
	'1991-06-30'
), (
	11,
	'Ivo Cunha',
	'Av. Raio de Luz, 100',
	'Campinas',
	'SP',
	'ivo@bol.com.br',
	'1987-04-11'
), (
	12,
	'Carlos Luis de Souza',
	'Rua Nicolau Coelho, 22',
	'São Paulo',
	'SP',
	'cls@bol.com.br',
	'1988-04-30'
);

create database hotel;

create table cliente(
	nome VARCHAR(250) NOT NULL,
	sexo BOOL NOT NULL,
	cidade VARCHAR(30) NOT NULL,
	bairro VARCHAR(30),
	rua VARCHAR(60) NOT NULL,
	RG INTEGER NOT NULL PRIMARY KEY,
	telefone INTEGER NOT NULL
)

create table quarto(
	RG INTEGER NOT NULL,
	FOREIGN KEY (RG) REFERENCES cliente(RG),
	
	descricao VARCHAR(250) NOT NULL,
	tipo VARCHAR(60) NOT NULL,
	andar INTEGER NOT NULL,
	preço DECIMAL(4,2) NOT NULL,
	
)

alter table quarto add numero INTEGER NOT NULL PRIMARY KEY

create table quartoReservado(
	numero INTEGER NOT NULL,
	codReservado INTEGER NOT NULL PRIMARY KEY,
	qtdDias INTEGER NOT NULL,
	dataReservada DATE NOT NULL,
	FOREIGN KEY (numero) REFERENCES quarto(numero)
)


create table quartoOcupado(
	RG INTEGER NOT NULL,
	numero INTEGER NOT NULL,
	FOREIGN KEY (numero) REFERENCES quarto(numero),
	codOcupado INTEGER NOT NULL PRIMARY KEY,
	hora TIME NOT NULL,
	dataEntrada DATE NOT NULL,
	dataSaida DATE NOT NULL
	
)

create table serviço(
	codServiço INTEGER PRIMARY KEY NOT NULL,
	descrição VARCHAR(250) NOT NULL,
	valor DECIMAL(4,2) NOT NULL,
	tipo VARCHAR(100) NOT NULL
)

create table pagamento(
	codServiço INTEGER NOT NULL,
	FOREIGN KEY (codServiço) REFERENCES serviço(codServiço),
	codOcupado INTEGER NOT NULL,
	FOREIGN KEY (codOcupado) REFERENCES quartoOcupado(codOcupado),
	valorTotal DECIMAL(4,2) NOT NULL
)


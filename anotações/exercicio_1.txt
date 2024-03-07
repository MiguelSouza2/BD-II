create database Dados_Concessionária

create table veículo(
	chassi VARCHAR(17) NOT NULL PRIMARY KEY,
	marca VARCHAR(10) NOT NULL,
	modelo VARCHAR(20) NOT NULL,
	ano_de_fabriação INTEGER NOT NULL,
	ano_de_modelo INTEGER NOT NULL,
	combustível VARCHAR(1) NOT NULL
);

alter table veículo add valor INTEGER NOT NULL;

alter table veículo add motor VARCHAR(20) NOT NULL;

alter table veículo drop motor;

drop table veículo;

drop database Dados_concessionária;
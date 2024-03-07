create database Biblioteca

create table livro (
	codigo INTEGER NOT NULL PRIMARY KEY,
	nome VARCHAR(40) NOT NULL,
	ano INTEGER NOT NULL
);

create table autor (
	CPF INTEGER NOT NULL PRIMARY KEY,
	nome VARCHAR(40) NOT NULL,
	endereço VARCHAR(70) NOT NULL,
	telefone INTEGER NOT NULL
);

create table edição (
	IBNS INTEGER NOT NULL PRIMARY KEY,
	num_paginas INTEGER NOT NULL,
	valor INTEGER NOT NULL
);

create table editora (
	CNPJ INTEGER NOT NULL PRIMARY KEY,
	nome VARCHAR(40) NOT NULL,
	endereço VARCHAR(70) NOT NULL,
	telefone INTEGER NOT NULL
);
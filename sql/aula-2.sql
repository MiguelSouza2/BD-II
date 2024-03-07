create database Miguel_isack;


create table tipo( 
	Código INTEGER NOT NULL PRIMARY KEY,
	Nome VARCHAR(30) NOT NULL
);


alter table tipo add obs VARCHAR(30) NOT NULL;

alter table tipo drop obs;

drop table teste;

drop table tipo;

drop database miguel_isack;
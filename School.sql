/*

exemplo prático DDL
drop database Escola;

*/

CREATE DATABASE if not exists Escola;
USE Escola;
CREATE TABLE if not exists Aluno ( 
 IdAluno int primary key,
 Nome  varchar (40) NOT NULL,
 Curso varchar (30) );
 
CREATE TABLE Disciplina (
IDDisc int primary Key,
Nome varchar (45) not null,
Carga int 
);

/* Outra forma de implementar a chave primária
CREATE TABLE Aluno (
IdAluno int,
Nome  varchar (40),
Curso varchar (30),
primary key (IdAluno, Nome) 
);*/



CREATE TABLE  if not exists Frequenta (
IdAluno int,
IDDisc int,
data date,  #suponha q o relacionamento tenha um atributo
primary key (IdAluno, IDDisc),
foreign key (IdAluno) references Aluno (IdAluno),
foreign key (IDDisc) references Disciplina (IDDisc)
);

CREATE TABLE Professor (
IdProf Int primary key,
Nome varchar (40),
Titulacao varchar (30)
);

desc Aluno;

ALTER TABLE Aluno ADD COLUMN IDProf int;

AlTER TABLE Aluno
ADD CONSTRAINT  CH_estrangeira 
foreign key (IDProf)  references Professor (IDProf);

show tables;
 


desc Aluno;
-- DROP DATABASE Escola;


-- DROP TABLE Frequenta;
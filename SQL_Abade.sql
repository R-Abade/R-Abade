-- drop database Escola;
create database if not exists Escola;
use Escola;

create table if not exists Aluno (
IdAluno int primary key,
Nome varchar (40) not null,
Curso varchar (30) );

create table if not exists Professor (
IdProfessor int primary key,
Nome varchar (40),
Titulacao varchar (30)
); 

describe Aluno;

create table if not exists Disciplina (
IDDisc int primary key,
Nome_Disciplina varchar (45) not null,
Carga_Horaria int
);

create table if not exists Frequencia (
IdAluno int,
IDDisc int, 
data date,
primary key (IdAluno, IDDisc),
foreign key (IdAluno) references Aluno (IdAluno),
foreign key (IDDisc) references Disciplina (IDDisc)
);

alter table Aluno add column IDProfessor int;
alter table Aluno
Add constraint CH_Estrangeira
foreign key (IDProfessor) references Professor (IDProfessor);

show tables;


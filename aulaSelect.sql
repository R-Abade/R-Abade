drop database Escola;
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
insert into Professor (IdProf, Nome, Titulacao ) 
values (1, 'Cris', 'Mestrado');

select * from professor;
insert into Professor  values 
(2, 'Gabi', 'Doutorando');
-- insert into Professor (IdProf, Nome, Titulacao ) values (3, 'Bruno', 'Doutorado');
insert into Professor (IdProf, Nome ) 
values (3, 'Bruno');

select * from professor;

insert into Professor (IdProf, Nome, Titulacao ) 
values (4, 'Carlos', 'Doutorado'),
 (5, 'Carlos Alberto', 'Doutorado'), 
 (6, 'André', 'Especialista');
 
 select * from professor;
 
desc  Aluno;
insert into Aluno values
 (1,'Asaphe', 'Informática', 1),
 (2, 'José', 'Eletrônica', 2);
  select * from Aluno;
 insert into Aluno values
 (3,'Maria', 'Administração', 5),
 (4, 'Aline', 'Eletrônica',3),
 (5,'Isabela', 'Administração', 1) ;
 
 select * from aluno;
 
 desc disciplina;
 
 insert into disciplina (IDDisc,Nome, Carga) 
 values (1, 'Banco de dados', 60),
 (2, 'Sistema Operacional', 60),
 (3, 'Projeto de sistemas', 60);

 insert into frequenta 
 (IdAluno, IDDisc, Data) 
 values (1, 1, '2021-1-10'),
 (2, 1, '2021-1-10'),(1, 2, '2021-1-08'), 
 (2, 2, '2021-1-9');
 
 
select * from Professor;

update Professor set titulacao = ' ';
 
 update Professor set titulacao = 'Mestrado'
 where IdProf = 2;
 
select * from Professor;

update Aluno set Curso = 'Informática' , IDProf = 1
where IdAluno = 2;
 
 select * from Aluno;

-- delete from professor where Idprof = 4;
-- delete from Aluno where IdAluno = 2;
 
-- delete from Aluno;
select * from Aluno;

select * from Professor;

select * from Disciplina;

select * from frequenta;

select * from Professor where titulacao = 'Doutorado';

select Nome, Titulacao from Professor where titulacao = 'Doutorado';

select Nome, Titulacao  as Titulação
from Professor 
where titulacao = 'Doutorado';

select Nome  as  Como_Chamar
from Aluno as A
Where A.IdProf = 1;


select Nome 
from Aluno
where IdProf = 1 AND Curso = 'Informática';




select Nome 
from Aluno
where IdProf = 1 OR Curso = 'Informática';

select IdProf, Nome from Professor where nome like 'ca%';


select IdProf, Nome from Professor where nome like '%a%';

select   nome from Professor where nome like '%o';


SELECT Nome, Curso FROM Aluno  WHERE IdProf IN (3, 5);

SELECT Nome, Curso 
FROM Aluno 
WHERE IdProf IN (select IdProf from Professor where titulacao = 'Doutorado');


Select * from frequenta;

desc frequenta;


SELECT * FROM frequenta WHERE data  BETWEEN '2021-01-07' AND '2021-01-09';

SELECT A.Nome as Nome_Aluno, P.Nome as Nome_Orientador
FROM Aluno as A, Professor as P
WHERE A.IdProf = P.IdProf;

select distinct A.Nome as Nome_Aluno, D.Nome as Nome_Disciplina
from Aluno as A, Frequenta as F, Disciplina as D
where A.IdAluno = F.IdAluno and F.IdDisc = D.IdDisc;

select A.Nome as Nome_Aluno, P.Nome as Nome_Orientador
from Aluno as A INNER JOIN Professor as P
on A.IdProf = P.IdProf;

select A.Nome as Nome_Aluno, D.Nome as Nome_Disciplina
from Aluno as A INNER JOIN frequenta as F
on A.IdAluno = F.IdAluno
inner join Disciplina as D on f.IdDisc = D.IdDisc;

select A.Nome as Nome_Aluno, F.IdDisc as Codigo_Disciplina 
from Aluno as A left outer join Frequenta as F 
on A.IdAluno = F.IdAluno;

select F.IdAluno as Codigo_Aluno, D.Nome as Nome_Disciplina 
from frequenta as F right outer join Disciplina as D 
on F.IdDisc = F.IdDisc;

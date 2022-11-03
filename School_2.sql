use Escola;
show tables;
desc Professor;

insert into Professor (IdProf, Nome, Titulacao)
values (1, 'Cris', 'Mestrado');

insert into Professor values (2, 'Novy', 'Doutorando');
insert into Professor (IdProf, Nome) values (3, 'Bruno');

insert into Professor (IdProf, Nome, Titulacao)
values (4, 'Carlos', 'Doutorado'),
(5, 'C.A', 'Doutorado'),
(6, 'André', 'Especialista');

insert into Aluno values
(1, 'Maria', 'Info', 1),
(2, 'Asaphe', 'Info', 2),
(3, 'Maria', 'Ele', 3),
(4, 'Aline', 'Ele', 4),
(5, 'Alonso', 'Info', 1),
(6, 'José', 'Info', 5);

select * from professor;

insert into disciplina (IDDisc, Nome, Carga)
values (1, 'Banco de Dados', 60),
(2, 'SO', 60),
(3, 'Projeto de Sistemas', 60);

desc frequencia;
insert into frequencia
(IdAluno, IDDisc, Data)
values (1, 1, '2021-1-10'),
(2, 1, '2021-1-10'),(1, 2, '2021-1-08'),
(2, 2, '2021-1-9');

select * from disciplina;
select * from frequencia;
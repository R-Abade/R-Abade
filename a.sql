/*drop database JogoSala;*/

create database if not exists JogoSala;
use JogoSala;

create table if not exists Usuario (
IdUser int primary key,
NomeUser varchar (10) not null,
SenhaUser varchar (10) not null,
EmailUser varchar (10) not null,
TipoUser int
);

create table if not exists Jogo (
IdJogo int primary key,
NomeJogo varchar(6)
);

create table if not exists UsuarioJogo (
foreign key (IdUser) references Usuario (IdUser),
foreign key (IdJogo) references Jogo (IdJogo),
IdUser int,
IdJogo int,
primary key (IdUser, IdJogo),
Erro varchar (10),
Tempo int,
Acerto int,
Ponto int
);

create table if not exists Turmas (
Turma varchar (3),
IdTurma int,
IdInstituicao int,
foreign key (IdInstituicao) references Instituicoes (IdInstituicao),
primary key (IdTurma, IdInstituicao)
);

create table if not exists JogoTurma (
IdJogo int,
IdTurma int,
foreign key (IdTurma) references Turmas (IdTurma),
foreign key (IdJogo) references Jogo (IdJogo),
primary key (IdTurma, IdJogo)
);
create table if not exists UsuarioTurma (
IdUser int,
IdTurma int,
foreign key (IdTurma) references Turmas (IdTurma),
foreign key (IdUser) references Usuario (IdUser),
primary key (IdTurma, IdUser)
);

create table if not exists Instituicoes (
IdInstituicao int primary key,
Instituicao varchar(5) not null
);

create table if not exists Regras (
IdRegra int,
IdJogo int,
foreign key (IdJogo) references Jogo (IdJogo),
primary key (IdRegra, IdJogo),
Regra varchar (10),
PontoFase1 varchar(5),
PontoFase2 varchar(5),
PontoFase3 varchar(5),
PontoFase4 varchar(5),
TempoJogo int
);

create table if not exists Alternativa (
IdAlternativa int,
IdJogo int,
foreign key (IdJogo) references Jogo (IdJogo),
primary key (IdAlternativa, IdJogo),
Pergunta varchar(10),
Alternativa1 varchar(1),
Alternativa2 varchar(1),
Alternativa3 varchar(1),
Alternativa4 varchar(1),
RespostaCerta varchar(1),
Etapa varchar(3),
Dica varchar (3)
);

-- drop view alunos_orientados;
-- drop view alunos_orientados2
use Escola;

create view Alunos_Orientados as 
select A.Nome as Nome_Aluno, P.Nome as Nome_Orientador, A.Curso as Curso_Aluno
from Aluno as A, Professor as P
where A.IdProf = P.IdProf;
select * from Alunos_Orientados;

create view alunos_orientados2 as
select p.nome as nome_orientador,
count(a.nome) as qtde_orientandos
from aluno as a, professor as p
where a.idprof = p.idprof
group by p.nome;
select * from alunos_orientados2;

select nome_orientador
from alunos_orientados2
where qtde_orientandos >= 2;


update alunos_orientados
set nome_orientador = 'Carlos Alberto'
where nome_orientador = 'Bruno';

select * from alunos_orientados;





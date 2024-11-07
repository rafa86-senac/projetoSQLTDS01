-- apagar o db
drop database dbEscola;
-- criar  o db 
create database dbEscola;
-- acesar o db
use dbEscola;
--  criar a tabela
create table tbCursos(
idCurso int,
nome varchar(45),
Professor_idProfessor int
);
-- criar a tabela
create table tbCursoAlunos(
Curso_idCurso int,
Aluno_idAluno int
);
-- criar a tabela 
create table tbProfessores(
idProfessor int,
Nome varchar(45),
Email varchar(45),
CPF int, 
Endereco varchar(45),
Numero int,
Complemento varchar(45),
Cidade varchar(45),
Estado varchar(45)
);
-- criar a tabela 
create table tbAlunos(
idAluno int,
Nome varchar(45),
Email varchar(45),
CPF int,
Endereco varchar(45),
Numero int,
Complemento varchar(45),
Cidade varchar(45),
Estado varchar(45)
);
-- visuazlizando estruturas das tabelas
desc tbCursos;
desc tbCursoAlunos;
desc tbProfessores;
  
-- apagar o db
drop database dbLivraria;
-- criar a db
create database dbLivraria;
-- acessar a db
use database dbLivraria;
-- criar a tabela
create table tbAlunos(
raALUNO int,
nome varchar(45),
email varchar(45),
telefone varchar(45)
);
-- criar a tabela
create table tbColabores(
id_colaborador int,
CPF varchar(45),
nome varchar(45),
email varchar(45),
cargo varchar(45)
);
-- criar a tabela
create table tbEmprestimos(
idEMPRESTIMO INT,
data_emprestimo date,
data_devolucao date,
livro_isbn varchar(45),
colaborador_CPF varchar(45),
COLABORADOR_id_colaborador int
);
-- criar a tabela 
create table tbLivros(
ISBN int,
nome varchar(45),
autor(45),
pagina varchar(45),
ALUNO_ra
);
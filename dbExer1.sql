-- apagar a db
drop database dbExcer1;
--  criar o db
create database dbExcer1;
-- acessar o db
use dbExcer1;
-- criar as tabelas
create table tbBairros(
id int(11),
nome varchar(100),
cidade_id int(11)
);
-- criar as tabelas 
create table tbCidades(
id int(11),
nome varchar(38),
estado_id int(11)
);
-- criar a tabela 
create table tbEstados(
id int(11),
sigle char(2)
);
-- criar a tabela 
create table tbEnderecos(
id bigint(20),
bairro_id int(11),
tipo_local varchar(15),
logradouro varchar(128),
numero int(11),
completo varchar(255)
);
-- criar a tabela
create table tbServicos(
id bigint(20),
endereco_id bigint(20),
solicitante_id bigint(20)
);
-- criar a tabela 
create table tbPontos(
id bigint(20),
endereco_id biginte(20)
);
-- criar a tabela
create table tbSolicitantes(
id bigint(20),
endereco_id bigint(20)
);
-- mostrar a tabele
desc tbBairros;
desc tbCidades;
desc tbEstados;
desc tbPontos;
desc tbServicos;
desc tbSolicitantes;
desc tbEnderecos;



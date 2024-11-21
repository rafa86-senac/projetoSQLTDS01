-- Apagar o banco de dados
drop database dbLoterica;
-- Criar o banco de dados
create database dbLoterica;
-- Acessar o banco de dados
use dbLoterica;
-- Criar as tabelas
create table tbFuncionarios(
codFunc int,
nome varchar(100),
email varchar(100),
telefone char(9),
cpf char(14),
idade int,salario decimal(9,2));
 
-- Inserindo registros nas tabelas
insert into tbFuncionarios(codFunc, nome, email, telefone, cpf,idade,salario)
    values (1, 'Paulo Antunes da silva', 'paulo.asilva@hotmail.com', '94521-7852', '253.254.258.77',52,2500);
 
insert into tbFuncionarios(codFunc,nome,email,telefone,cpf,idade,salario)
     values(2,'Regina Miranda','regina.miranda@gmail.com','97852-4175','852.365.274-88',45,3520);

insert into tbFuncionarios(codFunc,nome,email,telefone,cpf,idade,salario)
     values(3,'Mario de Andrade','mario.andrade@yhoo.com','97852-5214','369.417.587-88',25,1600);

insert into tbFuncionarios(nome,email)
     values('Ronaldo Rodrigues','ronaldo.rodrigues@gmail.com');
insert into tbFuncionarios(codFunc,email,cpf)
     values(5,'fernando.ccunha','524.652.574-88');



--visualizando as estrutura das tabelas
desc tbFuncionarios;
-- Visualizando os registros da tabela
select * from tbFuncionarios;

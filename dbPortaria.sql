drop database dbPortaria;

Create database dbPortaria;

use dbPortaria;

create table tbFuncionarios(
codFunc int not null auto_increment,
nome varchar(100) not null,
rg char(13) unique,
cpf(14) not null unique,
sexo char(1) default 'F' check(sexo in ('F','M')),
salario decimal (9,2) default 0 check(salario >=0),
primary key(codFunc));

desc tbFuncionarios;

insert into tbFuncionarios(nome,rg,cpf,sexo,salario)
	values('Matheu Melo','52.741.528-7','425-785-985-77','M',2500.45);

select * from tbFuncionarios;	
drop database dbportaria1;
 
create database dbportaria1;
 
use dbportaria1;
 
create table tbFuncionarios(
codFunc int not null auto_increment,
nome varchar(100) not null,
rg char(13) unique,
cpf char(14) not null unique,
sexo char(1) default 'F' check(sexo in('F','M')),
salario decimal(9,2) default 0 check(salario >=0),
primary key(codFunc));

create table tbClientes(
codCli int not null auto_increment,
nome varchar(50),
email varchar(50),
telCel char(10),
primary key(codCli));


create table tbFonecedores(
codForn int not null auto_increment,
nome varchar(100),
email varchar(100),
telefone char(100),
cnpj char(14) not null unique,
primary key(codForn));

create table tbUsuarios(
codUsu int not null auto_increment,
nome  varchar(50) not null,
senha varchar(20) not null,
codFunc int not null,
primary key(codUsu),
foreign key(codFunc)references tbFuncionarios(codFunc));

create table tbProdutos(
codProd int not null auto_increment,
descricao varchar(100)	not null,
lote char(12),
validade date,
dataEntrada date,
horaEntrada time,
quantidade int,
preco decimal(9,2),
codForn int not null,
primary key(codProd),
foreign key(codForn)references tbFonecedores(codForn));

create table tbVendas(
codVend int not null auto_increment,
valor decimal(9,2),
quantidade int,
dataVend date,
horaVend time,
codUsu int not null,
codProd int not null,
CodCli int not null,
primary key(codVend),
foreign key(codUsu)references tbUsuarios(codUsu),
foreign key(codProd)references tbProdutos(codProd),
foreign key(codCli)references tbClientes(codCli));


 
desc tbFuncionarios;
desc tbClientes;
desc tbFonecedores;
desc tbUsuarios;
desc tbProdutos;
desc tbVendas;
 
insert into tbFuncionarios(nome,rg,cpf,sexo,salario)
	values('Matheus Melo','52.741.528-7','425.785.985-77','M',2500.45);
insert into tbFuncionarios(nome,rg,cpf,sexo,salario)
	values('Leticia Borges','45.521.258-8','524.524.854-88','F',3500.45);
insert into tbFuncionarios(nome,rg,cpf,sexo,salario)
	values('Pedro Jose','58.524.789-8','574.857.854-88','M',2555.56);
insert into tbFuncionarios(nome,rg,cpf,sexo,salario)
	values('Larissa Rodrigues','85.854.742-8','524.854.879-91','F',4255.22);
 

insert into tbClientes(nome,email,telCel)
	values('Joana Antunes','joana.antunes@hotmail.com','95248-7859');
insert into tbClientes(nome,email,telCel)
values('Katia Assad','katia.assad@hotmail.com','98572-8625');
insert into tbClientes(nome,email,telCel)
values('Mauricio de Souza','mauricio.souza@hotmail.com','98574-9852');


insert into tbFonecedores(nome,email,telefone,cnpj)
values('Armarinho Fernandes','sac@afernandez.com.br','98523-6689','48.076.228/0001-91');
insert into tbFonecedores(nome,email,telefone,cnpj)
	values('hortifrut fernando','sac@hfernando.com.br','91472-5236','42.489.825/0001-61');
insert into tbFonecedores(nome,email,telefone,cnpj)
	values('assai atacadista','sac@aatacadista.com.br','92365-9512','06.057.223/0001-71');
insert into tbFonecedores(nome,email,telefone,cnpj)
	values('Tenda Atacado','sac@tatacado.com.br','93574-8536','01.157.555/0011-86');	
insert into tbFonecedores(nome,email,telefone,cnpj)
	values('loja renner','renner@loja.com.br','94523-8132','22.112.665/0009-82');		

insert into tbUsuarios(nome,senha,codFunc)
    values('pedro.jose','123456',3);
 insert into tbUsuarios(nome,senha,codFunc)
    values('leticia.borges','654321',2);
insert into tbUsuarios(nome,senha,codFunc)
    values('larissa.rodrigues','621453',4);
 insert into tbUsuarios(nome,senha,codFunc)
 	values('carlos.silva','667498',1);
    


insert into tbProdutos(descricao,lote,validade,dataEntrada,horaEntrada,quantidade,preco,codForn)
	values('Papel sulfite','524515','2030/11/19','2024/11/19','11:46:00',10,25.35,1);
insert into tbProdutos(descricao,lote,validade,dataEntrada,horaEntrada,quantidade,preco,codForn)
	values('lapis','569834','2030/11/19','2024/11/19','11:56:00',16,21.55,1);
insert into tbProdutos(descricao,lote,validade,dataEntrada,horaEntrada,quantidade,preco,codForn)
	values('maca','145264','2032/11/23','2024/11/21','08:16:23',8,20.67,2);
insert into tbProdutos(descricao,lote,validade,dataEntrada,horaEntrada,quantidade,preco,codForn)
	values('leite','227493','2033/06/12','2024/11/21','08:18:10',3,11.23,4);
insert into tbProdutos(descricao,lote,validade,dataEntrada,horaEntrada,quantidade,preco,codForn)
	values('tomate','112398','2031/11/21','2024/11/21','08:21:00',2,10.50,3);
insert into tbProdutos(descricao,lote,validade,dataEntrada,horaEntrada,quantidade,preco,codForn)
	values('azeitona','192498','2034/10/13','2024/11/21','08:23:00',4,12.50,3);
insert into tbProdutos(descricao,lote,validade,dataEntrada,horaEntrada,quantidade,preco,codForn)
	values('calca jeans','514525','2028/11/19','2024/11/19','08:46:00',1,55.35,5);	


insert into tbVendas(valor,quantidade,dataVend,horaVend,codUsu,codProd,codCli)
     values(21.55,5,'2024/11/21','08:30:05',2,2,2);	
insert into tbVendas(valor,quantidade,dataVend,horaVend,codUsu,codProd,codCli)
     values(25.35,4,'2024/11/21','08:38:55',3,4,3);	
insert into tbVendas(valor,quantidade,dataVend,horaVend,codUsu,codProd,codCli)
     values(40.34,8,'2024/11/21','08:45:05',1,3,3);	
insert into tbVendas(valor,quantidade,dataVend,horaVend,codUsu,codProd,codCli)
     values(89.56,12,'2024/11/21','08:54:12',2,7,1);	
insert into tbVendas(valor,quantidade,dataVend,horaVend,codUsu,codProd,codCli)
     values(78.00,10,'2024/11/21','09:00:00',2,6,1);	
     
     

select * from tbFuncionarios;
select * from tbClientes;
select * from tbFonecedores;
select * from tbUsuarios;
select * from tbProdutos;
select * from tbVendas;


-- inner join 

select func.nome as 'Nome do funcionario',usu.nome as 'Nome do usuario' from tbUsuarios as usu inner join tbFuncionarios as func on usu.codFunc = func.codFunc where func.codfunc = 2;

select func.nome as 'Nome do funcionario',usu.nome as 'Nome do usuario' from tbUsuarios as usu inner join tbFuncionarios as func on usu.codFunc = func.codFunc where func.nome like '%o%';
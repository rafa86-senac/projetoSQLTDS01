-- apagar o banco de dados
drop database dbzoologico;
-- criar o banco de dados 
create database dbzoologico;
-- acessar o banco de dados 
use dbzoologico;
-- criar as tabelas
create table tbAnimais(
Codigo int,
Tipo char(15),
Nome char(30),
Idade int,
Valor  decimal(10,2)
);

-- Inserindo registro na tabela 
insert into tbAnimais(Codigo,Tipo,Nome,Idade,Valor)
	values(1,'cachorro','Djudi',3,300.00);

insert into tbAnimais(Codigo,Tipo,Nome,Idade,Valor)
	values(2,'cachorro','sula',5,300.00);

insert into tbAnimais(Codigo,Tipo,Nome,Idade,Valor)
	values(3,'cachorro','Sarina',7,300.00);

insert into tbAnimais(Codigo,Tipo,Nome,Idade,Valor)
	values(4,'gato','Pipa',2,500.00);

insert into tbAnimais(Codigo,Tipo,Nome,Idade,Valor)
	values(5,'gato','Sarangue',2,500.00);

insert into tbAnimais(Codigo,Tipo,Nome,Idade,Valor)
	values(6,'gato','Clarences',1,500.00);

insert into tbAnimais(Codigo,Tipo,Nome,Idade,Valor)
	values(7,'coruja','Agnes',0,700.00);

insert into tbAnimais(Codigo,Tipo,Nome,Idade,Valor)
	values(8,'coruja','Arabela',1,700.00);

insert into tbAnimais(Codigo,Tipo,Nome,Idade,Valor)
	values(9,'sapo','Quash',1,100.00);

insert into tbAnimais(Codigo,Tipo,Nome,Idade,Valor)
	values(10,'peixe','Fish',0,100.00);	

-- visualizando as estruturas das tabelas
desc tbAnimais;
-- visualizando os registros da tabela
select * from tbAnimais;
  
-- resposta da pergunta 3:
--select * from tbAnimais;

-- resposta da pergunta 4;
-- select tipo,nome from tbAnimais;

-- resposta da pergunta 6;
-- select Tipo as 'Tipo de Animal', Nome as'Nome do Animal' from tbAnimais;

-- resposta da pergunta 7;
-- select Tipo as 'Tipo de Animal' , Nome as'Nome do Animal',Idade as'Tempo de vida' from tbAnimais;

-- resposta da pergunta 8;
-- select 'Animal Domestico' as 'Procedencia',tipo,nome,idade as 'Tempo de vida' from tbAnimais;

-- resposta da pergunta 9;
-- select tipo,nome,idade,valor as'valor original',valor * 1.10 as 'valor de venda' from tbAnimais;

-- resposta da pergunta 10;
-- select tipo,Valor as'valor original',valor * 1.10  as' valor de venda' from tbAnimais;
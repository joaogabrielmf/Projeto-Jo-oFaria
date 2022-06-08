-- Arquivo de apoio, caso você queira criar tabelas como as aqui criadas para a API funcionar.
-- Você precisa executar os comandos no banco de dados para criar as tabelas,
-- ter este arquivo aqui não significa que a tabela em seu BD estará como abaixo!

/* para workbench - local - desenvolvimento */
create database legaltec;

use legaltec;

create table clientes (idClientes int primary key auto_increment,
nomeCliente varchar (45),
budget varchar (45),
contato varchar (45));

create table processos (idProcessos int primary key auto_increment,
numProcesso varchar (45),
valorCausa varchar (45),
dataInicial date,
fk_clientes int,
foreign key (fk_clientes) references clientes (idClientes),
sentença date,
fk_processos int,
foreign key (fk_processos) references processos (idProcessos));

select numProcesso, valorCausa, dataInicial from processos;

insert into clientes values (null, 'SPTech', '10000', 'digital@sptech.school'),
(null, 'Anhembi Morumbi', '5000', 'anhembi@anhembimorumbi.com'),
(null, 'Mackenzie', '100000', 'contato@mackenzie.br');

insert into processos values (null, 'SP0102030405', '10000', '2000-01-19', '1', null, null),
(null, 'RJ0203040506', '2000', '1996-03-18', '2', null, null),
(null, 'RS0405060708', '10000', '1998-04-06', '1', null, '2');

select * from processos;
select * from clientes;

alter table clientes add column email varchar(45);
alter table clientes add column senha varchar(45);
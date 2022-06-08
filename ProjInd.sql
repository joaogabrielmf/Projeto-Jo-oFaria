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

select sentença, valorCausa, dataInicial from processos;

insert into clientes values (null, 'SPTech', '10000', 'digital@sptech.school'),
(null, 'Anhembi Morumbi', '5000', 'anhembi@anhembimorumbi.com'),
(null, 'Mackenzie', '100000', 'contato@mackenzie.br');

insert into processos values (null, 'SP0102030405', '10000', '2000-01-19', '1', null, null),
(null, 'RJ0203040506', '2000', '1996-03-18', '2', null, null),
(null, 'RS0405060708', '10000', '2010-04-06', '1', null, '2'),
(null, 'RS0405060708', '10000', '2012-04-06', '2', null, '1'),
(null, 'RS0405060708', '10000', '2014-04-06', '2', null, '1'),
(null, 'RS0405060708', '10000', '2015-04-06', '1', null, '1'),
(null, 'RS0405060708', '10000', '2018-04-06', '2', null, '2');

select * from processos;
select * from clientes;

alter table clientes add column email varchar(45);
alter table clientes add column senha varchar(45);

select valorCausa, dataInicial from processos
join clientes on idClientes = fk_clientes
where idClientes = '1';

update processos set valorCausa = '500' where idProcessos = '1';
update processos set valorCausa = '1000' where idProcessos = '2';
update processos set valorCausa = '1500' where idProcessos = '3';
update processos set valorCausa = '2000' where idProcessos = '4';
update processos set valorCausa = '5000' where idProcessos = '5';
update processos set valorCausa = '10000' where idProcessos = '6';
update processos set valorCausa = '15000' where idProcessos = '7';
update processos set valorCausa = '20000' where idProcessos = '8';
update processos set valorCausa = '25000' where idProcessos = '9';
update processos set valorCausa = '30000' where idProcessos = '10';

alter table processos drop column sentença;
alter table processos add column honorários varchar (45);

update processos set honorários = '20.930' where idProcessos = '1';
update processos set honorários = '37.180' where idProcessos = '2';
update processos set honorários = '49.530' where idProcessos = '3';
update processos set honorários = '56.810' where idProcessos = '4';
update processos set honorários = '82.160' where idProcessos = '5';
update processos set honorários = '121.160' where idProcessos = '6';
update processos set honorários = '153.660' where idProcessos = '7';
update processos set honorários = '173.160' where idProcessos = '8';
update processos set honorários = '192.660' where idProcessos = '9';
update processos set honorários = '153.660' where idProcessos = '10';

select numProcesso, valorCausa, DATE_FORMAT(dataInicial,'%Y-%m-%d') as dataInicial from processos
CREATE DATABASE Atividade2;

USE Atividade2;

-----------------------------

Tabelas:


create table cliente
(
Cod_cliente             int           not null,
Nom_cliente             varchar(100)  not null,
num_cpf_cnpj            varchar(20)   not null,
num_celular             varchar(20)   not null,
cod_categoria_cliente	int	      not null,
);

create table categoria_cliente
(
Cod_categoria_cliente   int           	not null,
Nom_categoria_cliente   varchar(100)  	not null
);

create table agencia    
(
num_agencia             int          	not null,
nom_agencia  		varchar(100)  	not_null
);

create table tipo_conta
(
cod_tipo_conta		int		not null,
des_tipo_conta		varchar(100)	not null
);

create table conta
(
num_conta 		int		not null, 
val_saldo		float(8,2)	not null,
cod_tipo_conta		int		not null,
cod_cliente		int		not null,
num_agencia		int		not null,
);

create table historico_movimentacao
(
cod_historico_movimentacao int		not null,
val_movimentacao	   int		not null,
dta_movimentacao	   datetime	not null,
num_conta		   int		not null,
cod_tipo_movimentacao	   int		not_null
);

create table tipo_movimentacao
(
cod_tipo_movimentacao	int		not null,
des_tipo_movimentacao	varchar(200)	not null,
val_taxa		float(8,2)	not null,
ind_debito_credito	chat(1)		not null
);

------------------------------------
Adicionar Pk's:
alter table Cliente add primary key (cod_cliente);
alter table tipo_conta add primary key (cod_tipo_conta);
alter table conta add primary key (num_conta);
alter table agencia add primary key (num_agencia);
alter table historico_movimentacao add primary key (cod_historico_movimentacao);
alter table tipo_movimentacao add primary key (cod_tipo_movimentacao);
alter table categoria_cliente add primary key (cod_categoria_cliente);

-------------------------------------
Adicionar FK's:

alter table cliente add constraint FK_cod_categoria_cliente foreign key 
(cod_categoria_cliente)
references categoria_cliente (Cod_categoria_cliente);


alter table conta add constraint FK_cod_tipo_conta foreign key 
(cod_tipo_conta)
references tipo_conta (Cod_tipo_conta);


alter table conta add constraint FK_cod_cliente foreign key 
(cod_cliente)
references cliente (Cod_cliente);


alter table conta add constraint FK_num_agencia foreign key 
(num_agencia)
references agencia (num_agencia);


alter table historico_movimentacao add constraint FK_num_conta foreign key 
(num_conta)
references conta (num_conta);

alter table historico_movimentacao add constraint FK_cod_tipo_movimentacao foreign key 
(cod_tipo_movimentacao)
references tipo_movimentacao (cod_tipo_movimentacao);
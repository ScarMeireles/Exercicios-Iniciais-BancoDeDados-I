drop database if exists db_palestra;
Create database db_palestra;
use db_palestra;
create table duracao
(
    cod_duracao int not null auto_increment primary key,
    dta_inicio datetime not null,
    dta_termino datetime not null
    );
create table email
(
    cod_email int not null AUTO_INCREMENT primary key,
    des_email varchar(50) not null
    );
create table endereco
(
    cod_endereco int not null AUTO_INCREMENT primary key,
    nom_cidade varchar(30) not null,
    nom_bairro varchar(40) not null,
    nom_rua varchar(40) not null,
    num_casa varchar(6) not null
    );
create table telefone
(
    cod_telefone int  not null AUTO_INCREMENT primary key,
    num_telefone char(11) not null
    );
create table palestrante
(
    cod_palestrante int  not null AUTO_INCREMENT primary key,
    nom_palestrante varchar(60) not null,
    nom_empresa varchar(60) not null,
    cod_email int not null,
    cod_telefone int not null,
    cod_endereco int not null,
    FOREIGN key (cod_email) REFERENCES email (cod_email),
    FOREIGN key (cod_telefone) REFERENCES telefone (cod_telefone),
    FOREIGN key	(cod_endereco) REFERENCES endereco (cod_endereco)
    );
create table palestra
(
    cod_palestra int not null AUTO_INCREMENT primary key,
    nom_titulo varchar(50) not null,
    cod_palestrante int not null,
    cod_duracao int not null,
    FOREIGN key (cod_palestrante) REFERENCES palestrante (cod_palestrante),
    FOREIGN key (cod_duracao) REFERENCES duracao (cod_duracao)
    );
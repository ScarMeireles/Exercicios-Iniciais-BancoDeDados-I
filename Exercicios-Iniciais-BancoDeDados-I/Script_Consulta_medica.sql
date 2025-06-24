drop DATABASE if EXISTS Consulta_medica;

create DATABASE Consulta_medica;
use Consulta_medica;

create table medico
(
    cod_medico int not null auto_increment primary key,
    nom_medico varchar(100) not null
    );

create table especialidade
(
    cod_especialidade 	SMALLINT not null auto_increment primary key,
    nom_especialidade 	varchar(100) not null
    );
create table medico_especialidade
(
    cod_medico_especialidade int not null auto_increment PRIMARY key,
    cod_medico int not null,
    cod_especialidade SMALLINT not null,
    FOREIGN key (cod_medico) references medico (cod_medico),
    foreign key (cod_especialidade) references especialidade (cod_especialidade)
    );

create table paciente
(
    cod_paciente int not null auto_increment primary key,
    nom_paciente varchar(100)
    );


create table consulta
(
    cod_consulta int not null AUTO_INCREMENT PRIMARY key,
    dta_consulta datetime not null,
    val_consulta decimal(20,2) not null,
    cod_medico int not null,
    cod_paciente int not null,
    foreign key (cod_medico) references medico (Cod_medico),
    foreign key (Cod_paciente) REFERENCES paciente (Cod_paciente)
    );
    
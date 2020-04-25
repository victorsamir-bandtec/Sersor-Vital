create database projeto;
use projeto;
create table usuario(
idUsuario int primary key auto_increment,
login varchar(35),
senha varchar(30),
Nome varchar(35),
tel_fixo int,    -- nao é obrigatorio
tel_cel int,
hospital int,
foreign key (hospital) references Hospitais(idHospital),
CNPJ int
);
create table Hospitais(
idHospital int primary key auto_increment,
nome_do_hospital varchar(30),
endereço varchar(40),
sensores int,
foreign key (sensores) references Sensores(idSensor)
);
create table Sensores(
idSensor int primary key,
lugar varchar(30)
);
create table Registro(
idRegistro int primary key auto_increment,
Temperatura float,
umidade float,
fkSensor int,
foreign key (fkSensor) references sensores(idSensor)
);
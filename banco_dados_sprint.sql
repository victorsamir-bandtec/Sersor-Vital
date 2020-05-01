create database Svital;
use Svital;

create table Usuario (
idUsuario int primary key auto_increment,
Login varchar (50),
Nome varchar (50),
CPF char (11), 
Senha varchar (50),
Tel_Fixo char (13),
Tel_cel char (13)
); 

insert into usuario values 
(null, 'rapha@hotmail.com', 'Raphael Cassio', '48667788813', 'rapha123', '551136789018', '5511987681323'),
(null, 'samir@hotmail.com', 'Victor Samir', '34557790901', 'samir123', '551146778989', '5511987681344'),
(null, 'joao@hotmail.com', 'João Victor', '48667788800', 'joao123', '551136789031', '5511987681356'),
(null, 'marcelo@hotmail.com', 'Marcelo Whitehead', '48667788867', 'marcelo123', '551136789099', '5511987681300');

select * from usuario;
drop table hospital;

create table Hospital (
fkUsuario int,
foreign key (fkUsuario) references Usuario(idUsuario),
idHospital int primary key auto_increment,
Nome_do_Hospital varchar (60),
Telefone char (13),
CNPJ char (14),
Rua varchar (40),
Número int,
Bairro varchar (40),
Cidade varchar (40)
)auto_increment = 10;

insert into hospital values 
(1,null, 'São Luis', '551136557788','12345678911224', 'Benedito', 123, 'Maua', 'São Caetano'),
(2,null, 'Santa Paula', '551136557799','12345678911234', 'Hadock Lobo', 111, 'Nova gerty', 'São Bernado'),
(3,null, 'Pronto Socorro', '551136557744','12345678911225', 'Lobos', 12, 'Santana', 'São Paulo'),
(4,null, 'Santa Ana', '551136557733','12345678911217', 'Capivari', 20, 'Vila Yara', 'Osasco');

drop table Sensores;
create table Sensores (
fkHospital int,
foreign key (fkHospital) references Hospital(idHospital),
idSensor int primary key auto_increment,
Ala varchar (30)
) auto_increment=1000;

insert into Sensores values 
(14, null, 'UTI'),
(15, null, 'Hall'),
(16, null, 'Sala de cirurgia'),
(17, null, 'Consultório');

drop table registro;

create table Registro (
fkSensor int,
foreign key (fkSensor) references Sensores(idSensor),
idRegistro int primary key auto_increment,
Temperatura decimal (3,1), 
Umidade decimal (3,1),
Data_registro date,
Horario time
) auto_increment = 100;

drop table registro;
insert into Registro values 
(1000, null, 21.5, 18.7, '2020-08-10', '19:00'), 
(1001, null, 23.5, 20.1, '2020-08-10', '19:15'),
(1002, null, 20.0, 19.0, '2020-08-10', '19:30'), 
(1003, null, 22.3, 18.4, '2020-08-10', '19:45'); 


select * from Usuario,Hospital where fkUsuario=idUsuario; 
select * from Sensores,Hospital where fkHospital=idHospital;
select * from Registro,Sensores where fkSensor=idSensor;

select* from sensores;

alter table Sensores add column fkHospital int;
alter table  Sensores add foreign key (fkHospital) references Hospital(idHospital);

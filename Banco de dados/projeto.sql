Create database Hospitais;
use Hospitais;
Create Table Empresa (idEmpresa int primary key auto_increment,
Nome varchar(60),
Email varchar(30),
Telefone varchar(14),
Senha varchar(18),
CNPJ int
);

Create Table Usuario(idUsuario int primary key auto_increment,
Nome varchar(60),
Senha varchar(18),
Email varchar(30)
);

Create Table Sensores(idSensores int primary key auto_increment,
Temperatura varchar(5),
Humidade varchar(8),
Registro datetime
);





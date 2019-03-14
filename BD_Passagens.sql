create database bdpoo2;
use bdpoo2;
create table usuario (
idUsuario int not null auto_increment,
nome varchar(50),
cargo varchar(20),
login varchar(20),
senha varchar(8),
email varchar(50),
primary key(idUsuario)
);

create table Veiculo (
    idVeiculo int not null auto_increment,
    numero varchar (10),
	placa varchar (10),
	motorista varchar(25),
	modelo varchar(20),
	dataCompra date,
	qtdPoltronas int,
    primary key (idVeiculo)
);
create table Passagem (
	idPassagem int not null auto_increment,
	idVeiculo int not null,
	poltrona int,
	dataSaida date,
    dataVolta date,
	horaSaida varchar (10),
	cidadeOrigem varchar(25), 
	cidadeDestino varchar(25),
	valorPassagem Decimal,
    primary key (idPassagem),
    foreign key (cidadeOrigem) references Cidade,
    foreign key (cidadeDestino) references Cidade,
    foreign key (idVeiculo) references Veiculo
    );
    
create table Cidade (
    id_TabelaCidade int not null auto_increment,
    nomeCidade varchar(25),
	idCidade varchar(4) not null,
	uf varchar (2),
    cidadeOrigem varchar(25),
    cidadeDestino varchar(25),
    primary key (id_TabelaCidade))
;



create database BD_Hotel0730;

use BD_Hotel0730;

create table Tab_Hospede
( CodigoHospede int NOT NULL AUTO_INCREMENT, 
NomeHospede 	VARCHAR (30),
EnderecoHospede VARCHAR (20),
CidadeHospede 	VARCHAR (20),
EstadoHospede 	VARCHAR (20),
TelefoneHospede VARCHAR (20),
CPFHospede 	    VARCHAR (20),
PRIMARY KEY (CodigoHospede));

insert into Tab_Hospede
(NomeHospede, EnderecoHospede, CidadeHospede, EstadoHospede, TelefoneHospede, CPFHospede) values ("Milena", "Rua Governador Adhemar de Barros", "Sales Oliveira", "SP", "3852-2693", "123456789");

insert into Tab_Hospede
(NomeHospede, EnderecoHospede, CidadeHospede, EstadoHospede, TelefoneHospede, CPFHospede) values ("Rafael", "Gruta", "Orlândia", "SP", "3826-5236", "156987430");

insert into Tab_Hospede
(NomeHospede, EnderecoHospede, CidadeHospede, EstadoHospede, TelefoneHospede, CPFHospede) values ("Maria Gabriela", "Rua 20", "Orlândia", "SP", "3826-4126", "159876423");

insert into Tab_Hospede
(NomeHospede, EnderecoHospede, CidadeHospede, EstadoHospede, TelefoneHospede, CPFHospede) values ("Vinícius Germano", "Rua 15", "Orlândia", "SP", "3826-1563", "126870123");

insert into Tab_Hospede
(NomeHospede, EnderecoHospede, CidadeHospede, EstadoHospede, TelefoneHospede, CPFHospede) values ("Vinícius Figueiredo", "Jardim Paraíso", "Sales Oliveira", "SP", "3852-5664", "226001371");

select * from Tab_Hospede;

select NomeHospede from Tab_Hospede;

select NomeHospede, CPFHospede from Tab_Hospede;

select * from Tab_Hospede where NomeHospede = "Milena";

select * from Tab_Hospede where NomeHospede = "Maria Gabriela";

select * from Tab_Hospede where NomeHospede LIKE 'R%';

select * from Tab_Hospede where NomeHospede LIKE '%';

 
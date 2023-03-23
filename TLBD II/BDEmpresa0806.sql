create database BDEmpresa0806;
use BDEmpresa0806;

create table tabfun ( Codigofun int NOT NULL AUTO_INCREMENT,
nomefun 			VARCHAR (30),
enderecofun 		VARCHAR (20),
cidadefun			VARCHAR (20),
funcaofun 			VARCHAR (15),
datanascimentofun 	DATE,
dataadmissaofun     DATE,
numdependentefun 	INT,
salariobrutofun     DOUBLE,
PRIMARY KEY (Codigofun));

insert into tabfun ( nomefun, enderecofun, cidadefun, funcaofun, datanascimentofun, dataadmissaofun, numdependentefun, salariobrutofun) 
values ("Kawany", "Avenida 10","Orlândia","gernete", "2005/01/01","2014/01/01",2,5000);

insert into tabfun ( nomefun, enderecofun, cidadefun, funcaofun, datanascimentofun, dataadmissaofun, numdependentefun, salariobrutofun) 
values ("Eu", "Rua 10", "São Pedrim", "gerente", "2007/04/20","2015/05/02",5,7000);

insert into tabfun ( nomefun, enderecofun, cidadefun, funcaofun, datanascimentofun, dataadmissaofun, numdependentefun, salariobrutofun) 
values ("Sou", "Rua 09", "São Paulo", "faxineiro", "2009/03/22","2017/08/10",6,8000);

insert into tabfun ( nomefun, enderecofun, cidadefun, funcaofun, datanascimentofun, dataadmissaofun, numdependentefun, salariobrutofun) 
values ("Trouxa", "Avenida A", "Ribeirão Preto", "puta", "2013/10/30","2018/10/25",8,9000);

insert into tabfun ( nomefun, enderecofun, cidadefun, funcaofun, datanascimentofun, dataadmissaofun, numdependentefun, salariobrutofun) 
values ("Milena Candida", "Avenida D", "Sales Oliveira", "doida", "2002/11/27","2007/12/25",9,1000);

insert into tabfun ( nomefun, enderecofun, cidadefun, funcaofun, datanascimentofun, dataadmissaofun, numdependentefun, salariobrutofun) 
values ("Maju", "Avenida T", "Orlândia", "presidente", "2001/11/10","2007/12/25",1,10000);

select * from tabfun;

SELECT salariobrutofun,
	CASE WHEN salariobrutofun<=5000 THEN 'ganha pouco'
		ELSE 'ganha muito'
	END AS caso 
FROM tabfun 


SELECT salariobrutofun,
	CASE WHEN salariobrutofun<=5000 THEN salariobrutofun*0.1+salariobrutofun
		ELSE salariobrutofun=salariobrutofun*0.05+salariobrutofun
	END AS caso 
FROM tabfun 


SELECT nomefun,
	CASE WHEN nomefun="Eu" THEN "lindo gostoso"
		ELSE nomefun
	END AS caso 
FROM tabfun 

SELECT cidadefun,
	CASE WHEN cidadefun="Orlândia" THEN "Nuporanga"
		ELSE cidadefun
	END AS caso 
FROM tabfun 

SELECT numdependentefun,
	CASE WHEN numdependentefun>2 THEN salariobrutofun+ salariobrutofun*0.5
		ELSE numdependentefun
	END AS caso 
FROM tabfun 

SELECT nomefun,
  CASE nomefun
	when "vinicius" then 'RM1234'
	when "milena" then 'RM4567'
	when "rafael" then 'RM1020'
    else 'RM0000'

end as nomefun
FROM tabfun


update tabfun set funcaofun = 'gerente2' where Codigofun=1;
update tabfun set cidadefun = 'Las Vegas' where Codigofun=2;
update tabfun set enderecofun = 'Avenida X , 100' where Codigofun=3;
update tabfun set nomefun = 'Fazendeira' where Codigofun=5;

update tabfun set salariobrutofun = "20000" where Codigofun=1;

update tabfun set cidadefun= "Cândia" where cidadefun= "Orlândia";

update tabfun set salariobrutofun = salariobrutofun * 1.1 where salariobrutofun>10000;

update tabfun set salariobrutofun = salariobrutofun * 1.1 where funcaofun="presidente";

update tabfun set salariobrutofun = salariobrutofun * 1.1 where funcaofun="presidente" or funcaofun="doida";





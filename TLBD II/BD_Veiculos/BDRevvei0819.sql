create database BDRevvei0819;
use BDRevvei0819;

create table tabVei 
( Codigovei int NOT NULL AUTO_INCREMENT,
Renavamvei                 VARCHAR (15),
Marcavei                   VARCHAR (15),
Chassivei                  VARCHAR (15),
Anovei                     VARCHAR (4),
ModeloVei                  VARCHAR (4),
Precovei                   DOUBLE,
PRIMARY KEY (Codigovei));

insert into tabVei ( 
Renavamvei,Marcavei,Chassivei,Anovei,ModeloVei,Precovei)
values ("123456789","Ford", "987654FO", "2018","2019",400000);

insert into tabVei ( 
Renavamvei,Marcavei,Chassivei,Anovei,ModeloVei,Precovei)
values ("987456256","Fiat", "123456FI", "2019","2019",500000);

insert into tabVei ( 
Renavamvei,Marcavei,Chassivei,Anovei,ModeloVei,Precovei)
values ("456789256","Audi", "654782AU", "2017","2017",1000000);

insert into tabVei ( 
Renavamvei,Marcavei,Chassivei,Anovei,ModeloVei,Precovei)
values ("456789256","Volkswagen", "852687WO", "2019","2020",700000);

insert into tabVei ( 
Renavamvei,Marcavei,Chassivei,Anovei,ModeloVei,Precovei)
values ("693258741","Honda", "123658HO", "2019","2020",1200000);

describe tabVei;


select * from tabVei;
select Precovei,
      CASE WHEN Precovei>0  THEN Precovei*0.10 
	     ELSE Precovei*0
     END AS caso
FROM tabVei


select Precovei,
      CASE WHEN Precovei>0  THEN Precovei*0.05  
	     ELSE Precovei = 10000000
     END AS caso
FROM tabVei


select Marcavei,
      CASE WHEN Marcavei = "Audi"  THEN 'IMPORTADO'
	  WHEN Marcavei = "Ford"  THEN 'Nacional'
	     ELSE Marcavei
     END AS caso
FROM tabVei


/* SELECT VÁRIOS WHEN */
SELECT NomeFunc,
CASE NomeFunc 
     when "Vinicius" then 'RM1234'
	 when "Ronaldo" then 'RM1235'
	 when "Otavio" then 'RM1236'
	 ELSE "RM0000"
	 
END AS NomeFunc
FROM tabFunc
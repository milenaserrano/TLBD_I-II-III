<--PRONTO PARA COPIAR E COLAR:-->

Show databases;
create database BD_Musicas;
use BD_Musicas

create table Tab_CDS ( 
Cod_CD int AUTO_INCREMENT PRIMARY KEY,
Titulo_CD varchar(50) NOT NULL,
Cantor_CD varchar(50) NOT NULL,
Genero_CD varchar(30) NOT NULL,
Ano_CD YEAR NOT NULL,                         
Gravadora_CD varchar(30) NOT NULL
);  

insert into Tab_CDS (Titulo_CD, Cantor_CD, Genero_CD, Ano_CD, Gravadora_CD)
Values ("Criança Feliz", "Ronivaldo", "Infantil", "2014", "Sony"),
       ("O Menino e o Pardal", "Juraci", "POP", "2015", "Universal"),
	   ("Divise", "Ed Sheeran", "Juvenil", "2018", "Asylum Records UK"),
	   ("Perfect", "Shawn Mendes", "Juvenil", "2017", "Island Records"),
	   ("Born To Die", "Lana del Rey", "Romance", "2018", "Universal"),
	   ("Unstoppable", "Sia", "Adulto", "2016", "Asylum Records UK"),
	   ("21", "Adele", "Romance", "2016", "Universal"),
	   ("Garden", "Dua Lipa", "Romance", "2017", "Island Records"),
	   ("Purpose", "Justin Bieber", "POP", "2017", "Universal");
	   
	   Select * from tab_cds;
	   
	   Select titulo_cd, cantor_cd from tab_cds;
	   
	   select titulo_cd, cantor_cd from tab_cds order by titulo_cd;
	   
	   select titulo_cd, cantor_cd, genero_cd from tab_cds
Where gravadora_cd = "Universal" order by titulo_cd;

       select * from tab_cds
 where genero_cd="POP" order by titulo_cd;
 
       select * from tab_cds 
where gravadora_cd="Sony" order by titulo_cd;

select * from tab_cds
where  genero_cd="Juvenil" or genero_cd="Infantil";

select * from tab_cds
where ano_cd="2014" order by titulo_cd;

select * from tab_cds
where genero_cd="Romance" and gravadora_cd="Universal" order by titulo_cd;

select * from tab_cds
where ano_cd between 2014 and 2018 order by ano_cd;

select titulo_cd, cantor_cd, ano_cd from tab_cds from tab_cds order by cantor_cd;

select * from tab_cds
where gravadora_cd="Sony" and ano_cd="2014" order by titulo_cd;

select * from tab_cds
where genero_cd="Romance" and ano_cd between 2001 and 2018 order by titulo_cd;

select * from tab_cds
where gravadora_cd="Universal" and ano_cd="2015" order by cantor_cd;



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
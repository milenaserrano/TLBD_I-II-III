Show databases;

create database BD_Musicas; <---LINHA DE COMANDO PARA CRIAR BANCO DE DADOS-->

use BD_Musicas <-- Aponta onde vai utilizar (qual...) SÓ SE FAZ UMA VEZ ATÉ DESLIGAR O COMP-->


create table Tab_CDS ( <---Abrir o parênteses para começar uma tabela--->
Cod_CD int AUTO_INCREMENT PRIMARY KEY,
Titulo_CD varchar(50) NOT NULL,
Cantor_CD varchar(50) NOT NULL,
Genero_CD varchar(30) NOT NULL,
Ano_CD YEAR NOT NULL,                         <--Lembrar q tudo criado aq, vai ser copiado e colado lá no app no SQL-->
Gravadora_CD varchar(30) NOT NULL
);  <--Fechar o parênteses aq-->
 
insert into Tab_CDS (Titulo_CD, Cantor_CD, Genero_CD, Ano_CD, Gravadora_CD)
Values ("Criança Feliz", "Ronivaldo", "Infantil", "2014", "Sony"),
       ("O Menino e o Pardal", "Juraci", "Juvenil", "2015", "Universal"),
	   ("Divise", "Ed Sheeran", "Juvenil", "2018", "Asylum Records UK"),
	   ("Perfect", "Shawn Mendes", "Juvenil", "2017", "Island Records"),                   <--OBS: APAGAR A TABELA E COMEÇAR DENOVO: > 
	                                                                                                  drop table tab_cds;
	   ("Born To Die", "Lana del Rey", "Romance", "2018", "Universal"),
	   ("Unstoppable", "Sia", "Adulto", "2016", "Asylum Records UK"),
	   ("21", "Adele", "Romance", "2016", "Universal"),
	   ("Garden", "Dua Lipa", "Romance", "2017", "Island Records"),
	   ("Purpose", "Justin Bieber", "Adulto", "2017", "Universal");
	   
--1 SELECIONAR TODOS (OS REGISTROS) DA TAB_CDS:---
Select * from tab_cds;
	   
--2 Selecionar de todos os registros, o título do CD e Cantor:--
Select titulo_cd, cantor_cd from tab_cds;

--3 Selecionar de todos os registros, o título do CD e do cantor ordenando pelo título do CD:--
select titulo_cd, cantor_cd from tab_cds order by titulo_cd;

--4 Selecionar o título, cantor e gênero de todos os CDs da gravadora Universal, Ordenar pelo título do cd:--
select titulo_cd, cantor_cd, genero_cd from tab_cds
Where gravadora_cd = "Universal" order by titulo_cd;

--5 Consulta q mosttre todos os cds do gênero POP
select  titulo_cd
where genero_cd="POP" order by titulo_cd;

--6 selecionar todos os cds da tabela cds onde gravadora do cd=Sony, ordenar pelo título do CD.
select * from tab_cds 
where gravadora_cd="Sony" order by titulo_cd;

-- 7 Selecione todos da tabela cds onde o gênero é sertanejo ou infantil
select * from tab_cds
where  genero_cd="Juvenil" or genero_cd="Infantil";

--8 Selecione todos da tabela cds onde o ano dos cds é 2014
select * from tab_cds
where ano_cd="2014" order by titulo_cd;

--9 Selecione todos da tabela cds onde o genero seja romance E que a gravadora seja universal. ordenar pelo titulo do cd.
select * from tab_cds
where genero_cd ="Romance" and gravadora_cd="Universal" order by titulo_cd;

--10 Selecione todos da tabela cds lançados no período de 2009 e 2011. ordenar pelo ano do cd
select * from tab_cds
where ano_cd between 2014 and 2018 order by ano_cd;

--11 Selecione todos da tabela cds que mostre: titulo_cd, cantor e ano, ordenar pelo cantor.
select titulo_cd, cantor_cd, ano_cd from tab_cds from tab_cds order by cantor_cd;

--12 Selecione todos da tabela cds q mostre todos os cds da gravadora sony e q foram lançados em 2014. ordenar pelo título do cd.
select * from tab_cds
where gravadora_cd="Sony" and ano_cd="2014" order by titulo_cd;

--13 Selecione todos da tabela cds q mostre todos os cds de genero romance q foram lançados no período de 2001 a 2018. ordenar pelo titulo do cd
select * from tab_cds
where genero_cd="Romance" and ano_cd between 2001 and 2018 order by titulo_cd;

--14 Selecione todos da tabela cds q mostre todos os cds da gravadora universal que foram lançados em 2015. ordenar pelo cantor
select * from tab_cds
where gravadora_cd="Universal" and ano_cd="2015" order by cantor_cd;







	   
	   
	   
	  
	   
	   
	   

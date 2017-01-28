/*
Realizzare un database con tutti i titoli dei progetti dati nell'ultimo millennio, per progetto si intende il nome di un negozio, il titolo della tesina, il titolo di una campagna pubblicitaria, il titolo di un week end formativo, il titolo di una serata organizzata, il titolo di una testata giornalistica, il titolo di un libro... I titoli sono distinti per nome, argomento specifico, anno di creazione, settore professionale, azienda di appartenenza, .

si vuole dunque gestire anche chi sono gli utenti che hanno trovato il nome al progetto, nome persona, il team di sviluppo, cognome, cf, anno nascita, anno morte, azienda appartenenza, occupazione, n_progetti realizzati, portfolio, mail, tel, ruolo all'interno dell'azienda.

esercizio fix args:
-join 
-subquery
-view
-select
-group by

*/


	/*     		D D L 				*/

CREATE DATABASE if not exists raccoltaTitoli;
DROP DATABASE if exists raccoltaTitoli;
/*magari possiamo inserire un auto_increment?*/
/*foreign key per togliere la tabella relazione?*/



CREATE TABLE if not exists titoli(

	id_titolo		INT				 	NOT NULL	auto_increment,
    nome_titolo		VARCHAR		(250)	NOT NULL,
    arg_specifico	VARCHAR		(250)	NOT NULL,
    settore_prof	VARCHAR		(100)	NOT NULL,
    pubblicazione	VARCHAR		(10)	NOT NULL,
    data_pubblicaz	YEAR		(4),
	data_creazione	YEAR		(4),
    id_persona		INT,
    PRIMARY KEY(id_titolo),
    FOREIGN KEY(id_persona) references persona(id_persona)
    
);
DROP TABLE if exists titoli;
/*ALTER TABLE name_table ADD attribute ... ; */

CREATE TABLE if not exists persona (
	
    id_persona		INT					NOT NULL auto_increment,
	nome_persona	VARCHAR		(250)	NOT NULL,
    cognome			VARCHAR		(250)	NOT NULL,
    anno_nascita	YEAR		(4)		NOT NULL,
    stat_occupaz	VARCHAR		(50)	NOT NULL,
    portfolio		VARCHAR		(2)		NOT NULL,
    qta_prj_realiz	VARCHAR		(50),
    azienda_appart	VARCHAR		(250),
    anno_morte		YEAR		(4),
    ruolo_azienda	VARCHAR		(50),
    telefono		VARCHAR		(20),
    mail			VARCHAR		(100),
    team_sviluppo	VARCHAR		(250),
    PRIMARY KEY(id_persona)
    
);
DROP TABLE if exists persona;
/*ALTER TABLE name_table ADD attribute ... ; */


/*
CREATE TABLE if not exists creazione (

    id_titolo		VARCHAR		(250)	NOT NULL,
    cf				VARCHAR		(50)	NOT NULL,
    data_pubblicaz	DATETIME	(6)		NOT NULL,
	data_creazione	DATETIME	(6),
    pubblicazione	VARCHAR		(10),
    PRIMARY KEY(id_titolo, cf)

);
DROP TABLE if exists creazione;
ALTER TABLE name_table ADD attribute ... ; 
*/






/*				D M L				*/


INSERT INTO titoli(nome_titolo, arg_specifico, settore_prof, pubblicazione, data_pubblicaz, data_creazione, id_persona) VALUES
	('Harry Potter e il calice di fuoco','fantasy','editoria','si',2000,2000,1),
    ('Harry Potter e il prigioniero di Azkaban','fantasy','editoria','si',1999,1999,1);
    
INSERT INTO persona(nome_persona , cognome, anno_nascita, stat_occupaz, portfolio) VALUES
	('Joanne','Rowling', 1965, 'occupato', 'si');
 


SELECT * FROM titoli;
SELECT * FROM persona;




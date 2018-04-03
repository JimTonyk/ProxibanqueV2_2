#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------

#------------------------------------------------------------
# Table: comptecourant
#------------------------------------------------------------

CREATE TABLE comptecourant(
        numcompte       int(8) zerofill ,
        solde           int ,
        dateouverture   varchar (10) ,
        idclient        int unique,
        PRIMARY KEY (numcompte)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: compteepargne
#------------------------------------------------------------

CREATE TABLE compteepargne(
        numcompte       int(8) zerofill ,
        solde           int ,
        dateouverture   varchar (10) ,
        idclient        int unique,
        PRIMARY KEY (numcompte)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: cartevisaelectron
#------------------------------------------------------------

CREATE TABLE cartevisaelectron(
        numcarte                int(8) zerofill ,
        numcompte		        int(8) ,
        PRIMARY KEY (numcarte)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: client
#------------------------------------------------------------

CREATE TABLE client(
        idclient     int(8) auto_increment ,
        nom          varchar (25) NOT NULL ,
        prenom       varchar (25) ,
        adresse      varchar (60) ,
        codepostal   char (5) ,
        ville        varchar (25) ,
        telephone    char (10) ,
        idconseiller int ,
        PRIMARY KEY (idclient)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: conseiller
#------------------------------------------------------------

CREATE TABLE conseiller(
        idconseiller int(8) auto_increment ,
        nom          varchar (25) NOT NULL ,
        prenom       varchar (25) NOT NULL ,
        login        varchar (25) ,
        password     varchar (25) ,
        PRIMARY KEY (idconseiller)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: cartevisapremier
#------------------------------------------------------------

CREATE TABLE cartevisapremier(
        numcarte				int(8) auto_increment ,
        numcompte               int ,
        PRIMARY KEY (numcarte)
)ENGINE=InnoDB;

ALTER TABLE comptecourant ADD CONSTRAINT FK_comptecourant_idclient FOREIGN KEY (idclient) REFERENCES client(idclient);
ALTER TABLE compteepargne ADD CONSTRAINT FK_compteepargne_idclient FOREIGN KEY (idclient) REFERENCES client(idclient);
ALTER TABLE cartevisaelectron ADD CONSTRAINT FK_cartevisaelectron_numcompte FOREIGN KEY (numcompte) REFERENCES comptecourant(numcompte);
ALTER TABLE client ADD CONSTRAINT FK_client_idconseiller FOREIGN KEY (idconseiller) REFERENCES conseiller(idconseiller);
ALTER TABLE cartevisapremier ADD CONSTRAINT FK_cartevisapremier_numcompte FOREIGN KEY (numcompte) REFERENCES comptecourant(numcompte);

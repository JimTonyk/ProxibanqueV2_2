#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------


#------------------------------------------------------------
# Table: comptecourant
#------------------------------------------------------------

CREATE TABLE comptecourant(
        numcompte        Int NOT NULL ,
        solde            Int ,
        dateouverture    Varchar (10) ,
        numcarteelectron Int ,
        idclient         Int NOT NULL ,
        numcartepremier  Int NOT NULL ,
        PRIMARY KEY (numcompte )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: compteepargne
#------------------------------------------------------------

CREATE TABLE compteepargne(
        numcompte     Int NOT NULL ,
        solde         Int NOT NULL ,
        tauxremun     Double ,
        dateouverture Varchar (10) NOT NULL ,
        idclient      Int NOT NULL ,
        PRIMARY KEY (numcompte )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: cartevisaelectron
#------------------------------------------------------------

CREATE TABLE cartevisaelectron(
        numcarteelectron int (11) Auto_increment  NOT NULL ,
        numcompte        Int NOT NULL ,
        PRIMARY KEY (numcarteelectron )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: client
#------------------------------------------------------------

CREATE TABLE client(
        idclient     int (11) Auto_increment  NOT NULL ,
        nom          Varchar (25) NOT NULL ,
        prenom       Varchar (25) ,
        adresse      Varchar (60) ,
        codepostal   Char (5) ,
        ville        Varchar (25) ,
        telephone    Char (10) ,
        idconseiller Int NOT NULL ,
        PRIMARY KEY (idclient )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: conseiller
#------------------------------------------------------------

CREATE TABLE conseiller(
        idconseiller int (11) Auto_increment  NOT NULL ,
        nom          Varchar (25) NOT NULL ,
        prenom       Varchar (25) NOT NULL ,
        login        Varchar (25) ,
        password     Varchar (25) ,
        PRIMARY KEY (idconseiller )
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: cartevisapremier
#------------------------------------------------------------

CREATE TABLE cartevisapremier(
        numcartepremier int (11) Auto_increment  NOT NULL ,
        numcompte       Int NOT NULL ,
        PRIMARY KEY (numcartepremier )
)ENGINE=InnoDB;

ALTER TABLE comptecourant ADD CONSTRAINT FK_comptecourant_numcarteelectron FOREIGN KEY (numcarteelectron) REFERENCES cartevisaelectron(numcarteelectron);
ALTER TABLE comptecourant ADD CONSTRAINT FK_comptecourant_idclient FOREIGN KEY (idclient) REFERENCES client(idclient);
ALTER TABLE comptecourant ADD CONSTRAINT FK_comptecourant_numcartepremier FOREIGN KEY (numcartepremier) REFERENCES cartevisapremier(numcartepremier);
ALTER TABLE compteepargne ADD CONSTRAINT FK_compteepargne_idclient FOREIGN KEY (idclient) REFERENCES client(idclient);
ALTER TABLE cartevisaelectron ADD CONSTRAINT FK_cartevisaelectron_numcompte FOREIGN KEY (numcompte) REFERENCES comptecourant(numcompte);
ALTER TABLE client ADD CONSTRAINT FK_client_idconseiller FOREIGN KEY (idconseiller) REFERENCES conseiller(idconseiller);
ALTER TABLE cartevisapremier ADD CONSTRAINT FK_cartevisapremier_numcompte FOREIGN KEY (numcompte) REFERENCES comptecourant(numcompte);

package fr.proxibanquesi.dao;

import fr.proxibanquesi.model.*;

public interface CompteDao {

	// *** CREATION ***

	void creerCompteCourant(CompteCourant compteCourant);
	
	void creerCompteEpargne(CompteEpargne compteEpargne);
	
	// *** LECTURE ***
	
	CompteCourant obtenirCompteCourant(int idClient);
	
	CompteEpargne obtenirCompteEpargne(int idClient);
	
}

package fr.proxibanquesi.dao;

import fr.proxibanquesi.model.Conseiller;

public interface ConseillerDao {

	Conseiller obtenirConseiller(String login);
	
}

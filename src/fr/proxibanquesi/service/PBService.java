package fr.proxibanquesi.service;

import java.util.List;

import fr.proxibanquesi.model.*;

public interface PBService {

	// *** CREATION ***

	void creerClient(Client client);

	// *** LECTURE ***
	
	Client obtenirClient(int idClient);

	List<Client> obtenirListeClients();

	// *** SUPPRESSION ***

	void supprimerClient(int idClient);

	// *** ASSOCIATION COMPTE ***

	void associerCompteCourant(int idClient);

	void associerCompteEpargne(int idClient);

	// *** OBTENTION COMPTE ***

	CompteCourant obtenirCompteCourant(int idClient);

	CompteEpargne obtenirCompteEpargne(int idClient);

}

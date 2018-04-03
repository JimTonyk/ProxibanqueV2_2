package fr.proxibanquesi.service;

import java.util.List;

import fr.proxibanquesi.model.Client;

public interface PBService {
	
	// *** CREATION ***

	void creerClient(Client client);

	// *** LECTURE ***

	List<Client> obtenirListeClients();
	
	// *** SUPPRESSION ***
	
	void supprimerClient(int idClient);
	
}

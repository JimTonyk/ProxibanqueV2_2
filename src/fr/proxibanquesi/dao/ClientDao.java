package fr.proxibanquesi.dao;

import java.util.List;
import fr.proxibanquesi.model.Client;

public interface ClientDao {

	// *** CREATION ***

	void creerClient(Client client);

	// *** LECTURE ***

	List<Client> obtenirTousClients();

	// *** SUPPRESSION ***

	void supprimerClient(int idClient);
	
}

package fr.proxibanquesi.service;

import java.util.List;

import fr.proxibanquesi.model.*;

public interface PBService {

	// *** CLIENTS ***
	
	// Création
	
	void creerClient(Client client);

	// Lecture
	
	Client obtenirClient(int idClient);

	List<Client> obtenirListeClients();

	// Modification
	
	void modifierClient(int idClient, Client client);
	
	// Supression

	void supprimerClient(int idClient);

	// *** COMPTES ***
	
	// Ajout de comptes

	void associerCompteCourant(int idClient);

	void associerCompteEpargne(int idClient);

	// Obtentions de comptes

	CompteCourant obtenirCompteCourant(int idClient);

	CompteEpargne obtenirCompteEpargne(int idClient);
	
	// *** OPERATIONS ***
	
	public double simulerCredit(double montant, int dureeMois, double taux);
	
	// *** CONSEILLERS ***
	
	// Lecture
	
	Conseiller obtenirConseiller(String login);

}

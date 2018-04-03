package fr.proxibanquesi.service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import fr.proxibanquesi.dao.*;
import fr.proxibanquesi.model.*;

public class PBServiceImp implements PBService {

	ClientDao clientDao = new ClientDaoImp();
	CompteDao compteDao = new CompteDaoImp();

	// *** CREATION ***

	@Override
	public void creerClient(Client client) {
		if (client != null) {
			clientDao.creerClient(client);
		}
	}

	// *** LECTURE ***

	@Override
	public Client obtenirClient(int idClient) {
		return clientDao.obtenirClient(idClient);
	}

	@Override
	public List<Client> obtenirListeClients() {
		return clientDao.obtenirTousClients();
	}

	// *** MODIFICATION ***
	
	@Override
	public void modifierClient(Client client) {
		clientDao.modifierClient(client);
	}
	
	// *** SUPPRESSION ***

	@Override
	public void supprimerClient(int idClient) {
		clientDao.supprimerClient(idClient);
	}

	// *** ASSOCIATION COMPTE ***

	@Override
	public void associerCompteCourant(int idClient) {
		int numeroCompte = genererNumero();
		double solde = 0.0;
		String dateOuverture = today();
		CompteCourant compteCourant = new CompteCourant(numeroCompte, solde, dateOuverture, idClient);
		compteDao.creerCompteCourant(compteCourant);
	}

	@Override
	public void associerCompteEpargne(int idClient) {
		int numeroCompte = genererNumero();
		double solde = 0.0;
		String dateOuverture = today();
		CompteEpargne compteEpargne = new CompteEpargne(numeroCompte, solde, dateOuverture, idClient);
		compteDao.creerCompteEpargne(compteEpargne);
	}

	private int genererNumero() {
		int randomNumber = (int) (Math.random() * 100_000_000);
		return randomNumber;
	}

	private String today() {
		SimpleDateFormat sdfDate = new SimpleDateFormat("yyyy-MM-dd");
		// TODO Bug [Normal] Dans un test avec l'heure et les minutes (HH:MM), l'heure
		// de création semble être toujours la même. Cette implémentation suffira pour
		// nos besoins.
		Date date = new Date();
		return sdfDate.format(date);
	}

	// *** OBTENTION COMPTES ***

	@Override
	public CompteCourant obtenirCompteCourant(int idClient) {
		return compteDao.obtenirCompteCourant(idClient);
	}

	@Override
	public CompteEpargne obtenirCompteEpargne(int idClient) {
		return compteDao.obtenirCompteEpargne(idClient);
	}

}

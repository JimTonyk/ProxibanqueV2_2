package fr.proxibanquesi.tests;

import fr.proxibanquesi.dao.ClientDao;
import fr.proxibanquesi.dao.ClientDaoImp;
import fr.proxibanquesi.model.Client;

/**
 * Permet d'ajouter 3 clients basiques pour les opérations de test
 * @author Anthony le Cigne et Jean-Mchel Hiltbrunner
 *
 */
public class DummyClients {

	public static void main(String[] args) {
		ClientDao clientDao = new ClientDaoImp();

		Client c1 = new Client("Dupont", "Michel", "1 rue 1", "75000", "Paris", "0100000000");
		Client c2 = new Client("Durand", "Michel", "1 rue 2", "75000", "Paris", "0100000000");
		Client c3 = new Client("Martin", "Michel", "1 rue 3", "75000", "Paris", "0100000000");

		clientDao.creerClient(c1);
		clientDao.creerClient(c2);
		clientDao.creerClient(c3);
	}

}

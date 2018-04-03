package fr.proxibanquesi.service;

import java.util.List;

import fr.proxibanquesi.dao.*;
import fr.proxibanquesi.model.Client;

public class PBServiceImp implements PBService {

	ClientDao clientDao = new ClientDaoImp();

	@Override
	public void creerClient(Client client) {
		if (client != null) {
			clientDao.creerClient(client);
		}
	}

	@Override
	public List<Client> obtenirListeClients() {
		return clientDao.obtenirTousClients();
	}

}

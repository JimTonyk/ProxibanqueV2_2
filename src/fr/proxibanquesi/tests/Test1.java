package fr.proxibanquesi.tests;

import fr.proxibanquesi.dao.*;
import fr.proxibanquesi.model.Client;
import fr.proxibanquesi.model.CompteCourant;
import fr.proxibanquesi.service.PBService;
import fr.proxibanquesi.service.PBServiceImp;

public class Test1 {

	public static void main(String[] args) {

		PBService pbs = new PBServiceImp();
		
		pbs.associerCompteCourant(1);		


	}

}

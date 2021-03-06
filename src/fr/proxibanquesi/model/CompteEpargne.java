package fr.proxibanquesi.model;

/**
 * Cette classe d�crit les caract�ristiques d'un compte �pargne ProxiBanque.
 * Chaque client peut disposer d'un compte �pargne apr�s ajout explicite par un
 * conseiller. Aucune carte bancaire n'est associ�e � un compte �pargne.
 * 
 * @author Jean-Michel Hiltbrunner, Anthony Le Cigne
 *
 */

public class CompteEpargne extends Compte {

	// *** ATTRIBUTES ***

	// TODO Le taux n'est pas utilis� dans ProxiBanqueSI
	private double tauxRemun = 3.0;

	// *** CONSTRUCTORS ***

	public CompteEpargne(int numeroCompte, double solde, String dateOuverture, int idClient) {
		super(numeroCompte, solde, dateOuverture, idClient);
	}

	// *** GETTERS and SETTERS ***

	public double getTauxRemun() {
		return tauxRemun;
	}

	public void setTauxRemun(double tauxRemun) {
		this.tauxRemun = tauxRemun;
	}

	// *** OTHER METHODS ***

}

package fr.proxibanquesi.presentation;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import fr.proxibanquesi.model.CompteCourant;
import fr.proxibanquesi.service.PBService;
import fr.proxibanquesi.service.PBServiceImp;

/**
 * Servlet implementation class AssocierCompte
 */
@WebServlet("/AssocierCompteCourant")
public class AssocierCompteCourant extends HttpServlet {

	private PBService pbs = new PBServiceImp();
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AssocierCompteCourant() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		PrintWriter out = response.getWriter();
		RequestDispatcher rd;
		int idClient = Integer.parseInt(request.getParameter("idClient"));
		CompteCourant compteCourant = pbs.obtenirCompteCourant(idClient);

		// Récupérer les informations pour l'erreur ou la confirmation
		request.setAttribute("compteCourant", compteCourant);

		if (compteCourant != null) {
			rd = request.getRequestDispatcher("/WEB-INF/errors/erreurcomptecourant.jsp");
			rd.forward(request, response);
		} else {
			pbs.associerCompteCourant(idClient);
			out.println("Compte courant associé.");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

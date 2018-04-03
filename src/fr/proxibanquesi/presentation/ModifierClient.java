package fr.proxibanquesi.presentation;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import fr.proxibanquesi.model.Client;
import fr.proxibanquesi.service.PBService;
import fr.proxibanquesi.service.PBServiceImp;

/**
 * Servlet implementation class ModifierClient
 */
@WebServlet("/ModifierClient")
public class ModifierClient extends HttpServlet {
	
	private PBService pbs = new PBServiceImp();
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ModifierClient() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int idClient = Integer.parseInt(request.getParameter("idClient"));
		Client client = pbs.obtenirClient(idClient);
		request.setAttribute("client", client);
		
		String nom = request.getParameter("nom");
		String prenom = request.getParameter("prenom");
		String adresse = request.getParameter("adresse");
		String codePostal = request.getParameter("codePostal");
		String ville = request.getParameter("ville");
		String telephone = request.getParameter("telephone");

		client.setNom(nom);
		client.setPrenom(prenom);
		client.setAdresse(adresse);
		client.setCodePostal(codePostal);
		client.setVille(ville);
		client.setTelephone(telephone);
		
		

		request.setAttribute("client", client);
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/results/modificationclient.jsp");
		rd.forward(request, response);
	}

}

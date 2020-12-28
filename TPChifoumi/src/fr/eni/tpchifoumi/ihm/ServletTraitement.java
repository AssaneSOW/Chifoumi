package fr.eni.tpchifoumi.ihm;

import java.io.IOException;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ServletTraitement
 */
public class ServletTraitement extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	private int choixCPU;
	private int choixUser;
	
	@Override
	public void init() throws ServletException {
		reinit();
	}
	
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(request.getParameter("choix")!=null) {
			reinit();
			traitement(request, response);
		} else {
			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/jouer.jsp");
			rd.forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
	
	
	private void reinit() {
		choixCPU = new Random().nextInt(3)+1;
	}
	
	private void traitement(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		choixUser = Integer.parseInt(request.getParameter("choix"));
		int resultat;
		if(choixUser == choixCPU) {
			resultat = 0;
		} else if (
				(choixUser == 1 && choixCPU == 3) ||
				(choixUser == 2 && choixCPU == 1) ||
				(choixUser == 3 && choixCPU == 2)
				) {
			resultat = 1;
		} else {
			resultat = -1;
		}

		request.setAttribute("resultat", resultat);
		request.setAttribute("choixUser", choixUser);
		request.setAttribute("choixCPU", choixCPU);
		
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/resultat.jsp");
//		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/res.jsp");
		rd.forward(request, response);
	}

}

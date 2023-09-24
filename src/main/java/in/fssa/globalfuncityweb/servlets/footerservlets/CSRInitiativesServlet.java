package in.fssa.globalfuncityweb.servlets.footerservlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CSRInitiativesServlet
 */
@WebServlet("/CSR-initiatives")
public class CSRInitiativesServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("/footer/csr_initiatives.jsp");
		rd.forward(request, response);
	}

}

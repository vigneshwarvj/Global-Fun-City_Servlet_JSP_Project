package in.fssa.globalfuncityweb.servlets;

import java.io.IOException;
import java.util.Set;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.fssa.globalfuncity.exception.PersistenceException;
import in.fssa.globalfuncity.exception.ServiceException;
import in.fssa.globalfuncity.model.User;
import in.fssa.globalfuncity.service.UserService;

/**
 * Servlet implementation class AdminUsersListServlet
 */
@WebServlet("/admin/dashboard/users_list")
public class AdminUsersListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
      
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		try {
			UserService userService = new UserService();
			Set<User> listOfUsers = userService.getAllUsers();
			request.setAttribute("users_list", listOfUsers);
			RequestDispatcher rd = request.getRequestDispatcher("/admin/users_list.jsp");
			rd.forward(request, response);
		} catch (ServiceException e) {
			e.printStackTrace();
		}
	}
}

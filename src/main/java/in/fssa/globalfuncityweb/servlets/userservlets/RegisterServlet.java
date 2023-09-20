package in.fssa.globalfuncityweb.servlets.userservlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



import in.fssa.globalfuncity.exception.PersistenceException;
import in.fssa.globalfuncity.exception.ServiceException;
import in.fssa.globalfuncity.exception.ValidationException;
import in.fssa.globalfuncity.model.User;
import in.fssa.globalfuncity.service.UserService;

/**
 * Servlet implementation class AddUser
 */
@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("/user/register.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		User user = new User();
		
		try {
		user.setFirstName(request.getParameter("first_name"));
		user.setMiddleName(request.getParameter("middle_name"));
		user.setLastName(request.getParameter("last_name"));
		user.setEmail(request.getParameter("email"));
		user.setPassword(request.getParameter("password"));
		
		String phoneNumber = request.getParameter("phone_number");
		long phNumber = Long.parseLong(phoneNumber);
		user.setPhoneNumber(phNumber);
		
		System.out.println(user);
		//doGet(request, response);
		
		UserService userService = new UserService();
		userService.createUser(user);
		response.sendRedirect(request.getContextPath()+"/login");
		
		} catch (ValidationException e) {
			e.printStackTrace();
		}  catch (PersistenceException e) {
			e.printStackTrace();
		}
	}

}

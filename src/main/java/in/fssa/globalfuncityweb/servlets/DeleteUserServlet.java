package in.fssa.globalfuncityweb.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import in.fssa.globalfuncity.exception.ServiceException;
import in.fssa.globalfuncity.exception.ValidationException;
import in.fssa.globalfuncity.model.User;
import in.fssa.globalfuncity.service.UserService;

/**
 * Servlet implementation class DeleteUserServlet
 */
@WebServlet("/user/delete")
public class DeleteUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		User user = new User();
		int userId = (Integer) request.getSession().getAttribute("userId");
		System.out.println(userId);
		try {
			UserService userService = new UserService();
			HttpSession session = request.getSession(false);
			if (session != null) {
				session.invalidate();
			}
			userService.deleteUser(userId);
			response.sendRedirect(request.getContextPath() + "/login");
			System.out.println("User has been successfully deleted:(");
		} catch (ServiceException e) {
			e.printStackTrace();
		} catch (ValidationException e) {
			e.printStackTrace();
		}
	}

}

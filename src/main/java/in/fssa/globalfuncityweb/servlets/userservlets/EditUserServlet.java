package in.fssa.globalfuncityweb.servlets.userservlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.fssa.globalfuncity.exception.ServiceException;
import in.fssa.globalfuncity.exception.ValidationException;
import in.fssa.globalfuncity.model.User;
import in.fssa.globalfuncity.service.UserService;

/**
 * Servlet implementation class EditUserServlet
 */
@WebServlet("/user_dashboard/profile/edit")
public class EditUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int userId = (Integer) request.getSession().getAttribute("userId");

		 UserService userService = new UserService();
	        try {
	        	User user = userService.findByUserId(userId);
	        	if(user!= null) {
				request.setAttribute("user", user);
				RequestDispatcher rd = request.getRequestDispatcher("/user/edit_user.jsp");
				rd.forward(request, response);
	        	} else {
	        		response.sendError(HttpServletResponse.SC_NOT_FOUND, "USER NOT FOUND");
	        	}
			} catch (NumberFormatException | ValidationException | ServiceException e) {
				e.printStackTrace();
			} 
	  

	
		
	}
}

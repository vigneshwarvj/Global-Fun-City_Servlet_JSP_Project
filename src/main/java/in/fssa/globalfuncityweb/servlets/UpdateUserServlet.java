package in.fssa.globalfuncityweb.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
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
 * Servlet implementation class UpdateUserServlet
 */
@WebServlet("/user/update")
public class UpdateUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			
			//Instance
			User user = new User();
			
			//Mobile number
			String phoneNumber = request.getParameter("mobile_number");
			long number = Long.parseLong(phoneNumber);
			user.setPhoneNumber(number);
		
			//Password
			user.setPassword(request.getParameter("password"));
			
			//FirstName
			user.setFirstName(request.getParameter("first_name"));
			
			//LastName
			user.setLastName(request.getParameter("last_name"));
			
			UserService userService = new UserService();
			
			String idParams = request.getParameter("userId");
			
			int id = Integer.parseInt(idParams);
			
			userService.updateUser(id, user);
			
			response.sendRedirect("profile");
			
	   }  catch (ValidationException e) {
			e.printStackTrace();
			PrintWriter consoleOutput = new PrintWriter(System.out);
			consoleOutput.println(e.getMessage());
			
		} catch (ServiceException e) {
			e.printStackTrace();
			PrintWriter consoleOutput = new PrintWriter(System.out);
			consoleOutput.println(e.getMessage());
		} catch (PersistenceException e) {
			e.printStackTrace();
			PrintWriter consoleOutput = new PrintWriter(System.out);
			consoleOutput.println(e.getMessage());
		} catch (NumberFormatException e) {
			e.printStackTrace();
			PrintWriter consoleOutput = new PrintWriter(System.out);
			consoleOutput.println(e.getMessage());
	    }

}
}

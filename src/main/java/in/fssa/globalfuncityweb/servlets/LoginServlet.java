package in.fssa.globalfuncityweb.servlets;

import java.io.IOException;
import java.io.PrintWriter;

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
 * Servlet implementation class LoginServlet
 */
@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("/login.jsp");
		rd.forward(request, response);	
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
		    String email = request.getParameter("email");
		    String password = request.getParameter("password");
		    UserService userService = new UserService();
		    User user = userService.findByEmail(email);

		    if (user == null) {
		        System.out.println("User not found");
		    } else if (!password.equals(user.getPassword())) {
		        System.out.println("Incorrect Email or Password:(");
		    } else {
		        System.out.println("Login Successfull:)");
	            int id = user.getUserId();
	            Cookie ck=new Cookie("userId",String.valueOf(id));
		        response.addCookie(ck);
	            response.sendRedirect(request.getContextPath()+"/index.jsp");
		    }
           
		} catch (ServiceException e) {
			e.printStackTrace();
			PrintWriter consoleOutput = response.getWriter();
			consoleOutput.println(e.getMessage());
		} catch (ValidationException e) {
			e.printStackTrace();
			PrintWriter consoleOutput = response.getWriter();
			consoleOutput.println(e.getMessage());
		}
	}
	}


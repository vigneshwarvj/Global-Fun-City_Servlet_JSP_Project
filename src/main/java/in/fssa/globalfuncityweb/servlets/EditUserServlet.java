package in.fssa.globalfuncityweb.servlets;

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
@WebServlet("/user/edit")
public class EditUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		Cookie[] ck = request.getCookies();
        String userId = null;
        if (ck != null) {
            for (Cookie cookie : ck) {
                if ("userId".equals(cookie.getName())) {
                    userId = cookie.getValue();
                    break;
                }
            }
        }
        if (userId == null) {
            response.sendRedirect("login");
            return;
        }
		 UserService userService = new UserService();
		 
	        try {
				User user = userService.findByUserId(Integer.parseInt(userId));
				request.setAttribute("user", user);
			} catch (NumberFormatException | ValidationException | ServiceException e) {
				e.printStackTrace();
			} 
	  
		RequestDispatcher rd = request.getRequestDispatcher("/edit_user.jsp");
		rd.forward(request, response);
	
		
	}
}

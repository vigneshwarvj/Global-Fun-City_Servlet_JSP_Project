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
 * Servlet implementation class ProfileServlet
 */
@WebServlet("/user/profile")
public class ProfileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
      

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
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
            // Handle the case where the userId cookie is not found.
            response.sendRedirect("login"); // Redirect to login page or appropriate error page.
            return;
        }
        
        UserService userService = new UserService();
        try {
			User user = userService.findByUserId(Integer.parseInt(userId));
			
			request.setAttribute("user", user);
            RequestDispatcher rd = request.getRequestDispatcher("/profile.jsp");
            rd.forward(request, response);
            
        } catch (NumberFormatException | ValidationException | ServiceException e) {
			e.printStackTrace();
		}
        
	}
}

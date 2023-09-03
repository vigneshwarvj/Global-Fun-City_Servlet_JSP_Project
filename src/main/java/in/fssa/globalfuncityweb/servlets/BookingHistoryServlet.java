package in.fssa.globalfuncityweb.servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.fssa.globalfuncity.exception.PersistenceException;
import in.fssa.globalfuncity.exception.ServiceException;
import in.fssa.globalfuncity.exception.ValidationException;
import in.fssa.globalfuncity.model.Ticket;
import in.fssa.globalfuncity.model.User;
import in.fssa.globalfuncity.service.TicketService;
import in.fssa.globalfuncity.service.UserService;

/**
 * Servlet implementation class BookingHistoryServlet
 */
@WebServlet("/user/history")
public class BookingHistoryServlet extends HttpServlet {
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
        
       
        try {
        	 UserService userService =  new UserService();
             TicketService ticketService = new TicketService();
			User user = userService.findByUserId(Integer.parseInt(userId));
			
			List<Ticket> ticket = ticketService.getAllBookedTicketsByUserId(Integer.parseInt(userId));
			
			request.setAttribute("user", user);
			request.setAttribute("ticket", ticket);
			
			
 			
		} catch (NumberFormatException e) {
			e.printStackTrace();
		} catch (ValidationException e) {
			e.printStackTrace();
		} catch (ServiceException e) {
			e.printStackTrace();
		} catch (PersistenceException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		RequestDispatcher rd = request.getRequestDispatcher("/booking_history.jsp");
		rd.forward(request, response);
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}

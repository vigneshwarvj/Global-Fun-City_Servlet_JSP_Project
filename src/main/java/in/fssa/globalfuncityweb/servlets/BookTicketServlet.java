package in.fssa.globalfuncityweb.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.fssa.globalfuncity.exception.PersistenceException;
import in.fssa.globalfuncity.exception.ValidationException;
import in.fssa.globalfuncity.model.Ticket;
import in.fssa.globalfuncity.service.TicketService;
import in.fssa.globalfuncity.service.UserService;

/**
 * Servlet implementation class BookTicketServlet
 */
@WebServlet("/user/book_tickets")
public class BookTicketServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		RequestDispatcher rd = request.getRequestDispatcher("/book_tickets.jsp");
		rd.forward(request, response);
		
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
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
	        
		Ticket ticket = new Ticket();
		
	    String checkInDate = request.getParameter("checkIndate");
	    ticket.setFromDate(checkInDate);
	    
	    String checkOutDate = request.getParameter("checkOutdate");
	    ticket.setToDate(checkOutDate);
	    
		String noOfAdults = request.getParameter("totalClicksAdult");
	    int numAdults = Integer.parseInt(noOfAdults);
	    ticket.setNoOfAdult(numAdults);
	    
	    String noOfChildren = request.getParameter("totalClicksChildren");
	    int numChildren = Integer.parseInt(noOfChildren);
	    ticket.setNoOfChildren(numChildren);
	    
	    TicketService ticketService = new TicketService();
		
		ticketService.bookTicket(ticket,Integer.parseInt(userId));
		
		response.sendRedirect("/globalfuncityweb/booked_success.jsp");
			
		} catch (ValidationException | PersistenceException | SQLException e) {
			e.printStackTrace();
			PrintWriter consoleOutput = new PrintWriter(System.out);
			consoleOutput.println(e.getMessage());
		}
	}

}

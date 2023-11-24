package in.fssa.globalfuncityweb.servlets.userservlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.time.LocalDate;
import java.time.temporal.ChronoUnit;

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
@WebServlet("/book_tickets")
public class BookTicketServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		RequestDispatcher rd = request.getRequestDispatcher("/user/book_tickets.jsp");
		rd.forward(request, response);
		
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int userId = (Integer) request.getSession().getAttribute("userId");
		int ticketId = -1;
		PrintWriter out = response.getWriter();
		
		try {
		
		Ticket ticket = new Ticket();
		
	    String checkInDate = request.getParameter("checkIndate");
	    ticket.setFromDate(checkInDate);
	    
	    String checkOutDate = request.getParameter("checkOutdate");
	    ticket.setToDate(checkOutDate);
	    LocalDate fromDate = LocalDate.parse(checkInDate);
	    LocalDate toDate = LocalDate.parse(checkOutDate);
	    
	    int numberOfNights = (int) ChronoUnit.DAYS.between(fromDate, toDate);
	    
		String noOfAdults = request.getParameter("totalClicksAdult");
	    int numAdults = Integer.parseInt(noOfAdults);
	    ticket.setNoOfAdult(numAdults);
	    
	    String noOfChildren = request.getParameter("totalClicksChildren");
	    int numChildren = Integer.parseInt(noOfChildren);
	    ticket.setNoOfChildren(numChildren);
	    
	    TicketService ticketService = new TicketService();
		
	    ticketId = ticketService.bookTicket(ticket,userId);
	    request.setAttribute("noOfNights", numberOfNights);
	    request.setAttribute("trackId", ticketId);
	    
	    //Setting the check - in date
	    request.setAttribute("checkIn", checkInDate);
	    request.setAttribute("checkOut", checkOutDate);
	    
	    System.out.println(request.getAttribute("trackId"));
		RequestDispatcher rdDispatcher = request.getRequestDispatcher("/user/booked_success");
		rdDispatcher.forward(request, response);
			
		} catch (Exception e) {
			e.printStackTrace();
			
			out.println("<script>alert('"+ e.getMessage() +"');</script>");
			out.println("<script>window.history.back();</script>");
		}
}
	}


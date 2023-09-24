package in.fssa.globalfuncityweb.servlets.userservlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.fssa.globalfuncity.exception.PersistenceException;
import in.fssa.globalfuncity.exception.ServiceException;
import in.fssa.globalfuncity.exception.ValidationException;
import in.fssa.globalfuncity.model.Ticket;
import in.fssa.globalfuncity.model.User;
import in.fssa.globalfuncity.model.UserRoom;
import in.fssa.globalfuncity.service.TicketService;
import in.fssa.globalfuncity.service.UserRoomService;
import in.fssa.globalfuncity.service.UserService;

/**
 * Servlet implementation class RoomBookingHistoryServlet
 */
@WebServlet("/user_dashboard/roomshistory")
public class RoomBookingHistoryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int userId = (Integer) request.getSession().getAttribute("userId");
	       
        try {
        	
        	 //UserService
        	 UserService userService =  new UserService();
        	 //TicketService
             TicketService ticketService = new TicketService();
             //UserRoomService
             UserRoomService userRoomService = new UserRoomService();
             
             //Method by userService
             User user = userService.findByUserId(userId);
			
			List<Ticket> ticket = ticketService.getAllBookedTicketsByUserId(userId);
			List<UserRoom> userRoom = userRoomService.getAllBookedRoomTicketsByUserId(userId);
			
			request.setAttribute("user", user);
			request.setAttribute("ticket", ticket);
			request.setAttribute("userRoom", userRoom);
			
        }	catch (NumberFormatException e) {
			e.printStackTrace();
		} 	catch (ValidationException e) {
			e.printStackTrace();
		} 	catch (ServiceException e) {
			e.printStackTrace();
		} 	catch (PersistenceException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		RequestDispatcher rdDispatcher = request.getRequestDispatcher("/user/rooms_history.jsp");
		rdDispatcher.forward(request, response);
	

}
}

package in.fssa.globalfuncityweb.servlets.userservlets;

import java.io.IOException;
import java.util.ArrayList;
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
import in.fssa.globalfuncity.model.Room;
import in.fssa.globalfuncity.model.Ticket;
import in.fssa.globalfuncity.model.User;
import in.fssa.globalfuncity.model.UserRoom;
import in.fssa.globalfuncity.service.RoomService;
import in.fssa.globalfuncity.service.TicketService;
import in.fssa.globalfuncity.service.UserRoomService;
import in.fssa.globalfuncity.service.UserService;

/**
 * Servlet implementation class BookingHistoryServlet
 */
@WebServlet("/user_dashboard/ticketshistory")
public class BookingHistoryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int userId = (Integer) request.getSession().getAttribute("userId");
        
       
        try {
        	 UserService userService =  new UserService();
             TicketService ticketService = new TicketService();
			User user = userService.findByUserId(userId);
			
			List<Ticket> ticket = ticketService.getAllBookedTicketsByUserId(userId);
			
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
		
		RequestDispatcher rd = request.getRequestDispatcher("/user/booking_history.jsp");
		rd.forward(request, response);
		
		
		
}
		
		
		
//		protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//			
//	        int userId = (Integer) request.getSession().getAttribute("userId");
//
//	        try {
//	            // UserService
//	            UserService userService = new UserService();
//	            // TicketService
//	            TicketService ticketService = new TicketService();
//	            // UserRoomService
//	            UserRoomService userRoomService = new UserRoomService();
//	            // RoomService
//	            RoomService roomService = new RoomService();
//
//	            // Fetch user's information
//	            User user = userService.findByUserId(userId);
//
//	            // Fetch user's booked tickets
//	            List<Ticket> ticket = ticketService.getAllBookedTicketsByUserId(userId);
//
//	            // Fetch user's booked rooms (if any)
//	            //UserRoom userRoom = userRoomService.getAllBookedTicketsByUserId(userId);
//	            
//	            List<UserRoom> userRoom = userRoomService.getAllBookedRoomTicketsByUserId(userId);
//	            
//	            // Create a list to hold room details
//	            List<Room> roomDetails = new ArrayList<>();
//
//	            if (!userRoom.isEmpty()) {
//	                // If the user has booked rooms, retrieve room details for each booking
//	                for (UserRoom userRooms : userRoom) {
//	                    int roomId = userRooms.getRoomId();
//	                    Room room = roomService.findByRoomId(roomId);
//	                    roomDetails.add(room);
//	                }
//	            }
//
//	            request.setAttribute("user", user);
//	            request.setAttribute("ticket", ticket);
//	            request.setAttribute("userRoom", userRoom);
//	            request.setAttribute("roomDetails", roomDetails);
//	        } catch (NumberFormatException e) {
//	            e.printStackTrace();
//	        } catch (ValidationException e) {
//	            e.printStackTrace();
//	        } catch (ServiceException e) {
//	            e.printStackTrace();
//	        } catch (PersistenceException e) {
//	            e.printStackTrace();
//	        }
//
//	        RequestDispatcher rdDispatcher = request.getRequestDispatcher("/user/booking_history.jsp");
//	        rdDispatcher.forward(request, response);
//	    }
		
		

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}

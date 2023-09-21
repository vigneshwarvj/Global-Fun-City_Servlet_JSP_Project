package in.fssa.globalfuncityweb.servlets.userservlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RoomBooking
 */
@WebServlet("/user/roombooking_success")
public class RoomBooking extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rdDispatcher = request.getRequestDispatcher("/user/room_booking.jsp");
		rdDispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    try {
	        // Get the roomId and roomPrice values from the request parameters
	        String roomIdStr = request.getParameter("roomId");
	        String roomPriceStr = request.getParameter("roomPrice");
	        String userId = request.getParameter("userId");
	        String ticketId = request.getParameter("tickerId");
	        int roomId = Integer.parseInt(roomIdStr);
	        int roomPrice = Integer.parseInt(roomPriceStr);
	        
	        //int totalPrice = roomPrice *  

	    } catch (NumberFormatException e) {
	        e.printStackTrace();
	    }
	}

}
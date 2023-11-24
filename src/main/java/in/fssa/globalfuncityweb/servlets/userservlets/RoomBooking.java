package in.fssa.globalfuncityweb.servlets.userservlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import in.fssa.globalfuncity.exception.PersistenceException;
import in.fssa.globalfuncity.exception.ServiceException;
import in.fssa.globalfuncity.exception.ValidationException;
import in.fssa.globalfuncity.service.RoomService;
import in.fssa.globalfuncity.service.UserRoomService;

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
	    	HttpServletResponse res = (HttpServletResponse) response;
			res.setHeader("Access-Control-Allow-Origin", "*"); // Replace '*' with your allowed origin(s)
			res.setHeader("Access-Control-Allow-Methods", "GET, POST, PUT, DELETE");
			res.setHeader("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept");
			
	        // Get the roomId and roomPrice values from the request parameters
	        String roomIdStr = request.getParameter("roomId");
	        System.out.println(roomIdStr);
	        
	        String roomPriceStr = request.getParameter("roomPrice");
	        System.out.println(roomPriceStr);
	        
	        HttpSession session = request.getSession(false);

	        Integer userId = (Integer) session.getAttribute("userId");
	        System.out.println(userId);
	        
	        int ticketId =Integer.parseInt(request.getParameter("ticketId"));
	        System.out.println(ticketId);
	        
	        int roomId = Integer.parseInt(roomIdStr);
	        System.out.println(ticketId);
	        
	        int roomPrice = Integer.parseInt(roomPriceStr);
	        System.out.println(roomPrice);
	        
	        String checkInDate = request.getParameter("checkIn");
	        System.out.println(checkInDate);
	        
	        String checkOutDate = request.getParameter("checkOut");
	        System.out.println(checkOutDate);
	        
	        String roomName = request.getParameter("roomName");
	        System.out.println(roomName);
	        
	        int noOfNights = Integer.parseInt(request.getParameter("noOfNights"));
	        System.out.println(noOfNights);
	        
	        int totalPrice = noOfNights * roomPrice;
	        System.out.println(totalPrice);
	        
	        UserRoomService userRoomSerivce = new UserRoomService();
	        
	        try {
				UserRoomService.bookRoom(userId, ticketId, roomId, checkInDate, checkOutDate, roomName, noOfNights, totalPrice);
			} catch (ValidationException e) {
				e.printStackTrace();
			}
	         
	        response.setStatus(HttpServletResponse.SC_OK);

	    } catch (NumberFormatException | PersistenceException e) {
	        e.printStackTrace();
	        String errorMessage = e.getMessage();
			response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
			response.setContentType("application/json");
			response.setCharacterEncoding("UTF-8");
			response.getWriter().write(errorMessage);
	    }
	}

}
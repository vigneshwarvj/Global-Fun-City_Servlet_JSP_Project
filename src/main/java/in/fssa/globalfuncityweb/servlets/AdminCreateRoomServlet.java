package in.fssa.globalfuncityweb.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.fssa.globalfuncity.exception.PersistenceException;
import in.fssa.globalfuncity.exception.ValidationException;
import in.fssa.globalfuncity.model.Room;
import in.fssa.globalfuncity.service.RoomService;

/**
 * Servlet implementation class AdminCreateRoomServlet
 */
@WebServlet("/admin/dashboard/create_room")
public class AdminCreateRoomServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("/admin/create_room.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		Room room = new Room();
		
		try {
			
			room.setRoomImageUrl(request.getParameter("image_of_room"));
			room.setHotelName(request.getParameter("hotel_name"));
			room.setRoomName(request.getParameter("room_name"));
			
			String roomPrice = request.getParameter("room_price");
			int roPrice = Integer.parseInt(roomPrice);
			room.setPrice(roPrice);
			
			String noOfBeds = request.getParameter("no_of_beds");
			int noOfBed = Integer.parseInt(noOfBeds);
			room.setNoOfBeds(noOfBed);
			
			room.setRoomAmenities(request.getParameter("amenities"));
			
			System.out.println(room);
			
			RoomService roomService = new RoomService();
			roomService.createRoom(room);
			response.sendRedirect(request.getContextPath()+"/admin/dashboard/rooms_list");

		}  catch (ValidationException e) {
			e.printStackTrace();
		}  catch (PersistenceException e) {
			e.printStackTrace();
		}
	}
}

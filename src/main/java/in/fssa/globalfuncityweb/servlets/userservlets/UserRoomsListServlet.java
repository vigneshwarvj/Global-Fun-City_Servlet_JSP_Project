package in.fssa.globalfuncityweb.servlets.userservlets;

import java.io.IOException;
import java.util.Set;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.fssa.globalfuncity.exception.PersistenceException;
import in.fssa.globalfuncity.exception.ServiceException;
import in.fssa.globalfuncity.model.Room;
import in.fssa.globalfuncity.service.RoomService;

/**
 * Servlet implementation class UserRoomsListServlet
 */
@WebServlet("/rooms_list")
public class UserRoomsListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try {
			String checkIn = (String) request.getAttribute("checkIn");
			String checkOut = (String) request.getAttribute("checkOut");
			RoomService roomService = new RoomService();
			Set<Room> listOfRooms = roomService.getAllRooms(checkIn,checkOut);
			request.setAttribute("rooms_list", listOfRooms);
			RequestDispatcher rd = request.getRequestDispatcher("user/rooms_list.jsp");
			rd.forward(request, response);
			
		} catch (PersistenceException e) {
			e.printStackTrace();
		} catch (ServiceException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}

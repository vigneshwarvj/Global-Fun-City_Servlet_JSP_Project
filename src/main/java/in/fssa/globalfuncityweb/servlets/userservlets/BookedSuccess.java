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
import in.fssa.globalfuncity.model.Room;
import in.fssa.globalfuncity.service.RoomService;

/**
 * Servlet implementation class BookedSuccess
 */
@WebServlet("/user/booked_success")
public class BookedSuccess extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		RequestDispatcher rd = request.getRequestDispatcher("/user/booked_success.jsp");
//		rd.forward(request, response);
		
			try {
				Set<Room> listOfRooms = RoomService.getAllRooms();
				request.setAttribute("rooms_list", listOfRooms);
				RequestDispatcher rdDispatcher = request.getRequestDispatcher("/user/booked_success.jsp");
				rdDispatcher.forward(request, response);
				
			} catch (PersistenceException e) {
				e.printStackTrace();
			}
		}
	}

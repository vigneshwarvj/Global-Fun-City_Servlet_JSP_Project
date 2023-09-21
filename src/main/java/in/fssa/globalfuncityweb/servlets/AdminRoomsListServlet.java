package in.fssa.globalfuncityweb.servlets;

import java.io.IOException;
import java.io.PrintWriter;
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
 * Servlet implementation class UserCreateServlet
 */
@WebServlet("/admin/dashboard/rooms_list")
public class AdminRoomsListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	try {
			Set<Room> listOfRooms = RoomService.getAllRooms();
			
			request.setAttribute("rooms_list", listOfRooms);
			RequestDispatcher rd = request.getRequestDispatcher("/admin/rooms_list.jsp");
			rd.forward(request, response);
			
		} catch (PersistenceException e) {
			e.printStackTrace();
		}
	}

}
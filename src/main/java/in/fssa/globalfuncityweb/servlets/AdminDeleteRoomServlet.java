package in.fssa.globalfuncityweb.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import in.fssa.globalfuncity.exception.ServiceException;

import in.fssa.globalfuncity.exception.ValidationException;
import in.fssa.globalfuncity.model.Room;
import in.fssa.globalfuncity.service.RoomService;

/**
 * Servlet implementation class DeleteRoomServlet
 */
@WebServlet("/admin/room/delete")
public class AdminDeleteRoomServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Room room = new Room();
		
		try {
			RoomService roomService = new RoomService();
			String roomId = request.getParameter("room_id");
			
			int id = Integer.parseInt(roomId);
			roomService.deleteRoom(id);
			
			response.sendRedirect(request.getContextPath() +"/rooms_list" );
		} catch (ValidationException e) {
			e.printStackTrace();
		} catch (ServiceException e) {
			e.printStackTrace();
		}
	}

}

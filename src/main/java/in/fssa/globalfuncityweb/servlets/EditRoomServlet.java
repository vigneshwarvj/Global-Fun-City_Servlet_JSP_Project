package in.fssa.globalfuncityweb.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
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
 * Servlet implementation class EditRoomServlet
 */
@WebServlet("/room/edit")
public class EditRoomServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		RequestDispatcher rd = request.getRequestDispatcher("/edit_room.jsp");
//		rd.forward(request, response);
		
		String roomId = request.getParameter("room_id");
		
		try {
			Room room = RoomService.findByRoomId(Integer.parseInt(roomId));
			request.setAttribute("editRoom", room);
			RequestDispatcher dispatcher = request.getRequestDispatcher("/edit_room.jsp");
			dispatcher.forward(request, response);
		} catch (ServiceException e) {
			e.printStackTrace();
		} catch (NumberFormatException e) {
			e.printStackTrace();
		} catch (ValidationException e) {
			e.printStackTrace();
		} 
	}


}

package in.fssa.globalfuncityweb.servlets;

import java.io.IOException;
import java.io.PrintWriter;

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
 * Servlet implementation class FindByRoomIdServlet
 */
@WebServlet("/admin/dashboard/rooms_list/details")
public class FindByRoomIdServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//PrintWriter out = response.getWriter();
		
		String roomId = request.getParameter("room_id");
		int id = Integer.parseInt(roomId);
		
		try {
			Room room = RoomService.findByRoomId(id);
			request.setAttribute("roomDetails", room);
			RequestDispatcher dispatcher = request.getRequestDispatcher("/admin/get_room_by_id.jsp");
			dispatcher.forward(request, response);
		} catch (ServiceException e){
			e.printStackTrace();
		} catch (ValidationException e) {
			e.printStackTrace();
			
		}		
}
}
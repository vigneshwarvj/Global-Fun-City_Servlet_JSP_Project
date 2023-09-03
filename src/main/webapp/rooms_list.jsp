<%@page import="java.util.Set"%>
<%@page import="in.fssa.globalfuncity.model.Room"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List of Rooms</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<h2>List of Rooms</h2>

<% Set<Room> listOfRooms = (Set<Room>) request.getAttribute("rooms_list");%>
  


<table>
  <tr>
    <th>Room id</th>
    <th>Hotel Name</th>
    <th>Room Name</th>
    <th>No of Beds</th>
    <th>Price</th>
    <th>View Details </th>
  </tr>
  
   <% for(Room room : listOfRooms){ %>
 
  <tr>
    <td> <%= room.getRoomId() %> </td>
    <td> <%= room.getHotelName() %></td>
    <td> <%= room.getRoomName() %></td>
    <td> <%= room.getNoOfBeds() %></td>
    <td> $ <%= room.getPrice() %></td>
    <td> <a href = "rooms_list/details" > <button type="submit">View Details</button> </a> </td>
  </tr>

<%}; %>

  </table>


</body>
</html>
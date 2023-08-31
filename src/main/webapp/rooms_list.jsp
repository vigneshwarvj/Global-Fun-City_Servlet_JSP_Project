<%@page import="in.fssa.globalfuncity.model.Room"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.HashSet"%>
<%@page import="in.fssa.globalfuncity.service.RoomService"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Rooms</title>

<style>
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: #dddddd;
}
</style>

</head>
<body>

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
    <th>Edit</th>
    <th>Delete </th>
  </tr>
  
   <% for(Room room : listOfRooms){ %>
 
  <tr>
    <td> <%= room.getRoomId() %> </td>
    <td> <%= room.getHotelName() %></td>
    <td> <%= room.getRoomName() %></td>
    <td> <%= room.getNoOfBeds() %></td>
    <td> $ <%= room.getPrice() %></td>
    <td> <a href = "rooms_list/details" > <button type="submit">View Details</button> </a> </td>
    <td> <a href = "room/edit?room_id=<%=room.getRoomId()%>"> <button type="submit">Edit</button> </a> </td>
    <td> <a href = "room/delete?room_id="<%=room.getRoomId()%> > <button type="submit">Delete</button> </a> </td>
    
  </tr>

<%}; %>

  </table>





</body>
</html>
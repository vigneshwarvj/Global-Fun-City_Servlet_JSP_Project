<%@page import="in.fssa.globalfuncity.model.Room"%>
<%@page import="in.fssa.globalfuncity.service.RoomService"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Room</title>
</head>
<body>

<%
  Room room = (Room) request.getAttribute("editRoom");
%>

<form action="update?room_id=<%=room.getRoomId()%>" method="post">
  <label for="fname">Hotel name:</label>
  <input type="text" name="hotel_name" value="<%=room.getHotelName() %>" required><br>
  
  <label for="mname">Room Name</label>
  <input type= "text"name="room_name" value="<%=room.getRoomName() %>" required> <br>
  
  <label for="lname">No Of Beds</label>
  <input type="text" name="no_of_beds" value="<%=room.getNoOfBeds() %>" required><br>
  
  <label for="email">Price</label>
  <input type="text" name="room_price" value="<%=room.getPrice() %>" required><br>
  
  <label for="photo">Room Image URL:</label>
  <input type="url" name="room_image" value="<%=room.getRoomImageUrl() %>" required> <br>
  
  <label for="amenities">Amenities</label>
  <input type="text" name="room_amenity" value="<%=room.getRoomAmenities() %>" > <br>
  
  
  <button type="submit" value="Submit"> Update </button>

</form>

</body>
</html>
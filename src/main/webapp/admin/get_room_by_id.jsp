<%@page import="in.fssa.globalfuncity.model.Room"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title></title>
</head>
<body>

<%
  Room room = (Room) request.getAttribute("roomDetails");
%>


  <label for="fname">Hotel name:</label>
  <input type="text" name="hotel_name" value="<%=room.getHotelName() %>" ><br>
  
  <label for="mname">Room Name</label>
  <input type= "text"name="room_name" value="<%=room.getRoomName() %>" > <br>
  
  <label for="lname">No Of Beds</label>
  <input type="text" name="no_of_beds" value="<%=room.getNoOfBeds() %>" ><br>
  
  <label for="email">Price</label>
  <input type="text" name="room_price" value="<%=room.getPrice() %>" ><br>
  
  <label for="image">Image:</label>
  <input type="url" name="room_photo" value="<%=room.getRoomImageUrl() %>" >
  
  <label for="amenties">Amenities:</label>
  <input type= "text" name="room_amenties" value="<%=room.getRoomAmenities() %> ">

  <button type="submit">Book Now</button>	

</body>
</html>
<%@page import="java.util.Set"%>
<%@page import="in.fssa.globalfuncity.model.Room"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<meta charset="UTF-8">
	<link rel="icon" type="image/x-icon" href="<%=request.getContextPath()%>/assets/images/favicon.png">
	<title>Book Now | Select Rooms | Global Fun City </title>
	<link rel="stylesheet" href="<%=request.getContextPath()%>/assets/book now css/selectrooms.css">
	
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Inter+Tight&family=Libre+Baskerville:ital,wght@0,400;0,700;1,400&family=Nanum+Pen+Script&family=Open+Sans:wght@700&family=Poppins:wght@300;500&family=Reem+Kufi&family=Sacramento&display=swap" rel="stylesheet">
	
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=League+Spartan:wght@500&family=Poppins:wght@300;500&family=Rubik+Microbe&display=swap" rel="stylesheet">
	
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css">

</head>

<body>

<jsp:include page="header.jsp"></jsp:include>


<% Set<Room> listOfRooms = (Set<Room>) request.getAttribute("rooms_list");%>
  
  

            <div class="background-0">
                <div class="book-now">
                    <h1>Book Now</h1>
                </div>
  
  
<div class="paddingFortotalAssign">

<div class="search-2">
    <h2> Select Rooms</h2>
</div>
<hr>
  
  <section class="total_section_to_rooms">
  
   <% for(Room room : listOfRooms){ %>



 <div class="photo-of-room-about">
    <!--brief-of-room-->
    
    <input type="radio" id="radio" name="radio_rooms" value="room" required>
    
	<div class="photo-of-room">
        <img src="<%=room.getRoomImageUrl() %>" width="250" height="170" alt="photo-of-room">
    </div>

    <div class="about-price">
        <div class="about">
            <h3><%= room.getHotelName() %></h3>
            <h4><%= room.getRoomName() %></h4>
            <h5>No of Beds:<%= room.getNoOfBeds() %></h5>
            <h5>Room ID: <%=room.getRoomId() %> </h5>
        </div>
    </div>
</div>

<div class="break-price-button"> 
    <!-- div for break-price  -->
    
    <div class="room-with-break">
        <h4>Amenties</h4>
        <ul>
            <li> <%=room.getRoomAmenities() %></li>
        </ul>
        <p>Book your stay now at Global Fun City at best available rates!!</p>
    </div>

    <div class="price">
        <span>$<%= room.getPrice() %></span>/ night
        <br>
        &nbsp; <a href="">
            <button> Book Now </button>
        </a>
    </div>
</div>

<hr>


<%}; %>

</section>
</div>
</div>


</body>
</html>








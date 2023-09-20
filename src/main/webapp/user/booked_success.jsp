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

        <title>Booked Success - Global Fun City</title>
        <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/book now css/final-book-now.css">
        <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/book now css/selectrooms.css">

        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Inter+Tight&family=Libre+Baskerville:ital,wght@0,400;0,700;1,400&family=Nanum+Pen+Script&family=Open+Sans:wght@700&family=Poppins:wght@300;500&family=Reem+Kufi&family=Sacramento&display=swap" rel="stylesheet">

        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=League+Spartan:wght@500&family=Poppins:wght@300;500&family=Rubik+Microbe&display=swap" rel="stylesheet">

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css">

<style>

.hurrah h1{
	font-family: 'league spartan', sans-serif;
	font-size: 50px;
	color: #ffa41d;
}
.hurrah h2{
	font-family: 'Poppins', sans-serif;
}
.hurrah-gif{
	display: flex;
	justify-content: space-around;
	align-items: center;
}
.gif{
	margin: 70px 0px 80px 0px ;
}
.hurrah button{
	padding: 15px;
	border-radius: 50px;
	background-color: #ff5757;
	color: white;
	border: none;
	font-family: 'league spartan', sans-serif;
}


</style>

</head>
<body>

<div class="hurrah-gif">
                            <div class="hurrah">
                                <h1>Hurrah! &#127881;</h1>
                                <h2>Your Ticket is booked.</h2>
                                <h2>Enjoy the Vibe in Global Fun City.</h2>
                                <h2>Your e-ticket has been sent to email id</h2>
                                <a href="/globalfuncityweb/index">
                                    <button> <i class="fa-solid fa-arrow-left"></i> Back to Home</button>
                                </a>
                            </div>

                            <div class="gif">
                                <img src="https://iili.io/J9Fj8CX.gif" width="500" alt="gif">
                            </div>
                        </div>


<% Set<Room> listOfRooms = (Set<Room>) request.getAttribute("rooms_list");%>
  
  

            <div class="background-0" style="height: auto;">
                <div class="book-now">
                    <h1>Book Now</h1>
                </div>
  
  
<div class="paddingFortotalAssign">

<div class="search-2">
    <h2>We also provide Excellent rooms to stay and Enjoy</h2>
</div>
<hr>
  
  <section class="total_section_to_rooms">
  
   <% for(Room room : listOfRooms){ %>


 <div class="photo-of-room-about">
    <!--brief-of-room-->
    
    <input type="radio" class="room-radio" name="radio_rooms" value="<%= room.getRoomId() %>" required>
    
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
        &nbsp; 
            <button id="book-now-button"> Book Now </button>
      
    </div>
</div>

<hr>


<%}; %>

</section>
</div>
</div>

<script>
    document.addEventListener("DOMContentLoaded", function () {
        const bookNowButton = document.getElementById("book-now-button");
        const radioButtons = document.querySelectorAll(".room-radio");

        bookNowButton.addEventListener("click", function () {
            let selectedRoomId = null;
            let radioSelected = false;

            // Check if any radio button is selected
            radioButtons.forEach(function (radioButton) {
                if (radioButton.checked) {
                    selectedRoomId = radioButton.value;
                    radioSelected = true;
                }
            });

            // If a radio button is selected, redirect to another page
            if (radioSelected) {
                // Construct the URL for the next page with the selected room ID
                const nextPageUrl = `/path/to/next/page?room_id=${selectedRoomId}`;

                // Redirect to the next page
                window.location.href = nextPageUrl;
            } else {
                // If no radio button is selected, show an alert
                alert("Please select one of the rooms.");
            }
        });
    });
</script>


</body>
</html>
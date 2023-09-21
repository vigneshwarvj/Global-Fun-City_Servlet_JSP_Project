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

<jsp:include page="header.jsp"></jsp:include>

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
  	<input type="hidden" id="tickeId" value="<%= request.getAttribute("trackId")%>"/> 
  	<input type="hidden" id="userId" value="<%=request.getSession(false).getAttribute("userId")%>" /> 
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
           <button class="book-now-button" data-room-id="<%= room.getRoomId() %>" data-room-price="<%= room.getPrice() %>">Book Now</button>
      
    </div>
</div>


<hr>


<%}; %>

</section>
</div>
</div>

<script>
document.addEventListener("DOMContentLoaded", function () {
    const bookNowButtons = document.querySelectorAll(".book-now-button");

    bookNowButtons.forEach(async function (button) {
        button.addEventListener("click", async function () {
            const roomId = button.getAttribute("data-room-id");
            const roomPrice = button.getAttribute("data-room-price");
            const ticketId = document.querySelector("#tickeId");
            const userId = document.querySelector("#userId");

            // Prepare the request parameters
            const params = new URLSearchParams();
            params.append("roomId", roomId);
            params.append("roomPrice", roomPrice);
            params.append("userId", userId);
            params.append("ticketId", ticketId);

            try {
                const response = await fetch("/", {
                    method: "POST",
                    headers: {
                        "Content-type": "application/x-www-form-urlencoded",
                    },
                    body: params.toString(),
                });

                if (response.status === 200) {
                    // Handle the success response if needed
                    const responseBody = await response.text();
                    // Redirect to another page or show a success message
                } else {
                    // Handle the error response
                    console.error("Request failed with status:", response.status);
                }
            } catch (error) {
                // Handle network errors or other exceptions
                console.error("Error:", error);
            }
        });
    });
});

</script>



</body>
</html>
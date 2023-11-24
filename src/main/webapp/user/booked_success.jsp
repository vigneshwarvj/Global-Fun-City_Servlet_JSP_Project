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
                                <h2>Your Ticket is booked. <a href="<%=request.getContextPath()%>/user_dashboard">#<%=request.getAttribute("trackId")%></a> </h2>
                                <h2>Enjoy the Vibe in Global Fun City.</h2>
                                <h2>Your e-ticket has been sent to email id</h2>
                                <a href="<%=request.getContextPath()%>/index">
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

					<div class="check-in" style="font-family: 'open sans', sans-serif;">
                            <h4>You can Book Rooms Within these Check-in & Check-Out Dates:</h4>
                            <h5>Check In Date: <%=request.getAttribute("checkIn") %> </h5>
                            <h5>Check Out Date: <%=request.getAttribute("checkOut") %> </h5>
                            </div>

<div class="search-2">
    <h2>We also provide Excellent rooms to stay and Enjoy</h2>
</div>
<hr>
  
  <section class="total_section_to_rooms">
  	<input type="hidden" id="ticketId" value="<%=request.getAttribute("trackId")%>"/>  
  	<input type="hidden" id="noOfNights" value="<%=request.getAttribute("noOfNights")%>"/>
  	<input type="hidden" id="roomName" value="<%=request.getAttribute("roomName") %>" />
  	<input type="hidden" id="checkIn" value="<%=request.getAttribute("checkIn") %>" />
  	<input type="hidden" id="checkOut" value="<%=request.getAttribute("checkOut") %>" />
  	
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
            <h5>Room No: <%=room.getRoomId() %> </h5>
        </div>
    </div>
    
    <div id="booking-status-<%= room.getRoomId() %>"></div>
    
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
        <span>$<%= room.getPrice()%></span>/ night
        <br>
        &nbsp; 
           <button class="book-now-button" data-room-id="<%= room.getRoomId() %>" data-room-price="<%= room.getPrice() %>" data-room-name="<%= room.getHotelName() %>">Book Now</button>
      
    </div>
</div>


<hr>


<%}; %>

</section>
</div>
</div>

<footer class="footer_for_gfc">

</footer>

<script>var contextPath = '<%=request.getContextPath()%>';</script>

<script src="<%=request.getContextPath()%>/js/footer.js"></script>


<script>

 const root = window.location.origin + contextPath;
document.addEventListener("DOMContentLoaded", function () {
    const bookNowButtons = document.querySelectorAll(".book-now-button");
    

    bookNowButtons.forEach(async function (button) {
        button.addEventListener("click", async function () {
            const roomId = button.getAttribute("data-room-id");
            const roomPrice = button.getAttribute("data-room-price");
            const roomName = button.getAttribute("data-room-name");
            const ticketId = document.querySelector("#ticketId").value;
            console.log(ticketId);
			const noOfnights = document.querySelector("#noOfNights").value;
			console.log(noOfnights);
 			const checkin = document.querySelector("#checkIn").value;
			console.log(checkin);
			const checkout = document.querySelector("#checkOut").value;
			console.log(checkOut);
			
			
			// Build the URL with query parameters
            /* const nextPageUrl = `/globalfuncityweb/book_tickets?ticketId=${ticketId}`;

            // Redirect to the next page with the updated URL
            window.location.href = nextPageUrl; */
			
            // Prepare the request parameters
            const params = new URLSearchParams();
            params.append("roomId", roomId);
            params.append("roomPrice", roomPrice);
            params.append("roomName", roomName);
            params.append("ticketId", ticketId);
            params.append("noOfNights", noOfnights);
            params.append("checkIn", checkin);
            params.append("checkOut", checkout);

            try {
                const response = await fetch(root+"/user/roombooking_success", {
                    method: "POST",
                    headers: {
                        "Content-type": "application/x-www-form-urlencoded",
                    },
                    body: params.toString(),
                });

                if (!response.ok) {
                    // Handle the success response if needed
                    const responseBody = await response.text();
                    alert("error occured")
                    // Redirect to another page or show a success message
                } else {
                    // Handle the error response
                    console.error("Request failed with status:", response.status);
                    window.location.href=root+"/user/roombooking_success";
                }
            } catch (error) {
                // Handle network errors or other exceptions
                console.error("Error:", error);
            }
        });
    });
});
 
 //Confirmation from Chat Alert "Select one of the rooms""
 
 /* const root = window.location.origin + "/globalfuncityweb";
 document.addEventListener("DOMContentLoaded", function () {
	    const bookNowButtons = document.querySelectorAll(".book-now-button");
	    const radioButtons = document.querySelectorAll(".room-radio");

	    bookNowButtons.forEach(async function (button) {
	        button.addEventListener("click", async function () {
	            // Check if any radio button is selected
	            let radioSelected = false;
	            radioButtons.forEach(function (radioButton) {
	                if (radioButton.checked) {
	                    radioSelected = true;
	                }
	            });

	            if (!radioSelected) {
	                alert("Please select one of the rooms.");
	                return; // Exit the function if no radio button is selected
	            }

	            const roomId = button.getAttribute("data-room-id");
	            const roomPrice = button.getAttribute("data-room-price");
	            const roomName = button.getAttribute("data-room-name");
	            const ticketId = document.querySelector("#ticketId").value;
	            const noOfNights = document.querySelector("#noOfNights").value;

	            // Prepare the request parameters
	            const params = new URLSearchParams();
	            params.append("roomId", roomId);
	            params.append("roomPrice", roomPrice);
	            params.append("roomName", roomName);
	            params.append("ticketId", ticketId);
	            params.append("noOfNights", noOfNights);

	            try {
	                const response = await fetch(root + "/user/roombooking_success", {
	                    method: "POST",
	                    headers: {
	                        "Content-type": "application/x-www-form-urlencoded",
	                    },
	                    body: params.toString(),
	                });

	                if (!response.ok) {
	                    // Handle the success response if needed
	                    const responseBody = await response.text();
	                    alert("error occurred");
	                    // Redirect to another page or show a success message
	                } else {
	                    // Handle the error response
	                    console.error("Request failed with status:", response.status);
	                    window.location.href = root + "/user/roombooking_success";
	                }
	            } catch (error) {
	                // Handle network errors or other exceptions
	                console.error("Error:", error);
	            }
	        });
	    });
	}); */
	
	
	//Alert as Room has been booked
	
  /* 	const root = window.location.origin + "/globalfuncityweb";
	document.addEventListener("DOMContentLoaded", function () {
	    const bookNowButtons = document.querySelectorAll(".book-now-button");
	    const radioButtons = document.querySelectorAll(".room-radio");

	    bookNowButtons.forEach(async function (button) {
	        button.addEventListener("click", async function () {
	            // Check if any radio button is selected
	            let radioSelected = false;
	            let selectedRoomId = null;

	            radioButtons.forEach(function (radioButton) {
	                if (radioButton.checked) {
	                    radioSelected = true;
	                    selectedRoomId = radioButton.value;
	                }
	            });

	            if (!radioSelected) {
	                alert("Please select one of the rooms.");
	                return; // Exit the function if no radio button is selected
	            }

	            // Gather room ID, price, and other details
	            const roomId = button.getAttribute("data-room-id");
	            const roomPrice = button.getAttribute("data-room-price");
	            const roomName = button.getAttribute("data-room-name");
	            const ticketId = document.querySelector("#ticketId").value;
	            const noOfNights = document.querySelector("#noOfNights").value;

	            // Perform a database query to check for existing bookings
	            const isRoomBooked = await checkRoomAvailability(selectedRoomId, ticketId);

	            if (isRoomBooked) {
	                alert("Room has already been booked for these dates. Please choose another room.");
	                return; // Exit the function if the room is already booked
	            }

	            // If everything is okay, proceed with the booking
	            const params = new URLSearchParams();
	            params.append("roomId", roomId);
	            params.append("roomPrice", roomPrice);
	            params.append("roomName", roomName);
	            params.append("ticketId", ticketId);
	            params.append("noOfNights", noOfNights);

	            try {
	                const response = await fetch(root + "/user/roombooking_success", {
	                    method: "POST",
	                    headers: {
	                        "Content-type": "application/x-www-form-urlencoded",
	                    },
	                    body: params.toString(),
	                });

	                if (!response.ok) {
	                    // Handle the success response if needed
	                    const responseBody = await response.text();
	                    alert("error occurred");
	                    // Redirect to another page or show a success message
	                } else {
	                    // Handle the error response
	                    console.error("Request failed with status:", response.status);
	                    window.location.href = root + "/user/roombooking_success";
	                }
	            } catch (error) {
	                // Handle network errors or other exceptions
	                console.error("Error:", error);
	            }
	        });
	    });
	});

	async function checkRoomAvailability(roomId, ticketId) {
	    try {
	        const response = await fetch(root + `/checkAvailability?roomId=${roomId}&ticketId=${ticketId}`);

	        if (response.ok) {
	            const data = await response.json();
	            return data.isRoomBooked; // Assuming your server returns a JSON object with a boolean field
	        } else {
	            console.error("Error checking room availability:", response.status);
	            return true; // Assume room is booked in case of an error
	        }
	    } catch (error) {
	        console.error("Error checking room availability:", error);
	        return true; // Assume room is booked in case of an error
	    }
	}   */


/* 	 const root = window.location.origin + "/globalfuncityweb";
	document.addEventListener("DOMContentLoaded", function () {
	    const bookNowButtons = document.querySelectorAll(".book-now-button");
	    const radioButtons = document.querySelectorAll(".room-radio");
	    const bookingStatusDiv = document.getElementById("booking-status");

	    bookNowButtons.forEach(async function (button) {
	        button.addEventListener("click", async function () {
	            // Check if any radio button is selected
	            let radioSelected = false;
	            let selectedRoomId = null;

	            radioButtons.forEach(function (radioButton) {
	                if (radioButton.checked) {
	                    radioSelected = true;
	                    selectedRoomId = radioButton.value;
	                }
	            });

	            if (!radioSelected) {
	                alert("Please select one of the rooms.");
	                return; // Exit the function if no radio button is selected
	            }

	            // Gather room ID, price, and other details
	            const roomId = button.getAttribute("data-room-id");
	            const roomPrice = button.getAttribute("data-room-price");
	            const roomName = button.getAttribute("data-room-name");
	            const ticketId = document.querySelector("#ticketId").value;
	            const noOfNights = document.querySelector("#noOfNights").value;

	            // Perform a database query to check for existing bookings
	            const isRoomBooked = await checkRoomAvailability(selectedRoomId, ticketId);

	            if (isRoomBooked) {
	                // Display booking status
	                bookingStatusDiv.textContent = "Room has been booked.";
	                bookingStatusDiv.style.color = "red";

	                // Disable the "Book Now" button
	                button.disabled = true;
	                return; // Exit the function if the room is already booked
	            }


	            // If everything is okay, proceed with the booking
	            const params = new URLSearchParams();
	            params.append("roomId", roomId);
	            params.append("roomPrice", roomPrice);
	            params.append("roomName", roomName);
	            params.append("ticketId", ticketId);
	            params.append("noOfNights", noOfNights);

	            try {
	                const response = await fetch(root + "/user/roombooking_success", {
	                    method: "POST",
	                    headers: {
	                        "Content-type": "application/x-www-form-urlencoded",
	                    },
	                    body: params.toString(),
	                });

	                if (!response.ok) {
	                    // Handle the success response if needed
	                    const responseBody = await response.text();
	                    alert("error occurred");
	                    // Redirect to another page or show a success message
	                } else {
	                    // Handle the error response
	                    console.error("Request failed with status:", response.status);
	                    window.location.href = root + "/user/roombooking_success";
	                }
	            } catch (error) {
	                // Handle network errors or other exceptions
	                console.error("Error:", error);
	            }
	        });
	    });
	});
	
	// Define the checkRoomAvailability function
    async function checkRoomAvailability(roomId, ticketId) {
        try {
            const response = await fetch(`/globalfuncityweb/user/checkRoomAvailability?roomId=${roomId}&ticketId=${ticketId}`);
            if (!response.ok) {
                throw new Error(`HTTP error! Status: ${response.status}`);
            }
            const data = await response.json();
            return data.isAvailable; // Assuming the response contains a property 'isAvailable'
        } catch (error) {
            console.error('Error checking room availability:', error);
            return false; // Return false on error
        }
    } */

 
    
 // ...
/*  
  const root = window.location.origin + "/globalfuncityweb";
	document.addEventListener("DOMContentLoaded", function () {
	    const bookNowButtons = document.querySelectorAll(".book-now-button");
	    const radioButtons = document.querySelectorAll(".room-radio");
	    const bookingStatusDiv = document.getElementById("booking-status");

	 // ...

	    bookNowButtons.forEach(async function (button) {
	        button.addEventListener("click", async function () {
	            // Check if any radio button is selected
	            let radioSelected = false;
	            let selectedRoomId = null;

	            radioButtons.forEach(function (radioButton) {
	                if (radioButton.checked) {
	                    radioSelected = true;
	                    selectedRoomId = radioButton.value;
	                }
	            });

	            if (!radioSelected) {
	                alert("Please select one of the rooms.");
	                return; // Exit the function if no radio button is selected
	            }

	            // Gather room ID, price, and other details
	            const roomId = button.getAttribute("data-room-id");
	            const roomPrice = button.getAttribute("data-room-price");
	            const roomName = button.getAttribute("data-room-name");
	            const ticketId = document.querySelector("#ticketId").value;
	            const noOfNights = document.querySelector("#noOfNights").value;

	            // Perform a database query to check for existing bookings
	            const isRoomBooked = await checkRoomAvailability(selectedRoomId, ticketId);

	            // Display the message in the specific room details
	            const bookingStatusDiv = document.querySelector(`#booking-status-${selectedRoomId}`);
	            if (bookingStatusDiv) {
	                if (isRoomBooked) {
	                    bookingStatusDiv.textContent = "Room has been booked. Choose any other room.";
	                    bookingStatusDiv.style.color = "red"; // You can apply styles if needed
	                    // Disable the "Book Now" button
	                    button.disabled = true;
	                    return; // Exit the function if the room is already booked
	                } else {
	                    // Clear the message if the room is available
	                    bookingStatusDiv.textContent = "";
	                    bookingStatusDiv.style.color = ""; // Reset the style
	                    // Enable the "Book Now" button
	                    button.disabled = false;
	                }
	            }

	            // If everything is okay, proceed with the booking
	            const params = new URLSearchParams();
	            params.append("roomId", roomId);
	            params.append("roomPrice", roomPrice);
	            params.append("roomName", roomName);
	            params.append("ticketId", ticketId);
	            params.append("noOfNights", noOfNights);

	            try {
	                const response = await fetch(root + "/user/roombooking_success", {
	                    method: "POST",
	                    headers: {
	                        "Content-type": "application/x-www-form-urlencoded",
	                    },
	                    body: params.toString(),
	                });

	                if (!response.ok) {
	                    // Handle the success response if needed
	                    const responseBody = await response.text();
	                    alert("error occurred");
	                    // Redirect to another page or show a success message
	                } else {
	                    // Handle the error response
	                    console.error("Request failed with status:", response.status);
	                    window.location.href = root + "/user/roombooking_success";
	                }
	            } catch (error) {
	                // Handle network errors or other exceptions
	                console.error("Error:", error);
	            }
	        });
	    }); */


 
 
</script>



</body>
</html>
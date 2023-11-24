<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
		<meta charset="ISO-8859-1">
        <meta charset="UTF-8">
        <link rel="icon" type="image/x-icon" href="<%=request.getContextPath()%>/assets/images/favicon.png">

        <title>Book Now - Global Fun City</title>
        <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/booknow.css">

        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Inter+Tight&family=Libre+Baskerville:ital,wght@0,400;0,700;1,400&family=Nanum+Pen+Script&family=Open+Sans:wght@700&family=Poppins:wght@300;500&family=Reem+Kufi&family=Sacramento&display=swap" rel="stylesheet">

        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=League+Spartan:wght@500&family=Poppins:wght@300;500&family=Rubik+Microbe&display=swap" rel="stylesheet">

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css">

<style>
.terms-and-conditions{
	padding: 0px 0px 0px 25px;
}
.terms-and-conditions-h4{
	font-family: 'league spartan', sans-serif;
	font-size: 1.5rem;
}
.terms-and-conditions-h5, .terms-and-conditions-p{
	font-family: 'open sans', sans-serif;
}
.instructions-ol{
	font-family: 'poppins', sans-serif;
}

.btn-book-now p{
	font-family: 'open sans', sans-serif;
	color: #ff4612;
}
.btn-book-now{
	padding: 15px 35px 15px 35px;
	background-color: #ffa51d;
	font-size: 15px;
	color: white;
	font-family: 'poppins', sans-serif;
	border: none;
	cursor: pointer;
}

/* Style for checkbox */
/* .checkbox-container {
  display: inline-block;
  position: relative;
  padding-left: 35px;
  margin-bottom: 12px;
  cursor: pointer;
  font-size: 16px;
  user-select: none;
}

.custom-checkbox {
  position: absolute;
  opacity: 0;
  cursor: pointer;
  height: 0;
  width: 0;
}

.checkmark {
  position: absolute;
  top: 0;
  left: 0;
  height: 20px;
  width: 20px;
  background-color: #eee;
  border-radius: 4px;
  transition: background-color 0.3s;
  box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
}

.checkmark:after {
  content: "";
  position: absolute;
  display: none;
  left: 9px;
  top: 5px;
  width: 5px;
  height: 10px;
  border: solid white;
  border-width: 0 3px 3px 0;
  transform: rotate(45deg);
}

.custom-checkbox:checked ~ .checkmark {
  background-color: #2196F3;
  box-shadow: 0 3px 7px rgba(33, 150, 243, 0.3);
}

.custom-checkbox:checked ~ .checkmark:after {
  display: block;
}

@keyframes checkAnim {
  0% {
    height: 0;
  }

  100% {
    height: 10px;
  }
}

.custom-checkbox:checked ~ .checkmark:after {
  animation: checkAnim 0.2s forwards;
} */



</style>

</head>
<body>

<jsp:include page="header.jsp"></jsp:include>

		<div class="header">
            <a href="<%=request.getContextPath()%>/index">
                <img src="<%=request.getContextPath()%>/assets/images/globalfuncitylogo.png" class="header-logo" width="200px" alt="logo">
            </a>
            <nav class="navbar">
                <ul>
                    <li>
                        <a class="navigation__link" href="<%=request.getContextPath()%>/index">
                            <b>HOME</b>
                        </a>
                    </li>   
                    <li>
                        <a class="navigation__link" href="<%=request.getContextPath()%>/about">
                            <b>ABOUT</b> 
                        </a> 
                    </li>
                    <li>
                        <a class="navigation__link" href="<%=request.getContextPath()%>/events">
                            <b>EVENTS </b> 
                        </a> 
                    </li>
                    <li>
                        <a class="navigation__link" href="<%=request.getContextPath()%>/offers">
                            <b>OFFERS </b> 
                        </a> 
                    </li>
                    <li>
                        <a class="navigation__link" href="<%=request.getContextPath()%>/ticketprices">
                            <b>TICKET  PRICES </b>
                        </a> 
                    </li>
                    <li>
                        <a class="navigation__link" href="<%=request.getContextPath()%>/globalshop">
                            <b>SHOP</b>
                        </a> 
                    </li>
                    <li>
                        <a class="navigation__link" href="<%=request.getContextPath()%>/attractions">
                            <b>ATTRACTIONS </b>
                        </a> 
                    </li>
                    <li>
                        <a class="navigation__link" href="<%=request.getContextPath()%>/contact">
                            <b>CONTACT </b> 
                        </a> 
                    </li>
                </ul>

            </nav>
            <div>

			<jsp:include page="/user/booknow_button_redirect.jsp"></jsp:include>
                        
		</div>
</div>

<div class="background-0">
	<div class="book-now">
		<h1>Book Now</h1>
	</div>

<div class="background-color" style="height: 750px;">
<!--background color for search-->

	<div class="search">
		<h2> Booking Information</h2>
	</div>
	
	<hr>

<div class="search-availablity-information-msg">
		<form class="proceeding_ticket" action="/globalfuncityweb/book_tickets" method="post" onsubmit="return validateDates();">
			<div class="display_for_checkin_and_info" style="display: flex; justify-content: space-between;">
				<div class="search-availablity">
				
				<div class="search-information">
						<p> Check in  &nbsp; <input type="date" id="checkIndate" name="checkIndate"  required style="padding: 10px;"> </p> &nbsp;
						<p> Check out  &nbsp;<input type="date" id="checkOutdate" name="checkOutdate"  required style="padding: 10px;"></p>
				</div>

			<div class="room-adult-children">
					<p>Adult &nbsp; </p>
						<input type="number" id="numbers" name="totalClicksAdult" min="1" max="12" step="1" title="Don't give decimal numbers" oninput="validateInteger(this);" required> &nbsp;
						<span id="error" style="color: red;"></span>

					<p>Children (5-17 years) &nbsp;</p>
						<input type="number" id="numbers" name="totalClicksChildren" min="0" max="6" title="Don't give decimal numbers" required>
			</div>


				</div>
				
				<div class="information-facilities">
					<div class="information">
						<p>Get instant confirmation directly from the hotel!</p>
					</div>

				<div class="facilities">
					<ul>
					<li>
   						 <i class="fa-solid fa-wifi"></i>  Wi-Fi
					</li>
					<li>
   						 <i class="fa-solid fa-basketball"></i>  Indoor and Outdoor games
					</li>
					<li>
    					 <i class="fa-solid fa-person-hiking"></i>  Nature walk
					</li>
					</ul>
				</div>
		</div>
				
</div>
			
<hr style="margin:25px">

<div class="terms-and-conditions">
    <h4 class="terms-and-conditions-h4">Terms & Conditions</h4>
    <p class="terms-and-conditions-p">Please read these important terms and conditions for internet booking.</p>
    <h5 class="terms-and-conditions-h5">Wearing a face mask and following other Covid guidelines are mandatory (As per the directions from your local authorities)</h5>
</div>

<div class="instructions-ol">
    <ol>
    	<li>While Booking, Please give CheckIn Date (When you are in), CheckOut (When you are Out)</li>
    	<li>Eg: CheckIn (01-01-2024) - CheckOut (03-01-2024) No.Of.Days Calculated: 3 </li>
        <li>Tickets once purchased cannot be cancelled, exchanged, or refunded.</li>
        <li>Outside food and beverages are not allowed inside the park.</li>
        <li>Smoking is strictly prohibited inside the park premises.</li>
        <li>If a customer consumes alcohol, they will not be allowed inside the premises and the tickets will not be refunded.</li>
    </ol>
</div>

<p class="terms-and-conditions-p"><label class="checkbox-container">
    <input class="custom-checkbox" checked="" type="checkbox" required>
    <span class="checkmark"></span>
</label>By Clicking, I have read and understood the Terms and Conditions.</p>

 <input type="hidden" id="ticketId" name="ticketId" value="">

<button class="btn-book-now" type="submit" onclick="setTicketId()">Book Ticket</button>


</form>
</div>

<script>

/* document.addEventListener("DOMContentLoaded", function () {
    const bookNowButton = document.querySelector(".btn-book-now");

    bookNowButton.addEventListener("click", function () {
        const ticketId = document.querySelector("#ticketId").value;
        const redirectUrl = `/globalfuncityweb/book_tickets?ticketId=${ticketId}`;

        window.location.href = redirectUrl;
    });
}); */


//JavaScript function to set the ticketId in the hidden input field
/* function setTicketId() {
    // Assuming you have a JavaScript variable 'ticketIdValue' that holds the ticketId
    var ticketIdValue = getTicketId(); // Replace with your logic to get the ticketId

    // Set the ticketId value in the hidden input field
    document.getElementById("ticketId").value = ticketIdValue;
}

// Function to get the ticketId (you can replace this with your logic)
function getTicketId() {
    // Replace this with your logic to retrieve the ticketId
    // For example, you can use AJAX to fetch the ticketId from the server
    // and return it here.
    
    
    return 123; // Example ticketId
} */






//Normal Validation

//Check In
//Get the current date
/* var currentDate = new Date();

//Calculate tomorrow's date
var tomorrow = new Date(currentDate);
tomorrow.setDate(currentDate.getDate() + 1);

//Format it as YYYY-MM-DD for the input field
var tomorrowFormatted = tomorrow.toISOString().split("T")[0];

//Set the minimum date for the "Check In" date input field
document.getElementById("checkIndate").setAttribute("min", tomorrowFormatted);

//Check Out
//Set the minimum date for the "Check Out" date input field (also tomorrow)
document.getElementById("checkOutdate").setAttribute("min", tomorrowFormatted); */




//from kp

/* // Getting  the current date in "yyyy-MM-dd" format
		const currentDate = new Date().toISOString().split('T')[0];

// Setting the minimum date attribute to the current date
const startDate = document.getElementById('checkIndate');
startDate.setAttribute('min', currentDate);
document.getElementById('checkOutdate').setAttribute('min', currentDate);

// Getting the date input elements
const startDateInput = document.getElementById('checkIndate');
const endDateInput = document.getElementById('checkOutdate');

// Function to handle date change events
function handleDateChange() {
    const str = startDate.value;
    console.log(str);

    endDateInput.setAttribute('min', str);
}

// Adding an event listener to the end date input element
endDateInput.addEventListener('change', handleDateChange); */



//Get tomorrow's date
const tomorrow = new Date();
tomorrow.setDate(tomorrow.getDate() + 1);

// Convert tomorrow's date to the ISO date format (yyyy-mm-dd)
const tomorrowFormatted = tomorrow.toISOString().split('T')[0];

// Set the minimum date attribute for both input fields
document.getElementById('checkIndate').setAttribute('min', tomorrowFormatted);
document.getElementById('checkOutdate').setAttribute('min', tomorrowFormatted);

// Function to calculate the number of days between two dates
function calculateDays(startDate, endDate) {
    const start = new Date(startDate);
    const end = new Date(endDate);
    const timeDifference = end - start;
    const daysDifference = timeDifference / (1000 * 60 * 60 * 24);
    return daysDifference;
}

// Adding an event listener to the end date input element
const endDateInput = document.getElementById('checkOutdate');
endDateInput.addEventListener('change', function() {
    const checkInDate = document.getElementById('checkIndate').value;
    const checkOutDate = endDateInput.value;
    
    // Calculate the number of days between check-in and check-out
    const daysDifference = calculateDays(checkInDate, checkOutDate);
    
    if (daysDifference < 0) {
        alert("Check-out date cannot be earlier than check-in date");
        endDateInput.value = checkInDate; // Reset the check-out date
    }
});


//Validation for Adult count
/* const adultInput = document.getElementById('numbersAdult');
adultInput.addEventListener('change', function() {
    const inputValue = adultInput.value;
    
    // Check if the input value is a valid integer
    if (!Number.isInteger(parseFloat(inputValue))) {
        alert('Please enter a valid number for Adult');
        adultInput.value = ''; // Clear the input
    }
}); */



function validateInteger(input) {
    const value = input.value;
    const isValid = /^\d+$/.test(value); // Use regex to check if it's a positive integer

    if (!isValid) {
        document.getElementById('error').textContent = 'Please enter a valid Number.';
        input.setCustomValidity(''); // Clear browser's validation message
    } else {
        document.getElementById('error').textContent = '';
        input.setCustomValidity(''); // Clear browser's validation message
    }
}



</script>

</body>
</html>
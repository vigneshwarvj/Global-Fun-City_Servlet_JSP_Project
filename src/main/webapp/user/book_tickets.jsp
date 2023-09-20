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
</style>

</head>
<body>

<jsp:include page="header.jsp"></jsp:include>

		<div class="header">
            <a href="/globalfuncityweb/index">
                <img src="<%=request.getContextPath()%>/assets/images/globalfuncitylogo.png" class="header-logo" width="200px" alt="logo">
            </a>
            <nav class="navbar">
                <ul>
                    <li>
                        <a class="navigation__link" href="/globalfuncityweb/index">
                            <b>HOME</b>
                        </a>
                    </li>   
                    <li>
                        <a class="navigation__link" href="/globalfuncityweb/about">
                            <b>ABOUT</b> 
                        </a> 
                    </li>
                    <li>
                        <a class="navigation__link" href="/globalfuncityweb/events">
                            <b>EVENTS </b> 
                        </a> 
                    </li>
                    <li>
                        <a class="navigation__link" href="/globalfuncityweb/offers">
                            <b>OFFERS </b> 
                        </a> 
                    </li>
                    <li>
                        <a class="navigation__link" href="/globalfuncityweb/ticketprices">
                            <b>TICKET  PRICES </b>
                        </a> 
                    </li>
                    <li>
                        <a class="navigation__link" href="../../pages/shop/shop.html">
                            <b>SHOP</b>
                        </a> 
                    </li>
                    <li>
                        <a class="navigation__link" href="/globalfuncityweb/attractions">
                            <b>ATTRACTIONS </b>
                        </a> 
                    </li>
                    <li>
                        <a class="navigation__link" href="/globalfuncityweb/contact">
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

<div class="background-color" style="height: 710px;">
<!--background color for search-->

	<div class="search">
		<h2> Booking Information</h2>
	</div>
	
	<hr>

<div class="search-availablity-information-msg">
		<form class="proceeding_ticket" action="/globalfuncityweb/book_tickets" method="post">
			<div class="display_for_checkin_and_info" style="display: flex; justify-content: space-between;">
				<div class="search-availablity">
				
				<div class="search-information">
						<p> Check in  &nbsp; <input type="date" id="checkIndate" name="checkIndate"  required> </p> &nbsp;
						<p> Check out  &nbsp;<input type="date" id="checkOutdate" name="checkOutdate"  required></p>
				</div>

			<div class="room-adult-children">
					<p>Adult &nbsp; </p>
						<input type="number" id="numbers" name="totalClicksAdult" min="1" max="12" required> &nbsp;

					<p>Children (5-17 years) &nbsp;</p>
						<input type="number" id="numbers" name="totalClicksChildren" min="0" max="6" required>
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

<button class="btn-book-now" type="submit">Book Ticket</button>


</form>
</div>

<script>

//Check In
//Get the current date
var currentDate = new Date();

//Calculate tomorrow's date
var tomorrow = new Date(currentDate);
tomorrow.setDate(currentDate.getDate() + 1);

//Format it as YYYY-MM-DD for the input field
var tomorrowFormatted = tomorrow.toISOString().split("T")[0];

//Set the minimum date for the "Check In" date input field
document.getElementById("checkIndate").setAttribute("min", tomorrowFormatted);

//Check Out
//Set the minimum date for the "Check Out" date input field (also tomorrow)
document.getElementById("checkOutdate").setAttribute("min", tomorrowFormatted);



//Counting Increment for Adult:
let count = 1;
document.getElementById("add_adult").addEventListener("click",function(event){
    count++;
    document.getElementById("totalClicksAdult").innerText = count;
    //Increasing the total price in the price space:
    //let newAdultPrice = count * adultPrice;
    //document.getElementById("add_adultPrice").innerText = "Adult Price: $" + newAdultPrice;
})

//Counting Decrement for Adult:
document.getElementById("sub_adult").addEventListener("click",function(event){
    if(count > 1){
        count--;
        document.getElementById("totalClicksAdult").innerText = count;
        //Decreasing the total price in the price space:
        //let newAdultPrice = count * adultPrice;
        //document.getElementById("add_adultPrice").innerText = "Adult Price: $" + newAdultPrice;
    }
    else{ //Goes down to 1: Alert
        alert("Oops! Give a valid number")
    }
})

//Counting Increment for Children:
let countChildren = 0;
document.getElementById("add_children").addEventListener("click", function (event) {
    countChildren ++;
    document.getElementById("totalClicksChildren").innerText = countChildren;
    //Increasing the total price in the price space:
    //let newChildrenPrice = countChildren * childrenPrice;
    //document.getElementById("add_childrenPrice").innerText = "Children Price: $" + newChildrenPrice;
})

//Counting Decrement for Children:
document.getElementById("sub_children").addEventListener("click", function (event) {
    if(countChildren > 0){
        countChildren --;
        document.getElementById("totalClicksChildren").innerText = countChildren;
        //Decreasing the total price in the price space:
        //let newChildrenPrice = countChildren * childrenPrice;
        //document.getElementById("add_childrenPrice").innerText = "Children Price: $" + newChildrenPrice;
    }
})


    const yesRadioButton = document.getElementById("yes");
    const noRadioButton = document.getElementById("no");

    yesRadioButton.addEventListener("change", function () {
        // Check if "Yes" is selected, then redirect to another page
        if (yesRadioButton.checked) {
            window.location.href = "another_page.jsp";
        }
    });

    noRadioButton.addEventListener("change", function () {
        // Check if "No" is selected, then redirect to the payment page
        if (noRadioButton.checked) {
            window.location.href = "booked_success.jsp";
        }
    });

</script>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Book Now | Global Fun City</title>
<script src="https://kit.fontawesome.com/1024979679.js" crossorigin="anonymous"></script>

<style>

.book-now{
	font-family: 'league spartan', sans-serif;
	text-align: center;
	font-size: 25px;
	padding: 30px 0px 30px 0px;
}
.background-0{
	height: 825px;
	background-color: #eee;
}
.background-color{
	width: 1200px;
    height: 559px;
	background-color: wheat;
	margin-left: 165px;
}
.btn-sub, .btn-add{
	padding: 14px 16px 14px 16px;
	background-color: white;
	margin: auto;
	border:1px solid #ffa51d;
	color: #ffa51d;
	
}
.room-adult-children{
display:flex;
align-items: center;
}
.price-for-adult-children{
	display: flex; 
	justify-content: space-around; 
	font-family: 'poppins', sans-serif;
}


.search-availablity-information-msg{
	display: flex;
	justify-content: space-around;
	/* margin-left: 165px; */
	align-items: center;
}
.search{
	font-family: 'league spartan', sans-serif;
	color: #ff4612;
	padding: 8px 0px 0px 30px;

}
.search-information{
    display: flex;
	/* padding-left: 20px; */
	justify-content: space-around;
}
.search-information p{
	font-family: 'poppins', sans-serif;
}
.search-information input{
	padding: 10px;

}


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

.btn-book-now {
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

<div class="background-0">
<div class="book-now">
<h1>Book Now</h1>
</div>

<div class="background-color">
<!--background color for search-->

<div class="search">
<h2> Search</h2>
</div>
<hr>

<div class="search-availablity-information-msg">
<form class="proceeding_ticket" action="/globalfuncityweb/user/book_tickets" method="post">
<div class="display_for_checkin_and_info" style="display: flex;">
<div class="search-availablity">
<div class="search-information">
<p>
Check in  &nbsp; <input type="date" id="checkIndate" name="checkIndate"  required> 
</p> &nbsp;
<p>
Check out  &nbsp;<input type="date" id="checkOutdate" name="checkOutdate"  required>
</p>
</div>

<div class="room-adult-children">
    
<p>Adult &nbsp; </p>

<select id="numbers" name="totalClicksAdult">
  <option value="1">1</option>
  <option value="2">2</option>
  <option value="3">3</option>
  <option value="4">4</option>
  <option value="5">5</option>
  <option value="6">6</option>
  <option value="7">7</option>
  <option value="8">8</option>
  <option value="9">9</option>
  <option value="10">10</option>
  <option value="11">11</option>
  <option value="12">12</option>
</select>

&nbsp;

<p>Children (5-17 years) &nbsp;</p>

<select id="numbers" name="totalClicksChildren">
  <option value="0">0</option>
  <option value="1">1</option>
  <option value="2">2</option>
  <option value="3">3</option>
  <option value="4">4</option>
  <option value="5">5</option>
</select>

</div>


</div>
</div>

<div class="terms-and-conditions">
    <h4 class="terms-and-conditions-h4">Terms & Conditions</h4>
    <p class="terms-and-conditions-p">Please read these important terms and conditions for internet booking.</p>
    <h5 class="terms-and-conditions-h5">Wearing a face mask and following other Covid guidelines are mandatory (As per the directions from your local authorities)</h5>
</div>

<div class="instructions-ol">
    <ol>
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

//Check In and CHeck out dates:
//Check In
//Get the current date
var currentDate = new Date().toISOString().split("T")[0];

//Set the minimum date for the date input field
document.getElementById("checkIndate").setAttribute("min", currentDate);

//Check OUt
//Get the current date
var currentDate = new Date().toISOString().split("T")[0];

//Set the minimum date for the date input field
document.getElementById("checkOutdate").setAttribute("min", currentDate);


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
</script>

</body>
</html>
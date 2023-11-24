<%@page import="in.fssa.globalfuncity.model.Room"%>
<%@page import="in.fssa.globalfuncity.model.UserRoom"%>
<%@page import="in.fssa.globalfuncity.model.User"%>
<%@page import="in.fssa.globalfuncity.model.Ticket"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
		<meta charset="ISO-8859-1">
		<meta charset="UTF-8">
        <link rel="icon" type="image/x-icon" href="<%=request.getContextPath()%>/assets/images/favicon.png">

        <title> Your Rooms History | Global Fun City </title>
        <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/homepage css/user_tickets.css">
        <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/homepage_css/footer_gfc.css">
        

        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Inter+Tight&family=Libre+Baskerville:ital,wght@0,400;0,700;1,400&family=Nanum+Pen+Script&family=Open+Sans:wght@700&family=Poppins:wght@300;500&family=Reem+Kufi&family=Sacramento&display=swap" rel="stylesheet">

        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=League+Spartan:wght@500&family=Poppins:wght@300;500&family=Rubik+Microbe&display=swap" rel="stylesheet">

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css">
        
        <style>
        .font-your-tickets{
    text-align: center;
    font-family: 'league spartan', sans-serif;
    padding: 30px 0px 30px 0px;
    font-size: 2rem;
}

.total-div-for-ticket-detail{
	background-color: #eee;
    width: 100%;
	padding: 25px 0px 25px 0px;
    display: flex;
    /* flex-wrap: nowrap; */
    justify-content: space-evenly;
}
.name-of-the-title{
    font-family: 'poppins', sans-serif;
    font-size: 1rem;
}
.detail-from-user-to-buy{
    font-family: 'open sans', sans-serif;
    color: #838285;
}

.ticket-show{
	background-color: #eee;
    width: 100%;
	padding: 25px 0px 25px 0px;
    display: flex;
    /* flex-wrap: nowrap; */
    justify-content: space-evenly;
}
.status-booked{
	font-family: 'open sans', sans-serif;
	color: green;
}
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


<div class="total-homepages-div"> 
    <!-- Total Homepage div -->
<div class="homepages">
    <a href="<%=request.getContextPath()%>/index">Home <i class="fa-light fa-greater-than" style="color: #655b5b;"></i></a>
</div> &nbsp;
<div class="homepages">
    <a href="<%=request.getContextPath()%>/user_dashboard">Account <i class="fa-light fa-greater-than" style="color: #655b5b;"></i></a>
</div> &nbsp;
<div class="homepages">
    <a href="<%=request.getContextPath()%>/roomshistory">Your Rooms History</a>
</div>

</div>
<!-- Completing Div -->

<div class="font-your-tickets">
<h2>Your Booked Rooms History</h2>
</div>


<% List<Ticket> listOfTickets = (List<Ticket>) request.getAttribute("ticket"); %>
<% List<UserRoom> listOfRoomsBookedByUser = (List<UserRoom>) request.getAttribute("userRoom"); %>
<% User user = (User) request.getAttribute("user"); %>


<% if (listOfTickets.isEmpty() && listOfRoomsBookedByUser.isEmpty()) { %>
    <p style="text-align:center; font-family: 'open sans', sans-serif">No Tickets & rooms yet.</p>
<% } else { %>


 <% for(UserRoom userRooms : listOfRoomsBookedByUser)  { %>

<div class="background-image-fun-fair">

<div class="ticket-show">

	<div class="total-div-for-ticket-detail">

<!-- User Details -->
	<div class="ticket-show-detail-0">
    
    <h2 class="name-of-the-title">Name</h2> 

    <p class="detail-from-user-to-buy"><%=user.getFirstName()%></p>

	<h2 class="name-of-the-title">Phone</h2> 

	<p class="detail-from-user-to-buy"><%=user.getPhoneNumber() %></p>

	<h2 class="name-of-the-title">Email</h2> 

	<p class="detail-from-user-to-buy"><%=user.getEmail()%></p>
	
</div>

<!-- Ticket Details -->
<% for(Ticket ticket : listOfTickets)  { %>
            <% if (ticket.getTicketId() == userRooms.getTicketId()) { %>
                <div class="ticket-show-detail-1">
                	<h2 class="name-of-the-title">Ticket Details </h2>
                	<p class="detail-from-user-to-buy">Ticket ID: <%=ticket.getTicketId() %></p>
					<p class="detail-from-user-to-buy"> Check In: <%=ticket.getFromDate() %></p>
					<p class="detail-from-user-to-buy">Check Out: <%=ticket.getToDate() %></p>
					<p class="detail-from-user-to-buy"> Adult : <%=ticket.getNoOfAdult() %></p>
					<p class="detail-from-user-to-buy"> Children: <%=ticket.getNoOfChildren() %></p>
					<p class="detail-from-user-to-buy">Ticket Total Price: $<%=ticket.getTotalPrice() %></p>
					<%-- <p class="detail-from-user-to-buy">Booked at: <%=ticket.getCreatedAt() %></p> --%>
                </div>
            <% } %>
        <% } %>


<!-- Room Details -->
<div class="ticket-show-detail-2">

<h2 class="name-of-the-title">Room Details </h2>

<p class="detail-from-user-to-buy">Room No: <%=userRooms.getRoomId()%></p>
<p class="detail-from-user-to-buy">Room Name: <%=userRooms.getRoomName()%></p>
<p class="detail-from-user-to-buy">Room Total Price: $<%=userRooms.getTotalPrice() %></p>

<h2 class="name-of-the-title">Status</h2>

<p class="status-booked">Booked </p>

</div>




</div> 

</div>

</div>


<br>
<br>

<% } %>
<% } %>


<footer class="footer_for_gfc">

</footer>

<script>var contextPath = '<%=request.getContextPath()%>';</script>

<script src="<%=request.getContextPath()%>/js/footer.js"></script>


</body>
</html>















<%@page import="in.fssa.globalfuncity.model.User"%>
<%@page import="java.util.List"%>
<%@page import="in.fssa.globalfuncity.model.Ticket"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Booking History | Global Fun City</title>

<style>

.font-your-tickets{
    text-align: center;
    font-family: 'league spartan', sans-serif;
    padding: 0px 30px 30px 30px;
    font-size: 2rem;
}

.total-div-for-ticket-detail{
    display: flex;
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

<div class="font-your-tickets">
<h2>Your Tickets</h2>
</div>

<% List<Ticket> listOfTickets = (List<Ticket>) request.getAttribute("ticket");%>

<%User user = (User) request.getAttribute("user"); %>

<% for(Ticket ticket : listOfTickets)  { %>


<div class="background-image-fun-fair">

<div class="total-div-for-ticket-detail">

<div class="ticket-show-detail-0">
<h2 class="name-of-the-title">Name </h2> 

<p class="detail-from-user-to-buy"><%=user.getFirstName() %></p>

<h2 class="name-of-the-title">Phone number </h2> 

<p class="detail-from-user-to-buy"><%=user.getPhoneNumber() %></p>

<h2 class="name-of-the-title">Email </h2> 

<p class="detail-from-user-to-buy"><%=user.getEmail() %></p>
</div>

<div class="ticket-show-detail-1">

<h2 class="name-of-the-title">Ticket ID </h2>

<p class="detail-from-user-to-buy"> <%=ticket.getTicketId() %> </p>

<h2 class="name-of-the-title">From Date</h2> 

<p class="detail-from-user-to-buy"> <%=ticket.getFromDate() %></p>

<h2 class="name-of-the-title">To Date </h2> 

<p class="detail-from-user-to-buy"><%=ticket.getToDate() %></p>

</div>

<div class="ticket-show-detail-2">

<h2 class="name-of-the-title">Adult </h2> 
<p class="detail-from-user-to-buy">
    <%=ticket.getNoOfAdult() %>
</p>

<h2 class="name-of-the-title">Children</h2>

<p class="detail-from-user-to-buy">
    <%=ticket.getNoOfChildren() %> </p>

<h2 class="name-of-the-title">Total Price </h2>

<p class="detail-from-user-to-buy">$ <%=ticket.getTotalPrice() %></p>


</div> 

</div>

<%}; %>

</body>
</html>
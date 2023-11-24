<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
		<meta charset="ISO-8859-1">
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <link rel="icon" type="image/x-icon" href="<%=request.getContextPath()%>/assets/images/favicon.png">	
        <title> Ticket Prices - Global Fun City </title>
        <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/ticketprices.css">

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

<header>
		<div class="header">
            <div id="mySidenav" class="sidenav">
                <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
                <a class="navigation__link" href="../../index.html">HOME</a>
                <a class="active" href="../../pages/other pages/home.html"> ABOUT</a>
                <a class="navigation__link" href="../../pages/other pages/events.html"> EVENTS  </a> 
                <a class="navigation__link" href="../../pages/other pages/offer.html"> OFFERS  </a> 
                <a class="navigation__link" href="../../pages/other pages/ticketprices.html"> TICKET  PRICES </a> 
                <a class="navigation__link" href="../../pages/shop/shop.html"> SHOP </a> 
                <a class="navigation__link" href="../../pages/other pages/attractions.html"> ATTRACTIONS </a> 
                <a class="navigation__link" href="../../pages/other pages/contact.html"> CONTACT </a>
                <hr>
                <a href="../signup for booking/signup.html">BOOK TICKETS</a>
                <hr>
                <a href="../../pages/footer other pages/safetyofvisitors.html">Safety of visitors</a>
                <a href="../../pages/footer other pages/rulesandregulations.html">Rules & Regulations</a>
                <a href="../../pages/footer other pages/greeninitiatives.html">Green Initiatives</a>
                <a href="../../pages/footer other pages/csrinitiatives.html">CSR Initiatives</a>
                <hr>
                <a href="../../pages/signup for booking/signup.html">Sign In</a> 
            </div>
            <div class="icon-bar">
                <span style="font-size:30px;cursor:pointer" onclick="openNav()">&#9776;</span>
            </div>
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
                        <a class="active" href="<%=request.getContextPath()%>/ticketprices">
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
            <div class="btn=book-now">
            
		<jsp:include page="/user/booknow_button_redirect.jsp"></jsp:include>
		
        </div>
</header>


<div class="background-video">
            <div class="video">

                <video autoplay="false" loop muted plays-inline class="back-video">
                    <source src="<%=request.getContextPath()%>/assets/videos/aquapark video.mp4" type="video/mp4">
                </video>

            </div>
            <div class="upward-ticketprices">
                <div class="ticket">
                    <p>Ticket Prices</p>
                </div>

                <section class="sq-box">
                    <div class="adult-ticket">
                        <h3>Adult
                            Ticket </h3>
                        <h2>
                            $<span class="price-colour">80</span>/person
                        </h2>
                        <p>This ticket grants access to waterpark attractions, including waterslides, pools.</p>
                        
						 <% if(request.getSession().getAttribute("userId") != null){ %>
						
						<button class="btn-book-now" id="btn-booknow-adult"> <a href="/globalfuncityweb/user/book_tickets" id = "btn-booknow"> <b>BOOK NOW </b> </a> </button>
						
						 <%}else { %>
						 
						 <button class="btn-book-now" id="btn-booknow-adult"> <a href="/globalfuncityweb/login" id = "btn-booknow"> <b>BOOK NOW </b> </a> </button>
						 
						 <%	 
						} 
						%>
						
                    </div>

                    <div class="adult-ticket">
                        <h3>Children
                            Ticket
                        </h3>
                        <h2>
                            $<span class="price-colour">65</span>/person(5-17 years)
                        </h2>
                        <p>This ticket grants access to waterpark attractions, including waterslides, pools.</p>
                        
                        
                        <% if(request.getSession().getAttribute("userId") != null){ %>
						
						<button class="btn-ticket-book-now" id="btn-booknow-children"> <a href="<%=request.getContextPath()%>/book_tickets" id = "btn-booknow"> <b>BOOK NOW </b> </a> </button>
						
						 <%}else { %>
						 
						 <button class="btn-ticket-book-now" id="btn-booknow-children"> <a href="<%=request.getContextPath()%>/login" id = "btn-booknow"> <b>BOOK NOW </b> </a> </button>
						 
						 <%	 
						} 
						%>                        
                    </div>
                </section>
            </div>
        </div>

        <div class="content-gif">
            <div class="content">
                <h1>Exciting Events Happening At Global Fun City</h1>
                <a href="/globalfuncityweb/events">
                    <button>Learn More</button>
                </a>
            </div>

            <div class="gif">
                <img src="https://iili.io/J9YRXov.gif" width="600" alt="gif">
            </div>
        </div>

        <section class="get-updates">
            <h1>Want to Get Updates?</h1>
            <div class="email-address">
                <input type="text" placeholder="Enter Your Email Address" required>
                <a href="#">
                    <button>
                        <i class="fa-regular fa-paper-plane"></i> Subscribe
                    </button> 
                </a>
            </div>
            <div class="privacypolicy">
                <input type="checkbox" id="agree" required>	
                <label for="agree">
                    I agree to the <a href="#" target="_blank">Privacy Policy</label> </a>
	</div>
</section>

<footer class="footer_for_gfc">

</footer>

<script>var contextPath = '<%=request.getContextPath()%>';</script>

<script src="<%=request.getContextPath()%>/js/footer.js"></script>

</body>
</html>
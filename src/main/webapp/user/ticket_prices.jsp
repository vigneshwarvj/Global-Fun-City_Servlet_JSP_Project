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
                        <a class="active" href="/globalfuncityweb/ticketprices">
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
                        <button class="btn-book-now" id="btn-booknow-adult">
                            <b>BOOK NOW </b>
                        </button>
                    </div>

                    <div class="adult-ticket">
                        <h3>Children
                            Ticket
                        </h3>
                        <h2>
                            $<span class="price-colour">65</span>/person(5-17 years)
                        </h2>
                        <p>This ticket grants access to waterpark attractions, including waterslides, pools.</p>
                        <button class="btn-ticket-book-now" id="btn-booknow-children">
                            <b>BOOK NOW</b>
                        </button> 
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


					<footer>
                        <div class="logo">
                            <img src="<%=request.getContextPath()%>/assets/images/globalfuncitylogo.png" class="footer-logo" alt="logo">
                        </div>

                        <div class="address-open-hours-contact">	
                            <div class="address">
                                <h3>Location</h3>
                                <p>11113 W Baldwin RD, Monrovia, MD 21770, United States of America.</p>
                            </div>

                            <div class="open-hours">
                                <h3>Open Hours</h3>
                                <p>
                                    Weekdays: 09.30 am - 06:00 pm.<br>
                                    Weekends and Holidays: 09.30 am - 06.30 pm.
                                </p>
                            </div>

                            <div class="contact-for-more">
                                <h3>Contact</h3>
                                <p>+1 860 817 1080</p>
                                <p>info@globalfuncity.in</p>
                            </div>
                        </div>

                        <div class="navbar-footer">
                            <ul>
                                <li>
                                    <a class="navigation__link" href="/globalfuncityweb/about"> ABOUT US </a> 
                                </li>
                                <li>
                                    <a class="navigation__link" href="/globalfuncityweb/events"> EVENTS  </a> 
                                </li>
                                <li>
                                    <a class="navigation__link" href="/globalfuncityweb/offers"> OFFERS  </a> 
                                </li>
                                <li>
                                    <a class="navigation__link" href="/globalfuncityweb/ticketprices"> TICKET  PRICES </a> 
                                </li>
                                <li>
                                    <a class="navigation__link" href="../../pages/shop/shop.html"> SHOP </a> 
                                </li>
                                <li>
                                    <a class="navigation__link" href="/globalfuncityweb/attractions"> ATTRACTIONS </a> 
                                </li>
                                <li>
                                    <a class="navigation__link" href="/globalfuncityweb/contact"> CONTACT  </a> 
                                </li>
                            </ul>

                        </div>

                        <div class="other-navbar-footer">
                            <ul>
                                <li>
                                    <a class="other-navigation-link" href="../../pages/footer other pages/privacypolicy.html">PRIVACY POLICY</a>
                                </li>
                                <li>
                                    <a class="other-navigation-link" href="../../pages/footer other pages/safetyofvisitors.html">SAFETY AND HYGIENE</a>
                                </li>
                                <li>
                                    <a class="other-navigation-link" href="../../pages/footer other pages/rulesandregulations.html">RULES & REGULTIONS</a>
                                </li>
                                <li>
                                    <a class="other-navigation-link" href="../../pages/footer other pages/greeninitiatives.html">GREEN INITIATIVES</a>
                                </li>
                                <li>
                                    <a class="other-navigation-link" href="../../pages/footer other pages/csrinitiatives.html">CSR INITIATIVES</a>
                                </li>
                            </ul>
                        </div>

                        <div class="social-medias">
                            <div class="facebook">
                                <a href="#">
                                    <i class="fab fa-facebook-f"></i>
                                </a>
                            </div>

                            <div class="twitter">
                                <a href="#">
                                    <i class="fab fa-twitter"></i>
                                </a>
                            </div>

                            <div class="pinterest">
                                <a href="#">
                                    <i class="fab fa-pinterest"></i>
                                </a>
                            </div>
	
                            <div class="instagram">
                                <a href="#">
                                    <i class="fab fa-instagram"></i>
                                </a>
                            </div>

                            <div class="youtube">
                                <a href="#">
                                    <i class="fab fa-youtube"></i>
                                </a>
                            </div>
		
                        </div>
                        <hr>
                        <div class="copyright">
                            <p>Global Fun City &#169; 2022. All rights Reserved.
                                <br>Site designed by Vignesh.in
                            </p>
                        </div>
                    </footer>

                    <script>
</body>
</html>
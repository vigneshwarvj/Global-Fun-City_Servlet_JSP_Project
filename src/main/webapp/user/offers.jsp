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
        <title> Offers - Global Fun City</title>
        <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/offer.css">

        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Inter+Tight&family=Libre+Baskerville:ital,wght@0,400;0,700;1,400&family=Nanum+Pen+Script&family=Open+Sans:wght@700&family=Poppins:wght@300;500&family=Reem+Kufi&family=Sacramento&display=swap" rel="stylesheet">

        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=League+Spartan:wght@500&family=Poppins:wght@300;500&display=swap" rel="stylesheet">

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css">
</head>
<body>

<jsp:include page="header.jsp"></jsp:include>

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
                            <a class="active" href="/globalfuncityweb/offers">
                                <b>OFFERS </b> 
                            </a> 
                        </li>
                        <li>
                            <a class="navigation__link" href="/globalfuncityweb/ticketprices">
                                <b>TICKET PRICES</b>
                            </a> 
                        </li>
                        <li>
                            <a class="navigation__link" href="../../pages/shop/shop.html">
                                <b>SHOP</b>
                            </a> 
                        </li>
                        <li>
                            <a class="navigation__link" href="/globalfuncityweb/attractions">
                                <b>ATTRACTIONS</b>
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
                    <button class="btn-book-now" id = "btn-booknow">
                        <b>BOOK NOW </b>
                    </button>
                </div>
            </div>

        <div class="exciting" id="name">
            <p>Exciting Offers at Global Fun City to Make You Jump With Joy!</p>
        </div>
    
        <main>
            <section class="card-container">
                 <div class="card">
                    <a href="../../pages/offer packages/newyear.html">
                    <img src="https://res.cloudinary.com/simplotel/image/upload/x_0,y_0,w_1500,h_844,r_0,c_crop/q_80,w_455,dpr_1,f_auto,fl_progressive,c_limit/wonderla-amusement-parks-resort/Wonderla_-_Bengaluru_Resort_New_Year_Banner_julmzb"
                    width="350px" alt="newyear" />
                    <button class="btn"> MORE INFO </button> </a>
                    <h2> New Year Offer</h2>
                    <p> Celebrate this New Year at<br>Global Fun City</p>
                    </div>
                    <div class="card">
                    <a href="../../pages/offer packages/summeroffer.html">
                    <img src="https://res.cloudinary.com/simplotel/image/upload/x_0,y_0,w_1920,h_1080,r_0,c_crop/q_80,w_455,dpr_1,f_auto,fl_progressive,c_limit/wonderla-amusement-parks-resort/Wonderla_advance_booking_offer_10_off_ud9zqg"
                    width="350px" alt="summer" />
                    <button class="btn"> MORE INFO </button> </a>
                    <h2> Summer Offer</h2>
                    <p> Hurry up! Buy Tickets<br>Enjoy the Summer!</p>
                    </div>
                    <div class="card">
                    <a href="../../pages/offer packages/3nights4daysoffer.html">
                    <img src="https://res.cloudinary.com/simplotel/image/upload/x_0,y_0,w_1920,h_1080,r_0,c_crop/q_80,w_455,dpr_1,f_auto,fl_progressive,c_limit/wonderla-amusement-parks-resort/3_nights_4_days_package_banner_yh4fvt"
                    width="350px" alt="3nights4days" />
                    <button class="btn"> MORE INFO </button> </a>
                    <h2> 3 Nights 4 Days Offer</h2>
                    <p> Plan your visit 5 days in advance and get<br> a flat 10% off on park tickets.</p>
                    </div>

                    <div class="card">
                    <a href="../../pages/offer packages/collegestudentoffer.html">
                    <img src="https://res.cloudinary.com/simplotel/image/upload/x_0,y_0,w_1920,h_1080,r_0,c_crop/q_80,w_1600,dpr_1,f_auto,fl_progressive,c_limit/wonderla-amusement-parks-resort/Wonderla_College_ID_20_off_esoep2"
                    width="350px" alt="collegestudent" />
                    <button class="btn"> MORE INFO </button> </a>
                    <h2> College Student Offer</h2>
                    <p> Come wth Friends<br> Enjoy the Vibe in Global Fun City</p>
                    </div>
                    <div class="card">
                    <a href="../../pages/offer packages/valentineoffer.html">
                    <img src="https://www.imagicaaworld.com/wp-content/uploads/valentines.png" width="350px"
                    alt="valentine" />
                    <button class="btn"> MORE INFO </button> </a>
                    <h2> Valentine's Offer</h2>
                    <p> Special Offer for Couples<br> For Couples 15%  Offer</p>
                    </div>
                    <div class="card">
                    <a href="../../pages/offer packages/xmasoffer.html">
                    <img src="<%=request.getContextPath()%>/assets/images/christmas.jpg" width="350px" height="200px" alt="christmas" />
                    <button class="btn"> MORE INFO </button> </a>
                    <h2> X-Mas Offer</h2>
                    <p> Plan your visit for 4 days and X-Mas<br> with your Family!</p>
                    </div> 
            </section>

        </main>

        <div class="experience">
            <!-- <h1>The best experiences <br> Only on Global Fun City</h1> -->
        </div>

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

</body>
</html>
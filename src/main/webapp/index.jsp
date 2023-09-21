<%@page import="in.fssa.globalfuncity.service.UserService"%>
<%@page import="in.fssa.globalfuncity.model.User"%>


<html>
<head>
		<meta charset="ISO-8859-1">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="icon" type="image/x-icon" href="./assets/images/favicon.png">

        <title> Global Fun City </title>
        <script src="./main.js"></script>
        <link rel="stylesheet" type="text/css"  href="<%=request.getContextPath()%>/assets/css/style.css">

        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Inter+Tight&family=Libre+Baskerville:ital,wght@0,400;0,700;1,400&family=Nanum+Pen+Script&family=Open+Sans:wght@700&family=Poppins:wght@300;500&family=Reem+Kufi&family=Sacramento&display=swap" rel="stylesheet">

        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=League+Spartan:wght@500&family=Poppins:wght@300;500&family=Rubik+Microbe&display=swap" rel="stylesheet">

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css">
        <link rel="stylesheet"href="https://unpkg.com/swiper@7/swiper-bundle.min.css"/>

        <script src="https://unpkg.com/swiper@7/swiper-bundle.min.js"></script>
</head>

<body>

<jsp:include page="./user/header.jsp"></jsp:include>

<header>


<div class="header">
<div id="mySidenav" class="sidenav">
<a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
<a class="navigation__link" href="./index.html">HOME</a>
<a class="navigation__link" href="./pages/other pages/home.html"> ABOUT</a>
<a class="navigation__link" href="./pages/other pages/events.html"> EVENTS  </a> 
<a class="navigation__link" href="./pages/other pages/offer.html"> OFFERS  </a> 
<a class="navigation__link" href="./pages/other pages/ticketprices.html"> TICKET  PRICES </a> 
<a class="navigation__link" href="./pages/shop/shop.html"> SHOP </a> 
<a class="navigation__link" href="./pages/other pages/attractions.html"> ATTRACTIONS </a> 
<a class="navigation__link" href="./pages/other pages/contact.html"> CONTACT </a>
<hr>
<a href="./pages/signup for booking/signup.html">BOOK TICKETS</a>
<hr>
<a href="./pages/footer other pages/safetyofvisitors.html">Safety of visitors</a>
<a href="./pages/footer other pages/rulesandregulations.html">Rules & Regulations</a>
<a href="./pages/footer other pages/greeninitiatives.html">Green Initiatives</a>
<a href="./pages/footer other pages/csrinitiatives.html">CSR Initiatives</a>
<hr>
<a href="./pages/signup for booking/signup.html">Sign In</a> 
</div>
<div class="icon-bar">
<span style="font-size:30px;cursor:pointer" onclick="openNav()">&#9776;</span>
</div>

<a href="/globalfuncityweb/index">
<img src="./assets/images/globalfuncitylogo.png" class="header-logo" width="200px" alt="logo">
</a>
<nav class="navbar">
<ul>
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
        <a class="navigation__link" href="./pages/shop/shop.html">
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
<div class="btn-book-now">

<jsp:include page="./user/booknow_button_redirect.jsp"></jsp:include>

</div>
</div>
</header>
<div>
<div class="backgroundglobal">
<img src="./assets/images/bg1.jpg" alt="background-image">

</div>

<div class="box" id="box_1">
<div class="welcome-global-funcity">
<h2> Welcome to </h2>
<h1> The Global Fun City </h1>
</div>
<img src="https://cdn1.parksmedia.wdprapps.disney.com/dam/disney-world/50th-anniversary/countdown/WDW_50th_clock_plate_bg_Desktop.png" height="410" width="960" class="bg2" alt="background-fixed-img">
<img src="<%=request.getContextPath() %>/assets/images/Sparkles.webp" class="sparkles" alt="sparkles">
</div>

<div class="messages" id="box_2">
<div class="step">
<h3>Step into a world of magic, where joy springs to life! </h3>
</div>

<div class="border"> </div>

<div class="weare">
<p>
    We are so much more than an amusement park - a world where everyone comes together and enjoys the little moments.<br>
    <br>
    A life of fun is what everyone deserves, so come on down to the Global Fun City! </p>
</div>
</div>

<div class="updown">
<div>
<h2>
    Up, down, fabulous thrills all <br> <br> around! 
</h2>
<br>
<p>Get ready to be mindblown by the crazy rides that await!</p>
</div>
<img src="https://res.cloudinary.com/simplotel/image/upload/x_382,y_0,w_2691,h_2693,r_0,c_crop/q_80,w_1600,dpr_1,f_auto,fl_progressive,c_limit/wonderla-amusement-parks-resort/RECOIL_at_Bengaluru_Park_xdff6i" class="recoil" alt="roller-coaster">
</div>

<div class="goodfood-goodday">
<div class="biscuit1">
<img src="https://res.cloudinary.com/simplotel/image/upload/x_0,y_185,w_3024,h_3030,r_0,c_crop/q_80,w_1600,dpr_1,f_auto,fl_progressive,c_limit/wonderla-amusement-parks-resort/Waffles_p9tigm" class="biscuit" alt="sweet-food">
</div>

<div class="goodday">
<h2> Good food = Great day! </h2>
<div class="border2"> </div>
<p>
    Relish a delightful gastronomical experience. <br>
    Enjoy scrumptious meals at Global Fun City.</p>
</div>
</div>

<section class="parktour">
<div class="gaiety-excursion">
<h2>G A I E T Y &nbsp; E X C U R S I O N</h2>
<h1>Take a Park Tour</h1>
<p>Give your child joy. Let's gift your baby an unforgettable experience and funny at our amusement park.	</p>

<video class="video-of-park-tour" width="1100" height="600" controls>
    <source src="./assets/videos/takeaparktour.mp4" type="video/mp4"> 
</video>
</div>
</section>

<div class="tickets">
<h2>C O O L  S H O W</h2>
<h1>Get Your Tickets Today</h1>

<% if(request.getSession().getAttribute("userId") != null){ %>

<button id="btn-buytickets"> <a href="/globalfuncityweb/user/book_tickets" id = "btn-booknow"> Buy Tickets </a> </button>

 <%}else { %>
 
 <button id="btn-buytickets"> <a href="/globalfuncityweb/login" id = "btn-booknow"> Buy Tickets </a> </button>
 
 <%	 
} 
%>

</div>


<!-- review page started -->
<div class="container">
    <div class="board">
        <h2 class="text-light" id="guestloveus">Guests Love Us</h2>
        <p class="text-light-" style="display: none;">Some of the fullfilled customers reviews</p>

        <!-- Slider main container -->
        <div class="swiper">
            <!-- Additional required wrapper -->
            <div class="swiper-wrapper">
            <!-- Slides -->
<!-- revathi -->
            <div class="swiper-slide">
                <div class="flex">
                    <div class="comments">
"I had an amazing time at the Global Fun City park! The roller coasters were exhilarating, the food was delicious, and the staff was friendly and helpful. I would like to thank the Managing Director of Global Fun City. Totally, Brillant!"
                    </div>
                    <div class="profile">
                        <img src="https://iili.io/HgV7Xe9.jpg" alt="photo-of-reviews">
                        <a href="#">Revathi Iyer</a>

                    </div>
                </div>
            </div>
<!-- surya -->
            <div class="swiper-slide">
                <div class="flex">
                    <div class="comments">
                        "The water park section was especially enjoyable on a hot day. The only downside was the long lines, but the staff did their best to keep things moving quickly. Overall, it was a great experience!"
                     </div>
                    <div class="profile">
                        <img src="https://ca.slack-edge.com/T032648LE-U02M6DXMG5N-64261edc50e8-512" alt="photo-of-reviews">
                        <a href="#">Surya Umapathy</a>

                    </div>
                </div>
            </div>
<!-- shyam -->
            <div class="swiper-slide">
                <div class="flex">
                    <div class="comments">
                        "I booked tickets for my family to the amusement park and it was such a great experience. The website was easy to navigate and we were able to find the perfect tickets for our needs. We're counting down the days until we can visit the park and make some unforgettable memories."
                    </div>
                    <div class="profile">
                        <img src="https://ca.slack-edge.com/T032648LE-UNJ715CK0-53e3dc63a07b-512" alt="photo-of-reviews">
                        <a href="#">Shyam</a>

                    </div>
                </div>
            </div>
<!-- bharath -->
<div class="swiper-slide">
                <div class="flex">
                    <div class="comments">
            "Just booked our tickets to the amusement park and we can't wait to go! The online booking process was quick and easy, and we got a great deal on our tickets. We're looking forward to a day full of thrills and excitement!"
                    </div>
                    <div class="profile">
                        <img src="https://ca.slack-edge.com/T032648LE-U03P5LA64E7-1acf61ffb14d-512" alt="photo-of-reviews">
                        <a href="#">Bharathwaj Soundararajan</a>

                    </div>
                </div>
            </div>
<!-- vinit -->
<div class="swiper-slide">
                <div class="flex">
                    <div class="comments">
              "I'm so excited to be heading to the amusement park this weekend! I booked my tickets online and it was super simple. The park has so many amazing rides and attractions, I know it's going to be an unforgettable day."
                    </div>
                    <div class="profile">
                        <img src="https://ca.slack-edge.com/T032648LE-U03S2G19E2Z-2925e58a5dd9-512" alt="photo-of-reviews">
                        <a href="#">Vinit Gore</a>
                    </div>
                </div>
            </div>

            </div>

            <!-- If we need pagination -->
            <div class="swiper-pagination"></div>

            <!-- If we need navigation buttons -->
            <div class="swiper-button-prev"></div>
            <div class="swiper-button-next"></div>

        </div>

    </div>
</div>
<!-- review page completed -->


<div class="customer">
<h2>Our Partner</h2>
<div class="photo-of-partner" style="display: flex; justify-content: center;">
<a href="https://deploy-preview-1--sr-catering.netlify.app/"> <img src="./assets/images/main-logo.png" class="srcatering" width="200px" alt="sr-catering-logo"> </a>
<a href="https://deploy-preview-1--only-home-food.netlify.app"> <img src="./assets/images/only-home-food.png" class="srcatering" width="200px" alt="sr-catering-logo"> </a>
</div>
</div>


<div class="location">
<img src="./assets/images/location.png" alt="location-of-global-fun-city" width="1485" height="550">
</div>

</div>

<footer class="footer_for_gfc">
    <div class="total-div-for-footer">
<div class="logo">
<img src="./assets/images/globalfuncitylogo.png" class="footer-logo" alt="logo">
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
    <a href="tel: +1 8608171080">
        <p>+1 860 817 1080</p>
    </a>
    <a href="mailto:info@globalfuncity.in">
        <p>info@globalfuncity.in</p> 
    </a>
</div>
</div>

<div class="navbar-footer">
<ul>
    <li>
        <a class="navigation__link" href="./pages/other pages/home.html"> ABOUT US </a> 
    </li>
    <li>
        <a class="navigation__link" href="./pages/other pages/events.html"> EVENTS  </a> 
    </li>
    <li>
        <a class="navigation__link" href="./pages/other pages/offer.html"> OFFERS  </a> 
    </li>
    <li>
        <a class="navigation__link" href="./pages/other pages/ticketprices.html"> TICKET  PRICES </a> 
    </li>
    <li>
        <a class="navigation__link" href="./pages/shop/shop.html"> SHOP </a> 
    </li>
    <li>
        <a class="navigation__link" href="./pages/other pages/attractions.html"> ATTRACTIONS </a> 
    </li>
    <li>
        <a class="navigation__link" href="./pages/other pages/contact.html"> CONTACT  </a> 
    </li>
</ul>

</div>

<div class="other-navbar-footer">
<ul>
    <li>
        <a class="other-navigation-link" href="./pages/footer other pages/privacypolicy.html">PRIVACY POLICY</a>
    </li>
    <li>
        <a class="other-navigation-link" href="./pages/footer other pages/safetyofvisitors.html">SAFETY AND HYGIENE</a>
    </li>
    <li>
        <a class="other-navigation-link" href="./pages/footer other pages/rulesandregulations.html">RULES & REGULTIONS</a>
    </li>
    <li>
        <a class="other-navigation-link" href="./pages/footer other pages/greeninitiatives.html">GREEN INITIATIVES</a>
    </li>
    <li>
        <a class="other-navigation-link" href="./pages/footer other pages/csrinitiatives.html">CSR INITIATIVES</a>
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
<p>Global Fun City &#169; 2023. All rights Reserved.
    <br>Site designed by Vignesh.in
</p>
</div>
</div>
</footer>


<script>
function openNav() {
	  document.getElementById("mySidenav").style.width = "250px";
}

function closeNav() {
	  document.getElementById("mySidenav").style.width = "0";
}

//review script start
const swiper = new Swiper('.swiper', {
    loop: true,

     // If we need pagination
  pagination: {
    el: '.swiper-pagination',
  },

    // Navigation arrows
    navigation: {
        nextEl: '.swiper-button-next',
        prevEl: '.swiper-button-prev',
    },


});
//review script end
</script>



</body>
</html>

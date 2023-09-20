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

        <title> About - Global Fun City </title>

        <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/home.css">

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

<!-- media screen profile -->

<nav class="navbar">
<ul>
<li>
<a class="navigation__link" href="/globalfuncityweb/index">
<b>HOME</b>
</a>
<li>
<a class="active" href="/globalfuncityweb/about">
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
<div class="btn-book-now">

<jsp:include page="/user/booknow_button_redirect.jsp"></jsp:include>

</div>
</div>

</header>


<div class="about-our-amusement-park">
<div class="about">
    <p> About Our Amusement Park </p>
</div>

<div class="para">
    <p>Welcome to GLOBAL FUN CITY, only one of its kind in this part of the region, promises you non-stop fun. Just like the waves.
        It’s a place where you can treat your family to an out of world experience. A chance to be a part of the magic, allure, and grandeur
        that defies the very spirit of fun, entertainment, and relaxation also we have World-Class water sports. <br>
        <br>

        Plenty of exciting entertainment. Your visit to USA would be incomplete without a visit to Global Fun City Park. Drop in with your family for a wonderful experience.</p>
</div>
</div>

<div class="facilities">
<p> Facilities </p>
</div>
<br>

<div class="fac_photo"> 

<img src="https://res.cloudinary.com/simplotel/image/upload/x_0,y_0,w_3610,h_2710,r_0,c_crop/q_80,w_533,dpr_1,f_auto,fl_progressive,c_limit/wonderla-amusement-parks-resort/Yellow_and_blue_lockers_xiy5po" class="lockerroom" alt="Locker_room">
<h2>Locker Room</h2>
<img src="https://res.cloudinary.com/simplotel/image/upload/x_277,y_0,w_4440,h_3334,r_0,c_crop/q_80,w_533,dpr_1,f_auto,fl_progressive,c_limit/kochi-park/ATM_Counter_hljugs" class="lockerroom" alt="ATM_Counter">
<h2>ATM Counter</h2>
<img src="https://res.cloudinary.com/simplotel/image/upload/x_0,y_47,w_4477,h_3363,r_0,c_crop/q_80,w_533,dpr_1,f_auto,fl_progressive,c_limit/wonderla-amusement-parks-resort/Wonderla_Wheelchairs_ocmfsz" class="lockerroom" alt="Wheelchair/pram">
<h2>Wheelchair/Pram</h2>
<img src="https://res.cloudinary.com/simplotel/image/upload/x_0,y_0,w_4389,h_3296,r_0,c_crop/q_80,w_533,dpr_1,f_auto,fl_progressive,c_limit/wonderla-amusement-parks-resort/Water_tap_v64n4v" class="lockerroom" alt="drinking_water">
<h2>Drinking Water</h2>
<img src="https://res.cloudinary.com/simplotel/image/upload/x_732,y_0,w_3723,h_2791,r_0,c_crop/q_80,w_533,dpr_1,f_auto,fl_progressive,c_limit/wonderla-amusement-parks-resort/Restroom_and_dormitory_building_ott6in" class="lockerroom" alt="dormitory">
<h2>Dormitory</h2>
<img src="https://res.cloudinary.com/simplotel/image/upload/x_0,y_0,w_3674,h_2756,r_0,c_crop/q_80,w_533,dpr_1,f_auto,fl_progressive,c_limit/wonderla-amusement-parks-resort/Car_parking_area_sibgwb" class="lockerroom" alt="parking">
<h2>Parking</h2>
<img src="https://res.cloudinary.com/simplotel/image/upload/x_0,y_2500,w_3333,h_2494,r_0,c_crop/q_80,w_533,dpr_1,f_auto,fl_progressive,c_limit/kochi-park/Baby_Feeding_Room_lr8mn3" class="lockerroom" alt="baby_nursing_room">
<h2>Baby Nursing Room</h2>
<img src="https://res.cloudinary.com/simplotel/image/upload/x_277,y_0,w_4440,h_3334,r_0,c_crop/q_80,w_533,dpr_1,f_auto,fl_progressive,c_limit/kochi-park/Prayer_Room_m7feqy" class="lockerroom" alt="prayer_room">
<h2>Prayer Room</h2>
<img src="https://res.cloudinary.com/simplotel/image/upload/x_321,y_0,w_2982,h_2237,r_0,c_crop/q_80,w_533,dpr_1,f_auto,fl_progressive,c_limit/wonderla-amusement-parks-resort/First_aid_hip69q" class="lockerroom" alt="first_aid">
<h2>First Aid</h2>
</div>

<!-- faq started -->
<div class="background">
<section class="main-faq">
    <h2 class="title">FAQs</h2>
    <div class="faq">
        <div class="question">
            <h3>How can I pay for a ticket?</h3>
            <i class="fa-solid fa-plus"></i>
        </div>

        <div class="answer">
            <p>There are tickets on our website. You can buy a ticket or book a seat online.
                You can pay using an e-wallet, as well as Visa or Master Card. We will send you a ticket electronically or in hard copy.</p>
        </div>
    </div>
    <hr>
    <!-- 2nd question -->

    <div class="faq">
        <div class="question">
            <h3>Are there any age restrictions for rides and attractions?</h3>
            <i class="fa-solid fa-plus"></i>
        </div>

        <div class="answer">
            <p>Yes, there are age and height restrictions for many rides and attractions in the amusement park.
                It's best to check the park's website or consult the park's staff for more information.</p>
        </div>
    </div>
    <hr>
    <!-- 3rd question -->
    <div class="faq">
        <div class="question">
            <h3> Are there any food and drink options available in the amusement park?</h3>
            <i class="fa-solid fa-plus"></i>
        </div>

        <div class="answer">
            <p>Yes, We have a variety of food and drink options available. 
                Soft drinks, ice creams and bottled potable water are also available at all the food courts and scattered kiosks.</p>
        </div>
    </div>
    <hr>
    <!-- 4th question -->
    <div class="faq">
        <div class="question">
            <h3>What is the cost of admission? Are there any discounts available?</h3>
            <i class="fa-solid fa-plus"></i>
        </div>

        <div class="answer">
            <p>The cost of admission to the park depends on the type of ticket and the age of the guest.
                We offer discounts for seniors, military personnel, and groups. Please visit our website for pricing information.</p>
        </div>
    </div>
    <hr>
</section>
</div>
<!-- faq completed -->

<section class="best-celebration-for-you">
<div class="gaiety-holiday">
    <h2>G A I E T Y  H O L I D A Y</h2>
    <p>We Make The Best Offers For You </p>
    <a href="../../pages/other pages/offer.html">
        <button class="btn-learn-more">Learn More</button>
    </a>
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
            <a class="navigation__link" href="/globalfuncityweb/index"> ABOUT US </a> 
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
<hr class="footer-hr">
<div class="copyright">
    <p>Global Fun City &#169; 2022. All rights Reserved.
        <br>Site designed by Vignesh.in
    </p>
</div>
</footer>

 <script>
 // sidebar for mobile started
		function openNav() {
		  document.getElementById("mySidenav").style.width = "250px";
		}
		
		function closeNav() {
		  document.getElementById("mySidenav").style.width = "0";
		}
		// sidebar for mobile completed

// faq started
const faqs = document.querySelectorAll(".faq");

faqs.forEach((faq) => {
		  faq.addEventListener("click", () => {
		    faq.classList.toggle("active");
		  });
});
		// faq closed
		</script>

</body>
</html>
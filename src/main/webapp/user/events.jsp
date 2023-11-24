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

        <title> Events - Global Fun City </title>

        <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/events.css">

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

<!-- media screen profile -->

<nav class="navbar">
<ul>
<li>
<a class="navigation__link" href="<%=request.getContextPath()%>/index">
<b>HOME</b>
</a>
<li>
<a class="navigation__link" href="<%=request.getContextPath()%>/about">
    <b>ABOUT</b> 
</a> 
</li>
<li>
<a class="active" href="<%=request.getContextPath()%>/events">
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
<div class="btn-book-now">

<jsp:include page="/user/booknow_button_redirect.jsp"></jsp:include>

</div>
</div>

</header>


        <div class="events">
            <h1> Events</h1>
        </div>

        <div class="circus-children">
            <img src="<%=request.getContextPath()%>/assets/images/waterridechildren.jpg" class="rollercoaster" alt="children-ride">
        </div>

        <div class="images-of-events">
                <div class="circus">
                <img src="https://res.cloudinary.com/thrillophilia/image/upload/c_fill,dpr_2.0,f_auto,fl_progressive.strip_profile,g_center,h_230,q_auto,w_305/v1/filestore/6jwx5705ueqy3s6q2gvmuad1kno5_BANNER_1638431388.jpg"   height="300" width="400" alt="Water_fall"/>
                <h2>Water Fall</h2>
                </div>

                <div class="circus">
                <img src="https://5.imimg.com/data5/SELLER/Default/2021/8/LX/VG/OP/11334948/horror-house-services-500x500.png" class="circus" height="300" width="400" alt="horror_house"/>
                <h2>Horror House</h2>
                </div>
	
                <div class="circus">	
                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT068qwiNATm3wk_KD29qRoWiwww7BUR5_YOQ&usqp=CAU" class="circus" height="300" width="400" alt="3D_theatre"/>
                <h2>3D Cinema</h2>
        </div>

</div>

     <!--  <section class="upcoming-background">
            <div class="upcoming">
                <h2>Upcoming Events </h2>
            </div>

            <section class="upcoming-events">
                <!-- <div class="festivel">
                    <a href="../../pages/upcoming events/folklore_festivel.html">
                    <img src="https://festy.ancorathemes.com/wp-content/uploads/2020/05/image-143.jpg" width="400px" height="300px" alt="folkfore-festivel"/>
                    <h2>Folklore Festival</h2></a>
                    </div>

                    <div class="festivel">
                    <a href="../../pages/upcoming events/festivel-of-beer.html">
                    <img src="https://festy.ancorathemes.com/wp-content/uploads/2020/05/image-145.jpg" width="400px" height="300px" alt="festivel-of-beer"/>
                    <h2>Festival of Beer</h2></a>
                    </div>

                    <div class="festivel">
                    <a href="../../pages/upcoming events/festivel-of-colours.html">
                    <img src="https://festy.ancorathemes.com/wp-content/uploads/2020/05/image-142.jpg" width="400px" height="300px" alt="festivel-of-colours"/>
                    <h2>Festival of Colours</h2></a> -->
       <!--       </div>
          </section>
       </section> -->

        <div class="videos">
            <video width="" height="600" controls>
                <source src="<%=request.getContextPath()%>/assets/videos/10000000_535383348165841_7686719261084481509_n.mp4" type="video/mp4"> 
            </video>

            <video width="" height="600" controls>
                <source src="<%=request.getContextPath()%>/assets/videos/roller-coaster.mp4" type="video/mp4">
            </video>	
        </div>

        <div class="full-subscribe-products">
            <div class="subscribe">
                <h1>Subscribe for Exclusive Updates!</h1>
            </div>
            <div class="messages">
                <form class="emailInput" id="emailInputUser" onsubmit="userEmailSubscribe(event)"> 
                    <input type="email" id="email" placeholder="Enter Your Email Address" required style="outline: 2px solid #eee;">
                    <br>		
		  
		</div>
                    <div class="btn-subscribe">
                        <button id="subscribeBtn" type="submit">
                            <i class="fa-regular fa-paper-plane"></i>&nbsp; Subscribe
                        </button>
		</form>
                    </div>

		</div>	

<footer class="footer_for_gfc">

</footer>

<script>var contextPath = '<%=request.getContextPath()%>';</script>

<script src="<%=request.getContextPath()%>/js/footer.js"></script>

<script>

//Function for SideNav (Mobile)
function openNav() {
  document.getElementById("mySidenav").style.width = "250px";
}

function closeNav() {
  document.getElementById("mySidenav").style.width = "0";
}

//Save subscribe email id in local storage
function userEmailSubscribe(event) {
  event.preventDefault();

  const emailInput = document.getElementById("email");

  if (!emailInput.checkVisibility()) {
    return;
  }
  const emailFormData =
    JSON.parse(localStorage.getItem("emailSubscribeDataFromUsers")) || [];

  emailFormData.push({
    email: emailInput.value,
  });

  // Save the updated form data back to localStorage
  localStorage.setItem(
    "emailSubscribeDataFromUsers",
    JSON.stringify(emailFormData)
  );

  // Reset the form
  document.querySelector("form").reset();

  alert("Thank you for subscribing!");
}

</script>

</body>
</html>
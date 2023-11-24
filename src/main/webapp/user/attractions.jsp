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
        <title> Attractions - Global Fun City</title>
        <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/attractions.css">

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

        <div class="header">
            <!-- sidenav -->
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
            <!-- sidenav -->
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
                            <b>ABOUT </b> 
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
                        <a class="active" href="<%=request.getContextPath()%>/attractions">
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

        <div class="attractions">
            <h1>Attractions</h1>
        </div>

        <section class="photoattractions">
            <!-- <div class="attractions-2">
                <img src="https://festy.ancorathemes.com/wp-content/uploads/2020/06/image-6-890x664.jpg" width="400px" height="300px" alt="freefall"/>
                <h2> Free Fall</h2>
                </div>
                <div class="attractions-2">
                <img src="https://festy.ancorathemes.com/wp-content/uploads/2020/06/image-7-890x664.jpg" width="400px" height="300px" alt="carousel"/>
                <h2> Carousel</h2>    
                </div>
                <div class="attractions-2">
                <img src="https://festy.ancorathemes.com/wp-content/uploads/2020/06/image-10-890x664.jpg" width="400px" height="300px" alt="rollercoaster"/>
                <h2>Roller Coaster</h2>
                </div>
                <div class="attractions-2" >
                <img src="https://festy.ancorathemes.com/wp-content/uploads/2020/06/image-8-890x664.jpg" width="400px" height="300px" alt="hangingcarousel"/>
                <h2>Hanging Carousel</h2>
                </div>
                <div class="attractions-2">
                <img src="https://festy.ancorathemes.com/wp-content/uploads/2020/06/image-9-890x664.jpg" width="400px" height="300px" alt="funnyglasses"/>
                <h2>Funny Glasses</h2>
                </div>
                <div class="attractions-2">
                <img src="https://festy.ancorathemes.com/wp-content/uploads/2020/06/image-5-890x664.jpg" width="400px" height="300px" alt="gigglewheel"/>
                <h2>Giggle Wheel</h2>
                </div>
                <div class="attractions-2">
                <img src="https://festy.ancorathemes.com/wp-content/uploads/2021/12/image-116-890x664.jpg" width="400px" height="300px" alt="pettingzoo"/>
                <h2>Petting Zoo</h2>
                </div>
                <div class="attractions-2">
                <img src="https://festy.ancorathemes.com/wp-content/uploads/2021/12/image-118-890x664.jpg" width="400px" height="300px" alt="rock-climbingwall"/>
                <h2>Rock-Climbing Wall</h2>
                </div>
                <div class="attractions-2">
                <img src="https://festy.ancorathemes.com/wp-content/uploads/2021/12/image-117-890x664.jpg" width="400px" height="300px" alt="gokart"/>
                <h2>Gokart</h2>
                </div> -->
        </section>

        <div class="attracts-you">
            <h2>We have Events that's Attracts You</h2>
            <video class="video-of-attractions" width="1485" height="600" controls>
                <source src="<%=request.getContextPath()%>/assets/videos/attractions.mp4" type="video/mp4"> 
            </video>
        </div>

        <div class="gif-content">
            <div class="gif">
                <img src="<%=request.getContextPath()%>/assets/images/roller-coaster.gif" alt="roller-coaster">
            </div>

            <div class="content">
                <h2>Drop in With your Family For a World Class Experience. </h2>
            </div>
        </div>

<footer class="footer_for_gfc">

</footer>

<script>var contextPath = '<%=request.getContextPath()%>';</script>

<script src="<%=request.getContextPath()%>/js/footer.js"></script>

        <script>
// function for open sidenav mobile

function openNav() {
  document.getElementById("mySidenav").style.width = "250px";
}

function closeNav() {
  document.getElementById("mySidenav").style.width = "0";
}

const attractions = [
  {
    image: {
      source:
        "https://festy.ancorathemes.com/wp-content/uploads/2020/06/image-6-890x664.jpg",
      alt: "free_fall",
    },
    text: "Free Fall",
  },
  {
    image: {
      source:
        "https://festy.ancorathemes.com/wp-content/uploads/2020/06/image-7-890x664.jpg",
      alt: "carousel",
    },
    text: "Carousel",
  },
  {
    image: {
      source:
        "https://festy.ancorathemes.com/wp-content/uploads/2020/06/image-10-890x664.jpg",
      alt: "roller_coaster",
    },
    text: "Roller Coaster",
  },
  {
    image: {
      source:
        "https://festy.ancorathemes.com/wp-content/uploads/2020/06/image-8-890x664.jpg",
      alt: "hanging_carousel",
    },
    text: "Hanging Carousel",
  },
  {
    image: {
      source:
        "https://festy.ancorathemes.com/wp-content/uploads/2020/06/image-9-890x664.jpg",
      alt: "funny_glasses",
    },
    text: "Funny Glasses",
  },
  {
    image: {
      source:
        "https://festy.ancorathemes.com/wp-content/uploads/2020/06/image-5-890x664.jpg",
      alt: "giggle_wheel",
    },
    text: "Giggle Wheel",
  },
  {
    image: {
      source:
        "https://festy.ancorathemes.com/wp-content/uploads/2021/12/image-116-890x664.jpg",
      alt: "petting_zoo",
    },
    text: "Petting Zoo",
  },
  {
    image: {
      source:
        "https://festy.ancorathemes.com/wp-content/uploads/2021/12/image-118-890x664.jpg",
      alt: "rock_climbing_wall",
    },
    text: "Rock-Climbing Wall",
  },
  {
    image: {
      source:
        "https://festy.ancorathemes.com/wp-content/uploads/2021/12/image-117-890x664.jpg",
      alt: "gokart",
    },
    text: "Gokart",
  },
];

for (i = 0; i < 9; i++) {
  attractions_pic = document.createElement("div");
  attractions_pic.setAttribute("class", "attractions-2");
  console.log(attractions_pic);

  img_of_attractions = document.createElement("img");
  img_of_attractions.setAttribute("src", attractions[i].image.source);
  img_of_attractions.setAttribute("width", "400px");
  img_of_attractions.setAttribute("height", "300px");
  img_of_attractions.setAttribute("alt", attractions[i].image.alt);

  attractions_pic.append(img_of_attractions);

  h2_for_attractions = document.createElement("h2");
  h2_for_attractions.innerText = attractions[i].text;

  attractions_pic.append(h2_for_attractions);

  document.querySelector("section.photoattractions").append(attractions_pic);
}
</script>

</body>
</html>
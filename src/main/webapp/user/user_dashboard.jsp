<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
		<meta charset="ISO-8859-1">
        <meta charset="UTF-8">
        <link rel="icon" type="image/x-icon" href="<%=request.getContextPath()%>/assets/images/favicon.png">

        <title> Dasboard | Global Fun City </title>
        <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/homepage css/main.profile.css">
        <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/homepage_css/footer_gfc.css">

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
            <div>
				<jsp:include page="/user/booknow_button_redirect.jsp"></jsp:include>
            </div>
        </div>
</header>

        <div class="total-homepages-div"> 
            <!-- Total Homepage div -->
        <div class="homepages">
            <a href="/globalfuncityweb/index">Home <i class="fa-light fa-greater-than" style="color: #655b5b;"></i></a>
        </div> &nbsp;
        <div class="homepages">
            <a href="/globalfuncity/user_dashboard">Account </a>
        </div>
        </div>

        </div>
        <!-- Completing Div -->


        <div class="image">
            <img src="<%=request.getContextPath()%>/assets/images/global-account-logo.png" width="300px" alt="account-logo">
        </div>

        <div>
            <!-- settings -->
            <div class="settings">

                <div class="account-manage">
                    <div class="account">
                        <h1>
                        <a href="/globalfuncityweb/user_dashboard/profile">
                       <i class="fa-sharp fa-solid fa-gear"></i> &NonBreakingSpace; Account Settings
                            </a>
                        </h1>
                    </div>

                    <div class="manage">
                        <h3>Manage your sign in </h3>
                    </div>
                </div>

                <span class="arrow">
                    <a href="/globalfuncityweb/user_dashboard/profile">
                        <i class="fa-solid fa-angle-right"></i> 
                    </a>
                </span>
            </div>
            <!-- settings completed -->
            <hr class="hr-for-break">

            <!-- tickets -->
            <div class="settings">

                <div class="account-manage">
                    <div class="account">
                        <h1>
                            <a href="/globalfuncityweb/user_dashboard/ticketshistory">
                                <i class="fa-sharp fa-solid fa-ticket"></i> &NonBreakingSpace; Your Tickets
                            </a>
                        </h1>
                    </div>
    
                    <div class="manage">
                        <h3>Your tickets that you booked </h3>
                    </div>
                </div>
    
                <span class="arrow">
                    <a href="/globalfuncityweb/user_dashboard/ticketshistory">
                        <i class="fa-solid fa-angle-right"></i> 
                    </a>
                </span>
            </div>
            <!-- tickets completed     -->
            <hr class="hr-for-break">

            <!-- orders -->
            <div class="settings">

                <div class="account-manage">
                    <div class="account">
                        <h1>
                            <a href="../../pages/homepage/user_orders.html">
                                <i class="fa-solid fa-bag-shopping"></i> &NonBreakingSpace; Your Orders
                            </a>
                        </h1>
                    </div>
        
                    <div class="manage">
                        <h3>Track or buy things again </h3>
                    </div>
                </div>
        
                <span class="arrow">
                    <a href="">
                        <i class="fa-solid fa-angle-right"></i> 
                    </a>
                </span>
            </div>
            <!-- orders completed         -->
            <hr class="hr-for-break">

            <!-- rooms -->
            <div class="settings">

                <div class="account-manage">
                    <div class="account">
                        <h1>
                            <a href="/globalfuncityweb/user_dashboard/roomshistory">
                                <i class="fa-solid fa-hotel"></i></i> &NonBreakingSpace; Booked Rooms
                            </a>
                        </h1>
                    </div>
        
                    <div class="manage">
                        <h3>Rooms that you booked </h3>
                    </div>
                </div>
        
                <span class="arrow">
                    <a href="/globalfuncityweb/user_dashboard/roomshistory">
                        <i class="fa-solid fa-angle-right"></i> 
                    </a>
                </span>
            </div>
            <!-- rooms completed -->
             <hr class="hr-for-break">             
        </div>

        <br>
    </br>

    <footer class="footer_for_gfc">

    </footer>

</body>
</html>
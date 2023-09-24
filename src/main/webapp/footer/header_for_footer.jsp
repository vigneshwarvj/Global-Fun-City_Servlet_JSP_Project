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

            <a href="<%=request.getContextPath() %>/index">
                <img src="<%=request.getContextPath() %>/assets/images/globalfuncitylogo.png" class="header-logo" width="200px" alt="logo">
            </a>
            <nav class="navbar">
                <ul>
                    <li>
                        <a class="navigation__link" href="<%=request.getContextPath() %>/index">
                            <b>HOME</b>
                        </a> 
                    </li>
                    <li>
                        <a class="navigation__link" href="<%=request.getContextPath() %>/about">
                            <b>ABOUT</b> 
                        </a> 
                    </li>
                    <li>
                        <a class="navigation__link" href="<%=request.getContextPath() %>/events">
                            <b>EVENTS </b> 
                        </a> 
                    </li>
                    <li>
                        <a class="navigation__link" href="<%=request.getContextPath() %>/offers">
                            <b>OFFERS </b> 
                        </a> 
                    </li>
                    <li>
                        <a class="navigation__link" href="<%=request.getContextPath() %>/ticketprices">
                            <b>TICKET  PRICES </b>
                        </a> 
                    </li>
                    <li>
                        <a class="navigation__link" href="<%=request.getContextPath() %>/globalshop">
                            <b>SHOP</b>
                        </a> 
                    </li>
                    <li>
                        <a class="navigation__link" href="<%=request.getContextPath() %>/attrctions">
                            <b>ATTRACTIONS </b>
                        </a> 
                    </li>
                    <li>
                        <a class="navigation__link" href="<%=request.getContextPath() %>/contact">
                            <b>CONTACT </b> 
                        </a> 
                    </li>
	 
                </ul>

            </nav>
            <div class="btn-book-now">

<jsp:include page="<%=request.getContextPath() %>/user/booknow_button_redirect.jsp"></jsp:include>

</div>
        </div>
<%@page import="in.fssa.globalfuncity.model.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
		<meta charset="ISO-8859-1">
        <meta charset="UTF-8">
        <link rel="icon" type="image/x-icon" href="<%=request.getContextPath()%>/assets/images/favicon.png">

        <title> Edit | Profile | Global Fun City </title>
        <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/homepage css/profile.css">
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

        <div class="header">
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
            <div>
				<jsp:include page="/user/booknow_button_redirect.jsp"></jsp:include>
            </div>
        </div>
        
        <div class="total-homepages-div"> 
            <!-- Total Homepage div -->
        <div class="homepages">
            <a href="<%=request.getContextPath()%>/index">Home <i class="fa-light fa-greater-than" style="color: #655b5b;"></i></a>
        </div> &nbsp;
        <div class="homepages">
            <a href="<%=request.getContextPath()%>/user_dashboard">Account <i class="fa-light fa-greater-than" style="color: #655b5b;"></i></a>
        </div> &nbsp;
        <div class="homepages">
            <a href="<%=request.getContextPath()%>/user_dashboard/profile">Account Settings <i class="fa-light fa-greater-than" style="color: #655b5b;"></i> </a>
        </div> &nbsp;
        <div class="homepages">
            <a href="<%=request.getContextPath()%>/user_dashboard/edit">Edit Profile</a>
        </div>

        </div>
        <!-- Completing Div -->




<div class="all-content">

<%User user =(User) request.getAttribute("user"); %>

            <div class="account-information">

                <div class="account">
                    <h1>Your Account</h1>
                </div>   

			<form action="update?userId=<%=user.getUserId() %>" method="post">

				<div class= "profile">
				
						<label class ="input-field">Email (You couldn't able to Edit Email)</label>
						<br>
						<input name="email" class="input-field" value="<%=user.getEmail() %>" disabled>
						
				</div>

                <div class="profile">

                        <label class="input-field">Mobile Phone </label>
                        <br>
                        <input name="mobile_number" class="input-field" type="tel" oninput="this.value = this.value.replace(/[^0-9]/g,'')" minlength="10" maxlength="10" pattern="[0-9]{10}" title="Phone Number must be exactly 10 digits" value="<%=user.getPhoneNumber() %>" >

                </div>

                <div class="profile">

                        <label class="input-field">Password</label>
                        <br>
                        <input name="password" class="input-field" pattern="^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#$%^&amp;*_=+-]).{8,24}$" maxlength="10" minlength="8" title="Must contain at least one number, one uppercase, lowercase and one special character, and at least 8 - 10 characters." type="password" value = <%=user.getPassword() %> >

                </div>

                <div class="personal-info">
                    <h3>Personal Information</h3>
                </div>

                <div class="profile">

                        <label class="input-field">First Name</label>
                        <br>
                        <input name="first_name" class="input-field" type="text" pattern="[a-zA-Z]+" title="Don't give Numbers or empty space in the First Name"  value="<%=user.getFirstName() %>" >

                </div>

                <div class="profile">

                        <label class="input-field">Middle Name (optional)</label>
                        <br>
                        <input name="middle_name" class="input-field" type="text" pattern="[a-zA-Z]+" title="Don't give Numbers or empty space in the Middle Name" value="<%=user.getMiddleName() %>" >

                </div>

                <div class="profile">

                        <label class="input-field">Last Name</label>
                        <br>
                        <input name="last_name" class="input-field" type="text" pattern="[a-zA-Z]+" title="Don't give Numbers or empty space in the Last Name" value="<%=user.getLastName() %>" >

                </div>


                <br>
                <div class="btn-edit">
                    <button type="submit" class="btn-1" id="edit-button" style="color:white;">Update Information</button> 
                </div>
<br>
<br>
<br>
				</form>
		
		</div>
		</div>		
<footer class="footer_for_gfc">

</footer>

<script>var contextPath = '<%=request.getContextPath()%>';</script>

<script src="<%=request.getContextPath()%>/js/footer.js"></script>
</body>
</html>
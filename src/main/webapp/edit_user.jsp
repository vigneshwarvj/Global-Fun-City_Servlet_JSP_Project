<%@page import="in.fssa.globalfuncity.model.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit | Profile | Global Fun City</title>
</head>
<body>

<div class="all-content">

<%User user =(User) request.getAttribute("user"); %>

            <div class="account-information">

                <div class="account">
                    <h1>Your Account</h1>
                </div>   

			<form action="update?userId=<%=user.getUserId() %>" method="post">

				<div class= "profile">
				
						<label class = "imput-field">Email (You couldn't able to Edit Email)</label>
						<br>
						<input name="email" class="input-field" value="<%=user.getEmail() %>" disabled>
						
				</div>

                <div class="profile">

                        <label class="input-field">Mobile Phone </label>
                        <br>
                        <input name="mobile_number" class="input-field" type="tel" value="<%=user.getPhoneNumber() %>" >

                </div>

                <div class="profile">

                        <label class="input-field">Password</label>
                        <br>
                        <input name="password" class="input-field" type="password" value = <%=user.getPassword() %> >

                </div>

                <div class="personal-info">
                    <h3>Personal Information</h3>
                </div>

                <div class="profile">

                        <label class="input-field">First Name</label>
                        <br>
                        <input name="first_name" class="input-field" type="text" value="<%=user.getFirstName() %>" >

                </div>

                <div class="profile">

                        <label class="input-field">Middle Name (optional)</label>
                        <br>
                        <input name="middle_name" class="input-field" type="text" value="<%=user.getMiddleName() %>" >

                </div>

                <div class="profile">

                        <label class="input-field">Last Name</label>
                        <br>
                        <input name="last_name" class="input-field" type="text" value="<%=user.getLastName() %>" >

                </div>


                <br>
                <div class="btn-edit">
                    <button type="submit" class="btn-1" id="edit-button">Update Information</button> 
                </div>

				</form>
</body>
</html>
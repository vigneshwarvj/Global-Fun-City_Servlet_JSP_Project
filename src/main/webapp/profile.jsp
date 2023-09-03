<%@page import="in.fssa.globalfuncity.model.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Global Fun City - Profile</title>
</head>
<body>

<div class="all-content">

<%User user =(User) request.getAttribute("user"); %>

            <div class="account-information">

                <div class="account">
                    <h1>Your Account</h1>
                </div>   

                <div class="profile">
                
                        <label class="input-field">Email</label>
                        <br>
                        <input id="email" class="input-field" type="email" value="<%=user.getEmail() %>" disabled>

                </div>

                <div class="profile">

                        <label class="input-field">Mobile Phone </label>
                        <br>
                        <input id="mobile_number" class="input-field" type="tel" value="<%=user.getPhoneNumber() %>" readonly>

                </div>

                <div class="profile">

                        <label class="input-field">Password</label>
                        <br>
                        <input id="password" class="input-field" type="password" value = <%=user.getPassword() %> readonly>

                </div>

                <div class="personal-info">
                    <h3>Personal Information</h3>
                </div>

                <div class="profile">

                        <label class="input-field">First Name</label>
                        <br>
                        <input id="first_name" class="input-field" type="text" value="<%=user.getFirstName() %>" readonly>

                </div>

                <div class="profile">

                        <label class="input-field">Middle Name (optional)</label>
                        <br>
                        <input id="middle_name" class="input-field" type="text" value="<%=user.getMiddleName() %>" readonly>

                </div>

                <div class="profile">

                        <label class="input-field">Last Name</label>
                        <br>
                        <input id="last_name" class="input-field" type="text" value="<%=user.getLastName() %>" readonly>

                </div>


                <br>
                <div class="btn-edit">
                    <a href=edit><button type="submit" class="btn-1" id="edit-button">Edit</button> </a> 
                </div>

                <div class="privacy">
                    <p>
                        Global treats this information with care and respect. For details, review our Privacy Policy.
                    </p>
                </div>


</body>
</html>
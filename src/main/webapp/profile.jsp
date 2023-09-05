<%@page import="in.fssa.globalfuncity.model.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=League+Spartan:wght@500&family=Poppins:wght@300;500&family=Rubik+Microbe&display=swap" rel="stylesheet">

<title>Global Fun City - Profile</title>

<style>
.all-content{
    display: flex;
    justify-content: space-evenly;
    padding: 50px 0px 0px 0px;
}
h4{
    text-align: center;
}
.profile{
    line-height: 3;
}
.profile input{
    padding: 10px;
    width: 376px;
    border-radius: 3px;
    border: 2px solid #eee;
}
.profile select{
    padding: 10px;
    width: 400px;
    border-radius: 3px;
    border: 2px solid #eee;
}
.account, .tickets h1 {
    font-family: 'league spartan', sans-serif;
    font-size: 25px;
}
.btn-done button{
    padding: 10px;
    color: white;
    background-color: #1c314d;
    border: none;
    border-radius: 3px;
    width: 400px;
    font-family: 'poppins',sans-serif;
    cursor: pointer;
}
.btn-edit button{
    padding: 10px;
    color: white;
    background-color: #1c314d;
    border: none;
    border-radius: 3px;
    width: 400px;
    font-family: 'poppins',sans-serif;
    cursor: pointer;
}

</style>

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

                <div class="btn-edit">
                    <a href=delete><button type="submit" class="btn-1" id="delete-button">Delete Account</button> </a> 
                </div>
                
               <div class="privacy">
                    <p>
                        By deleting your account, you may be unable to access certain Global services.
                    </p>
                </div>

</body>
</html>
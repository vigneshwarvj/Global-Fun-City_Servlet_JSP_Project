<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Global Fun City - User Registration</title>

<style>

.image-signup{
    display: flex;
    align-items: center;
    position: relative;
    top: 50px;
    padding: 0px 0px 50px 0px;
}
.sign-up form{
    width: 100px;
}
.sign-up{
    background-color:  rgb(249, 249, 249);
    width: 300px;
    border: 2px solid rgb(231, 224, 224);
    box-shadow: 0 4px 8px 0 rgb(0 0 0 / 20%), 0 6px 20px 0 rgb(0 0 0 / 19%);
    padding: 50px;
    border-radius: 10px;
}
.information-of-users input{
    padding: 10px;
    width: 276px;
    border-radius: 3px;
    border: 2px solid #eee;
    font-family: 'poppins', sans-serif;
    
}
.sign-up button{
    padding: 10px;
    color: white;
    background-color: #1c314d;
    border: none;
    width: 300px;
    font-family: 'poppins',sans-serif;
    cursor: pointer;
}
.sign-up h3{
    font-family: 'open sans', sans-serif;
    text-align: center;
    text-decoration: none;
}
.sign-up h4{
    font-family: 'open sans', sans-serif;
    color: black;
}
.sign-up h4 a{
    text-decoration: none;
}
label, h5{
    font-family: 'open sans', sans-serif;
}
p{
    font-family: 'poppins', sans-serif;
}

</style>

</head>
<body>
        <div class="image-signup">
        
          	<div class="image">
                <img src="https://iili.io/HyW3Cbt.gif" alt="gif">
            </div>
            
            <div class="sign-up">
                <img src="https://iili.io/Hy1uZru.png" width="250" alt="global-account">
                <h3>Create Your Account</h3>
                <div class="information-of-users">
                    <form action="add_user" method="post" class="register">
                        <input type="text" name="first_name" placeholder="First Name" required> &nbsp;
                        <input type="text" name="middle_name" placeholder="Middle Name (optional)"> &nbsp;
                        <input type="text" name="last_name" placeholder="Last Name" required> &nbsp;
                        <input type="tel" name="phone_number" placeholder="Phone Number" required> &nbsp;
                        
                       <span class="pattern_desc_for_phone_number" id="patternDescPhoneNumber" style="display: inline-block; width: 300px; font-family: 'poppins', sans-serif; font-size: 0.8rem;">
                           Please enter only your 10 digit mobile number. Don't add country code.
                        </span>
                      &nbsp;
                      
                        <input type="email" name="email" placeholder="Email Address" required> &nbsp;
                        <input type="password" name="password" placeholder="Password" title="Please give one uppercase, one lowercase, one special character and one number miniumum is 8 character maximum is 10 characters" required> &nbsp;
                        <span class="pattern_desc_for_password" id="patternDescPassword" style="display: inline-block; width: 300px; font-family: 'poppins', sans-serif; font-size: 0.8rem;">
                            Must contain at least one number, one uppercase, lowercase and one special character, and at least 8 characters.
                        </span>
                        &nbsp;
    </div>     
                        <div class="right-checkbox">  
                            <input type="checkbox" id="right" name="right" value="right">
                            <label for="right">Yes! I would like to receive updates, special offers, and other information from Global Fun City & Resorts businesses.</label>
                        </div>
                        <br>
                        <label>
                            By creating an account, I agree to the Terms of Use and acknowledge that I have read the Privacy Policy.</a>
                        </label>

                        <br>
                        <br>
                         <button class="btn-create-account" type="submit" value="Submit">Create Account</button>

                        <h5>
                            Already have an account? <a href="/globalfuncityweb/login">Sign In</a>
                        </h5>
                    </form> 
                </div>
            </div>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Global Fun City - Login </title>

<style>

.image-signup{
    display: flex;
    align-items: center;
    position: relative;
    top: 90px;
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
.sign-up input{
    padding: 10px;
    width: 276px;
    border: 2px solid #eee;
    border-radius: 3px;
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

</style>

</head>
<body>
       <div class="image-signup">
        
            <div class="image">
                <img src="https://iili.io/HyW3Cbt.gif" alt="gif">
            </div>    

            <div class="sign-up">
                <img src="https://iili.io/Hy1uZru.png" width="250" alt="global-account">
                <h3>Welcome Back!</h3>
            <form action="login" method="post">
                    <input type="email" name="email" placeholder="Email Address" required> &nbsp;
                    <input type="password" id="password" name="password" placeholder="Password" title="Please give one uppercase, one lowercase, one special character and one number miniumum is 8 character maximum 10 characters" required="true">
    
                    <a href="">
                        <h4>Forgot Password?</h4> 
                    </a>
                    
                   <button type="submit">Sign In</button>
                    
            </form>
            
                <h4>New to Global Account?</h4>
                
                <a href="/globalfuncityweb/add_user.jsp">
                    <button >Create an Account</button>
                </a>
                
            </div>
        </div>
</body>
</html>
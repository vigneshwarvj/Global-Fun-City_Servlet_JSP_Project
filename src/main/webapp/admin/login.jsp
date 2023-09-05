<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin | Global Fun City</title>
</head>

<style>
.welcome{
    font-family: 'open sans', sans-serif; 
    text-align: center;
    position: relative;
    top: 40px;
    font-size: 30px;
}
.form_for_admin{
    width: 100px;
}
.details_from_admin{
    background-color:  rgb(249, 249, 249);
    width: 300px;
    border: 2px solid rgb(231, 224, 224);
    box-shadow: 0 4px 8px 0 rgb(0 0 0 / 20%), 0 6px 20px 0 rgb(0 0 0 / 19%);
    padding: 50px;
    border-radius: 10px;
    position: relative;
    top:85px ;
    left: 550px;
}
.details_from_admin h4{
    font-family: 'poppins', sans-serif;
}
.form_for_admin input{
    padding: 10px;
    width: 276px;
    border: 2px solid #eee;
    border-radius: 3px;
}
.btn-login{
    padding: 10px;
    color: white;
    background-color: #1c314d;
    border: none;
    width: 300px;
    font-family: 'poppins',sans-serif;
    cursor: pointer;
}
</style>

<body>

        <div class="welcome">
            <h2>Welcome Admin!</h2>
        </div>

        <section class="details_from_admin">
            <img src="https://iili.io/Hy1uZru.png" width="250" alt="global-account">
            <h4>Enter your credentails</h4>
            <form role="form" class="form_for_admin" action="dashboard" method="POST">
                <input type="text" id="text_id" name="id" placeholder="Login ID" oninput="this.value = this.value.replace(/[^0-9]/g,'')" value="001" required> &nbsp;
                <input type="password" id="password" name="password" placeholder="Password" pattern="[a-zA-Z]+" value="VV"required>
                &nbsp;
                <a href="dashboard"> <button class="btn-login" type="submit">Login</button>  </a>
            </form>
        </section>


</body>
</html>
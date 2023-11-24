<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Room Booking Success | Global Fun City</title>

		<link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Inter+Tight&family=Libre+Baskerville:ital,wght@0,400;0,700;1,400&family=Nanum+Pen+Script&family=Open+Sans:wght@700&family=Poppins:wght@300;500&family=Reem+Kufi&family=Sacramento&display=swap" rel="stylesheet">

        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=League+Spartan:wght@500&family=Poppins:wght@300;500&family=Rubik+Microbe&display=swap" rel="stylesheet">

<style>
body {
    margin: 0;
    padding: 0;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    background-color: #f5f5f5;
}

.container {
    background-color: #fff;
    border-radius: 8px;
    box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
    padding: 20px;
    text-align: center;
}

.success-message {
    animation: fadeIn 1.5s ease-in-out forwards;
}

h1 {
	font-family:'League spartan', sans-serif;
    color: #4caf50;
    font-size: 24px;
}

p {
	font-family:'Open sans', sans-serif;
    color: #333;
    font-size: 16px;
}

@keyframes fadeIn {
    0% {
        opacity: 0;
        transform: translateY(-20px);
    }
    100% {
        opacity: 1;
        transform: translateY(0);
    }
}

#home-button, #profile-button{
	border-radius: 80pc;
    background-color: #ffa51d;
    border: #ffa51d;
    font-family: 'league spartan', sans-serif;
    padding: 13px 20px 13px 20px;
    cursor: pointer;
    font-size: 16px;
    font-family:'League spartan', sans-serif;
}

button a{
	text-decoration:none;
	color: white;
}


</style>



</head>

<body>
    <div class="container">
        <div class="success-message">
            <h1>Room Booked Successfully!</h1>
            <p>Your booking is confirmed. Enjoy your stay!</p>
            <button id="home-button"><a href= "<%=request.getContextPath()%>/index">Home</a></button>
            <button id= "profile-button"><a href= "<%=request.getContextPath()%>/user_dashboard">Profile</a></button>
        </div>
    </div>
</body>
</html>
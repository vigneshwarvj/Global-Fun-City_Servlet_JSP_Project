<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>404 - Page Not Found</title>
    
    	<link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Inter+Tight&family=Libre+Baskerville:ital,wght@0,400;0,700;1,400&family=Nanum+Pen+Script&family=Open+Sans:wght@700&family=Poppins:wght@300;500&family=Reem+Kufi&family=Sacramento&display=swap" rel="stylesheet">

        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=League+Spartan:wght@500&family=Poppins:wght@300;500&family=Rubik+Microbe&display=swap" rel="stylesheet">
    
    
    <style>
        /* Reset default margin and padding for the body */
        body {
            margin: 0;
            padding: 0;
            background-color: #eee; /* Set the background color */
            font-family: Arial, sans-serif; /* Choose a suitable font-family */
            text-align: center; /* Center-align the content */
        }
        
        /* Center-align the content vertically and horizontally */
        .container {
            /* position: absolute;
            top: 30%;
            left: 50%;
            transform: translate(-50%, -50%); */
        }

        /* Style the error message and link */
        .error-message {
            font-size: 24px;
            margin-bottom: 20px;
        }

        /* Style the link back to the homepage */
        /* .homepage-link {
            font-size: 18px;
            text-decoration: none;
            background-color: #007BFF;
            color: #fff;
            padding: 10px 20px;
            border-radius: 5px;
            transition: background-color 0.3s;
        } */

        /* Hover effect for the homepage link */
        .home:hover {
            color: #d3891a;
        }
        .url{
        	margin:7%;
        	font-family:'League Spartan', sans-serif;
        	font-size:57px;
        }
        .number{
        	margin: -2% 0% 0% 0%;
        	font-family:'League Spartan', sans-serif;
        	font-size:340px;
        }
        .oops{
        	margin: 1%;
        	font-family:'League Spartan', sans-serif;
        	font-size:40px;
        }
        .sorry{
        	font-family:'work sans', sans-serif;
        	color:#828385;
        	font-size:20px;
        }
        .home{
        	background-color: #ffa51d;
    		border: 3px solid #ffa51d;
    		padding: 15px;
    		border-radius: 40px;
    		padding-left: 40px;
    		padding-right: 40px;
    		font-size: 18px;
    		font-family: 'League Spartan', sans-serif;
        }
        .homepage-link{
        	text-decoration:none;
        	color:white;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="error-message">
            <p class="url"><b>URL not found!</b></p>
            <p class="number"><b>4<img src="https://iili.io/HreLscP.png" width="17%" alt="0"/>4</b></p>
            <p class="oops"><b>Oops...</b></p>
            <p class="sorry">We're sorry, but something went wrong.</p>
        </div>
        
        <button class="home"><a href="/globalfuncityweb/index" class="homepage-link">Homepage</a></button>
        
        
    </div>
</head>
<%-- <body>

	<jsp:include page="<%=request.getContextPath()%>/user/header.jsp"></jsp:include>
	<h1>404 - Error Page</h1>
	<p>Page doesn't exist</p>
	<p>
		Please go to <a href="/globalfuncityweb/index">home</a> page
	</p> --%>

</body>
</html>
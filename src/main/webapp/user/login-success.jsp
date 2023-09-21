<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>hello</title>
</head>
<body>

    <script>
        // JavaScript code to display the "Login successful" alert
        alert("Login successful!. Welcome to the Global Fun City!");
        // Optionally, you can redirect to another page after showing the alert.
        window.location.href = "<%= request.getContextPath() %>/index";
    </script>

</body>
</html>
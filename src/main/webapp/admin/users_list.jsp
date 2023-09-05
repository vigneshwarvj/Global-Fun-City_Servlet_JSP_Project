<%@page import="java.util.Set"%>
<%@page import="in.fssa.globalfuncity.model.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List of Users</title>

<style>
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: #dddddd;
}
</style>

</head>
<body>

<h2>List of Users</h2>

<% Set<User> listOfUsers = (Set<User>) request.getAttribute("users_list");%>
  


<table>
  <tr>
    <th>User id</th>
    <th>First Name</th>
    <th>Middle Name</th>
    <th>Last Name</th>
    <th>Phone Number</th>
    <th>Email</th>
    <th>Password</th>
    <th>Status </th>
  </tr>
  
   <% for(User user : listOfUsers){ %>
 
  <tr>
    <td> <%=user.getUserId()   %> </td>
    <td> <%=user.getFirstName()  %></td>
    <td> <%=user.getMiddleName()  %></td>
    <td> <%=user.getLastName()  %></td>
    <td> <%=user.getPhoneNumber()  %></td>
    <td> <%=user.getEmail() %> </td>
    <td> <%=user.getPassword() %> </td>
    <td> <%=user.isActive() %>
    
  </tr>

<%}; %>

  </table>

</body>
</html>
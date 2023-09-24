<%@page import="in.fssa.globalfuncity.service.UserService"%>
<%@page import="in.fssa.globalfuncity.model.User"%>


<% 
User user = null;
if(request.getSession().getAttribute("userId") == null){
	user = null;
}else{
	int userId=(Integer) request.getSession().getAttribute("userId");
	
	 user = (User) new UserService().findByUserId(userId);
}

%>
<%
if (user == null) {
%>
<div class="visit-signin">

<div class="visit-global">
	<p>	Visit globalfuncity</p>
</div>	

<div class="sign-in">
	<p><a href="/globalfuncityweb/login" id="loginUser"> Sign In </a> | <a href="/globalfuncityweb/register"> Create Account</a>  | <i class="fa-solid fa-globe"></i> United states (English)</p>
</div>

</div>

<%
} else {
%>

<div class="visit-signin">

<div class="visit-global">
	<p>	Visit globalfuncity</p>
</div>	

<div class="sign-in">
	<p><a href="<%=request.getContextPath()%>/user_dashboard"> Welcome, <%=user.getFirstName()+" "+ user.getLastName() %> ! </a> &nbsp; | <a href="#" id="logOutLink"> Sign Out</a>  | <i class="fa-solid fa-globe"></i> United states (English)</p>
</div>

</div>

<%
}
%>


<script>
    document.addEventListener("DOMContentLoaded", function () {
        const logOutLink = document.getElementById("logOutLink");

        logOutLink.addEventListener("click", function (event) {
            event.preventDefault();

            //Confirmation
            const confirmed = window.confirm("Are you sure you want to sign out?");
            
            // If the user confirms, log them out
            if (confirmed) {
                window.location.href = "<%= request.getContextPath() %>/user/logout";
            }
        });
    });
</script>

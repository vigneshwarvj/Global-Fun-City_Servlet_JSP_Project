<% if (request.getSession().getAttribute("userId") != null) { %>
    <button id="btn-booknow">
        <a href="/globalfuncityweb/book_tickets" id="btn-booknow">
            <b>BOOK NOW</b>
        </a>
    </button>
<% } else { %>
    <button id="btn-booknow">
        <a href="/globalfuncityweb/login" id="btn-booknow">
            <b>BOOK NOW</b>
        </a>
    </button>
<% } %>

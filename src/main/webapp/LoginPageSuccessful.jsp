<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login Page Successful</title>
</head>
<body>
<h1> Hi <%= request.getAttribute("userName") %> , Login Successful.</h1>
<a href="LoginPage.jsp">Login Page</a>
</body>
</html>

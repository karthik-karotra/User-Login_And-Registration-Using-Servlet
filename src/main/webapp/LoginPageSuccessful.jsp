<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 09-04-2020
  Time: 12:30 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login Page Succesful</title>
</head>
<body>
<h1> Hi <%= request.getAttribute("userName") %> , Login Successful.</h1>
<a href="LoginPage.jsp">Login Page</a>
</body>
</html>

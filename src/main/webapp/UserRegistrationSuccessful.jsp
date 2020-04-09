<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>User Registration Successful</title>
</head>
<body>
<h1>Registration Successful.</h1>
<h3>Hi <%=request.getAttribute("userName")%>, this are your details.</h3>
<table>
    <tr>
        <td>Username</td>
        <td><%=request.getAttribute("userName")%></td>
    </tr>
    <tr>
        <td>Email</td>
        <td><%=request.getAttribute("email")%></td>
    </tr>
    <tr>
        <td>Mobile No</td>
        <td><%=request.getAttribute("mobileNo")%></td>
    </tr>
    <tr>
        <td>Address</td>
        <td><%=request.getAttribute("address")%></td>
    </tr>
</table>
<a href="LoginPage.jsp">Login Page</a>
</body>
</html>

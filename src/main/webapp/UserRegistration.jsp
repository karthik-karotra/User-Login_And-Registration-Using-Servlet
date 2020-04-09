<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>User Registration</title>
</head>
<body>
<form action="registrationServletPage" method="post">
    <table>
        <tr>
            <td>Name:</td>
            <td><input type="text" name="name" placeholder="Enter Name" required></td>
        </tr>
        <tr>
            <td>Email :</td>
            <td><input type="email" name="email" placeholder="Enter Email" required></td>
        </tr>
        <tr>
            <td>Password :</td>
            <td><input type="password" name="userPassword" placeholder="Enter Password" required></td>
        </tr>
        <tr>
            <td>Select Gender:</td>
            <td><input type="radio" name="gender"><span>Male</span>
                <input type="radio" name="gender"><span>Female</span></td>
        </tr>
        <tr>
            <td>Mobile No :</td>
            <td><input type="number" name="number" placeholder="Enter Mobile Number" required></td>
        </tr>
        <tr>
            <td> Address:</td>
            <td><textarea rows="3" cols="18" name="address" placeholder="Enter Address" required></textarea></td>
        </tr>
        <tr>
            <td><input type="submit" value="Register"></td>
            <td><input type="reset" value="RESET"></td>
        </tr>
    </table>
</form>
</body>
</html>

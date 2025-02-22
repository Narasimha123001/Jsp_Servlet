<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>User Form</title>
</head>
<body>
<h2>Enter Your Details</h2>
<form action="UserServlet" method="post">
    First Name: <input type="text" name="firstName"  required><br>
    Last Name: <input type="text" name="lastName" required><br>
    <input type="submit" value="Submit">
</form>
</body>
</html>
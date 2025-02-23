<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>

<h2>Fill Your Details</h2>
<form action=<%= request.getContextPath()%> /Controller METHOD="post" >
    <label>Name:</label>
    <input type="text" name="name" required>
    <br><br>

    <label>Gender:</label>
    <input type="radio" name="gender" value="Male"  checked> Male
    <input type="radio" name="gender" value="Female" checked> Female
    <br><br>

    <label>Languages Known:</label>
    <input type="checkbox" name="language" value="English"> English
    <input type="checkbox" name="language" value="Hindi"> Hindi
    <input type="checkbox" name="language" value="French"> French
    <br><br>

    <label>Country:</label>
    <select name="country">
        <option value="India">India</option>
        <option value="USA">USA</option>
        <option value="UK">UK</option>
        <option value="Germany">Germany</option>
    </select>
    <br><br>

    <input type="submit" value="Submit">
</form>
</body>
</html>
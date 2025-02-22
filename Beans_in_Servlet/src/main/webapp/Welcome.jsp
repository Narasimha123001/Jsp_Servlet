<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="org.techtricks.beans_in_servlet.User" %>
<!DOCTYPE html>
<html>
<head>
  <title>Welcome</title>
</head>
<body>
<h2>Welcome, <%= ((User) request.getAttribute("user")).getFirstName() %>
  <%= ((User) request.getAttribute("user")).getLastName() %>!</h2>

</body>
</html>

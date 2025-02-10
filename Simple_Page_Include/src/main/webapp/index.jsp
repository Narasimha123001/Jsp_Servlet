<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <title>JSP - Hello World</title>
</head>
<body>
<h1><%= "Hello World!" %></h1>
<br/>
<a href="<%=request.getContextPath()%>/hello-servlet?page=login">Login</a> <br/>
<a href="<%=request.getContextPath()%>/hello-servlet?page=about">About</a> <br/>
<a href="<%=request.getContextPath()%>/hello-servlet?page=signup">SignUp</a> <br/>
</body>
</html>
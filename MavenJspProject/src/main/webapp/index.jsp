<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>import class from java to jsp</title>
    <%@ page import="com.techtricks.HelloJava" %>
</head>
<body>
<%= new HelloJava().demo()%>
</body>
</html>

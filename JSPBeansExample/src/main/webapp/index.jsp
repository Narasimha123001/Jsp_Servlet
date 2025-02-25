<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="org.techtricks.jspbeansexample.Person" %>

<html>
<head>
    <title>Java Bean Example</title>
</head>
<body>

<!-- Declare JavaBean -->
<jsp:useBean id="person" class="org.techtricks.jspbeansexample.Person" scope="session"/>

<!-- Set Properties -->
<jsp:setProperty name="person" property="firstName" value="John"/>
<jsp:setProperty name="person" property="lastName" value="Doe"/>
<jsp:setProperty name="person" property="age" value="25"/>

<!-- Get Properties -->
<h2>Person Details</h2>
<p>First Name: <jsp:getProperty name="person" property="firstName"/></p>
<p>Last Name: <jsp:getProperty name="person" property="lastName"/></p>
<p>Age: <jsp:getProperty name="person" property="age"/></p>

</body>
</html>

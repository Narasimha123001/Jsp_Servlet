<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<h1><%= "Hello World!" %>
</h1>
<h2>
    basic of the jsp
</h2>
<br/>
<%! int x = 55; int y = 4;
%>
<%= x+y
%>

<hr/>

<%!
    String message(){
        return "Hello World!";
    }
%>
<br/>
<%= message()
%>
<br/>
<%--
  file add to jsp
--%>

<%@include file="file.txt"
%>
<br/>
<jsp:include page="file1.txt"/>

</body>
</html>
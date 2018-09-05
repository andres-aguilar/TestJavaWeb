<%-- 
    Document   : logout
    Created on : 5/09/2018, 02:01:37 PM
    Author     : sibei
--%>

<%@page import="com.yosh.Beans.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    User user = session != null ? (User)session.getAttribute("user") : null;
    if (user != null) {
        session.invalidate();
        response.sendRedirect("index.jsp");
    }
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>logout</title>
    </head>
    <body>
    </body>
</html>

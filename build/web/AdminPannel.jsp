<%-- 
    Document   : AdminPannel
    Created on : 5/09/2018, 01:16:37 PM
    Author     : sibei
--%>

<%@page import="com.yosh.Beans.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% 
    String contextPath = request.getContextPath(); 
    User user = session != null ? (User)session.getAttribute("user") : null;
    if (user == null) {
        response.sendRedirect("index.jsp");
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="<%=contextPath%>/assets/css/main.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0-rc.2/css/materialize.min.css">
        <title>JavaWeb - Admin</title>
    </head>
    <body>
        <p>Acceso correcto  <%= user.getUserName() %></p>
        <a class="btn" href="logout.jsp"> Salir </a>
    </body>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0-rc.2/js/materialize.min.js"></script>
    <script type="text/javascript" src="<%=contextPath%>/assets/scripts/main.js"></script>
</html>

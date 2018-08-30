<%-- 
    Document   : index.jsp
    Created on : 30/08/2018, 11:16:35 AM
    Author     : Andres Aguilar
    Email      : andresyoshimar@gmail.com
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% String contextPath = request.getContextPath(); %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="<%=contextPath%>/assets/css/main.css">
        <title>Prueba con JavaEE</title>
    </head>
    <body>
        <form action="UserServlet" method="POST">
            <input type="text" name="user" required>
            <input type="password" name="pass" required>
            <button type="submit">Enviar</button>
        </form>
        <script type="text/javascript" src="<%=contextPath%>/assets/scripts/main.js"></script>
    </body>
</html>

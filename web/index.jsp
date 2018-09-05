<%-- 
    Document   : index.jsp
    Created on : 30/08/2018, 11:16:35 AM
    Author     : Andres Aguilar
    Email      : andresyoshimar@gmail.com
--%>

<%@page import="com.yosh.Beans.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% 
    String contextPath = request.getContextPath();
    boolean error = request.getAttribute("error") != null ? (boolean)request.getAttribute("error") : false;  

    // Validate session
    User user = session != null ? (User)session.getAttribute("user") : null;
    if (user != null) {
        response.sendRedirect("AdminPannel.jsp");
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
        <title>JavaWeb - LogIn</title>
    </head>
    <body>
        <div class="content blue darken-4">
            <div class="container col s-12">
                <form action="Authentication" method="POST">
                    <div class="user-image center-align white-text">
                        <p><i class="large material-icons">account_circle</i></p>
                    </div>
                    <input class="white-text" type="text" name="user" placeholder="Username" required>
                    <input class="white-text" type="password" name="pass" placeholder="Password" required>
                    <button type="submit" class="waves-effect waves-light btn btn-block">
                        Entrar
                    </button>
                </form>
            </div>
            <% if(error) {%>
            <div class="notification error"> ERROR: Username or Password not valid! </div>
            <%}%>
        </div>
    </body>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0-rc.2/js/materialize.min.js"></script>
    <script type="text/javascript" src="<%=contextPath%>/assets/scripts/main.js"></script>
</html>

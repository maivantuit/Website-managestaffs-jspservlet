<%-- 
    Document   : logout
    Created on : Nov 14, 2017, 10:51:16 PM
    Author     : CỌP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Logout</title>
    </head>
    <body>        
        <%
            {              
                session.invalidate();                
                response.sendRedirect("login.jsp");
            }
        %>
    </body>
</html>

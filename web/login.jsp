<%-- 
    Document   : dangnhap
    Created on : Nov 13, 2017, 8:44:33 PM
    Author     : CỌP
--%>
<%@page import="modelclasses.*" errorPage="info.jsp" contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body>
        <%@ include file="header.jsp" %>
        <%@ include file="menu.jsp" %><%--slider--%>
        <!-------usebean-->        
        <!-------end usebean-->
            <div class="account">
                <h2 class="account-in">Login</h2>
                <form action="StaffServlet" method="POST">                    
                    <div class="formne">
                        <span>Username </span>
                        <input type="text" name="manv">
                    </div > 	                        
                    <div class="formne"> 
                        <span class="word">Password* </span>
                        <input type="password" name="pass">
                    </div>			
                    <% if(session.getAttribute("loi") != null){%>
                    <div>
                        <p style="color:white">(*) Vui lòng kiểm tra lại id và password</p>
                    </div> 
                    <%}%>
                    <input type="hidden" value="login" name="command">
                    <input id="inputlogin" class="formne" type="submit" value="Login"> 
                </form>               
            </div>


        <%@ include file="footer.jsp" %>
    </body>
</html>

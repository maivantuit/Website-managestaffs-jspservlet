<%-- 
    Document   : changepassword
    Created on : Nov 14, 2017, 7:28:06 PM
    Author     : CỌP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />	
        <title>Changes Password</title>
    </head>
    <body>
        <%@ include file="header.jsp" %>
        <%@ include file="menu.jsp" %><%--slider--%>
        <div id="changepassword">
            <h2>Change password</h2>
            <form action="StaffServlet" method="POST">                    	                        
                <div class="formne2"> 
                    <span class="word">Password old* </span>
                    <input type="password" name="passcu">
                </div>	
                <div class="formne2"> 
                    <span class="word">New password* </span>
                    <input type="password" name="passmoi">
                </div>
                <div class="formne2"> 
                    <span class="word">Input again new password* </span>
                    <input type="password" name="nhaplaipassmoi">
                </div>
                <% if (session.getAttribute("errordoipass") != null) {%>
                <div>
                    <p style="color:violet">(*) Change pass not success</p>
                </div> 
                <%}%>
                <div>
                    <input type="hidden" value="changepassword" name="command">
                    <input id="inputlogin" class="formne2" type="submit" value="Changepassword">                     
                </div>
            </form>
        </div>
        <%
            s = (Staff) session.getAttribute("user");
            if (s == null) {
                response.sendRedirect("back.jsp");
            }
        %>
        <%@ include file="footer.jsp" %>
    </body>
</html>
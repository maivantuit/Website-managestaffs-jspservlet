<%-- 
    Document   : updateinfo
    Created on : Nov 14, 2017, 9:30:44 PM
    Author     : CỌP
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />	
        <title>Update info</title>
    </head>
    <body>        
        <%
            request.setCharacterEncoding("utf-8");
            response.setCharacterEncoding("utf-8");
            if (session.getAttribute("user") != null) {
                Staff s = new Staff();
                s = (Staff) session.getAttribute("user");
            }
        %>
        <%--lam sao check, dang nhap truoc roi moi vao dc--%>
        <%@ include file="header.jsp" %>
        <%@ include file="menu.jsp" %><%--slider--%>
        <% if (s != null) {%>

        <div id="updateinfo">
            <h2>Update info(Input not utf-8)</h2>
            <form action="StaffServlet" method="POST" accept-charset="UTF-8">                    	                        
                <div class="formne3"> 
                    <span class="word">Họ: </span>
                    <input class="sizeinput" type="text" name="ho" value=" <%= s.getHo()%>">
                </div>	
                <div class="formne3"> 
                    <span class="word">Tên: </span>
                    <input class="sizeinput" type="text" name="ten" value="<%= s.getTen()%>">
                </div>
                <div class="formne3"> 
                    <span class="word">Ngày sinh(): </span>
                    <input class="sizeinput" type="date" name="ngaysinh" value="<%= s.getDob()%>">
                </div>
                <div class="formne3"> 
                    <span class="word">Sex(M/F): </span>
                    <input class="sizeinput" type="text" name="sex" value="<%= s.getSex()%>">
                </div>
                <div class="formne3"> 
                    <span class="word">CMND: </span>
                    <input class="sizeinput" type="text" name="cmnd" value="<%= s.getCMND()%>">
                </div>
                <div class="formne3"> 
                    <span class="word">Status: </span>
                    <input class="sizeinput" type="text" name="status" value="<%= s.getStatus()%>"> <!--"<if (s != null) {%> <= s.getStatus()%><>": nhu the nay thi cap nhat khong dc-->
                </div>
                <div>
                    <input type="hidden" value="updateinfo" name="command">
                    <input id="inputlogin" class="formne3" type="submit" value="Save">                     
                </div>
            </form>
        </div>                
        <%}%>
        <%
            s = (Staff) session.getAttribute("user");
            if (s == null) {
                response.sendRedirect("back.jsp");
            }
        %>
        <%@ include file="footer.jsp" %>

    </body>
</html>

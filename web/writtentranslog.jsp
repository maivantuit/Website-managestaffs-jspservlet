<%-- 
    Document   : writtentranslog
    Created on : Nov 25, 2017, 11:56:40 AM
    Author     : CỌP
--%>

<%@page import="java.util.Vector"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
        <title>written translog</title>
    </head>
    <body>
        <%
            Vector<Event> list = TransLog.getALL();
        %>
        <%@ include file="header.jsp" %>
        <%@ include file="menu.jsp" %><%--slider--%>
        <div id="writtentranslog">
            <h2>Written Translog</h2>
            <form action="TacNghiepServlet" method="POST" accept-charset="UTF-8">                    	                        
                <div class="formne3"> 
                    <span class="word">Mã NV: </span>
                    <input class="sizeinput" type="text" name="manv" value="<%if (s != null) {%> <%= s.getMaNV()%><%}%>">
                </div>	
                <div class="formne3"> 
                    <span class="word">Sự kiện: </span>                                     
                    <select name="sukien">
                        <%for (int idx = 0; idx < list.size(); idx++) {%>                                                                
                        <option class="chon" style="width: 290px" value="<%= list.get(idx).getEventID()%>"><%= list.get(idx).getEventID()%> <%= list.get(idx).getNameEvent()%> </option>     
                        <%}%>                                           
                    </select>
                </div>               
                <div class="formne3"> 
                    <span class="word">Nội dung: </span>
                    <input class="sizeinput" type="text" name="noidung" >
                </div>
                <div class="formne3"> 
                    <span class="word">Quy định số:  </span>
                    <input class="sizeinput" type="text" name="qds">
                </div>
                <div>
                    <input type="hidden" value="writtentranslog" name="command">
                    <input id="inputlogin" class="formne3" type="submit" value="Save">                     
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

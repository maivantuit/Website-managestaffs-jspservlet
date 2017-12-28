<%-- 
    Document   : insertstaff
    Created on : Nov 25, 2017, 2:18:05 PM
    Author     : CỌP
--%>
<%@page import="java.util.Vector"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
        <title>insert staff</title>
    </head>
    <body>
        <%

            Vector<Departmant> list = Departmant.getMaDVandTenDV();

        %>
        <%@ include file="header.jsp" %>
        <%@ include file="menu.jsp" %><%--slider--%>
        <div id="insertstaff">
            <h2>Insert Staff</h2>
            <form action="TacNghiepServlet" method="POST" accept-charset="UTF-8">                    	                        
                <div id="thongtinnhanvien">
                    <h2>Info staff</h2>
                    <div class="formne3"> 
                        <span class="word">Họ NV: </span>
                        <input class="sizeinput" type="text" name="ho">
                    </div>	                    
                    <div class="formne3"> 
                        <span class="word">Tên NV: </span>
                        <input class="sizeinput" type="text" name="ten">
                    </div>
                    <div class="formne3"> 
                        <span class="word">Ngày sinh: </span>
                        <input class="sizeinput" type="date" name="ngaysinh">
                    </div>
                    <div class="formne3"> 
                        <span class="word">Giới tính(M or F): </span>
                        <input class="sizeinput" type="text" name="gioitinh">
                    </div>
                    <div class="formne3"> 
                        <span class="word">CMND: </span>
                        <input class="sizeinput" type="text" name="cmnd">
                    </div>
                    <div class="formne3"> 
                        <span class="word">Password: </span>
                        <input class="sizeinput" type="password" name="pass">
                    </div> 
                    <div class="formne3"> 
                        <span class="word">Nhập lại password: </span>
                        <input class="sizeinput" type="password" name="nhaplaipass">
                    </div> 
                    <div class="formne3"> 
                        <span class="word">Status: </span>
                        <input class="sizeinput" type="text" name="status">
                    </div>                       
                </div>
                <div id="chodonvi">
                    <h2>info for department</h2>
                    <div class="formne3"> 
                        <span class="word">Đơn vị: </span>                                     
                        <select name="madv">
                            <%for (int idx = 0; idx < list.size(); idx++) {%>                                                                
                            <option class="chon" style="width: 275px" value="<%= list.get(idx).getMaDV()%>"><%= list.get(idx).getMaDV()%> <%= list.get(idx).getTenDV()%> </option>     
                            <%}%>                                           
                        </select>
                    </div>
                    <div class="formne3"> 
                        <span class="word">Chức vụ: </span>
                        <input class="sizeinput" type="text" name="chucvu">
                    </div>  
                    <div class="formne3"> 
                        <span class="word">Ghi chú: </span>
                        <input class="sizeinput" type="text" name="ghichu">
                    </div>  
                    <% if(session.getAttribute("loidetrong") != null){%>
                    <div>
                        <p style="color:white">(*) Vui lòng điền đầy đủ thông tin</p>
                    </div> 
                    <%}%>
                    <div>
                        <input type="hidden" value="insertstaff" name="command">
                        <input id="inputlogin" class="formne3" type="submit" value="create a staff">   
                          
                    </div>
                    <!--
                    <div>
                        <input type="hidden" value="quaylai" name="comeback">
                        <input id="inputlogin" class="formne3" type="submit" value="Quay lại">                         
                    </div>
                    -->
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

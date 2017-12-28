<%-- 
    Document   : dangnhap
    Created on : Nov 13, 2017, 8:44:33 PM
    Author     : CỌP
--%>
<%@page import="java.util.Vector"%>
<%@page import="modelclasses.*" errorPage="info.jsp" contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View list staff</title>
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

        <%@ include file="header.jsp" %>
        <%@ include file="menu.jsp" %><%--slider--%>
        <!-------usebean-->        
        <!-------end usebean-->
        <div id="xemdanhsachnhanvien">            
            <h2>Nhật ký của bạn </h2>
            <table class="data">
                <tr class="data">
                    <th class="data" width="30px">STT</th>
                    <th class="data">Mã nhật ký</th>                                                                            
                    <th class="data" width="30px">Mã NV</th>         
                    <th class="data">Mã Sự kiện</th>
                    <th class="data">Nội dung</th>
                    <th class="data">Ngày hiệu lực</th>
                    <th class="data">Quy định số</th>                                                
                    <th class="data" width="200px"> Chức năng</th>                        
                </tr>                 
                <%
                    if(s!=null){
                    int dem = 0;
                    for (TransLog c : TransLog.getListTranslogHaveCode(s.getMaNV())) {
                        dem++;
                %>
                <tr class="data">
                    <td class="data" width="30px"><%= dem%></td>
                    <td class="data" width="30px"><%= c.getLogID()%></td>                                           
                    <td class="data"><%= c.getMaNV()%></td>  
                    <td class="data"><%= c.getEventID()%></td>  
                    <td class="data"><%= c.getContent()%></td>
                    <td class="data"><%= c.getNgayHieuLuc()%></td>                
                    <td class="data"><%= c.getQdSo()%></td>                                        
                    <td class="data" width="180px">
                <center>                          
                    <a href="#">Xóa</a>                    

                </center>   
                </td>
                </tr>  
                <%}}%>
            </table>
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

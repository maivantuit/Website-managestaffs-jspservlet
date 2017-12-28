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
             String manv ="";
            if(request.getParameter("manv")!=null){ // từ link url
                manv = request.getParameter("manv");
            }               
        %>

        <%@ include file="header.jsp" %>
        <%@ include file="menu.jsp" %><%--slider--%>
        <!-------usebean-->        
        <!-------end usebean-->
        <div id="xemdanhsachnhanvien">
            <h2 class="account-in">View list staff</h2>   
            <a href="viewtranslogofstaffadmin.jsp" style="font-size: 20px;font-family: inherit;color: blue">Click để quay lại</a>
            <br style="height: 10px">
            <table class="data" style="margin-top:20px">
                <tr class="data">
                    <th class="data" width="30px">STT</th>
                    <th class="data" width="30px">Mã nhật ký</th>        
                    <th class="data">Ngày</th>   
                    <th class="data" width="30px">Mã NV</th>         
                    <th class="data">Mã sự kiện</th>
                    <th class="data">Nội dung</th>                                             
                    <th class="data">Quy định số</th>                                                                            
                    <th class="data" width="200px"> Chức năng</th>
                </tr> 
                <%
                    int dem = 0;
                    for (TransLog c : TransLog.getListTranslogHaveCode(manv)) {
                        dem++;
                %>
                <tr class="data">
                    <td class="data" width="30px"><%= dem%></td>
                    <td class="data" width="30px"><%= c.getLogID()%></td>        
                    <td class="data"><%= c.getNgayHieuLuc()%></td>     
                    <td class="data"><%= c.getMaNV()%></td>  
                    <td class="data"><%= c.getEventID()%></td>
                    <td class="data"><%= c.getContent()%></td>                                                                       
                    <td class="data"><%= c.getQdSo()%></td>                                        
                    <td class="data" width="180px">
                        <center>                          
                            <a href="#">Xóa</a>                                          
                        </center>   
                    </td>
                </tr>  
                <%}%>
            </table>
            <a href="viewtranslogofstaffadmin.jsp" style="font-size: 20px;font-family: inherit;color: blue">Click để quay lại</a>
        </div>
            

        <%@ include file="footer.jsp" %>
        <%
            s = (Staff) session.getAttribute("user");            
            if (s == null) {
                response.sendRedirect("back.jsp");
            }
        %>
    </body>
</html>

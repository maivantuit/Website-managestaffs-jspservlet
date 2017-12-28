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
            Vector<Departmant> liststaff = Departmant.getAllTableDepartment();            
        %>

        <%@ include file="header.jsp" %>
        <%@ include file="menu.jsp" %><%--slider--%>
        <!-------usebean-->        
        <!-------end usebean-->
        <div id="xemdanhsachnhanvien">
            <h2 class="account-in">View departmant and detail list staff</h2>                
            <table class="data">
                <tr class="data">
                    <th class="data" width="30px">STT</th>
                    <th class="data" width="30px">Mã DV</th>                                               
                    <th class="data">Tên Đơn Vị</th>
                    <th class="data">Tel</th>                            
                    <th class="data">Email</th>                                                                                                                                                                                                            
                    <th class="data"> Chức năng</th>
                </tr> 
                <%
                    int dem = 0;
                    for (Departmant c : liststaff) {
                        dem++;
                %>
                <tr class="data">
                    <td class="data" width="30px"><%= dem%></td>
                    <td class="data" width="30px"><%= c.getMaDV()%></td>
                    <td class="data"><%= c.getTenDV()%></td>                        
                    <td class="data"><%= c.getTel()%></td>  
                    <td class="data"><%= c.getEmail()%></td>                                                    
                    <td class="data" width="570px">
                        <center>                          
                            <%
                            
                            for (Departmant  d: Departmant.getListDepartmantHaveCode(c.getMaDV())) {
                        %>
                        <a href="viewliststaffofeachdepartmentdetail.jsp?madv=<%= d.getMaDV()%>">Click để xem danh sách nhân viên trong đơn vị này</a>&nbsp; | &nbsp;
                        <%  }
                        %>                            
                            <a href="#">Chỉnh sửa </a>                            
                            &nbsp; | &nbsp;
                            <a href="#">Xóa </a>                            
                        </center>   
                    </td>
                </tr>  
                <%}%>
            </table>
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

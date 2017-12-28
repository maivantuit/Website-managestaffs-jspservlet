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
            Vector<Staff> liststaff=null;
            if (session.getAttribute("user") != null) {
              liststaff = Staff.getalltableStaff();
            }
            
        %>

        <%@ include file="header.jsp" %>
        <%@ include file="menu.jsp" %><%--slider--%>
        <!-------usebean-->        
        <!-------end usebean-->
        <div id="xemdanhsachnhanvien">
            <h2 class="account-in">View list staff</h2>                
            <table class="data">
                <tr class="data">
                    <th class="data" width="30px">STT</th>
                    <th class="data" width="30px">Mã NV</th>                                               
                    <th class="data">Họ</th>
                    <th class="data">Tên</th>                            
                    <th class="data">Dob</th>                                                        
                    <th class="data">Sex</th>                                                        
                    <th class="data">CMND</th>                                                        
                    <th class="data">Pass</th>                                                        
                    <th class="data">Status</th>                                                        
                    <th class="data" width="300px"> Chức năng</th>
                </tr> 
                <%if (liststaff != null) {%>
                <%
                    int dem = 0;
                    for (Staff c : liststaff) {
                        dem++;
                %>
                <tr class="data">
                    <td class="data" width="30px"><%= dem%></td>
                    <td class="data" width="30px"><%= c.getMaNV()%></td>
                    <td class="data"><%= c.getHo()%></td>                        
                    <td class="data"><%= c.getTen()%></td>  
                    <td class="data"><%= c.getDob()%></td>
                    <td class="data"><%= c.getSex()%></td>                
                    <td class="data"><%= c.getCMND()%></td>
                    <td class="data"><%= c.getpW()%></td>
                    <td class="data"><%= c.getStatus()%></td>
                    <td class="data">
                <center>                          
                    <a href="#">Cập nhật</a>
                    &nbsp; | &nbsp;
                    <a href="#">Khóa tài khoản</a>                            
                </center>   
                </td>
                </tr>  
                <%}%>
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

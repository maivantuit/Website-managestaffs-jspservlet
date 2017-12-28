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
        <title>View translog of each staff</title>
    </head>
    <body>

        <%
            Vector<Departmant> listdepartment = Departmant.getAllTableDepartment();    
            Vector<Staff> liststaff = Staff.getalltableStaff();
        %>

        <%@ include file="header.jsp" %>
        <%@ include file="menu.jsp" %><%--slider--%>
        <!-------usebean-->        
        <!-------end usebean-->
        <div id="xemdanhsachnhanvien">
            <h2 class="account-in">View translog of each staff</h2>                
            <table class="data">
                <tr class="data">
                    <th class="data" width="30px">STT</th>
                    <th class="data" width="30px">Mã NV</th>                                               
                    <th class="data">Họ</th>  
                    <th class="data">Tên</th>                 
                    <th class="data" width="200px"> Chức năng</th>
                </tr> 
                <%
                    int dem = 0;
                    
                    
                    for (Staff s1 : liststaff) {    
                    dem++;
                %>
                <tr class="data">
                    <td class="data" width="30px"><%= dem%></td>
                    <td class="data" width="30px"><%= s1.getMaNV()%></td>
                    <td class="data"><%= s1.getHo()%></td>                        
                    <td class="data"><%= s1.getTen()%></td>         
                    <td class="data" width="350px">
                        <center>                          
                            <%
                            
                            for (Staff  s2: Staff.getListStaffHaveCode(s1.getMaNV())) {
                        %>
                        <a href="viewtranslogofstaffadmindetail.jsp?manv=<%= s2.getMaNV()%>">Click để xem nhật ký của nhân viên này</a>&nbsp; | &nbsp;
                        <%  }
                        %>                                                                                    
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

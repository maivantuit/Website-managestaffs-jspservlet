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
            Vector<StaffList> liststaff = StaffList.getAllTableListStaff();
             String madv ="";
            if(request.getParameter("madv")!=null){ // từ link url
                madv = request.getParameter("madv");
            }   
            Staff s1 = new Staff();
        %>

        <%@ include file="header.jsp" %>
        <%@ include file="menu.jsp" %><%--slider--%>
        <!-------usebean-->        
        <!-------end usebean-->
        <div id="xemdanhsachnhanvien">
            <h2 class="account-in">View list staff</h2>   
            <a href="viewliststaffofeachdepartment.jsp" style="font-size: 20px;font-family: inherit;color: blue">Click để quay lại</a>
            <br style="height: 10px">
            <table class="data" style="margin-top:20px">
                <tr class="data">
                    <th class="data" width="30px">STT</th>
                    <th class="data" width="30px">Mã NV</th>         
                    <th class="data">Tên NV</th>
                    <th class="data">Mã DV</th>
                    <th class="data">Chức vụ</th>                            
                    <th class="data">Ngày cập nhật</th>                                                        
                    <th class="data">Ghi chú</th>                                                                                                                                   
                    <th class="data" width="200px"> Chức năng</th>
                </tr> 
                <%
                    int dem = 0;
                    for (StaffList c : StaffList.getListStaffListHaveCode(madv)) {
                        dem++;
                %>
                <tr class="data">
                    <td class="data" width="30px"><%= dem%></td>
                    <td class="data" width="30px"><%= c.getMaNV()%></td>                                           
                    <td class="data"><%= s1.getMotStaff(Integer.parseInt(c.getMaNV())).getHo()+" "+s1.getMotStaff(Integer.parseInt(c.getMaNV())).getTen()%></td>  
                    <td class="data"><%= c.getMaDV()%></td>  
                    <td class="data"><%= c.getChucVu()%></td>
                    <td class="data"><%= c.getCapNhat()%></td>                
                    <td class="data"><%= c.getGhiChu()%></td>                                        
                    <td class="data" width="180px">
                        <center>                          
                            <a href="#">Cập nhật</a>
                            &nbsp; | &nbsp;
                            <a href="#">Khóa</a>                            
                        </center>   
                    </td>
                </tr>  
                <%}%>
            </table>
            <a href="viewliststaffofeachdepartment.jsp" style="font-size: 20px;font-family: inherit;color: blue">Click để quay lại</a>
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

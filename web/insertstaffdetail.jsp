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
        <title>Insert detail check again</title>
    </head>
    <body>

        <%
            Vector<Staff> liststaff = null;
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
            <form action="TacNghiepServlet" method="POST" accept-charset="UTF-8">
                <table class="data">
                    <tr class="data">                        
                        <th class="data">Họ</th>
                        <th class="data">Tên</th>                            
                        <th class="data">Dob</th>                                                        
                        <th class="data">Sex</th>                                                        
                        <th class="data">CMND</th>                                                        
                        <th class="data">Status</th>  
                        <th class="data">Pass</th>         
                        <th class="data">Mã DV</th>  
                        <th class="data">Chức vụ</th>  
                        <th class="data">Ghi chú</th>                                                                                
                        <th class="data" width="300px"> Chức năng</th>
                    </tr> 
                    <%            String command = request.getParameter("command");
                        String ho, ten, ngaysinh, gioitinh, cmnd, status, pass, nhaplaipass, madv, chucvu, ghichu;
                        int madvchinhthuc;
                        if (command == "insertstaff") {
                            // for info staff:
                            ho = request.getParameter("ho");
                            ten = request.getParameter("ten");
                            ngaysinh = request.getParameter("ngaysinh");
                            gioitinh = request.getParameter("gioitinh");
                            cmnd = request.getParameter("cmnd");
                            status = request.getParameter("status");
                            pass = request.getParameter("pass");
                            nhaplaipass = request.getParameter("nhaplaipass");
                            // for department:
                            // get value DonVi(MaDV) from combobox:
                            madv = request.getParameter("madv");
                            madvchinhthuc = Integer.parseInt(madv);
                            chucvu = request.getParameter("chucvu");
                            ghichu = request.getParameter("ghichu");
                    %>

                    <tr class="data">

                        <td class="data" width="30px" ><%= ho%></td>
                        <td class="data" width="30px"><%= ten%></td>
                        <td class="data"><%= ngaysinh%></td>                        
                        <td class="data"><%= gioitinh%></td>  
                        <td class="data"><%= cmnd%></td>
                        <td class="data"><%= status%></td>                
                        <td class="data"><%= nhaplaipass%></td>
                        <td class="data"><%= madv%></td>
                        <td class="data"><%= chucvu%></td>
                        <td class="data"><%= ghichu%></td>
                        <td class="data">
                    <center>                          
                        <a href="#">Cập nhật</a>
                        &nbsp; | &nbsp;
                        <a href="#">Khóa tài khoản</a>                            
                    </center>   
                    </td>
                    </tr>  
                    <%}%>                    
                </table>
                <input type="hidden" value="insertstaff2" name="command">
                <input id="inputlogin" class="formne3" type="submit" value="Save this staff">                    
            </form>
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

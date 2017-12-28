<%@page import="modelclasses.*" errorPage="info.jsp" contentType="text/html" pageEncoding="UTF-8" %>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<jsp:useBean id="STAFF" class="modelclasses.Staff" scope="session" />
<%
    Staff s = null;
    if (session.getAttribute("user") != null) {
        s = (Staff) session.getAttribute("user");
    }

%>        
<div id="menu">
    <ul>
        <li><a href="index.jsp">Trang chủ</a></li>
        <li>
            <a href="#">Tác nghiệp của nhân viên▽</a>
            <ul class="sub-menu2">                
                <li><a href="changepassword.jsp"> ▷ Đổi mật khẩu</a></li>	
                <li><a href="updateinfo.jsp"> ▷ Cập nhật thông tin cá nhân</a></li>	
                <li><a href="writtentranslog.jsp"> ▷ Ghi nhật ký</a></li>	                
                <li><a href="viewyourtranslog.jsp"> ▷ Xem nhật ký của bạn</a></li>	                
                					                
            </ul>
        </li>
        <li>
            <a href="#">Tác nghiệp của admin▽</a>
            <ul class="sub-menu2">                   
                <li><a href="insertstaff.jsp">  ▷ Thêm nhân viên</a></li>	                        
                <li><a href="viewliststaffofeachdepartment.jsp">  ▷ Xem danh sách nhân viên trong mỗi đơn vị</a></li>	                               					
                <li><a href="viewtranslogofstaffadmin.jsp">  ▷ Xem nhật ký của nhân viên(admin)</a></li>		
                <li><a href="viewliststaff.jsp">  ▷ Xem tất cả nhân viên</a></li>	                
            </ul>
        </li>	
        <li id="dangnhap">
            <a href="login.jsp">Đăng nhập</a>					
        </li>
        <li id="chaomungli">

            <a href="#" id="chaomung">Chào mừng:
                <%if (s != null) {%>
                <%= s.getHo() + " " + s.getTen()%> 

                <%}%>
                ▽
            </a>	

            <ul class="sub-menu2">                                    
                <li><a href="#">Hổ trợ</a></li>
                <li><a href="logout.jsp">Đăng xuất</a></li>
            </ul>
        </li>	
    </ul>						
</div>	

package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import modelclasses.*;

public final class menu_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			"info.jsp", true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      modelclasses.Staff STAFF = null;
      synchronized (session) {
        STAFF = (modelclasses.Staff) _jspx_page_context.getAttribute("STAFF", PageContext.SESSION_SCOPE);
        if (STAFF == null){
          STAFF = new modelclasses.Staff();
          _jspx_page_context.setAttribute("STAFF", STAFF, PageContext.SESSION_SCOPE);
        }
      }
      out.write('\n');
            
            Staff s = null;
            if (session.getAttribute("user") != null) {
                s = (Staff) session.getAttribute("user");
            }      

        
      out.write("        \n");
      out.write("<div id=\"menu\">\n");
      out.write("    <ul>\n");
      out.write("        <li><a href=\"index.jsp\">Trang chủ</a></li>\n");
      out.write("\n");
      out.write("        <li>\n");
      out.write("            <a href=\"#\">Tác nghiệp ▽</a>\n");
      out.write("            <ul class=\"sub-menu2\">\n");
      out.write("                <li><a href=\"insertstaff.jsp\">Thêm nhân viên</a></li>\t                        \n");
      out.write("                <li><a href=\"writtentranslog.jsp\">Ghi nhật ký</a></li>\t\n");
      out.write("                <li><a href=\"#\">Xem danh sách nhân viên</a></li>\t\n");
      out.write("                <li><a href=\"#\">Xem nhật ký của nhân viên</a></li>\t\t\t\t\t\t\n");
      out.write("            </ul>\n");
      out.write("        </li>\n");
      out.write("        <li><a href=\"#\">Giúp đỡ</a></li>\t\n");
      out.write("        <li id=\"dangnhap\">\n");
      out.write("            <a href=\"login.jsp\">Đăng nhập</a>\t\t\t\t\t\n");
      out.write("        </li>\n");
      out.write("        <li id=\"chaomungli\">\n");
      out.write("            \n");
      out.write("            <a href=\"#\" id=\"chaomung\">Chào mừng:\n");
      out.write("                ");
if(s !=null){
      out.write("\n");
      out.write("               ");
      out.print( s.getHo()+" "+s.getTen());
      out.write(" \n");
      out.write("                ▽\n");
      out.write("                ");
}
      out.write("\n");
      out.write("            </a>\t\n");
      out.write("            \n");
      out.write("            <ul class=\"sub-menu2\">                        \n");
      out.write("                <li><a href=\"changepassword.jsp\">Đổi mật khẩu</a></li>\t\n");
      out.write("                <li><a href=\"updateinfo.jsp\">Cập nhật thông tin cá nhân</a></li>\t\n");
      out.write("                <li><a href=\"logout.jsp\">Đăng xuất</a></li>\n");
      out.write("            </ul>\n");
      out.write("        </li>\t\n");
      out.write("    </ul>\t\t\t\t\t\t\n");
      out.write("</div>\t\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}

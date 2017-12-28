package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.Vector;
import modelclasses.*;
import modelclasses.*;
import modelclasses.*;

public final class viewyourtranslog_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(3);
    _jspx_dependants.add("/header.jsp");
    _jspx_dependants.add("/menu.jsp");
    _jspx_dependants.add("/footer.jsp");
  }

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
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>View list staff</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");

            request.setCharacterEncoding("utf-8");
            response.setCharacterEncoding("utf-8");
            if (session.getAttribute("user") != null) {
                Staff s = new Staff();
                s = (Staff) session.getAttribute("user");
            }
        
      out.write("\n");
      out.write("\n");
      out.write("        ");
      out.write("\n");
      out.write("        <div id=\"header\">\n");
      out.write("            <a href=\"index.jsp\"><img src=\"images/truongcaodangcongnghedn.png\"></a>\n");
      out.write("        </div>");
      out.write("\n");
      out.write("        ");
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
      out.write("                <li><a href=\"viewliststaffofeachdepartment.jsp\">Xem danh sách nhân viên đơn vị</a></li>\t\n");
      out.write("                <li><a href=\"viewliststaff.jsp\">Xem danh sách nhân viên</a></li>\t                \n");
      out.write("                <li><a href=\"viewyourtranslog.jsp\">Xem nhật ký của bạn</a></li>\t\t\t\t\t\t\n");
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
      out.write("\n");
      out.write("        <!-------usebean-->        \n");
      out.write("        <!-------end usebean-->\n");
      out.write("        <div id=\"xemdanhsachnhanvien\">            \n");
      out.write("            <h2>Nhật ký của bạn </h2>\n");
      out.write("            <table class=\"data\">\n");
      out.write("                <tr class=\"data\">\n");
      out.write("                    <th class=\"data\" width=\"30px\">STT</th>\n");
      out.write("                    <th class=\"data\">Mã nhật ký</th>                                                                            \n");
      out.write("                    <th class=\"data\" width=\"30px\">Mã NV</th>         \n");
      out.write("                    <th class=\"data\">Mã Sự kiện</th>\n");
      out.write("                    <th class=\"data\">Nội dung</th>\n");
      out.write("                    <th class=\"data\">Ngày hiệu lực</th>\n");
      out.write("                    <th class=\"data\">Quy định số</th>                                                \n");
      out.write("                    <th class=\"data\" width=\"200px\"> Chức năng</th>                        \n");
      out.write("                </tr>                 \n");
      out.write("                ");

                    if(s!=null){
                    int dem = 0;
                    for (TransLog c : TransLog.getListTranslogHaveCode(s.getMaNV())) {
                        dem++;
                
      out.write("\n");
      out.write("                <tr class=\"data\">\n");
      out.write("                    <td class=\"data\" width=\"30px\">");
      out.print( dem);
      out.write("</td>\n");
      out.write("                    <td class=\"data\" width=\"30px\">");
      out.print( c.getLogID());
      out.write("</td>                                           \n");
      out.write("                    <td class=\"data\">");
      out.print( c.getMaNV());
      out.write("</td>  \n");
      out.write("                    <td class=\"data\">");
      out.print( c.getEventID());
      out.write("</td>  \n");
      out.write("                    <td class=\"data\">");
      out.print( c.getContent());
      out.write("</td>\n");
      out.write("                    <td class=\"data\">");
      out.print( c.getNgayHieuLuc());
      out.write("</td>                \n");
      out.write("                    <td class=\"data\">");
      out.print( c.getQdSo());
      out.write("</td>                                        \n");
      out.write("                    <td class=\"data\" width=\"180px\">\n");
      out.write("                <center>                          \n");
      out.write("                    <a href=\"#\">Xóa</a>                    \n");
      out.write("\n");
      out.write("                </center>   \n");
      out.write("                </td>\n");
      out.write("                </tr>  \n");
      out.write("                ");
}}
      out.write("\n");
      out.write("            </table>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        ");

            s = (Staff) session.getAttribute("user");
            if (s == null) {
                response.sendRedirect("back.jsp");
            }
        
      out.write("\n");
      out.write("        ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<link href=\"css/style.css\" rel=\"stylesheet\" type=\"text/css\" media=\"all\" />\t\n");
      out.write("\n");
      out.write("<div id=\"footer\">\n");
      out.write("    <div id=\"footer-content\">\n");
      out.write("        <h4 id=\"giaovien\">Giáo viên: Nguyễn Văn Lành</h4>\n");
      out.write("        <h4>Designer: <a href=\"https://github.com/maivantuit\">Mai Văn Tú</a></h4>\n");
      out.write("        <h4>Mã sinh viên: 151250533453</h4>\n");
      out.write("        <h4>Lớp: 15T4</h4>\n");
      out.write("    </div>\n");
      out.write("</div>\t\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
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

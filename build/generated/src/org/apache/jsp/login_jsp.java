package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import modelclasses.Staff;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      			null, true, 8192, true);
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
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "header.jsp", out, false);
      out.write("\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "menu.jsp", out, false);
      out.write("\n");
      out.write("        <!-------usebean-->\n");
      out.write("        ");
      modelclasses.Staff STAFF = null;
      synchronized (session) {
        STAFF = (modelclasses.Staff) _jspx_page_context.getAttribute("STAFF", PageContext.SESSION_SCOPE);
        if (STAFF == null){
          STAFF = new modelclasses.Staff();
          _jspx_page_context.setAttribute("STAFF", STAFF, PageContext.SESSION_SCOPE);
        }
      }
      out.write("\n");
      out.write("        <!-------end usebean-->\n");
      out.write("        \n");
      out.write("            <div>\n");
      out.write("                <div class=\"account\">\n");
      out.write("                    <h2 class=\"account-in\">Login</h2>\n");
      out.write("                    <form method=\"post\">\n");
      out.write("                        <div>\n");
      out.write("                            <span>Username</span>\n");
      out.write("                            <input type=\"text\" name=\"maNV\">\n");
      out.write("                        </div> \t                        \n");
      out.write("                        <div> \n");
      out.write("                            <span class=\"word\">Password*</span>\n");
      out.write("                            <input type=\"password\" name=\"pW\">\n");
      out.write("                        </div>\t\t\t\t\n");
      out.write("                        <input type=\"submit\" value=\"Login\"> \n");
      out.write("                    </form>\n");
      out.write("                ");

                    if (request.getMethod().equals("POST")) {
                        String manv = request.getParameter("maNV");
                        int manvchinhthuc = Integer.parseInt(manv);
                        String pw = request.getParameter("pW");
                        Staff s = new Staff();
                        s.Login(manvchinhthuc, pw);
                        if (s != null){ 
                            STAFF.setAttribute(s);
                            out.write("<script type='text/javascript'> alert('Đăng nhập thành công'); </script>");
                            response.sendRedirect("index.jsp");                            
                        } else {
                            out.write("<script type='text/javascript'> alert('Vui Lòng Kiểm Tra Lại Tài Khoản Và Mật Khẩu'); </script>");
                        }
                    }
                
      out.write("\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "footer.jsp", out, false);
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

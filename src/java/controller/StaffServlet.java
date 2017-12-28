/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import modelclasses.Staff;

/**
 *
 * @author CỌP
 */
public class StaffServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // bien comand de phan biejt giua cac xu ly:
        request.setCharacterEncoding("UTF-8");
        String command = request.getParameter("command");
        Staff s = new Staff();
        HttpSession session = request.getSession();
        String url = "";
        switch (command) {//String tenKH, String matKhau, String diaChi, String email, String sdt
            case "login":
                s = s.Login((Integer.parseInt(request.getParameter("manv"))), request.getParameter("pass"));
                if (s != null) {
                    session.setAttribute("user", s);//user tự đặt tại đây, tiếp tục tại header                    
                    url = "/index.jsp";
                } else {
                    url = "/login.jsp";
                    session.setAttribute("loi", "ID và Password error");
                }
                System.out.println("login success");
                RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
                rd.forward(request, response);
                break;
            case "changepassword":
                System.out.println("fisrt changepassword");
                //Staff s2 = null;
                if (session.getAttribute("user") != null) {
                    s = (Staff) session.getAttribute("user");
                }
                // lam sao get gia tri cua bien moi dang nhap.(=>dựa vào sesstion, login xong get value len, use attribute.)
                String a = "";
                String b = "";
                if (s != null) {
                    a = s.getMaNV(); // null nè, h moi get dc ne.
                    b = s.getpW();// null nè 
                    System.out.println("gia tri cua a" + a);
                    String passcu = request.getParameter("passcu");
                    System.out.println(passcu);
                    String passmoi = request.getParameter("passmoi");
                    String nhaplaipassmoi = request.getParameter("nhaplaipassmoi");
                    if (passcu.equals(b)) {
                        if (nhaplaipassmoi.equals(passmoi)) {
                            s.ChangePassword(a, nhaplaipassmoi);
                            url = "/success.jsp";
                        } else {
                            url = "/changepassword.jsp";
                            session.setAttribute("errordoipass", "change pass error!");
                        }
                    } else {
                       url = "/changepassword.jsp";
                            session.setAttribute("errordoipass", "change pass error!");
                    }
                } else {
                    response.sendRedirect("back.jsp");
                }
                RequestDispatcher rd2 = getServletContext().getRequestDispatcher(url);
                rd2.forward(request, response);
                break;
            case "updateinfo":
                request.setCharacterEncoding("utf-8");
                response.setCharacterEncoding("utf-8");
                String ho = request.getParameter("ho");
                String ten = request.getParameter("ten");
                String ngaysinh = request.getParameter("ngaysinh");
                String sex = request.getParameter("sex");
                String cmnd = request.getParameter("cmnd");
                String status = request.getParameter("status");
                if (session.getAttribute("user") != null) {
                    s = (Staff) session.getAttribute("user");
                }
                // lam sao get gia tri cua bien moi dang nhap.(=>dựa vào sesstion, login xong get value len, use attribute.)
                String manv = "";
                if (s != null) {
                    manv = s.getMaNV(); // null nè, h moi get dc ne.
                    s.UpdateStaff(manv, ho, ten, ngaysinh, sex, cmnd, status);
                    url = "/success.jsp";
                } else {
                    // do something!
                }
                RequestDispatcher rd3 = getServletContext().getRequestDispatcher(url);
                rd3.forward(request, response);
                break;
        }

        //      
    }
}

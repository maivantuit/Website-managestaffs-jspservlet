package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import modelclasses.Event;
import modelclasses.Staff;
import modelclasses.StaffList;
import modelclasses.TransLog;

/**
 *
 * @author CỌP
 */
public class TacNghiepServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String command = request.getParameter("command");
        String comeback = request.getParameter("comeback");
        //(String maNV, String eventID, String content, String qdSo)
        HttpSession session = request.getSession();
        String url = "";
        Staff s;
        switch (command) {
            case "writtentranslog": {
                String manv = request.getParameter("manv");
                //how to get id event?:
                String sukien = request.getParameter("sukien");
                // end get value in combobox.
                String noidung = request.getParameter("noidung");
                String quydinhso = request.getParameter("qds");
                if (session.getAttribute("user") != null) {
                    s = (Staff) session.getAttribute("user");
                    if (s != null) {
                        TransLog tl = new TransLog(manv, sukien, noidung, quydinhso);
                        if (tl != null) {
                            url = "/success.jsp";
                            System.out.println("Change success");
                        }
                    } else {
                        url = "/writtentranslog.jsp";
                        System.out.println("Change not success");
                    }
                }
            }
            response.setContentType("text/html; charset=UTF-8");
            RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
            rd.forward(request, response);
            break;           
            case "insertstaff": {
                // for info staff:
                String ho = request.getParameter("ho");
                String ten = request.getParameter("ten");
                String ngaysinh = request.getParameter("ngaysinh");
                String gioitinh = request.getParameter("gioitinh");
                String cmnd = request.getParameter("cmnd");
                String status = request.getParameter("status");
                String pass = request.getParameter("pass");
                String nhaplaipass = request.getParameter("nhaplaipass");
                // for department:
                // get value DonVi(MaDV) from combobox:
                String madv = request.getParameter("madv");
                int madvchinhthuc = Integer.parseInt(madv);
                String chucvu = request.getParameter("chucvu");
                String ghichu = request.getParameter("ghichu");
                if (ho.length() == 0 || ten.length() == 0 || ngaysinh.length() == 0 || gioitinh.length() == 0 || cmnd.length() == 0 || cmnd.length() > 9) {
                    url = "/insertstaff.jsp";
                    session.setAttribute("loidetrong", "Vui lòng nhập đầy đủ info");
                    System.out.println("Vui lòng kiểm tra nhập liệu");
                } else {
                    if (pass.equals(nhaplaipass) == true) {
                        if (session.getAttribute("user") != null) {
                            s = (Staff) session.getAttribute("user");
                            if (s != null) {
                                //InsertInTableStaff(String ho, String ten, String dob, String sex, String cmnd, String pw, String status, int madv, String chucvu, String ghichu) {
                                String insert = StaffList.InsertInTableStaff(ho, ten, ngaysinh, gioitinh, cmnd, nhaplaipass, status, madvchinhthuc, chucvu, ghichu);
                                if (insert != null) {
                                    url = "/success.jsp";
                                    System.out.println("insert staff success");
                                } else {
                                    url = "/insertstaff.jsp";
                                    System.out.println("insert staff not success");
                                }
                            }
                        }
                    } else {
                        System.out.println("Nhập lại mật mẩu không khớp");
                    }
                }
            }
            response.setContentType("text/html; charset=UTF-8");
            RequestDispatcher rd2 = getServletContext().getRequestDispatcher(url);
            rd2.forward(request, response);
            break;
        }
        /*
        switch(comeback){
            case "quaylai":{
                url = "/index.jsp";
            }
            response.setContentType("text/html; charset=UTF-8");
            RequestDispatcher rd2 = getServletContext().getRequestDispatcher(url);
            rd2.forward(request, response);
            break;
        }*/
    }

}

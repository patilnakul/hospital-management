package com.doctor.servlet;

import com.dao.DoctorDao;
import com.db.DBConnect;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet({"/doctChangePassword"})
public class DoctorPasswordChange extends HttpServlet {
    public DoctorPasswordChange() {
    }

    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int uid = Integer.parseInt(req.getParameter("uid").trim());
        String oldPassword = req.getParameter("oldPassword");
        String newPassword = req.getParameter("newPassword");
        DoctorDao dao = new DoctorDao(DBConnect.getConn());
        HttpSession session = req.getSession();
        if (dao.checkOldPassword(uid, oldPassword)) {
            if (dao.changePassword(uid, newPassword)) {
                session.setAttribute("succMsg", "Password Change Successfully");
                resp.sendRedirect("doctor/change_password.jsp");
            } else {
                session.setAttribute("errorMsg", "Something Wrong on Server");
                resp.sendRedirect("doctor/change_password.jsp");
            }
        } else {
            session.setAttribute("errorMsg", "Old Password Incorrect ");
            resp.sendRedirect("doctor/change_password.jsp");
        }

    }
}

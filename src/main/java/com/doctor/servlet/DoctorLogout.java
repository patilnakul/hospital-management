package com.doctor.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet({"/doctorLogout"})
public class DoctorLogout extends HttpServlet {
    public DoctorLogout() {
    }

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        session.removeAttribute("doctObj");
        session.setAttribute("succMsg", "Doctor Logout Successfully !");
        resp.sendRedirect("doctor_login.jsp");
    }
}

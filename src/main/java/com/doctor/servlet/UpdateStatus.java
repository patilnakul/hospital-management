package com.doctor.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.AppointmentDao;
import com.db.DBConnect;

@WebServlet("/updateStatus")
public class UpdateStatus extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			
			int id=Integer.parseInt(req.getParameter("id").trim());
			int did=Integer.parseInt(req.getParameter("did").trim());
			String comm=req.getParameter("comm");
			
			AppointmentDao dao=new AppointmentDao(DBConnect.getConn());
			
			HttpSession session=req.getSession();
	
			if(dao.updateCommentStatus(id, did, comm)) {
				session.setAttribute("succMsg", "Updated Successfully");
				resp.sendRedirect("doctor/patient.jsp");
			}
			else {
				session.setAttribute("errorMsg", "Something Wrong On Server");
				resp.sendRedirect("doctor/patient.jsp");
				
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
	}
	
}

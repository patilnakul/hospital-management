package com.dao;

import java.util.List;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.entity.Appointment;

public class AppointmentDao {
	private Connection conn;

	public AppointmentDao(Connection conn) {
		super();
		this.conn = conn;
	}

	public boolean addAppointment(Appointment ap) {
		boolean f = false;
		try {
			String sql = "INSERT INTO appointment (user_id, fullname, gender, age, appoint_date, email, phno, diseases, doctor_id, address, status) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, ap.getUserId());
			ps.setString(2, ap.getFullName());
			ps.setString(3, ap.getGender());
			ps.setString(4, ap.getAge());
			ps.setString(5, ap.getAppoinDate());
			ps.setString(6, ap.getEmail());
			ps.setString(7, ap.getPhNo());
			ps.setString(8, ap.getDiseases());
			ps.setInt(9, ap.getDoctorId());
			ps.setString(10, ap.getAddress());
			ps.setString(11, ap.getStatus());

			int i = ps.executeUpdate();
			if (i == 1) {
				f = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return f;
	}

	


	public List<Appointment >getAllAppointByLoginUser(int userId) {
        List<Appointment> list = new ArrayList<Appointment>();

        Appointment ap=null;
        try {
            String sql = "SELECT * FROM appointment WHERE user_id=?";

        	PreparedStatement ps = conn.prepareStatement(sql);
        	ps.setInt(1, userId);
        	ResultSet rs = ps.executeQuery();
        	while (rs.next()) {
        		ap=new  Appointment();
        		ap.setId(rs.getInt("id"));
        		ap.setUserId(rs.getInt("user_id"));
        		ap.setFullName(rs.getString("fullname"));
        		ap.setGender(rs.getString("gender"));
        		ap.setAge(rs.getString("age"));
        		ap.setAppoinDate(rs.getString("appoint_date"));
        		ap.setEmail(rs.getString("email"));
        		ap.setPhNo(rs.getString("phno"));
        		ap.setDiseases(rs.getString("diseases"));
        		ap.setDoctorId(rs.getInt("doctor_id"));
        		ap.setAddress(rs.getString("address"));
        		ap.setStatus(rs.getString("status"));
        		list.add(ap);
        	}
        	
   }catch(Exception e) {
        	e.printStackTrace();
        	
        }

      return list;
    }
	
	public List<Appointment>getAllAppointByDoctorLogin(int doctorId) {
        List<Appointment> list = new ArrayList<Appointment>();

        Appointment ap=null;
        try {
            String sql = "SELECT * FROM appointment WHERE doctor_id=?";

        	PreparedStatement ps = conn.prepareStatement(sql);
        	ps.setInt(1, doctorId);
        	ResultSet rs = ps.executeQuery();
        	while (rs.next()) {
        		ap=new  Appointment();
        		ap.setId(rs.getInt("id"));
        		ap.setUserId(rs.getInt("user_id"));
        		ap.setFullName(rs.getString("fullname"));
        		ap.setGender(rs.getString("gender"));
        		ap.setAge(rs.getString("age"));
        		ap.setAppoinDate(rs.getString("appoint_date"));
        		ap.setEmail(rs.getString("email"));
        		ap.setPhNo(rs.getString("phno"));
        		ap.setDiseases(rs.getString("diseases"));
        		ap.setDoctorId(rs.getInt("doctor_id"));
        		ap.setAddress(rs.getString("address"));
        		ap.setStatus(rs.getString("status"));
        		list.add(ap);
        	}
        	
   }catch(Exception e) {
        	e.printStackTrace();
        	
        }

      return list;
    }
	
	public Appointment getAppointmentById(int id) {
        Appointment ap=null;
        try {
            String sql = "SELECT * FROM appointment WHERE id=?";

        	PreparedStatement ps = conn.prepareStatement(sql);
        	ps.setInt(1, id);
        	ResultSet rs = ps.executeQuery();
        	while (rs.next()) {
        		ap=new  Appointment();
        		ap.setId(rs.getInt("id"));
        		ap.setUserId(rs.getInt("user_id"));
        		ap.setFullName(rs.getString("fullname"));
        		ap.setGender(rs.getString("gender"));
        		ap.setAge(rs.getString("age"));
        		ap.setAppoinDate(rs.getString("appoint_date"));
        		ap.setEmail(rs.getString("email"));
        		ap.setPhNo(rs.getString("phno"));
        		ap.setDiseases(rs.getString("diseases"));
        		ap.setDoctorId(rs.getInt("doctor_id"));
        		ap.setAddress(rs.getString("address"));
        		ap.setStatus(rs.getString("status"));
        	
        	}
        	
   }catch(Exception e) {
        	e.printStackTrace();
        	
        }

      return ap;
    }
	
	public boolean updateCommentStatus(int id,int doctId, String comm){
		boolean f=false;
		try {
			String sql="UPDATE appointment SET status=? WHERE id=? AND doctor_id=?";
			PreparedStatement ps= conn.prepareStatement(sql);
			ps.setString(1,comm);
			ps.setInt(2, id);
			ps.setInt(3,doctId );
			
			int i= ps.executeUpdate();
			if(i==1) {
				f=true;
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
		return f;
	}
	
	public List<Appointment>getAllAppointment() {
        List<Appointment> list = new ArrayList<Appointment>();

        Appointment ap=null;
        try {
            String sql = "SELECT * FROM appointment ORDER BY id DESC ";

        	PreparedStatement ps = conn.prepareStatement(sql);
        	ResultSet rs = ps.executeQuery();
        	while (rs.next()) {
        		ap=new  Appointment();
        		ap.setId(rs.getInt("id"));
        		ap.setUserId(rs.getInt("user_id"));
        		ap.setFullName(rs.getString("fullname"));
        		ap.setGender(rs.getString("gender"));
        		ap.setAge(rs.getString("age"));
        		ap.setAppoinDate(rs.getString("appoint_date"));
        		ap.setEmail(rs.getString("email"));
        		ap.setPhNo(rs.getString("phno"));
        		ap.setDiseases(rs.getString("diseases"));
        		ap.setDoctorId(rs.getInt("doctor_id"));
        		ap.setAddress(rs.getString("address"));
        		ap.setStatus(rs.getString("status"));
        		list.add(ap);
        	}
        	
   }catch(Exception e) {
        	e.printStackTrace();
        	
        }

      return list;
    }
}






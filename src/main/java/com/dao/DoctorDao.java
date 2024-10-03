package com.dao;

import com.entity.Doctor;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class DoctorDao {
    private static final String List = null;
    private Connection conn;

    public DoctorDao(Connection conn) {
        this.conn = conn;
    }

    public boolean registerDoctor(Doctor d) {
        boolean f = false;

        try {
            String sql = "INSERT INTO doctor (full_name, dob, qualification, specialist, email, mobno, password) VALUES (?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement ps = this.conn.prepareStatement(sql);
            ps.setString(1, d.getFullName());
            ps.setString(2, d.getDob());
            ps.setString(3, d.getQualification());
            ps.setString(4, d.getSpecialist());
            ps.setString(5, d.getEmail());
            ps.setString(6, d.getMobNo());
            ps.setString(7, d.getPassword());
            int i = ps.executeUpdate();
            if (i == 1) {
                f = true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return f;
    }

    public List<Doctor> getAllDoctor() {
        ArrayList list = new ArrayList();

        try {
            String sql = "SELECT * FROM doctor ORDER BY id DESC";
            PreparedStatement ps = this.conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            while(rs.next()) {
                Doctor d = new Doctor();
                d.setId(rs.getInt("id"));
                d.setFullName(rs.getString("full_name"));
                d.setDob(rs.getString("dob"));
                d.setQualification(rs.getString("qualification"));
                d.setSpecialist(rs.getString("specialist"));
                d.setEmail(rs.getString("email"));
                d.setMobNo(rs.getString("mobno"));
                d.setPassword(rs.getString("password"));
                list.add(d);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }

    public Doctor getDoctorById(int id) {
        Doctor d = null;

        try {
            String sql = "SELECT * FROM doctor WHERE id=?";
            PreparedStatement ps = this.conn.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();

            while(rs.next()) {
                d = new Doctor();
                d.setId(rs.getInt("id"));
                d.setFullName(rs.getString("full_name"));
                d.setDob(rs.getString("dob"));
                d.setQualification(rs.getString("qualification"));
                d.setSpecialist(rs.getString("specialist"));
                d.setEmail(rs.getString("email"));
                d.setMobNo(rs.getString("mobno"));
                d.setPassword(rs.getString("password"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return d;
    }

    public boolean updateDoctor(Doctor d) {
        boolean f = false;

        try {
            String sql = "UPDATE doctor SET full_name=?, dob=?, qualification=?, specialist=?, email=?, mobno=?, password=? WHERE id=?";
            PreparedStatement ps = this.conn.prepareStatement(sql);
            ps.setString(1, d.getFullName());
            ps.setString(2, d.getDob());
            ps.setString(3, d.getQualification());
            ps.setString(4, d.getSpecialist());
            ps.setString(5, d.getEmail());
            ps.setString(6, d.getMobNo());
            ps.setString(7, d.getPassword());
            ps.setInt(8, d.getId());
            int i = ps.executeUpdate();
            if (i == 1) {
                f = true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return f;
    }

    public boolean deleteDoctor(int id) {
        boolean f = false;

        try {
            String sql = "DELETE FROM doctor WHERE id=?";
            PreparedStatement ps = this.conn.prepareStatement(sql);
            ps.setInt(1, id);
            int i = ps.executeUpdate();
            if (i == 1) {
                f = true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return f;
    }

    public Doctor login(String email, String psw) {
        Doctor d = null;

        try {
            String sql = "SELECT * FROM doctor WHERE email=? and password=?";
            PreparedStatement ps = this.conn.prepareStatement(sql);
            ps.setString(1, email);
            ps.setString(2, psw);
            ResultSet rs = ps.executeQuery();

            while(rs.next()) {
                d = new Doctor();
                d.setId(rs.getInt("id"));
                d.setFullName(rs.getString("full_name"));
                d.setDob(rs.getString("dob"));
                d.setQualification(rs.getString("qualification"));
                d.setSpecialist(rs.getString("specialist"));
                d.setEmail(rs.getString("email"));
                d.setMobNo(rs.getString("mobno"));
                d.setPassword(rs.getString("password"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return d;
    }

    public int countDoctor() {
        int count = 0;

        try {
            String sql = "SELECT COUNT(*) AS total FROM doctor";
            PreparedStatement ps = this.conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                count = rs.getInt("total");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return count;
    }
    
   
// to count the "Appointment" for the perticular "Doctor":
    
    public int countAppointmentByDoctorId(int did) {
        int count = 0;

        try {
            String sql = "SELECT COUNT(*) AS total FROM appointment WHERE doctor_id=?";
            PreparedStatement ps = this.conn.prepareStatement(sql);
            ps.setInt(1, did);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                count = rs.getInt("total");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return count;
    }

//    To count the total number of Appointment in the Hospital 
    
    public int countAppointment() {
        int count = 0;

        try {
            String sql = "SELECT COUNT(*) AS total FROM appointment";
            PreparedStatement ps = this.conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                count = rs.getInt("total");
            }
        } catch (Exception e) {
           e.printStackTrace();
        }

        return count;
    }

//    To count the total number of user can use the can use the site 
    public int countUser() {
        int count = 0;

        try {
            String sql = "SELECT COUNT(*) AS total FROM user_dtls";
            PreparedStatement ps = this.conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                count = rs.getInt("total");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return count;
    }

//    To count the Specilist In hospital are Abvailiable
    public int countSpecialist() {
        int count = 0;

        try {
            String sql = "SELECT COUNT(*) AS total FROM specialist";
            PreparedStatement ps = this.conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                count = rs.getInt("total");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return count;
    }

//    To check the old Password
    public boolean checkOldPassword(int userid, String oldPassword) {
        boolean f = false;

        try {
            String sql = "SELECT * FROM doctor WHERE id=? AND password=?";
            PreparedStatement ps = this.conn.prepareStatement(sql);
            ps.setInt(1, userid);
            ps.setString(2, oldPassword);

            for(ResultSet rs = ps.executeQuery(); rs.next(); f = true) {
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return f;
    }

//    To change the Password 
    public boolean changePassword(int userid, String newPassword) {
        boolean f = false;

        try {
            String sql = "UPDATE doctor SET password=? WHERE id=?";
            PreparedStatement ps = this.conn.prepareStatement(sql);
            ps.setString(1, newPassword);
            ps.setInt(2, userid);
            int i = ps.executeUpdate();
            if (i == 1) {
                f = true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return f;
    }

    
//    to edit the Doctor Profile 
    public boolean editDoctorProfile(Doctor d) {
        boolean f = false;

        try {
            String sql = "UPDATE doctor SET full_name=?, dob=?, qualification=?, specialist=?, email=?, mobno=? WHERE id=?";
            PreparedStatement ps = this.conn.prepareStatement(sql);
            ps.setString(1, d.getFullName());
            ps.setString(2, d.getDob());
            ps.setString(3, d.getQualification());
            ps.setString(4, d.getSpecialist());
            ps.setString(5, d.getEmail());
            ps.setString(6, d.getMobNo());
            ps.setInt(7, d.getId());
            int i = ps.executeUpdate();
            if (i == 1) {
                f = true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return f;
    }
}

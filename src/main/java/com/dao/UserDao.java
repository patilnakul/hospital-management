package com.dao;

import com.entity.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDao {
    private Connection conn;

    public UserDao(Connection conn) {
        this.conn = conn;
    }

    public boolean register(User u) {
        boolean f = false;

        try {
            String sql = "insert into user_dtls(full_name,email,password) values(?,?,?)";
            PreparedStatement ps = this.conn.prepareStatement(sql);
            ps.setString(1, u.getFullName());
            ps.setString(2, u.getEmail());
            ps.setString(3, u.getPassword());
            int i = ps.executeUpdate();
            if (i == 1) {
                f = true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return f;
    }

    public User login(String em, String psw) {
        User u = null;

        try {
            String sql = "SELECT * FROM user_dtls WHERE email=? AND `password`=?";
            PreparedStatement ps = this.conn.prepareStatement(sql);
            ps.setString(1, em);
            ps.setString(2, psw.trim());
            ResultSet rs = ps.executeQuery();

            while(rs.next()) {
                u = new User();
                u.setId(rs.getInt(1));
                u.setFullName(rs.getString(2));
                u.setEmail(rs.getString(3));
                u.setPassword(rs.getString(4));
            }

            rs.close();
            ps.close();
            this.conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
            System.err.println("Error executing SQL query: " + e.getMessage());
        }

        return u;
    }

    public boolean checkOldPassword(int userid, String oldPassword) {
        boolean f = false;

        try {
            String sql = "SELECT * FROM user_dtls WHERE id=? AND password=?";
            PreparedStatement ps = this.conn.prepareStatement(sql);
            ps.setInt(1, userid);
            ps.setString(2, oldPassword);

            for(ResultSet rs = ps.executeQuery();
            		 rs.next(); f = true) {
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return f;
    }

    public boolean changePassword(int userid, String newPassword) {
        boolean f = false;

        try {
            String sql = "UPDATE user_dtls SET password=? WHERE id=?";
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
}

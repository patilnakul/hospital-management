package com.dao;

import com.entity.Specalist;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class SpecialistDao {
    private Connection conn;

    public SpecialistDao(Connection conn) {
        this.conn = conn;
    }

    public boolean addSpecialist(String spec) {
        boolean f = false;

        try {
            String sql = "INSERT INTO specialist(spec_name) VALUES(?)";
            PreparedStatement ps = this.conn.prepareStatement(sql);
            ps.setString(1, spec);
            int i = ps.executeUpdate();
            if (i == 1) {
                f = true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return f;
    }

    public List<Specalist> getAllSpecialist() {
        List<Specalist> list = new ArrayList();
        Specalist s = null;

        try {
            String sql = "SELECT * FROM specialist";
            PreparedStatement ps = this.conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            while(rs.next()) {
                s = new Specalist();
                s.setId(rs.getInt(1));
                s.setSpecialistName(rs.getString(2));
                list.add(s);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }
}

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

/**
 *
 * @author Deep
 */

import java.sql.*;
import java.util.*;
import model.Course;
import db.DBConnection;

public class CourseDAO {
    public List<Course> getAllCourses() {
        List<Course> list = new ArrayList<>();
        try {
            Connection con = DBConnection.getConnection();
            PreparedStatement ps = con.prepareStatement("SELECT * FROM course");
            ResultSet rs = ps.executeQuery();
            while(rs.next()) {
                Course c = new Course();
                c.setCourse_id(rs.getInt("course_id"));
                c.setCourse_name(rs.getString("course_name"));
                c.setInstructor(rs.getString("instructor"));
                c.setDuration(rs.getString("duration"));
                c.setCredits(rs.getInt("credits"));
                list.add(c);
            }
        } catch(Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public boolean addCourse(Course c) {
        try {
            Connection con = DBConnection.getConnection();
            PreparedStatement ps = con.prepareStatement(
                "INSERT INTO course(course_name,instructor,duration,credits) VALUES(?,?,?,?)"
            );
            ps.setString(1, c.getCourse_name());
            ps.setString(2, c.getInstructor());
            ps.setString(3, c.getDuration());
            ps.setInt(4, c.getCredits());
            return ps.executeUpdate() > 0;
        } catch(Exception e) {
            e.printStackTrace();
        }
        return false;
    }
}

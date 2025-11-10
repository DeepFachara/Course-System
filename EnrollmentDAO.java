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
import db.DBConnection;
import model.Enrollment;
import model.Course;

public class EnrollmentDAO {

    // Add new enrollment
    public boolean addEnrollment(int studentId, int courseId) {
        try {
            Connection con = DBConnection.getConnection();
            PreparedStatement ps = con.prepareStatement(
                    "INSERT INTO enrollment(student_id, course_id, enroll_date, status) VALUES (?, ?, CURDATE(), 'Active')"
            );
            ps.setInt(1, studentId);
            ps.setInt(2, courseId);
            return ps.executeUpdate() > 0;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    // Get all enrollments of a student (join with course table)
    public List<Enrollment> getEnrollmentsByStudent(int studentId) {
        List<Enrollment> list = new ArrayList<>();
        try {
            Connection con = DBConnection.getConnection();
            PreparedStatement ps = con.prepareStatement(
                    "SELECT e.enroll_id, e.enroll_date, e.status, "
                    + "c.course_id, c.course_name, c.instructor, c.duration, c.credits "
                    + "FROM enrollment e JOIN course c ON e.course_id = c.course_id "
                    + "WHERE e.student_id = ?"
            );
            ps.setInt(1, studentId);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Enrollment en = new Enrollment();
                en.setEnroll_id(rs.getInt("enroll_id"));
                en.setCourse_id(rs.getInt("course_id"));
                en.setEnroll_date(rs.getString("enroll_date"));
                en.setStatus(rs.getString("status"));
                // Optional: add course info to Enrollment object
                list.add(en);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    // Get all enrollments (for Admin)
    public List<Map<String, String>> getAllEnrollments() {
        List<Map<String, String>> list = new ArrayList<>();
        try {
            Connection con = DBConnection.getConnection();
            PreparedStatement ps = con.prepareStatement(
                    "SELECT s.name AS student_name, c.course_name, e.enroll_date, e.status "
                    + "FROM enrollment e "
                    + "JOIN student s ON e.student_id = s.student_id "
                    + "JOIN course c ON e.course_id = c.course_id"
            );
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Map<String, String> row = new HashMap<>();
                row.put("student_name", rs.getString("student_name"));
                row.put("course_name", rs.getString("course_name"));
                row.put("enroll_date", rs.getString("enroll_date"));
                row.put("status", rs.getString("status"));
                list.add(row);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
}

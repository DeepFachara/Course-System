/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlet;


import java.io.*;
import java.sql.*;
import db.DBConnection;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Student;

public class EnrollServlet extends HttpServlet {
    protected void doGet(HttpServletRequest req, HttpServletResponse res)
        throws ServletException, IOException {

        HttpSession session = req.getSession();
        Student s = (Student) session.getAttribute("student");
        if (s == null) {
            res.sendRedirect("login.jsp");
            return;
        }

        int course_id = Integer.parseInt(req.getParameter("course_id"));

        try {
            Connection con = DBConnection.getConnection();
            PreparedStatement ps = con.prepareStatement(
                "INSERT INTO enrollment(student_id, course_id, enroll_date, status) VALUES (?, ?, CURDATE(), 'Active')"
            );
            ps.setInt(1, s.getStudent_id());
            ps.setInt(2, course_id);
            ps.executeUpdate();
            res.sendRedirect("CourseServlet?msg=enrolled");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}


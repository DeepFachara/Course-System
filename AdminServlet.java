/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Deep
 */

import model.Course;
import dao.CourseDAO;

public class AdminServlet extends HttpServlet {
    protected void doPost(HttpServletRequest req, HttpServletResponse res)
        throws ServletException, IOException {

        Course c = new Course();
        c.setCourse_name(req.getParameter("course_name"));
        c.setInstructor(req.getParameter("instructor"));
        c.setDuration(req.getParameter("duration"));
        c.setCredits(Integer.parseInt(req.getParameter("credits")));

        CourseDAO dao = new CourseDAO();
        if (dao.addCourse(c)) {
            res.sendRedirect("adminDashboard.jsp?msg=added");
        } else {
            res.sendRedirect("addCourse.jsp?msg=error");
        }
    }
}


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

import java.util.*;
import dao.CourseDAO;
import javax.servlet.RequestDispatcher;
import model.Course;

public class CourseServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res)
        throws ServletException, IOException {

        CourseDAO dao = new CourseDAO();
        List<Course> list = dao.getAllCourses();
        req.setAttribute("courses", list);
        RequestDispatcher rd = req.getRequestDispatcher("courses.jsp");
        rd.forward(req, res);
    }
}

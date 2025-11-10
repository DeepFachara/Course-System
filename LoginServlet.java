package servlet;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import model.Student;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Deep
 */

//import jakarta.servlet.*;
//import jakarta.servlet.http.*;

import dao.StudentDAO;
import javax.servlet.http.HttpSession;

public class LoginServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res)
        throws ServletException, IOException {

        String email = req.getParameter("email");
        String password = req.getParameter("password");

        StudentDAO dao = new StudentDAO();
        Student s = dao.login(email, password);

        if (s != null) {
            HttpSession session = req.getSession();
            session.setAttribute("student", s);
            res.sendRedirect("dashboard.jsp");
        } else {
            res.sendRedirect("login.jsp?msg=invalid");
        }
    }
}


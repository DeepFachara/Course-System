package servlet;


import model.Student;
import java.io.*;
import dao.StudentDAO;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class RegisterServlet extends HttpServlet {
    protected void doPost(HttpServletRequest req, HttpServletResponse res)
        throws ServletException, IOException {

        Student s = new Student();
        s.setName(req.getParameter("name"));
        s.setEmail(req.getParameter("email"));
        s.setPassword(req.getParameter("password"));
        s.setContact_no(req.getParameter("contact_no"));

        StudentDAO dao = new StudentDAO();
        if (dao.registerStudent(s)) {
            res.sendRedirect("login.jsp?msg=registered");
        } else {
            res.sendRedirect("register.jsp?msg=error");
        }
    }
}

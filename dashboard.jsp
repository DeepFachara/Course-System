<%-- 
    Document   : dashboard
    Created on : 3 Nov 2025, 10:09:22 pm
    Author     : Deep
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="model.Student" %>
<%
    Student s = (Student) session.getAttribute("student");
    if (s == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <title>Dashboard</title>
        <style>
            body {
                font-family: 'Segoe UI';
                background: #f7f9fc;
                text-align: center;
                padding-top: 60px;
            }
            h2 {
                color: #3b8bbd;
            }
            a {
                display: inline-block;
                margin: 10px;
                padding: 12px 25px;
                background: #3b8bbd;
                color: white;
                border-radius: 8px;
                text-decoration: none;
                transition: 0.3s;
            }
            a:hover {
                background: #2a6f95;
            }
        </style>
    </head>
    <body>
        <h2>Welcome, <%= s.getName()%>!</h2>
        <p>What would you like to do?</p>
        <a href="CourseServlet">View Courses</a>
        <a href="myEnrollments.jsp">My Enrollments</a>
        <a href="LogoutServlet">Logout</a>
    </body>
</html>



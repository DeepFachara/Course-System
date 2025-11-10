<%-- 
    Document   : adminDashboard
    Created on : 4 Nov 2025, 10:21:56 am
    Author     : Deep
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
    <head>
        <title>Admin Dashboard</title>
        <style>
            body {
                font-family: 'Segoe UI', Arial, sans-serif;
                background: #f4f7fb;
                margin: 0;
                padding: 0;
            }
            header {
                background: #3b8bbd;
                color: white;
                padding: 20px;
                text-align: center;
                font-size: 24px;
                font-weight: bold;
                letter-spacing: 1px;
            }
            .container {
                margin: 60px auto;
                width: 80%;
                text-align: center;
                background: white;
                padding: 40px;
                border-radius: 12px;
                box-shadow: 0 4px 12px rgba(0,0,0,0.1);
            }
            h2 {
                color: #3b8bbd;
                margin-bottom: 30px;
            }
            a {
                display: inline-block;
                background: #3b8bbd;
                color: white;
                padding: 12px 25px;
                margin: 15px;
                border-radius: 8px;
                text-decoration: none;
                font-size: 16px;
                transition: 0.3s;
            }
            a:hover {
                background: #2a6f95;
                transform: translateY(-2px);
            }
        </style>
    </head>
    <body>
        <header>Admin Dashboard</header>
        <div class="container">
            <h2>Welcome, Admin</h2>
            <a href="addCourse.jsp">Add New Course</a>
            <a href="CourseServlet">View All Courses</a>
            <a href="viewEnrollments.jsp">View Enrollments</a>
            <a href="index.jsp">Logout</a>

        </div>
    </body>
</html>



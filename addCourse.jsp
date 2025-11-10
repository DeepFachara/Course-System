<%-- 
    Document   : addCourse
    Created on : 4 Nov 2025, 10:22:20 am
    Author     : Deep
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
    <head>
        <title>Add Course</title>
        <style>
            body {
                font-family: 'Segoe UI', sans-serif;
                background: #f4f7fb;
                display: flex;
                justify-content: center;
                align-items: center;
                height: 100vh;
            }
            .form-box {
                background: white;
                padding: 40px 50px;
                border-radius: 10px;
                box-shadow: 0 4px 10px rgba(0,0,0,0.1);
                width: 380px;
            }
            h2 {
                color: #3b8bbd;
                text-align: center;
                margin-bottom: 25px;
            }
            input[type=text], input[type=number] {
                width: 100%;
                padding: 10px;
                margin: 8px 0 14px 0;
                border: 1px solid #ccc;
                border-radius: 6px;
                font-size: 15px;
            }
            input[type=submit] {
                background: #3b8bbd;
                color: white;
                border: none;
                width: 100%;
                padding: 10px;
                border-radius: 6px;
                cursor: pointer;
                font-size: 16px;
                transition: 0.3s;
            }
            input[type=submit]:hover {
                background: #2a6f95;
            }
            a {
                display: inline-block;
                text-decoration: none;
                color: #3b8bbd;
                margin-top: 10px;
            }
        </style>
    </head>
    <body>
        <div class="form-box">
            <h2>Add New Course</h2>
            <form action="AdminServlet" method="post">
                <input type="text" name="course_name" placeholder="Course Name" required>
                <input type="text" name="instructor" placeholder="Instructor" required>
                <input type="text" name="duration" placeholder="Duration (e.g. 8 Weeks)" required>
                <input type="number" name="credits" placeholder="Credits" required>
                <input type="submit" value="Add Course">
            </form>
            <a href="adminDashboard.jsp">← Back to Dashboard</a>
        </div>
    </body>
</html>



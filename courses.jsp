<%-- 
    Document   : course
    Created on : 4 Nov 2025, 10:20:26 am
    Author     : Deep
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.*, model.Course" %>
<%
    List<Course> list = (List<Course>) request.getAttribute("courses");
%>
<!DOCTYPE html>
<html>
    <head>
        <title>Available Courses</title>
        <style>
            body {
                font-family: 'Segoe UI';
                background: #f4f7fb;
                padding: 40px;
            }
            h2 {
                color: #3b8bbd;
                text-align: center;
            }
            table {
                border-collapse: collapse;
                width: 90%;
                margin: 30px auto;
                background: white;
                box-shadow: 0 0 10px rgba(0,0,0,0.1);
            }
            th, td {
                border: 1px solid #ddd;
                padding: 12px;
                text-align: center;
            }
            th {
                background: #3b8bbd;
                color: white;
            }
            a.enroll {
                background: #3b8bbd;
                color: white;
                padding: 6px 12px;
                border-radius: 5px;
                text-decoration: none;
            }
            a.enroll:hover {
                background: #2a6f95;
            }
            a.back {
                text-decoration: none;
                color: #3b8bbd;
                margin-left: 40px;
            }
        </style>
    </head>
    <body>
        <h2>Available Courses</h2>
        <table>
            <tr><th>ID</th><th>Course Name</th><th>Instructor</th><th>Duration</th><th>Credits</th><th>Action</th></tr>
                    <%
                        if (list != null) {
                            for (Course c : list) {
                    %>
            <tr>
                <td><%= c.getCourse_id()%></td>
                <td><%= c.getCourse_name()%></td>
                <td><%= c.getInstructor()%></td>
                <td><%= c.getDuration()%></td>
                <td><%= c.getCredits()%></td>
                <td><a href="EnrollServlet?course_id=<%= c.getCourse_id()%>" class="enroll">Enroll</a></td>
            </tr>
            <%
                    }
                }
            %>
        </table>
        <a href="dashboard.jsp" class="back">← Back to Dashboard</a>
    </body>
</html>


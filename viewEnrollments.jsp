<%-- 
    Document   : viewEnrollments
    Created on : 8 Nov 2025, 9:44:25 am
    Author     : Deep
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.*, dao.EnrollmentDAO" %>


<%
    EnrollmentDAO dao = new EnrollmentDAO();
    List<Map<String, String>> list = dao.getAllEnrollments();
%>

<!DOCTYPE html>
<html>
    <head>
        <title>All Enrollments</title>
        <style>
            body {
                font-family: 'Segoe UI', sans-serif;
                background: #f4f7fb;
                margin: 0;
                padding: 0;
            }
            header {
                background: #3b8bbd;
                color: white;
                text-align: center;
                padding: 20px;
                font-size: 24px;
                font-weight: bold;
            }
            .container {
                width: 90%;
                margin: 40px auto;
                background: white;
                padding: 30px;
                border-radius: 10px;
                box-shadow: 0 4px 10px rgba(0,0,0,0.1);
            }
            h2 {
                color: #3b8bbd;
                text-align: center;
                margin-bottom: 25px;
            }
            table {
                width: 100%;
                border-collapse: collapse;
                margin-top: 10px;
            }
            th, td {
                border: 1px solid #ccc;
                padding: 10px;
                text-align: center;
            }
            th {
                background: #3b8bbd;
                color: white;
            }
            tr:nth-child(even) {
                background: #f9f9f9;
            }
            a {
                display: inline-block;
                margin-top: 20px;
                background: #3b8bbd;
                color: white;
                padding: 10px 20px;
                border-radius: 6px;
                text-decoration: none;
            }
            a:hover {
                background: #2a6f95;
            }
        </style>
    </head>
    <body>
        <header>All Enrollments</header>
        <div class="container">
            <h2>Student Enrollments Overview</h2>
            <table>
                <tr>
                    <th>Student Name</th>
                    <th>Course Name</th>
                    <th>Enroll Date</th>
                    <th>Status</th>
                </tr>
                <%
                    if (list != null && !list.isEmpty()) {
                        for (Map<String, String> row : list) {
                %>
                <tr>
                    <td><%= row.get("student_name")%></td>
                    <td><%= row.get("course_name")%></td>
                    <td><%= row.get("enroll_date")%></td>
                    <td><%= row.get("status")%></td>
                </tr>
                <%
                    }
                } else {
                %>
                <tr><td colspan="4">No enrollments found.</td></tr>
                <%
                    }
                %>
            </table>
            <center><a href="adminDashboard.jsp">← Back to Dashboard</a></center>
        </div>
    </body>
</html>


<%-- 
    Document   : index
    Created on : 3 Nov 2025, 10:07:32 pm
    Author     : Deep
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Online Course Registration</title>
        <style>
            body {
                font-family: 'Segoe UI', Arial, sans-serif;
                background-color: #f4f7fb;
                text-align: center;
                margin: 0;
                padding: 0;
            }
            header {
                background-color: #3b8bbd;
                color: white;
                padding: 20px 0;
                font-size: 24px;
                font-weight: bold;
            }
            .container {
                margin-top: 80px;
            }
            a {
                display: inline-block;
                margin: 15px;
                padding: 12px 25px;
                background: #3b8bbd;
                color: white;
                text-decoration: none;
                border-radius: 8px;
                transition: 0.3s;
            }
            a:hover {
                background-color: #327aa0;
            }
        </style>
    </head>
    <body>
        <header>Online Course Registration System</header>
        <div class="container">
            <h2>Welcome!</h2>
            <p>Select an option below:</p>
            <a href="register.jsp">Student Registration</a>
            <a href="login.jsp">Student Login</a>
            <a href="admin_login.jsp">Admin Login</a>

        </div>
    </body>
</html>

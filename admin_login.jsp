<%-- 
    Document   : admin_login
    Created on : 8 Nov 2025, 10:14:04 am
    Author     : Deep
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Admin Login</title>
        <style>
            body {
                font-family: 'Segoe UI', sans-serif;
                background: #f2f6fa;
                display: flex;
                justify-content: center;
                align-items: center;
                height: 100vh;
            }
            .login-box {
                background: white;
                padding: 40px 50px;
                border-radius: 10px;
                box-shadow: 0 0 10px rgba(0,0,0,0.1);
                width: 360px;
            }
            h2 {
                color: #3b8bbd;
                text-align: center;
                margin-bottom: 25px;
            }
            input[type=text], input[type=password] {
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
            .error {
                color: red;
                text-align: center;
                margin-bottom: 10px;
            }
        </style>
    </head>
    <body>
        <div class="login-box">
            <h2>Admin Login</h2>
            <form action="AdminLoginServlet" method="post">
                <input type="text" name="username" placeholder="Username" required><br>
                <input type="password" name="password" placeholder="Password" required><br>
                <input type="submit" value="Login">
            </form>
            <div class="error">
                <%= request.getParameter("error") != null ? "Invalid username or password!" : ""%>
            </div>
        </div>
    </body>
</html>


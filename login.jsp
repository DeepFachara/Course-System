<%-- 
    Document   : login
    Created on : 3 Nov 2025, 10:08:43 pm
    Author     : Deep
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Login</title>
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
                padding: 40px;
                border-radius: 10px;
                box-shadow: 0 0 10px rgba(0,0,0,0.1);
                width: 350px;
            }
            h2 {
                color: #3b8bbd;
                text-align: center;
            }
            input {
                width: 100%;
                padding: 10px;
                margin: 8px 0;
                border: 1px solid #ccc;
                border-radius: 6px;
            }
            input[type=submit] {
                background: #3b8bbd;
                color: white;
                border: none;
                cursor: pointer;
                font-size: 16px;
            }
            input[type=submit]:hover {
                background: #2a6f95;
            }
        </style>
    </head>
    <body>
        <div class="login-box">
            <h2>Student Login</h2>
            <form action="LoginServlet" method="post">
                <input type="email" name="email" placeholder="Email" required><br>
                <input type="password" name="password" placeholder="Password" required><br>
                <input type="submit" value="Login">
            </form>
        </div>
    </body>
</html>

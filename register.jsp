<%-- 
    Document   : register
    Created on : 3 Nov 2025, 10:08:28 pm
    Author     : Deep
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Register</title>
        <style>
            body {
                font-family: 'Segoe UI', sans-serif;
                background: #f2f6fa;
                display: flex;
                justify-content: center;
                align-items: center;
                height: 100vh;
            }
            .form-box {
                background: white;
                padding: 40px 50px;
                border-radius: 10px;
                box-shadow: 0 0 10px rgba(0,0,0,0.1);
                width: 360px;
            }
            h2 {
                color: #3b8bbd;
                text-align: center;
                margin-bottom: 20px;
            }
            input[type=text], input[type=password], input[type=email] {
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
                padding: 10px 15px;
                width: 100%;
                border-radius: 6px;
                cursor: pointer;
                font-size: 16px;
            }
            input[type=submit]:hover {
                background: #2d6e98;
            }
        </style>
    </head>
    <body>
        <div class="form-box">
            <h2>Student Registration</h2>
            <form action="RegisterServlet" method="post">
                <input type="text" name="name" placeholder="Full Name" required><br>
                <input type="email" name="email" placeholder="Email" required><br>
                <input type="password" name="password" placeholder="Password" required><br>
                <input type="text" name="contact" placeholder="Contact Number" required><br>
                <input type="submit" value="Register">
            </form>
        </div>
    </body>
</html>


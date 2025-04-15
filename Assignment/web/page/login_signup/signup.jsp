<%--
    Document   : signup
    Created on : 4 Apr 2025, 4:16:56 pm
    Author     : yjee0
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign Up Page</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
        <style>
            :root {
                --primary-color: #4C60DF;
                --second-color: #3a4bb5;
            }

            body {
                font-family: Arial, sans-serif;
                background-color: #f5f7ff;
                margin: 0;
                padding: 0;
                display: flex;
                flex-direction: column;
                min-height: 100vh;
            }

            /* title */
            .title {
                width: 100%;
                height: 150px;
                background: linear-gradient(135deg, var(--primary-color), #3a4bb8);
                display: flex;
                flex-direction: column;
                align-items: center;
                justify-content: center;
                color: white;
                text-align: center;
                box-shadow: 0 2px 10px rgba(0,0,0,0.1);
            }

            .title h2 {
                margin: 0;
                font-size: 2.2rem;
                font-weight: 600;
                letter-spacing: 1px;
            }

            .login-container {
                display: flex;
                justify-content: center;
                align-items: center;
                flex-grow: 1;
                padding: 40px 20px;
            }

            .login-box {
                display: flex;
                background: white;
                border-radius: 15px;
                box-shadow: 0 5px 15px rgba(0,0,0,0.1);
                overflow: hidden;
                width: 900px;
                max-width: 90%;
            }

            .login-image {
                flex: 1;
                background: var(--primary-color);
                display: flex;
                justify-content: center;
                align-items: center;
                padding: 40px;
            }

            .login-image img {
                max-width: 100%;
                height: auto;
            }

            .login-form {
                flex: 1;
                padding: 50px;
            }

            .login-title {
                font-size: 28px;
                font-weight: bold;
                margin-bottom: 30px;
                color: #333;
            }

            .form-group {
                margin-bottom: 20px;
            }

            .form-group label {
                display: block;
                margin-bottom: 8px;
                font-weight: bold;
                color: #555;
            }

            .input-with-icon {
                position: relative;
                display: flex;
                align-items: center;
            }

            .input-with-icon i {
                position: absolute;
                left: 12px;
                color: var(--primary-color);
                font-size: 16px;
            }

            .input-with-icon input {
                width: 100%;
                padding: 12px 12px 12px 40px;
                border: 1px solid #ddd;
                border-radius: 8px;
                font-size: 16px;
            }

            .input-with-icon input:focus {
                outline: none;
                border-color: var(--primary-color);
            }

            .login-button {
                width: 100%;
                padding: 12px;
                background-color: var(--primary-color);
                color: white;
                border: none;
                border-radius: 8px;
                font-size: 16px;
                font-weight: bold;
                cursor: pointer;
                margin: 20px 0;
                transition: background-color 0.3s;
            }

            .login-button:hover {
                background-color: var(--second-color);
            }

            .login-link {
                text-align: center;
                margin-bottom: 30px;
            }

            .login-link a {
                color: var(--primary-color);
                text-decoration: none;
                font-weight: bold;
            }

            @media (max-width: 768px) {
                .login-box {
                    flex-direction: column;
                }

                .login-image {
                    padding: 30px;
                }

                .login-form {
                    padding: 30px;
                }
            }
        </style>
    </head>
    <header>
        <%@include file="h&f/navbar.jsp" %>
    </header>
    <body>
        <!-- title -->
        <div class="title">
            <h2>Profile</h2>
        </div>

        <div class="login-container">
            <div class="login-box">
                <div class="login-image">
                    <img src="logo/logo_2.png">
                </div>
                <div class="login-form">
                    <h1 class="login-title">Sign Up</h1>

                    <div class="form-group">
                        <label for="username">Username</label>
                        <div class="input-with-icon">
                            <i class="fa-solid fa-user"></i>
                            <input type="text" id="username" placeholder="Enter username">
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="tel">Phone</label>
                        <div class="input-with-icon">
                            <i class="fa-solid fa-phone"></i>
                            <input type="tel" id="tel" placeholder="Enter phone number">
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="email">Email</label>
                        <div class="input-with-icon">
                            <i class="fa-solid fa-envelope"></i>
                            <input type="email" id="email" placeholder="Enter email">
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="password">Password</label>
                        <div class="input-with-icon">
                            <i class="fa-solid fa-key"></i>
                            <input type="password" id="password" placeholder="Enter password">
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="confirm-password">Confirm Password</label>
                        <div class="input-with-icon">
                            <i class="fa-solid fa-key"></i>
                            <input type="password" id="confirm-password" placeholder="Confirm password">
                        </div>
                    </div>

                    <button class="login-button">Sign Up</button>

                    <div class="login-link">
                        Already have an account? <a href="login.jsp">Login</a>
                    </div>
                </div>
            </div>
        </div>
    </body>
    <footer>
        <%@include file="h&f/footer.jsp" %>
    </footer>
</html>
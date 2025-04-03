<%--
    Document   : login
    Created on : 3 Apr 2025, 4:20:24 pm
    Author     : yjee0
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
        <style>
            body {
                font-family: Arial, sans-serif;
                background-color: #f5f7ff;
                margin: 0;
                padding: 0;
                display: flex;
                flex-direction: column;
                min-height: 100vh;
            }

            img {
                border: none !important;
                outline: none !important;
                box-shadow: none !important;
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
                background: #4C60DF;
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

            .form-group input {
                width: 100%;
                padding: 12px 0px 10px 0px;
                border: 1px solid #ddd;
                border-radius: 8px;
                font-size: 16px;
            }

            .form-group input:focus {
                outline: none;
                border-color: #4C60DF;
            }

            .input-with-icon {
                position: relative;
                display: flex;
                align-items: center;
            }

            .input-with-icon i {
                position: absolute;
                left: 12px;
                color: #4C60DF;
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
                border-color: #4C60DF;
            }

            .forgot-password {
                text-align: right;
                margin-bottom: 25px;
            }

            .forgot-password a {
                color: #4C60DF;
                text-decoration: none;
                font-size: 14px;
            }

            .login-button {
                width: 100%;
                padding: 12px;
                background-color: #4C60DF;
                color: white;
                border: none;
                border-radius: 8px;
                font-size: 16px;
                font-weight: bold;
                cursor: pointer;
                margin-bottom: 20px;
                transition: background-color 0.3s;
                align-items: center;
            }

            .login-button:hover {
                background-color: #3a4bb5;
            }

            .signup-link {
                text-align: center;
                margin-bottom: 30px;
            }

            .signup-link a {
                color: #4C60DF;
                text-decoration: none;
                font-weight: bold;
            }

            .social-login {
                text-align: center;
            }

            .social-title {
                position: relative;
                margin-bottom: 20px;
                color: #777;
            }

            .social-title:before,
            .social-title:after {
                content: "";
                position: absolute;
                top: 50%;
                width: 30%;
                height: 1px;
                background: #ddd;
            }

            .social-title:before {
                left: 0;
            }

            .social-title:after {
                right: 0;
            }

            .social-buttons {
                display: flex;
                justify-content: center;
                gap: 15px;
            }

            .social-btn {
                padding: 10px 20px;
                border: 1px solid #ddd;
                border-radius: 8px;
                background: white;
                cursor: pointer;
                display: flex;
                align-items: center;
                gap: 8px;
                font-size: 14px;
            }

            .social-btn.facebook {
                color: #3b5998;
            }

            .social-btn.google {
                color: #db4437;
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
        <div class="login-container">
            <div class="login-box">
                <div class="login-image">
                    <!-- Replace with your logo path -->
                    <img src="logo/logo.png">
                </div>
                <div class="login-form">
                    <h1 class="login-title">Login</h1>

                    <div class="form-group">
                        <label for="username">Username</label>
                        <div class="input-with-icon">
                            <i class="fa-solid fa-user"></i>
                            <input type="text" id="username" placeholder="Enter username">
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="password">Password</label>
                        <div class="input-with-icon">
                            <i class="fa-solid fa-key"></i>
                            <input type="password" id="password" placeholder="Enter password">
                        </div>
                    </div>
                    <div class="forgot-password">
                        <a href="#">Forgot password?</a>
                    </div>

                    <button class="login-button">Login</button>

                    <div class="signup-link">
                        Don't have an account? <a href="signup.jsp">Sign up</a>
                    </div>

                    <div class="social-login">
                        <div class="social-title">OR</div>
                        <div class="social-buttons">
                            <button class="social-btn facebook">
                                <i class="fa fa-facebook"></i> Facebook
                            </button>
                            <button class="social-btn google">
                                <i class="fa fa-google"></i> Google
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
    <footer>
        <%@include file="h&f/footer.jsp" %>
    </footer>
</html>
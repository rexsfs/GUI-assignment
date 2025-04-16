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
                background-color: #f5f5f5;
                margin: 0;
                padding: 0;
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

            .container {
                display: flex;
                justify-content: center;
                align-items: center;
                flex-grow: 1;
                padding: 40px 20px;
            }

            .box {
                display: flex;
                background: white;
                border-radius: 15px;
                box-shadow: 0 5px 15px rgba(0,0,0,0.1);
                overflow: hidden;
                width: 900px;
                max-width: 90%;
            }

            .image {
                flex: 1;
                background: var(--primary-color);
                display: flex;
                justify-content: center;
                align-items: center;
                padding: 40px;
            }

            .image img {
                max-width: 100%;
                height: auto;
            }

            .form {
                flex: 1;
                padding: 50px;
            }

            .login-title {
                font-size: 28px;
                font-weight: bold;
                margin-bottom: 30px;
                color: #333;
            }

            .input {
                margin-bottom: 20px;
            }

            .input label {
                display: block;
                margin-bottom: 8px;
                font-weight: bold;
                color: #555;
            }

            .icon {
                position: relative;
                display: flex;
                align-items: center;
            }

            .icon i {
                position: absolute;
                left: 12px;
                color: var(--primary-color);
                font-size: 16px;
            }

            .icon input {
                width: 100%;
                padding: 12px 12px 12px 40px;
                border: 1px solid #ddd;
                border-radius: 8px;
                font-size: 16px;
            }

            .icon input:focus {
                outline: none;
                border-color: var(--primary-color);
            }

            .button {
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

            .button:hover {
                transform: none;
                background: #fff;
                color: var(--primary-color);
                border: #4C60DF 2px solid;
            }

            /* back to previous page */
            .back {
                text-align: center;
                margin-bottom: 30px;
            }

            .back a {
                color: var(--primary-color);
                text-decoration: none;
                font-weight: bold;
            }

            .back a:hover {
                color: var(--second-color);
                text-decoration: underline;
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
        <%@include file="../../h&f/navbar.jsp" %>
    </header>
    <body>
        <!-- title -->
        <div class="title">
            <h2>Profile</h2>
        </div>

        <div class="container">
            <div class="box">
                <div class="image">
                    <img src="${pageContext.request.contextPath}/pic/logo/logo_2.png">
                </div>
                <div class="form">
                    <h1 class="signup-title">Sign Up</h1>

                    <form method="post">
                        <div class="input">
                            <label for="username">Username</label>
                            <div class="icon">
                                <i class="fa-solid fa-user"></i>
                                <input type="text" id="username" placeholder="Enter username" required>
                            </div>
                        </div>

                        <div class="input">
                            <label for="tel">Phone</label>
                            <div class="icon">
                                <i class="fa-solid fa-phone"></i>
                                <input type="tel" id="tel" placeholder="Enter phone number" required>
                            </div>
                        </div>

                        <div class="input">
                            <label for="email">Email</label>
                            <div class="icon">
                                <i class="fa-solid fa-envelope"></i>
                                <input type="email" id="email" placeholder="Enter email" required>
                            </div>
                        </div>

                        <div class="input">
                            <label for="password">Password</label>
                            <div class="icon">
                                <i class="fa-solid fa-key"></i>
                                <input type="password" id="password" placeholder="Enter password" required>
                            </div>
                        </div>

                        <div class="input">
                            <label for="confirm-password">Confirm Password</label>
                            <div class="icon">
                                <i class="fa-solid fa-key"></i>
                                <input type="password" id="confirm-password" placeholder="Confirm password" required>
                            </div>
                        </div>

                        <button type="submit" class="button">Sign Up</button>
                    </form>

                    <!-- back to previous page -->
                    <div class="back">
                        Already have an account? <a href="login.jsp">Login</a>
                    </div>
                </div>
            </div>
        </div>

    </body>
    <footer>
        <%@include file="../../h&f/footer.jsp" %>
    </footer>
</html>
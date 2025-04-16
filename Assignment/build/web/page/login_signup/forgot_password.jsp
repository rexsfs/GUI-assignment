<%--
    Document   : login
    Created on : 1 Apr 2025, 3:19:40 pm
    Author     : yjee0
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Forgot Password</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
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

            /* Container */
            .container {
                display: flex;
                justify-content: center;
                align-items: center;
                flex-grow: 1;
                padding: 40px 20px;
            }

            /*login box */
            .box {
                display: flex;
                background: white;
                border-radius: 15px;
                box-shadow: 0 5px 15px rgba(0,0,0,0.1);
                overflow: hidden;
                width: 900px;
                max-width: 90%;
            }

            /* image */
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

            /* form */
            .form {
                flex: 1;
                padding: 50px;
            }

            .title-form {
                font-size: 28px;
                font-weight: bold;
                margin-bottom: 30px;
                color: #333;
            }

            /* detail input */
            .detail {
                margin-bottom: 20px;
            }

            .detail label {
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
                margin-top: 10px;
                margin-bottom: 20px;
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
                margin-top: 20px;
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

            /* option for reset password */
            .option {
                text-align: center;
                margin: 15px 0;
                color: #666;
                font-size: 14px;
            }

            .option span {
                cursor: pointer;
                color: var(--primary-color);
                font-weight: bold;
            }

            .option span:hover {
                color: var(--second-color);
                text-decoration: underline;
            }

            /* @media */
            @media (max-width: 768px) {
                .box {
                    flex-direction: column;
                }

                .image {
                    padding: 30px;
                }

                .form {
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
            <h2>Forgot Password</h2>
        </div>

        <!-- container -->
        <div class="container">
            <!<!-- box -->
            <div class="box">
                <!-- image -->
                <div class="image">
                    <img src="${pageContext.request.contextPath}/pic/logo/logo_2.png">
                </div>

                <!-- form -->
                <div class="form">
                    <h1 class="title-form">Reset Your Password</h1>

                    <form method="POST">
                        <div id="email-form">
                            <div class="detail">
                                <label for="email">Email Address</label>
                                <div class="icon">
                                    <i class="fas fa-envelope"></i>
                                    <input type="email" id="email" name="email" placeholder="Enter your email" required>
                                </div>
                            </div>

                            <div class="option">
                                Forgot your email? <span onclick="toggleForm()">Use username instead</span>
                            </div>
                        </div>

                        <div id="username-form" style="display: none;">
                            <div class="detail">
                                <label for="username">Username</label>
                                <div class="icon">
                                    <i class="fas fa-user"></i>
                                    <input type="text" id="username" name="username" placeholder="Enter your username">
                                </div>
                            </div>

                            <div class="option">
                                Prefer to use email? <span onclick="toggleForm()">Use email instead</span>
                            </div>
                        </div>

                        <button action="set_password.jsp" type="submit" class="button">Reset Password</button>
                    </form>

                    <!-- back to previous page -->
                    <div class="back">
                        <a href="login.jsp">Back to Login</a>
                    </div>
                </div>
            </div>
        </div>

                <script>
                    function toggleForm() {
                        const emailForm = document.getElementById('email-form');
                        const usernameForm = document.getElementById('username-form');

                        if (emailForm.style.display === 'none') {
                            emailForm.style.display = 'block';
                            usernameForm.style.display = 'none';
                            document.getElementById('email').required = true;
                            document.getElementById('username').required = false;
                        } else {
                            emailForm.style.display = 'none';
                            usernameForm.style.display = 'block';
                            document.getElementById('email').required = false;
                            document.getElementById('username').required = true;
                        }
                    }
                </script>
    </body>
    <footer>
        <%@include file="../../h&f/footer.jsp" %>
    </footer>
</html>
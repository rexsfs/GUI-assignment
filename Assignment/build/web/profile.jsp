<%--
    Document   : profile
    Created on : 14 Apr 2025, 7:28:47 pm
    Author     : yjee0
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>My Profile</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                margin: 0;
                padding: 0;
                background-color: #f5f5f5;
            }
            .breadcrumb {
                padding: 15px;
                background-color: #f8f9fa;
                margin-bottom: 20px;
            }
            .breadcrumb a {
                color: #6c757d;
                text-decoration: none;
            }
            .breadcrumb a:hover {
                color: #0056b3;
            }
            .account-container {
                display: flex;
                max-width: 1200px;
                margin: 0 auto;
                padding: 20px;
            }
            .account-sidebar {
                width: 250px;
                background: white;
                padding: 20px;
                border-radius: 5px;
                box-shadow: 0 0 5px rgba(0,0,0,0.1);
                margin-right: 20px;
            }
            .account-sidebar h3 {
                margin-top: 0;
                padding-bottom: 10px;
                border-bottom: 1px solid #eee;
            }
            .account-sidebar ul {
                list-style: none;
                padding: 0;
            }
            .account-sidebar li {
                margin-bottom: 10px;
            }
            .account-sidebar a {
                color: #333;
                text-decoration: none;
                display: block;
                padding: 8px 0;
            }
            .account-sidebar a.active {
                color: #007bff;
                font-weight: bold;
            }
            .account-content {
                flex: 1;
                background: white;
                padding: 30px;
                border-radius: 5px;
                box-shadow: 0 0 5px rgba(0,0,0,0.1);
            }
            .account-content h2 {
                margin-top: 0;
                margin-bottom: 20px;
            }
            .profile-field {
                margin-bottom: 20px;
            }
            .profile-field label {
                display: block;
                margin-bottom: 5px;
                font-weight: bold;
            }
            .profile-field p {
                margin: 0;
                padding: 15px;
                background-color: #f8f9fa;
                border-radius: 4px;
                border: 1px solid #ddd;
            }
        </style>
    </head>
    <body>
        <header>
            <%@include file="h&f/navbar.jsp" %>
        </header>

    </div>
    <div class="account-container">
            <div class="account-sidebar">
                <h3>My Account</h3>
                <ul>
                    <li><a href="profile.jsp" class="active">Profile</a></li>
                    <li><a href="#">Address</a></li>
                    <li><a href="#">Bank & Card</a></li>
                    <li><a href="#">History</a></li>
                </ul>
            </div>

            <div class="account-content">
                <h2>Profile</h2>

                <div class="profile-field">
                    <label>Username:</label>
                    <p></p>
                </div>

                <div class="profile-field">
                    <label>Email:</label>
                    <p></p>
                </div>

                <div class="profile-field">
                    <label>Phone:</label>
                    <p></p>
                </div>
            </div>
        </div>

        <footer>
            <%@include file="h&f/footer.jsp" %>
        </footer>
    </body>
</html>
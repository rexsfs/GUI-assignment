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
            :root {
                --primary-color: #4C60DF;
            }

            body {
                font-family: Arial, sans-serif;
                margin: 0;
                padding: 0;
                background-color: #f5f5f5;
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
                max-width: 1200px;
                margin: 0 auto;
                padding: 20px;
            }

            /* sidebar */
            .sidebar {
                width: 250px;
                background: white;
                padding: 20px;
                border-radius: 5px;
                box-shadow: 0 0 5px rgba(0,0,0,0.1);
                margin-right: 20px;
            }

            .sidebar h3 {
                margin-top: 0;
                padding-bottom: 10px;
                border-bottom: 1px solid #eee;
            }

            .sidebar ul {
                list-style: none;
                padding: 0;
            }

            .sidebar li {
                margin-bottom: 10px;
            }

            .sidebar a {
                color: #333;
                text-decoration: none;
                display: block;
                padding: 8px 0;
            }

            .sidebar a.active {
                color: #007bff;
                font-weight: bold;
            }

            /* content */
            .content {
                flex: 1;
                background: white;
                padding: 30px;
                border-radius: 5px;
                box-shadow: 0 0 5px rgba(0,0,0,0.1);
            }

            .content h2 {
                margin-top: 0;
                margin-bottom: 20px;
            }

            .profile-header {
                display: flex;
                align-items: center;
                margin-bottom: 30px;
            }

            /* content of avatar */
            .avatar {
                position: relative;
                margin-right: 30px;
            }

            .pic {
                width: 120px;
                height: 120px;
                border-radius: 50%;
                object-fit: cover;
                border: 3px solid #e0e0e0;
            }

            /* upload pic */
            .upload-pic {
                position: absolute;
                bottom: 0;
                right: 0;
                background-color: var(--primary-color);
                color: white;
                width: 36px;
                height: 36px;
                border-radius: 50%;
                display: flex;
                align-items: center;
                justify-content: center;
                cursor: pointer;
                box-shadow: 0 2px 5px rgba(0,0,0,0.2);
            }

            .upload-pic:hover {
                background-color: #3a4bb8;
            }

            .upload-pic i {
                font-size: 18px;
            }

            .Info {
                flex: 1;
            }

            .name {
                font-size: 24px;
                font-weight: bold;
                margin-bottom: 10px;
            }

            /* content of info */
            .info {
                margin-bottom: 20px;
            }

            .info label {
                display: block;
                margin-bottom: 5px;
                font-weight: bold;
            }

            .info p {
                margin: 0;
                padding: 15px;
                background-color: #f8f9fa;
                border-radius: 4px;
                border: 1px solid #ddd;
            }

            /* edit button */
            .edit {
                background-color: var(--primary-color);
                color: white;
                border: none;
                padding: 10px 20px;
                border-radius: 4px;
                cursor: pointer;
                font-size: 14px;
                transition: background-color 0.3s;
            }

            .edit:hover {
                background-color: #3a4bb8;
            }
        </style>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    </head>
    <body>
        <header>
            <%@include file="h&f/navbar.jsp" %>
        </header>

        <!-- title -->
        <div class="title">
            <h2>Profile</h2>
        </div>

        <div class="container">
            <!-- sidebar -->
            <div class="sidebar">
                <h3>My Account</h3>
                <ul>
                    <li><a href="profile.jsp" class="active">Profile</a></li>
                    <li><a href="#">Address</a></li>
                    <li><a href="#">Bank & Card</a></li>
                    <li><a href="#">History</a></li>
                </ul>
            </div>

            <!-- content of avatar -->
            <div class="content">
                <div class="profile-header">
                    <div class="avatar">
                        <img src="jeramy.jpg" alt="Avatar" class="pic" id="userAvatar">
                        <!-- upload pic -->
                        <div class="upload-pic" title="Change photo">
                            <i class="fas fa-camera"></i>
                            <input type="file" id="avatarInput" accept="image/*" style="display: none;">
                        </div>
                    </div>
                    <div class="Info">
                        <div class="name">John Doe</div>
                        <button class="edit">Edit Profile</button>
                    </div>
                </div>

                <!-- content of info -->
                <h2>Personal Information</h2>

                <div class="info">
                    <label>Username:</label>
                    <p>Jeramy</p>
                </div>

                <div class="info">
                    <label>Email:</label>
                    <p>jeramy2004@gmail.com</p>
                </div>

                <div class="info">
                    <label>Phone:</label>
                    <p>+60 123456789</p>
                </div>
            </div>
        </div>

        <footer>
            <%@include file="h&f/footer.jsp" %>
        </footer>

        <script>
            document.querySelector('.upload-pic').addEventListener('click', function () {
                document.getElementById('avatarInput').click();
            });

            document.getElementById('avatarInput').addEventListener('change', function (e) {
                if (e.target.files && e.target.files[0]) {
                    const reader = new FileReader();

                    reader.onload = function (event) {
                        document.getElementById('userAvatar').src = event.target.result;
                    }

                    reader.readAsDataURL(e.target.files[0]);
                }
            });
        </script>
    </body>
</html>
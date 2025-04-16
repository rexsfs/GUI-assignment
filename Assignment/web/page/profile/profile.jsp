<%--
    Document   : profile
    Created on : 14 Apr 2025, 7:28:47 pm
    Author     : yjee0
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>My Profile</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/h&f/title.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/page/profile/profile.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/page/body.css">
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
            <!-- sidebar -->
            <div class="sidebar">
                <h3>My Account</h3>
                <ul>
                    <li><a href="profile.jsp" class="active">Profile</a></li>
                    <li><a href="address.jsp">Address</a></li>
                    <li><a href="bank.jsp">Bank & Card</a></li>
                    <li><a href="history.jsp">History</a></li>
                </ul>
            </div>

            <!-- content of avatar -->
            <div class="content">
                <div class="header">
                    <div class="avatar">
                        <img src="../../jeramy.jpg" alt="Avatar" class="pic" id="userAvatar">
                        <!-- upload pic -->
                        <div class="upload-pic" title="Change photo">
                            <i class="fas fa-camera"></i>
                            <input type="file" id="avatarInput" accept="image/*" style="display: none;">
                        </div>
                    </div>
                    <div class="Info">
                        <div class="name">Jeramy</div>
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
    <footer>
        <%@include file="../../h&f/footer.jsp" %>
    </footer>
</html>
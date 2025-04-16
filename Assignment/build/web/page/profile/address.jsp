<%--
    Document   : address
    Created on : 15 Apr 2025, 1:32:39 pm
    Author     : yjee0
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>My Address</title>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/h&f/title.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/page/profile/address.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/page/body.css">
    </head>
    <header>
        <%@include file="../../h&f/navbar.jsp" %>
    </header>
    <body>
        <!-- title -->
        <div class="title">
            <h2>Address</h2>
        </div>

        <div class="container">
            <!-- sidebar  -->
            <div class="sidebar">
                <h3>My Account</h3>
                <ul>
                    <li><a href="profile.jsp">Profile</a></li>
                    <li><a href="address.jsp" class="active">Address</a></li>
                    <li><a href="bank.jsp">Bank & Card</a></li>
                    <li><a href="history.jsp">History</a></li>
                </ul>
            </div>

            <!-- content -->
            <div class="content">
                <div class="header">
                    <h2>My Address</h2>
                    <button class="edit">Edit</button>
                </div>

                <!-- address display sample -->
                <!--
                <div class="card">
                    <h3>Home Address</h3>
                    <p>Jeramy</p>
                    <p>123 Main Street</p>
                    <p>Apartment 4B</p>
                    <p>New York, NY 10001</p>
                    <p>United States</p>
                    <p>Phone: +60 123456789</p>
                </div>
                -->

                <div class="empty-state">
                    <i class="fas fa-map-marker-alt"></i>
                    <h3>No Saved Addresses</h3>
                    <p>You haven't added any addresses yet. Add your first address to get started.</p>
                </div>
            </div>
        </div>
    </body>
    <footer>
        <%@include file="../../h&f/footer.jsp" %>
    </footer>
</html>

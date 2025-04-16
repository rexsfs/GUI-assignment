<%--
    Document   : address
    Created on : 15 Apr 2025, 1:32:39 pm
    Author     : yjee0
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>My Address</title>
        <style>
            :root {
                --primary-color: #4C60DF;
                --secondary-color: #f8f9fa;
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

            /* Account Container */
            .container {
                display: flex;
                max-width: 1200px;
                margin: 20px auto;
                padding: 0 20px;
            }

            /* Sidebar */
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
                padding: 8px 10px;
                border-radius: 4px;
            }

            .sidebar a.active {
                color: var(--primary-color);
                background-color: var(--secondary-color);
                font-weight: bold;
            }

            .sidebar a:hover:not(.active) {
                background-color: #f0f0f0;
            }

            /* Address Content */
            .content {
                flex: 1;
                background: white;
                padding: 30px;
                border-radius: 5px;
                box-shadow: 0 0 5px rgba(0,0,0,0.1);
            }

            .header {
                display: flex;
                justify-content: space-between;
                align-items: center;
                margin-bottom: 30px;
            }

            .header h2 {
                margin: 0;
                font-size: 24px;
            }

            /* edit button */
            .edit {
                background-color: var(--primary-color);
                color: white;
                border: none;
                padding: 8px 20px;
                border-radius: 8px;
                cursor: pointer;
                font-size: 14px;
                transition: background-color 0.3s;
            }

            .edit:hover {
                transform: none;
                background: #fff;
                color: #4C60DF;
                border: #4C60DF 2px solid;
            }

            /* address display */
            .card {
                border: 1px solid #ddd;
                border-radius: 5px;
                padding: 20px;
                margin-bottom: 20px;
                background-color: var(--secondary-color);
            }

            .card h3 {
                margin-top: 0;
                margin-bottom: 15px;
                font-size: 18px;
            }

            .card p {
                margin: 5px 0;
                line-height: 1.5;
            }

            .empty-state {
                text-align: center;
                padding: 50px 20px;
                color: #666;
            }

            .empty-state i {
                font-size: 48px;
                color: #ddd;
                margin-bottom: 20px;
            }

            .empty-state h3 {
                color: #444;
                margin-bottom: 10px;
            }

            .empty-state p {
                margin-bottom: 20px;
            }
        </style>
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

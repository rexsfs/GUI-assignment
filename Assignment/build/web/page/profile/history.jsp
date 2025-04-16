<%--
    Document   : history
    Created on : 15 Apr 2025, 11:01:40 pm
    Author     : yjee0
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Order History</title>
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

            /* Title Styling */
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

            /* Main Container */
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

            /* History Content */
            .content {
                flex: 1;
                background: white;
                padding: 30px;
                border-radius: 5px;
                box-shadow: 0 0 5px rgba(0,0,0,0.1);
            }

            /* filter */
            .header-status {
                display: flex;
                justify-content: space-between;
                align-items: center;
                margin-bottom: 30px;
            }

            .header-status h2 {
                margin: 0;
                font-size: 24px;
            }

            .filter {
                display: flex;
            }

            .filter select {
                padding: 8px 12px;
                border-radius: 4px;
                border: 1px solid #ddd;
            }

            /* Order Cards */
            .card {
                border: 1px solid #ddd;
                border-radius: 8px;
                padding: 20px;
                margin-bottom: 20px;
                background-color: var(--secondary-color);
            }

            .header {
                display: flex;
                justify-content: space-between;
                margin-bottom: 15px;
                padding-bottom: 10px;
                border-bottom: 1px solid #eee;
            }

            .id {
                font-weight: bold;
                color: var(--primary-color);
            }

            .date {
                color: #666;
            }

            .status {
                padding: 4px 10px;
                border-radius: 4px;
                font-size: 12px;
                font-weight: bold;
            }

            .status-completed {
                background-color: #e6f7e6;
                color: #2e7d32;
            }

            .status-pending {
                background-color: #fff8e1;
                color: #ff8f00;
            }

            .status-cancelled {
                background-color: #ffebee;
                color: #c62828;
            }

            .details {
                display: flex;
                gap: 20px;
                margin-bottom: 15px;
            }

            .image {
                width: 80px;
                height: 80px;
                object-fit: cover;
                border-radius: 4px;
            }

            .info {
                flex: 1;
            }

            .name {
                font-weight: bold;
                margin-bottom: 5px;
            }

            .price {
                color: #666;
            }

            .actions {
                display: flex;
                justify-content: flex-end;
                gap: 10px;
            }

            .btn {
                padding: 8px 16px;
                border-radius: 4px;
                cursor: pointer;
                font-size: 14px;
                transition: all 0.3s;
            }

            .btn-primary {
                background-color: var(--primary-color);
                color: white;
                border: none;
            }

            .btn-outline {
                background-color: white;
                color: var(--primary-color);
                border: 1px solid var(--primary-color);
            }

            .btn:hover {
                opacity: 0.9;
                transform: translateY(-2px);
            }

            .empty {
                text-align: center;
                padding: 40px;
                color: #666;
            }
        </style>
    </head>
    <header>
        <%@include file="../../h&f/navbar.jsp"%>
    </header>
    <body>
        <!-- title -->
        <div class="title">
            <h2>Order History</h2>
        </div>

        <div class="container">
            <!-- Sidebar Navigation -->
            <div class="sidebar">
                <h3>My Account</h3>
                <ul>
                    <li><a href="profile.jsp">Profile</a></li>
                    <li><a href="address.jsp">Address</a></li>
                    <li><a href="bank.jsp">Bank & Card</a></li>
                    <li><a href="history.jsp" class="active">Order History</a></li>
                </ul>
            </div>

            <!-- content -->
            <div class="content">
                <div class="header-status">
                    <h2>My Orders</h2>
                    <div class="filter">
                        <select>
                            <option>All Status</option>
                            <option>Completed</option>
                            <option>Pending</option>
                            <option>Cancelled</option>
                        </select>
                    </div>
                </div>

                <!-- order display sample -->
                <!--
                <div class="card">
                    <div class="header">
                        <div>
                            <span class="id">Order #12345</span>
                            <span class="date">• 12 April 2025</span>
                        </div>
                        <span class="status status-completed">Completed</span>
                    </div>

                    <div class="details">
                        <img src="pic/jeramy.jpeg" alt="Product Image" class="image">
                        <div class="info">
                            <div class="name">Wireless Bluetooth Headphones</div>
                            <div class="price">$99.99 × 1</div>
                        </div>
                    </div>

                    <div class="actions">
                        <button class="btn btn-primary">Buy Again</button>
                    </div>
                </div>
                -->

                <!-- empty state sample -->
                <div class="empty">
                    <h3>No orders yet</h3>
                    <p>You haven't placed any orders. Start shopping now!</p>
                    <button class="btn btn-primary" style="margin-top: 15px;">Shop Now</button>
                </div>
            </div>
        </div>
    </body>
    <footer>
        <%@include file="../../h&f/footer.jsp"%>
    </footer>
</html>
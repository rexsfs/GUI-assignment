<%--
    Document   : bank
    Created on : 15 Apr 2025, 2:28:26 pm
    Author     : yjee0
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Bank</title>
        <style>
            :root {
                --primary-color: #4C60DF;
                --secondary-color: #f8f9fa;
                --danger-color: #e74c3c;
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
            .account-container {
                display: flex;
                max-width: 1200px;
                margin: 20px auto;
                padding: 0 20px;
            }

            /* Sidebar */
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
                margin: 0;
            }

            .account-sidebar li {
                margin-bottom: 10px;
            }

            .account-sidebar a {
                color: #333;
                text-decoration: none;
                display: block;
                padding: 8px 10px;
                border-radius: 4px;
            }

            .account-sidebar a.active {
                color: var(--primary-color);
                background-color: var(--secondary-color);
                font-weight: bold;
            }

            .account-sidebar a:hover:not(.active) {
                background-color: #f0f0f0;
            }

            /* Card Content */
            .card-content {
                flex: 1;
                background: white;
                padding: 30px;
                border-radius: 5px;
                box-shadow: 0 0 5px rgba(0,0,0,0.1);
            }

            .card-header {
                display: flex;
                justify-content: space-between;
                align-items: center;
                margin-bottom: 30px;
            }

            .card-header h2 {
                margin: 0;
                font-size: 24px;
            }

            .add-card-btn {
                background-color: var(--primary-color);
                color: white;
                border: none;
                padding: 10px 20px;
                border-radius: 8px;
                cursor: pointer;
                font-size: 14px;
                transition: background-color 0.3s;
                display: flex;
                align-items: center;
            }

            .add-card-btn:hover {
                transform: none;
                background: #fff;
                color: #4C60DF;
                border: #4C60DF 2px solid;
            }

            .add-card-btn i {
                margin-right: 8px;
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

            /* Card Styles (when cards exist) */
            .card-list {
                display: grid;
                grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
                gap: 20px;
            }

            .card-item {
                border: 1px solid #ddd;
                border-radius: 10px;
                padding: 20px;
                position: relative;
                background: linear-gradient(135deg, #4C60DF, #3a4bb8);
                color: white;
            }

            .card-item .card-type {
                position: absolute;
                right: 20px;
                top: 20px;
                font-size: 24px;
            }

            .card-item .card-number {
                font-size: 18px;
                letter-spacing: 1px;
                margin: 30px 0 15px;
            }

            .card-item .card-details {
                display: flex;
                justify-content: space-between;
            }

            .card-item .card-actions {
                margin-top: 20px;
                display: flex;
                justify-content: space-between;
            }

            .card-item .card-actions button {
                background: rgba(255,255,255,0.2);
                border: none;
                color: white;
                padding: 5px 10px;
                border-radius: 4px;
                cursor: pointer;
            }

            .card-item .card-actions button.delete {
                background: rgba(231, 76, 60, 0.8);
            }

            .default-badge {
                display: inline-block;
                background-color: white;
                color: var(--primary-color);
                padding: 3px 8px;
                border-radius: 3px;
                font-size: 12px;
                margin-left: 10px;
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
            <h2>Address</h2>
        </div>
        <div class="account-container">
            <!-- Sidebar Navigation -->
            <div class="account-sidebar">
                <h3>My Account</h3>
                <ul>
                    <li><a href="profile.jsp">Profile</a></li>
                    <li><a href="address.jsp">Address</a></li>
                    <li><a href="bank.jsp" class="active">Bank & Card</a></li>
                    <li><a href="#">History</a></li>
                </ul>
            </div>

            <!-- Card Content -->
            <div class="card-content">
                <div class="card-header">
                    <h2>Credit / Debit Card</h2>
                    <button class="add-card-btn">
                        <i class="fas fa-plus"></i> Add New Card
                    </button>
                </div>

                <!-- Empty State -->
                <div class="empty-state">
                    <i class="far fa-credit-card"></i>
                    <h3>You don't have cards yet.</h3>
                    <p>Add your credit or debit card to make payments easier.</p>
                </div>

                <!-- Card List (hidden when empty) -->
                <div class="card-list" style="display: none;">
                    <!-- Example Card (hidden by default) -->
                    <div class="card-item">
                        <div class="card-type">
                            <i class="fab fa-cc-visa"></i>
                        </div>
                        <div class="card-number">•••• •••• •••• 4242</div>
                        <div class="card-details">
                            <div>
                                <div class="card-label">Card Holder</div>
                                <div>John Doe</div>
                            </div>
                            <div>
                                <div class="card-label">Expires</div>
                                <div>12/25</div>
                            </div>
                        </div>
                        <div class="card-actions">
                            <button>Set as Default</button>
                            <button class="delete">Delete</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <footer>
            <%@include file="h&f/footer.jsp" %>
        </footer>
    </body>
</html>
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

            /* container */
            .container {
                display: flex;
                max-width: 1200px;
                margin: 20px auto;
                padding: 0 20px;
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
                margin: 0;
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

            /* Card Content */
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

            .add-card {
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

            .add-card:hover {
                transform: none;
                background: #fff;
                color: #4C60DF;
                border: #4C60DF 2px solid;
            }

            .add-card i {
                margin-right: 8px;
            }

            /* card styles */
            .list {
                display: grid;
                grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
                gap: 20px;
            }

            .card {
                border: 1px solid #ddd;
                border-radius: 10px;
                padding: 20px;
                position: relative;
                background: linear-gradient(135deg, #4C60DF, #3a4bb8);
                color: white;
                box-shadow: 0 4px 8px rgba(0,0,0,0.1);
            }

            .card.mastercard {
                background: linear-gradient(135deg, #f46b45, #eea849);
            }

            .card .type {
                position: absolute;
                right: 20px;
                top: 20px;
                font-size: 24px;
            }

            .card .number {
                font-size: 18px;
                letter-spacing: 1px;
                margin: 30px 0 15px;
                font-family: 'Courier New', monospace;
            }

            .card .details {
                display: flex;
                justify-content: space-between;
            }

            .card .label {
                font-size: 12px;
                opacity: 0.8;
                margin-bottom: 5px;
            }

            .card .actions {
                margin-top: 20px;
                display: flex;
                justify-content: space-between;
            }

            .card .actions button {
                background: rgba(255,255,255,0.2);
                border: none;
                color: white;
                padding: 8px 12px;
                border-radius: 4px;
                cursor: pointer;
                transition: all 0.3s;
            }

            .card .actions button:hover {
                background: rgba(255,255,255,0.3);
            }

            .card .actions button.delete {
                background: rgba(231, 76, 60, 0.8);
            }

            .card .actions button.delete:hover {
                background: rgba(231, 76, 60, 1);
            }

            .empty {
                text-align: center;
                padding: 50px 20px;
                color: #666;
            }

            .empty i {
                font-size: 48px;
                color: #ddd;
                margin-bottom: 20px;
            }

            .empty h3 {
                color: #444;
                margin-bottom: 10px;
            }

            .empty p {
                margin-bottom: 20px;
            }

        </style>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    </head>
    <body>
        <header>
<%@include file="../../h&f/navbar.jsp" %>
        </header>

        <!-- title -->
        <div class="title">
            <h2>Bank & Cards</h2>
        </div>
        <div class="container">
            <!-- sidebar -->
            <div class="sidebar">
                <h3>My Account</h3>
                <ul>
                    <li><a href="profile.jsp">Profile</a></li>
                    <li><a href="address.jsp">Address</a></li>
                    <li><a href="bank.jsp" class="active">Bank & Card</a></li>
                    <li><a href="history.jsp">History</a></li>
                </ul>
            </div>

            <!-- content -->
            <div class="content">
                <div class="header">
                    <h2>Credit / Debit Cards</h2>
                    <button class="add-card">
                        <i class="fas fa-plus"></i> Add New Card
                    </button>
                </div>

                <!-- card list sample -->
                <div class="list">
                    <!-- Visa Card -->
                    <div class="card">
                        <div class="type">
                            <i class="fab fa-cc-visa"></i>
                        </div>
                        <div class="number">•••• •••• •••• 4242</div>
                        <div class="details">
                            <div>
                                <div class="label">Card Holder</div>
                                <div>John Doe</div>
                            </div>
                            <div>
                                <div class="label">Expires</div>
                                <div>12/25</div>
                            </div>
                        </div>
                        <div class="actions">
                            <button class="delete">Delete</button>
                        </div>
                    </div>

                    <!-- Mastercard -->
                    <div class="card mastercard">
                        <div class="type">
                            <i class="fab fa-cc-mastercard"></i>
                        </div>
                        <div class="number">•••• •••• •••• 5555</div>
                        <div class="details">
                            <div>
                                <div class="label">Card Holder</div>
                                <div>John Doe</div>
                            </div>
                            <div>
                                <div class="label">Expires</div>
                                <div>09/24</div>
                            </div>
                        </div>
                        <div class="actions">
                            <button class="delete">Delete</button>
                        </div>
                    </div>
                </div>

                <!-- empty state sample -->
                <!--
                <div class="empty">
                    <i class="far fa-credit-card"></i>
                    <h3>You don't have cards yet.</h3>
                    <p>Add your credit or debit card to make payments easier.</p>
                </div>
                -->
            </div>
        </div>

        <footer>
<%@include file="../../h&f/footer.jsp" %>
        </footer>
    </body>
</html>
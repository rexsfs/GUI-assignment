<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Navbar</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
        <style>
            body {
                font-family: Arial, sans-serif;
                margin: 0;
                padding: 0;
                background-color: #f5f7ff;
            }

            .navbar {
                display: flex;
                align-items: center;
                justify-content: space-between;
                padding: 10px 20px;
                background: white;
                border-bottom: 1px solid #ddd;
                position: relative;
            }

            .in-navbar {
                display: flex;
                align-items: center;
                gap: 40px;
            }

            .navbar a {
                text-decoration: none;
                color: black;
                transition: all 0.2s ease;
                font-weight: normal;
            }

            .navbar a:hover,
            .in-navbar > a:not(.login_signup-btn),
            .logo-link {
                font-weight: bold;
            }

            .in-navbar a:hover {
                color: #4C60DF;
                transform: translateY(5px);
            }

            .logo {
                width: 50px;
            }

            .in-navbar .login_signup-btn {
                padding: 7px 12px;
                background: #4C60DF;
                color: #fff;
                border-radius: 8px;
                text-decoration: none;
                font-size: 14px;
                font-weight: bold;
            }

            .in-navbar .login_signup-btn:hover {
                transform: none;
                background: #fff;
                color: #4C60DF;
                border: #4C60DF 2px solid;
            }

            .icon-container {
                display: flex;
                align-items: center;
                gap: 40px;
            }

            /* icon style */
            .nav-icon {
                font-size: 22px;
                color: #4C60DF;
                cursor: pointer;
                transition: all 0.3s ease;
                width: 24px;
                height: 24px;
                display: flex;
                align-items: center;
                justify-content: center;
            }

            .nav-icon:hover {
                transform: scale(1.1);
            }

            /* profile dropdown */
            .user-dropdown {
                position: relative;
                display: inline-block;
            }

            .dropdown-content {
                display: none;
                position: absolute;
                right: 0;
                background-color: white;
                min-width: 160px;
                box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
                z-index: 1;
                border-radius: 8px;
                padding: 10px 0;
            }

            .dropdown-content a {
                color: black;
                padding: 12px 16px;
                text-decoration: none;
                display: block;
                font-weight: normal;
                font-size: 14px;
            }

            .dropdown-content a:hover {
                background-color: #f1f1f1;
                color: #4C60DF;
            }

            .user-dropdown:hover .dropdown-content {
                display: block;
            }

            /* Search styles */
            .search-container {
                display: flex;
                align-items: center;
                position: relative;
            }

            .search-input {
                width: 0;
                padding: 0;
                border: none;
                border-radius: 20px;
                background: #d9d9d9;
                outline: none;
                position: absolute;
                right: 40px;
                box-shadow: 0 2px 5px rgba(0,0,0,0.1);
                padding-left: 35px;
                padding-right: 30px;
                display: none;
                font-weight: bold;
            }

            .search-input.active {
                width: 350px;
                padding: 8px 35px;
                display: block
            }

            .search-icon {
                cursor: pointer;
                margin-left: 10px;
                color: #555;
                z-index: 1;
                position: relative;
            }

            .close-icon {
                position: absolute;
                right: 60px;
                cursor: pointer;
                color: #888;
                z-index: 2;
                display: none;
            }

            .close-icon.active {
                display: block;
            }

            /* Responsive styles */
            @media (max-width: 768px) {
                .user-dropdown, .cart-icon {
                    order: 2;
                    margin-top: 10px;
                }

                .dropdown-content {
                    right: auto;
                    left: 50%;
                    transform: translateX(-50%);
                }
            }
        </style>
    </head>
    <body>
        <div class="navbar">
            <a href="../index.jsp">
                <img src="${pageContext.request.contextPath}/pic/logo/logo.jpg" class="logo">
            </a>

            <div class="in-navbar">
                <a href="index.jsp">Home</a>
                <a href="${pageContext.request.contextPath}/page/shop.jsp">Shop</a>
                <a href="${pageContext.request.contextPath}/page/aboutus.jsp">About Us</a>
                <a href="${pageContext.request.contextPath}/page/contact.jsp">Contact</a>

                <div class="search-container">
                    <input type="text" class="search-input" placeholder="Search products...">
                    <i class="fa fa-search search-icon" id="searchIcon" onclick="toggleSearch()"></i>
                    <i class="fa fa-times close-icon" id="closeIcon" onclick="closeSearch()"></i>
                </div>

                <% if (session.getAttribute("user") != null) { %>
                <div class="icon-container">
                    <i class="fa-solid fa-cart-shopping nav-icon" onclick="location.href='cart.jsp'"></i>
                    <div class="user-dropdown">
                        <i class="fas fa-user-circle nav-icon"></i>
                        <div class="dropdown-content">
                            <a href="${pageContext.request.contextPath}/page/profile/profile.jsp">My Profile</a>
                            <a href="#">History</a>
                            <a href="?logout=true">Logout</a>
                        </div>
                    </div>
                </div>
                <% } else { %>
                <a href="${pageContext.request.contextPath}/page/login_signup/login.jsp" class="login_signup-btn">Login / Sign Up</a>
                <% } %>
            </div>
        </div>

        <%
            if (request.getParameter("logout") != null) {
                session.invalidate();
                response.sendRedirect("index.jsp");
                return;
            }
        %>


        <script>
            function toggleSearch() {
                const searchInput = document.querySelector('.search-input');
                const closeIcon = document.getElementById('closeIcon');

                searchInput.classList.toggle('active');
                closeIcon.classList.toggle('active');

                if (searchInput.classList.contains('active')) {
                    searchInput.focus();
                }
            }

            function closeSearch() {
                const searchInput = document.querySelector('.search-input');
                const closeIcon = document.getElementById('closeIcon');

                searchInput.classList.remove('active');
                closeIcon.classList.remove('active');
                searchInput.value = '';
            }

            document.addEventListener('click', function (e) {
                const searchContainer = document.querySelector('.search-container');
                const searchInput = document.querySelector('.search-input');
                const searchIcon = document.getElementById('searchIcon');
                const closeIcon = document.getElementById('closeIcon');

                if (!searchContainer.contains(e.target) && e.target !== searchIcon && e.target !== closeIcon) {
                    searchInput.classList.remove('active');
                    closeIcon.classList.remove('active');
                }
            });
        </script>
    </body>
</html>
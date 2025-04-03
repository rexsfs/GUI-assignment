<%--
    Document   : navbar
    Created on : 31 Mar 2025, 7:43:06 pm
    Author     : yjee0
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>navbar</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
    </head>
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

        /* search */
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

        @media (max-width: 1024px) {
            .in-navbar {
                gap: 25px;
            }

            .search-input.active {
                width: 250px;
            }
        }

        @media (max-width: 1024px) {
            .in-navbar {
                gap: 25px;
            }

            .search-input.active {
                width: 250px;
            }
        }

        @media (max-width: 768px) {
            .navbar {
                flex-direction: column;
                padding: 15px;
            }

            .in-navbar {
                width: 100%;
                justify-content: center;
                flex-wrap: wrap;
                gap: 15px;
                margin-top: 15px;
            }

            .search-container {
                order: 1;
                width: 100%;
                justify-content: center;
                margin: 10px 0;
            }

            .search-input.active {
                width: 80%;
                position: relative;
                right: auto;
            }

            .login_signup-btn-container {
                order: 2;
                width: 100%;
                text-align: center;
                margin-top: 10px;
            }

            .close-icon {
                right: 15%;
            }
        }

        @media (max-width: 480px) {
            .in-navbar {
                flex-direction: column;
                gap: 10px;
            }

            .search-input.active {
                width: 90%;
            }

            .in-navbar a {
                padding: 5px 0;
            }

            .close-icon {
                right: 10%;
            }
        }
    </style>

    <body>
        <div class="navbar">
            <a href="index.jsp">
                <img src="logo/logo.jpg" class="logo">
            </a>

            <div class="in-navbar">
                <a href="index.jsp">Home</a>
                <a href="shop.jsp">Shop</a>
                <a href="aboutus.jsp">About Us</a>
                <a href="contact.jsp">Contact</a>

                    <div class="search-container">
                        <input type="text" class="search-input" placeholder="Search products...">
                        <i class="fa fa-search search-icon" id="searchIcon" onclick="toggleSearch()"></i>
                        <i class="fa fa-times close-icon" id="closeIcon" onclick="closeSearch()"></i>
                    </div>

                    <a href="login.jsp" class="login_signup-btn">Sign Up / Login</a>
                </div>
        </div>

        <script>
                function toggleSearch() {
                    const searchInput = document.querySelector('.search-input');
                    const closeIcon = document.getElementById('closeIcon');

                    searchInput.classList.toggle('active');
                    closeIcon.classList.toggle('active');

                    if(searchInput.classList.contains('active')) {
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

                document.addEventListener('click', function(e) {
                    const searchContainer = document.querySelector('.search-container');
                    const searchInput = document.querySelector('.search-input');
                    const searchIcon = document.getElementById('searchIcon');
                    const closeIcon = document.getElementById('closeIcon');

                    if(!searchContainer.contains(e.target) && e.target !== searchIcon && e.target !== closeIcon) {
                        searchInput.classList.remove('active');
                        closeIcon.classList.remove('active');
                    }
                });
        </script>
    </body>
</html>

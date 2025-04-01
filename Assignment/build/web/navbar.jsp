<%-- 
    Document   : navbar
    Created on : 31 Mar 2025, 7:43:06 pm
    Author     : yjee0
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<style>
     body { 
            font-family: Arial, sans-serif; 
            margin: 0; 
            padding: 0; 
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
        }
        
        .logo { 
            width: 50px; 
        }
        
        .login_signup-btn { 
            padding: 7px 12px; 
            background: #4C60DF; 
            border-radius: 8px; 
            text-decoration: none;
            font-size: 14px;
        }

        .login_signup-btn:hover {
            color: white;
        }
        
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
            transition: all 0.3s ease;
            opacity: 0;
            position: absolute;
            right: 40px;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
            padding-left: 35px;
            padding-right: 30px; 
        }
        
        .search-input.active {
            width: 350px;
            padding: 8px 35px;
            opacity: 1;
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
            opacity: 0;
            transition: opacity 0.2s ease;
            z-index: 2;
        }
        
        .close-icon.active {
            opacity: 1;
        }
 </style>

<div class="navbar">
    <a href="index.jsp">
        <img src="logo/logo_1.png" class="logo">
    </a>
    
    <div class="in-navbar">
        <a href="index.jsp">Home</a>
        <a href="shop.jsp">Shop</a>
        <a href="aboutus.jsp">About Us</a>
        <a href="#">Contact</a>

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
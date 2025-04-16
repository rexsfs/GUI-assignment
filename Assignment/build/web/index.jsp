<%--
Document   : index
    Created on : 31 Mar 2025, 3:08:46 pm
    Author     : yjee0
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home Page</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
    <style>
        :root {
            --primary-color: #4C60DF;
            --second-color: #3a4bb5;
        }

        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f5f5f5;
        }

        /* Success message popup */
        .popup {
            position: fixed;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            background: white;
            color: #333;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 5px 15px rgba(0,0,0,0.2);
            text-align: center;
            max-width: 350px;
            width: 90%;
            opacity: 0;
            visibility: hidden;
            transition: all 0.3s ease;
            background-color: #f5f5f5;
        }

        .popup.show{
            opacity: 1;
            visibility: visible;
        }

        .success-icon {
            font-size: 50px;
            color: #4CAF50;
            margin-bottom: 20px;
        }

        .success-title {
            font-size: 24px;
            font-weight: bold;
            margin-bottom: 10px;
        }

        .close {
            width: 100%;
            padding: 12px;
            background-color: var(--primary-color);
            color: white;
            border: none;
            border-radius: 8px;
            font-size: 16px;
            font-weight: bold;
            cursor: pointer;
            margin-top: 20px;
            transition: background-color 0.3s;
        }

        .close:hover {
            transform: none;
            background: #fff;
            color: var(--primary-color);
            border: #4C60DF 2px solid;
        }

        .overlay {
            position: fixed;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background-color: rgba(0,0,0,0.5);
            opacity: 0;
            visibility: hidden;
            transition: all 0.3s ease;
        }

        .overlay.show{
            opacity: 1;
            visibility: visible;
        }


        .web_img {
            width: 100%;
            height: 600px;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        /* category */
        .category-section {
            max-width: 1200px;
            margin: 40px auto;
            padding: 0 20px;
            text-align: center;
        }

        .category-title {
            font-size: 24px;
            margin-bottom: 45px;
            color: #333;
        }

        .categories {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 20px;
        }

        .category-item {
            width: 300px;
            height: 300px;
            background: white;
            border-radius: 10px;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            box-shadow: 0 2px 8px rgba(0,0,0,0.1);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            cursor: pointer;
            padding: 5px 0px;
        }

        .category-item:hover {
            transform: translateY(-5px);
            box-shadow: 0 5px 15px rgba(0,0,0,0.1);
        }

        .category-item img {
            width: 250px;
            height: 250px;
            object-fit: cover;
            border-radius: 10px;
        }


        .category-name {
            margin-top: 5px;
            font-weight: 500;
        }
    </style>
</head>
<header>
    <%@include file="h&f/navbar.jsp" %>
</header>
    <body>
        <!-- success message popup -->
        <% if (session.getAttribute("loginSuccess") != null && session.getAttribute("loginSuccess").equals("true")) { %>
        <div class="overlay show" id="overlay"></div>
        <div class="popup show" id="popup">
            <div class="success-icon">
                <i class="fas fa-check-circle"></i>
            </div>
            <div class="success-title">Login Successful!</div>
            <button class="close" onclick="closePopup()">OK</button>
            <% session.removeAttribute("loginSuccess"); %>
        </div>
            <% } %>

        <% if (session.getAttribute("logoutSuccess") != null && session.getAttribute("logoutSuccess").equals("true")) { %>
        <div class="overlay show" id="overlay"></div>
        <div class="popup show" id="popup">
            <div class="success-icon">
                <i class="fas fa-check-circle"></i>
            </div>
            <div class="success-title">Logout Successful!</div>
            <button class="close" onclick="closePopup()">OK</button>
            <% session.removeAttribute("logoutSuccess"); %>
        </div>
            <% } %>

        <img src="pic/pic_homepage/web_image.jpg" class="web_img">

    <!--Categories-->
    <div class="category-section">
        <h2 class="category-title">Category</h2>

        <div class="categories">
            <div class="category-item">
                <img src="pic/pic_homepage/iem.jpg">
                <span class="category-name">IEM</span>
            </div>

            <div class="category-item">
                <img src="pic/pic_homepage/mouse.png">
                <span class="category-name">Mouse</span>
            </div>

            <div class="category-item">
                <img src="pic/pic_homepage/keyboard.png">
                <span class="category-name">Keyboard</span>
            </div>
        </div>
    </div>

    <script>
            <!-- pop up -->
           function closePopup() {
               const popup = document.getElementById('popup');
               const overlay = document.getElementById('overlay');

               if (popup && overlay) {
                   popup.classList.remove('show');
                   overlay.classList.remove('show');
               }
           }
    </script>
</body>
<footer>
    <%@include file="h&f/footer.jsp" %>
</footer>
</html>
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
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
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
</body>
<footer>
    <%@include file="h&f/footer.jsp" %>
</footer>
</html>
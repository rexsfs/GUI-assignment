<%--
    Document   : shop
    Created on : 1 Apr 2025, 3:19:32 pm
    Author     : yjee0
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ShopPage</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
        <style>
            body {
                font-family: Arial, sans-serif;
                margin: 0;
                padding: 0;
            }

            .title {
                width: 100%;
                height: 100px;
                background: #4C60DF;
                display: flex;
                flex-direction: column;
                align-items: center;
                justify-content: center;
                color: white;
            }

            .title h2 {
                margin: 0;
            }

            .title1 {
                font-size: 14px;
                margin-top: 5px;
            }

            .title1 a {
                color: white;
                text-decoration: none;
                margin: 0 5px;
            }

            .title1 a:hover {
                text-decoration: underline;
            }

            .product {
                width: 100%;
                display: flex;
                margin-bottom: 10px;
            }

            .filter {
                width: 30%;
                display: flex;
                flex-direction: column;
                align-items: center;
                justify-content: center;
            }

            .category {
                margin-top: 10px;
                border: #d9d9d9 1px solid;
                width: 50%;
                height: auto;
                border-radius: 0.5rem;
            }

            .category h3 {
                text-align: center;
            }

            .selection {
                padding: 0 0 15px 10px
            }

            input[type="checkbox"] {
                width: 1rem;
                height: 1rem;
                accent-color: #4C60DF;
            }

            .range {
                margin-top: 10px;
                border: #d9d9d9 1px solid;
                width: 50%;
                height: auto;
                border-radius: 0.5rem;
                display: flex;
                flex-direction: column;
                align-items: center;
                margin-bottom: 10px;
            }

            .range h3 {
                text-align: center;
            }

            .range form {
                display: flex;
                flex-direction: column;
                align-items: center;
            }

            .range-inputs {
                display: flex;
                align-items: center;
                gap: 5px;
            }

            input[type="number"] {
                width: 5rem;
                height: 1.5rem;
                text-align: center;
                border-radius: 0.3rem;
            }

            input[type="submit"] {
                margin-top: 10px;
                width: 5rem;
                height: 1.5rem;
                background-color: #4C60DF;
                color: white;
                border: none;
                border-radius: 0.3rem;
                cursor: pointer;
                margin-bottom: 10px;

            }

            .apply:hover{
                background: #fff;
                color: #4C60DF;
                border: #4C60DF 2px solid;
            }
        </style>
    </style>
    </head>
    <body>
        <%@include file="navbar.jsp" %>

        <div class="title">
            <h2>SHOP</h2>
            <div class="title1">
                <a href="home.jsp">Home</a> /
                <a href="shop.jsp">Shop</a>
            </div>
        </div

        <div class="product">
            <div class="filter">
                <div class="category">
                    <h3>Product Category</h3>
                    <div class="selection">
                        <input type="checkbox" id="iem">
                        <label> IEM</label><br>
                        <input type="checkbox" id="mouse">
                        <label> Mouse</label><br>
                        <input type="checkbox" id="keyboard">
                        <label> Keyboard</label><br>
                    </div>
                </div>
                <div class="range">
                    <h3>Price Range</h3>
                    <form>
                        <div class="range-inputs">
                            <input type="number" id="minPrice" name="minPrice" min="0" placeholder="Min">
                            <span>-</span>
                            <input type="number" id="maxPrice" name="maxPrice" min="0" placeholder="Max">
                        </div>
                        <input type="submit" value="Apply" class="apply">
                    </form>
                </div>
            </div>
        </div>
    </body>
    <footer>
        <%@include file="footer.jsp" %>
    </footer>
</html>

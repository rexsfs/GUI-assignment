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
        </div>
    </body>
</html>

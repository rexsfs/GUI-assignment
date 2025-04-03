<%--
    Document   : contact
    Created on : 2 Apr 2025, 8:58:19 am
    Author     : yjee0
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Contact Page</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
    </head>
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
    </style>
    <header>
        <%@include file="h&f/navbar.jsp" %>
    </header>
    <body>
        <div class="title">
            <h2>Contact</h2>
            <div class="title1">
                <a href="index.jsp">Home</a> /
                <a href="contact.jsp">Contact</a>
            </div>
        </div>
    </body>
    <footer>
        <%@include file="h&f/footer.jsp" %>
    </footer>
</html>

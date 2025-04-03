<%--
    Document   : aboutus
    Created on : 1 Apr 2025, 4:19:48 pm
    Author     : yjee0
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>About Us</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
        <link rel="stylesheet" href="https://cdn.alsgp0.fds.api.mi-img.com/xiaomi-b2c-i18n-upload/i18n/micon/iconfont.css" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    </head>
    <style>
        :root {
            --primary-color: #4C60DF;
            --secondary-color: #6c757d;
            --light-color: #f8f9fa;
            --dark-color: #343a40;
        }

        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            line-height: 1.6;
            color: var(--dark-color);
            background-color: #f5f7ff;
        }

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

        .title1 {
            font-size: 1rem;
            margin-top: 15px;
            display: flex;
            gap: 10px;
            align-items: center;
        }

        .title1 a {
            color: rgba(255,255,255,0.9);
            text-decoration: none;
            transition: all 0.3s ease;
        }

        .title1 a:hover {
            color: white;
            text-decoration: underline;
        }

        .title1 .divider {
            color: rgba(255,255,255,0.6);
        }

        /* container */
        .container {
            max-width: 1000px;
            margin: 50px auto;
            padding: 0 30px;
        }

        .about {
            background: white;
            border-radius: 10px;
            padding: 40px;
            margin-bottom: 40px;
            box-shadow: 0 5px 15px rgba(0,0,0,0.05);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .about:hover {
            transform: translateY(-5px);
            box-shadow: 0 8px 25px rgba(0,0,0,0.1);
        }

        .about h2 {
            color: var(--primary-color);
            font-size: 1.8rem;
            margin-top: 0;
            margin-bottom: 20px;
            position: relative;
            padding-bottom: 10px;
        }

        .about h2:after {
            content: '';
            position: absolute;
            left: 0;
            bottom: 0;
            width: 50px;
            height: 3px;
            background: var(--primary-color);
        }

        .divider {
            height: 1px;
            background: linear-gradient(to right, transparent, rgba(0,0,0,0.1), transparent);
            margin: 40px 0;
        }

        /* mission vission */
        .mv {
            font-style: italic;
            font-size: 1.1rem;
            line-height: 1.8;
            color: var(--dark-color);
            padding: 20px;
            background: rgba(76, 96, 223, 0.05);
            border-left: 4px solid var(--primary-color);
            border-radius: 0 5px 5px 0;
        }

        /* founder */
        .founders {
            text-align: center;
            margin-top: 40px;
        }

        .grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(250px, 1fr));
            gap: 30px;
            margin-top: 30px;
        }

        .card {
            background: white;
            border-radius: 10px;
            padding: 25px;
            box-shadow: 0 5px 15px rgba(0,0,0,0.05);
            transition: all 0.3s ease;
        }

        .card:hover {
            transform: translateY(-5px);
            box-shadow: 0 8px 25px rgba(0,0,0,0.1);
        }

        .avatar {
            width: 150px;
            height: 150px;
            margin: 0 auto 20px;
            border-radius: 50%;
            overflow: hidden;
            border: 3px solid var(--primary-color);
            box-shadow: 0 3px 10px rgba(76, 96, 223, 0.2);
        }

        .avatar img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }

        .card h3 {
            margin: 10px 0 5px;
            color: var(--dark-color);
            font-size: 1.2rem;
        }

        .card p {
            color: var(--secondary-color);
            margin: 0;
            font-size: 0.9rem;
        }

        @media (max-width: 768px) {
            .title h2 {
                font-size: 1.8rem;
            }

            .about-container {
                padding: 0 20px;
            }

            .about-section {
                padding: 30px 20px;
            }

            .partners-grid {
                grid-template-columns: 1fr;
            }
        }

    </style>
    <header>
        <%@include file="navbar.jsp" %>
    </header>
    <body>
        <div class="title">
            <h2>About Us</h2>
            <div class="title1">
                <a href="index.jsp">Home</a> /
                <a href="aboutus.jsp">About Us</a>
            </div>
        </div>

        <div class="container">
            <div class="about">
                <h2>Our Mission</h2>
                <p class="mv">"To provide the latest tech gadgets and accessories that enhance digital lifestyles, offering premium quality at accessible prices."</p>
            </div>

            <div class="divider"></div>

            <div class="about">
                <h2>Our Vision</h2>
                <p class="mv">"Construct a community of like-minded tech enthusiasts while enriching everyone's digital journey."</p>
            </div>

            <div class="divider"></div>

            <div class="about">
                <h2>Our Story</h2>
                <p class="mv">"Founded by six friends united by a shared passion for technology.
                    With an unwavering focus on quality and the passion to make advanced tech more accessible."</p>

                <div class="founders">
                    <p>Meet the team behind Giant Rex Tech Store's success:</p>
                    <div class="grid">
                        <div class="card">
                            <div class="avatar">
                                <img src="pic_about/nzo.jpg" alt="Founder 1">
                            </div>
                            <h3>Ng Zhun Onn</h3>
                            <p>Co-Founder & CEO</p>
                        </div>
                        <div class="card">
                            <div class="avatar">
                                <img src="pic_about/jeremy.png" alt="Founder 2">
                            </div>
                            <h3>Jeremy Lim Jia Xuan</h3>
                            <p>Co-Founder & CTO</p>
                        </div>
                        <div class="card">
                            <div class="avatar">
                                <img src="pic_about/kyan.jpg" alt="Founder 3">
                            </div>
                            <h3>Lee Guan Heng</h3>
                            <p>Co-Founder & COO</p>
                        </div>
                        <div class="card">
                            <div class="avatar">
                                <img src="pic_about/nene.png" alt="Founder 4">
                            </div>
                            <h3>Yap Sheng Jing</h3>
                            <p>Co-Founder & CFO</p>
                        </div>
                        <div class="card">
                            <div class="avatar">
                                <img src="pic_about/yjj.png" alt="Founder 5">
                            </div>
                            <h3>Yeong Jia Jun</h3>
                            <p>Co-Founder & CMO</p>
                        </div>
                        <div class="card">
                            <div class="avatar">
                                <img src="pic_about/rex.jpg" alt="Founder 6">
                            </div>
                            <h3>Lee Jee Yang</h3>
                            <p>Co-Founder & CPO</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </body>
    <footer>
        <%@include file="footer.jsp" %>
    </footer>
</html>
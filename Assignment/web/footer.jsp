<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>footer</title>
    </head>
    <style>
        body footer{
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }

        .footer {
            width: 100%;
            height: auto;
            background-color: #323232;
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        .footer_content {
            width: 80%;
            display: flex;
            flex-wrap: wrap;
        }

        .column {
            width: 25%;
            color: white;
            padding: 20px;
            box-sizing: border-box;
        }

        .logo_name {
            display: flex;
            align-items: center;
            gap: 10px;
            margin-bottom: 10px;
        }

        .logo {
            height: 60px;
            width: auto;
        }

        .column h3 {
            color: white;
            margin-bottom: 15px;
        }

        .column p {
            color: #ccc;
            margin: 5px 0;
            font-size: 14px;
        }

        .column a {
            text-decoration: none;
        }

        .column a:hover p {
            color: #4C60DF;
            transform: translateX(5px);
            transition: all 0.2s ease;
        }

        .tag {
            width: 100%;
            padding: 10px 0;
        }

        .tag p{
            text-align: center;
            font-size: 10px;
            color: #999;
            margin: 0;
        }

        @media (max-width: 768px) {
            .column {
                width: 50%;
            }
        }

        @media (max-width: 480px) {
            .column {
                width: 100%;
            }
        }
    </style>
    <body>
        <div class="footer">
            <div class="footer_content">
                <div class="column">
                    <div class="logo_name">
                        <img src="logo/logo_2.jpg" class="logo">
                        <h2>Giant Rex Tech Store</h2>
                    </div>
                </div>

                <div class="column">
                    <h3>Shop</h3>
                    <a href="#"><p>IEM</p></a>
                    <a href="#"><p>Mouse</p></a>
                    <a href="#"><p>Keyboard</p></a>
                </div>

                <div class="column">
                    <h3>Quick Links</h3>
                    <a href="#"><p>Home</p></a>
                    <a href="#"><p>Shop</p></a>
                    <a href="#"><p>About</p></a>
                    <a href="#"><p>Contact</p></a>
                </div>

                <div class="column">
                    <h3>Contact</h3>
                    <p>Address: Jalan Genting Kelang, Setapak, 53300 Kuala Lumpur</p>
                    <p>Email: jxlim-wm23@student.tarc.edu.my</p>
                    <p>Phone: +60 122511060</p>
                    <p>Phone: +60 194001257</p>
                </div>
            </div>
            <div class="tag">
                <p>&copy; 2025 - <%= java.time.Year.now().getValue()%> Ng Zhun Onn - All Rights Reserved.</p>
            </div>
        </div>
    </body>
</html>
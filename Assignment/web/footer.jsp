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
            height: 200px;
            background-color: #323232;
            display: flex;
            justify-content: center;
        }
        
        .footer-content {
            width: 100%;
            max-width: 1200px;
            display: flex;
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
            
        .address {
           text-align: left;
           margin-top: 15px;
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
    </style>
    <body>
        <div class="footer">
            <div class="footer-content">
                <!-- Column 1 - Logo and Address -->
                <div class="column">
                    <div class="logo_name">
                        <img src="logo/logo_2.jpg" class="logo">
                        <h2>Tech Rex</h2>
                    </div>
                    <div class="address">
                        <p>Jalan Genting Kelang,<br> Setapak, 53300 Kuala Lumpur</p>
                    </div>
                </div>
                
                <!-- Column 2 - Quick Links -->
                <div class="column">
                    <h3>Quick Links</h3>
                    <p>Home</p>
                    <p>Products</p>
                    <p>Services</p>
                    <p>About Us</p>
                </div>
                
                <!-- Column 3 - Support -->
                <div class="column">
                    <h3>Support</h3>
                    <p>Contact Us</p>
                    <p>FAQs</p>
                    <p>Shipping Info</p>
                    <p>Returns</p>
                </div>
                
                <!-- Column 4 - Newsletter -->
                <div class="column">
                    <h3>Newsletter</h3>
                    <p>Subscribe to our newsletter for the latest updates and offers.</p>
                    <input type="email" placeholder="Your email" style="padding: 5px; width: 100%; margin-top: 10px;">
                    <button style="margin-top: 10px; padding: 5px 10px; background: #555; color: white; border: none;">Subscribe</button>
                </div>
            </div>
        </div>
        
        <footer>
            <div class="tag">
                <p>© Copyright 2025 Tech Rex - All Rights Reserved - Powered by Ng Zhun Onn Theme.</p>
            </div>
        </footer>
    </body>
</html>
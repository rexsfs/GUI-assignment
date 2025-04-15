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
        <style>
            :root {
                --primary-color: #4C60DF;
                --secondary-color: #6c757d;
                --light-color: #f8f9fa;
                --dark-color: #343a40;
            }

            body {
                font-family: Arial, sans-serif;
                margin: 0;
                padding: 0;
                background-color: #f5f7ff;
            }

            /* title */
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

            /* form */
            .container {
                max-width: 1200px;
                margin: 40px auto;
                padding: 0 20px;
                display: grid;
                grid-template-columns: 1fr 1fr;
                gap: 40px;
            }

            .form {
                background: white;
                padding: 30px 30px 30px 10px;
                border-radius: 8px;
                box-shadow: 0 2px 10px rgba(0,0,0,0.1);
            }

            .form h3 {
                color: var(--primary-color);
                margin-top: 0;
                margin-bottom: 20px;
                font-size: 1.5rem;
            }

            .text {
                margin-bottom: 20px;
            }

            .text label {
                display: block;
                margin-bottom: 8px;
                font-weight: bold;
            }

            .text input,
            .text textarea {
                width: 100%;
                padding: 10px;
                border: 1px solid #ddd;
                border-radius: 4px;
                font-size: 1rem;
            }

            .text textarea {
                height: 120px;
                resize: vertical;
            }

            .send {
                background: var(--primary-color);
                color: white;
                border: none;
                padding: 12px 20px;
                border-radius: 4px;
                cursor: pointer;
                font-size: 1rem;
                transition: background 0.3s;
            }

            .send:hover {
                background: #3a4bb8;
            }

            /* map */
            .map {
                height: 100%;
                border-radius: 8px;
                overflow: hidden;
                box-shadow: 0 2px 10px rgba(0,0,0,0.1);
            }

            .map iframe {
                width: 100%;
                height: 100%;
                min-height: 400px;
                border: none;
            }

            .info {
                max-width: 1200px;
                margin: 40px auto;
                padding: 0 20px;
                display: grid;
                grid-template-columns: repeat(4, 1fr);
                gap: 20px;
            }

            .card {
                background: white;
                padding: 25px;
                border-radius: 8px;
                box-shadow: 0 2px 10px rgba(0,0,0,0.1);
                text-align: center;
                display: flex;
                flex-direction: column;
                align-items: center;
            }

            .card i {
                color: var(--primary-color);
                font-size: 1.8rem;
                margin-bottom: 15px;
            }

            .card h4 {
                margin: 0 0 15px 0;
                color: var(--dark-color);
                font-size: 1.2rem;
            }

            .card p {
                margin: 0;
                color: var(--secondary-color);
                line-height: 1.6;
                font-size: 0.95rem;
            }

            /* @media */
            @media (max-width: 992px) {
                .info {
                    grid-template-columns: repeat(2, 1fr);
                }

                .card {
                    padding: 20px;
                }
            }

            @media (max-width: 768px) {
                .contact-container {
                    grid-template-columns: 1fr;
                }

                .info {
                    grid-template-columns: 1fr;
                }

                .map iframe {
                    min-height: 300px;
                }

                .card {
                    padding: 25px;
                }
            }
        </style>
    </head>
    <header>
        <%@include file="../h&f/navbar.jsp" %>
    </header>
    <body>
        <!-- title -->
        <div class="title">
            <h2>Contact</h2>
        </div>

        <!-- form -->
        <div class="container">
            <div class="form">
                <h3>Contact Form</h3>
                <form action="#" method="POST">
                    <div class="text">
                        <label for="name">Name</label>
                        <input type="text" id="name" name="name" required>
                    </div>
                    <div class="text">
                        <label for="email">Email</label>
                        <input type="email" id="email" name="email" required>
                    </div>
                    <div class="text">
                        <label for="subject">Subject</label>
                        <input type="text" id="subject" name="subject" required>
                    </div>
                    <div class="text">
                        <label for="message">Message</label>
                        <textarea id="message" name="message" required></textarea>
                    </div>
                    <button type="submit" class="send">Send Message</button>
                </form>
            </div>


            <!--Maps-->
            <div class="map">
                <iframe
                    src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3983.8000000000006!2d101.7239822!3d3.2152552!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31cc3843bfb6a031%3A0x2dc5e067aae3ab84!2sTunku%20Abdul%20Rahman%20University%20of%20Management%20and%20Technology!5e0!3m2!1sen!2smy!4v1710000000000!5m2!1sen!2smy">
                </iframe>
            </div>
        </div>

        <!--Info-->
        <div class="info">
            <div class="card">
                <i class="fas fa-map-marker-alt"></i>
                <h4>Address</h4>
                <p>Ground Floor, Bangunan Tan Sri Khaw Kai Boh (Block A),<br>Jalan Genting Kelang, Setapak
                    <br>53300 Kuala Lumpur,<br>Federal Territory of Kuala Lumpur</p>
            </div>
            <div class="card">
                <i class="fas fa-phone"></i>
                <h4>Phone</h4>
                <p>+60 122511060<br>+60 194001257</p>
            </div>
            <div class="card">
                <i class="fas fa-envelope"></i>
                <h4>Email</h4>
                <p>jxlim-wm23@student.tarc.edu.my<br>giantRexTechStore@gmail.com</p>
            </div>
            <div class="card">
                <i class="fas fa-clock"></i>
                <h4>Business Hours</h4>
                <p>Mon-Fri: 10:00 AM - 10:00 PM<br>Sat: 10:00 AM - 6:00 PM<br>Sun: Closed</p>
            </div>
        </div>
    </body>
    <footer>
        <%@include file="../h&f/footer.jsp" %>
    </footer>
</html>
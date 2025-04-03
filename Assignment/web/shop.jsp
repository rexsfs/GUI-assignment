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

            /* Updated rating filter styles */
            .rating-filter {
                margin-top: 10px;
                border: #d9d9d9 1px solid;
                width: 50%;
                height: auto;
                border-radius: 0.5rem;
                display: flex;
                flex-direction: column;
                align-items: center;
                margin-bottom: 10px;
                padding: 10px 0;
            }

            .rating-filter h3 {
                text-align: center;
                margin-bottom: 10px;
            }

            .star-rating {
                display: flex;
                justify-content: center;
                gap: 5px;
            }

            .star-rating .star {
                font-size: 24px;
                color: #ddd;
                cursor: pointer;
                transition: color 0.2s;
            }

            .star-rating .star.selected {
                color: #FFD700;
            }

            .star-rating .star.hovered {
                color: #FFD700;
            }

            .rating-text {
                margin-top: 5px;
                font-size: 14px;
                color: #555;
            }

            .hidden-input {
                display: none;
            }
        </style>
    </head>
    <header>
        <%@include file="navbar.jsp" %>
    </header>
    <body>

        <div class="title">
            <h2>SHOP</h2>
            <div class="title1">
                <a href="home.jsp">Home</a> /
                <a href="shop.jsp">Shop</a>
            </div>
        </div>

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

                <div class="rating-filter">
                    <h3>Rating</h3>
                    <form id="ratingForm">
                        <div class="star-rating" id="starContainer">
                            <i class="fa-regular fa-star star" data-value="1"></i>
                            <i class="fa-regular fa-star star" data-value="2"></i>
                            <i class="fa-regular fa-star star" data-value="3"></i>
                            <i class="fa-regular fa-star star" data-value="4"></i>
                            <i class="fa-regular fa-star star" data-value="5"></i>
                        </div>
                        <input type="hidden" id="selectedRating" name="selectedRating" value="0" class="hidden-input">
                        <div class="rating-text">Click stars to select minimum rating</div>
                        <input type="submit" value="Apply" class="apply" style="margin-top: 10px;">
                    </form>
                </div>
            </div>
        </div>

        <script>
            document.addEventListener('DOMContentLoaded', function () {
                const stars = document.querySelectorAll('.star');
                const selectedRatingInput = document.getElementById('selectedRating');
                let currentRating = 0;
                let selectedRating = 0;

                // Handle star click
                stars.forEach(star => {
                    star.addEventListener('click', function () {
                        const value = parseInt(this.getAttribute('data-value'));
                        selectedRating = value;
                        currentRating = value;
                        selectedRatingInput.value = value;
                        updateStars();
                    });
                });

                // Handle star hover
                stars.forEach(star => {
                    star.addEventListener('mouseover', function () {
                        const value = parseInt(this.getAttribute('data-value'));
                        currentRating = value;
                        updateStars();
                    });

                    star.addEventListener('mouseout', function () {
                        currentRating = selectedRating;
                        updateStars();
                    });
                });

                // Update star display
                function updateStars() {
                    stars.forEach(star => {
                        const value = parseInt(star.getAttribute('data-value'));
                        if (value <= currentRating) {
                            star.classList.add('hovered');
                            star.classList.remove('fa-regular');
                            star.classList.add('fa-solid');
                        } else {
                            star.classList.remove('hovered');
                            star.classList.remove('fa-solid');
                            star.classList.add('fa-regular');
                        }
                    });

                    // For selected stars (persistent)
                    stars.forEach(star => {
                        const value = parseInt(star.getAttribute('data-value'));
                        if (value <= selectedRating) {
                            star.classList.add('selected');
                        } else {
                            star.classList.remove('selected');
                        }
                    });
                }

                // Handle form submission
                document.getElementById('ratingForm').addEventListener('submit', function (e) {
                    e.preventDefault();
                    const rating = selectedRatingInput.value;
                    // Here you would typically send this to your server
                    console.log('Filtering by rating: ' + rating + ' stars or higher');
                    alert('Filtering by rating: ' + rating + ' stars or higher');
                    // In a real application, you would submit the form or make an AJAX call
                    // to filter the products based on the selected rating
                });
            });
        </script>
    </body>
    <footer>
        <%@include file="footer.jsp" %>
    </footer>
</html>
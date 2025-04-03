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

            .title {
                width: 100%;
                height: 100px;
                background: var(--primary-color);
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

            <%-- filter --%>
            .container {
                display: flex;
                padding: 20px;
                max-width: 1400px;
                margin: 0 auto;
                gap: 20px;
            }

            .section {
                width: 250px;
                padding: 15px;
                background: white;
                border-radius: 8px;
                box-shadow: 0 2px 10px rgba(0,0,0,0.05);
                height: fit-content;
                position: sticky;
                top: 20px;
                flex-shrink: 0;
            }

            .section h3 {
                margin-top: 0;
                color: var(--primary-color);
                border-bottom: 1px solid #eee;
                padding-bottom: 10px;
            }

            .filter {
                margin-bottom: 20px;
            }

            .option {
                margin: 8px 0;
                display: flex;
                align-items: center;
            }

            input[type="checkbox"] {
                width: 1rem;
                height: 1rem;
                accent-color: var(--primary-color);
                margin-right: 8px;
            }

            .range {
                display: flex;
                gap: 10px;
                align-items: center;
            }

            .range input {
                width: 80px;
                padding: 5px;
                border: 1px solid #ddd;
                border-radius: 4px;
            }

            .apply {
                background: var(--primary-color);
                color: white;
                border: none;
                padding: 8px 15px;
                border-radius: 4px;
                cursor: pointer;
                margin-top: 10px;
                transition: all 0.3s;
            }

            .apply:hover {
                background: #3a4bb8;
            }

            .star-rating {
                display: flex;
                gap: 5px;
                margin-top: -10px;
            }

            .star {
                font-size: 18px;
                color: #ddd;
                cursor: pointer;
                transition: color 0.2s;
            }

            .star.selected, .star.hovered {
                color: #FFD700;
            }

            .p-rating {
                font-size: 12px;
                color: #666;
                margin-top: 10px;
            }

            <%-- Products --%>
            .products-section {
                flex: 1;
            }

            .products-grid {
                display: grid;
                grid-template-columns: repeat(3, 1fr);
                gap: 20px;
            }

            .card {
                background: white;
                border-radius: 8px;
                padding: 15px;
                box-shadow: 0 2px 10px rgba(0,0,0,0.05);
                transition: transform 0.3s, box-shadow 0.3s;
            }

            .card:hover {
                transform: translateY(-5px);
                box-shadow: 0 5px 15px rgba(0,0,0,0.1);
            }

            .image {
                width: 100%;
                height: 300px;
                background: #f5f5f5;
                border-radius: 6px;
                margin-bottom: 15px;
                display: flex;
                align-items: center;
                justify-content: center;
                color: #999;
                overflow: hidden;
            }

            .image img {
                width: 100%;
                height: 100%;
                object-fit: contain;
                background: white;
            }

            .name {
                font-weight: bold;
                margin-bottom: 5px;
            }

            .price {
                color: var(--primary-color);
                font-weight: bold;
                margin-bottom: 10px;
            }

            .product-rating {
                color: #FFD700;
                margin-bottom: 15px;
            }

            .add-to-cart {
                width: 100%;
                padding: 8px;
                background: var(--primary-color);
                color: white;
                border: none;
                border-radius: 4px;
                cursor: pointer;
                transition: background 0.3s;
            }

            .add-to-cart:hover {
                background: #3a4bb8;
            }

            @media (max-width: 1200px) {
                .products-grid {
                    grid-template-columns: repeat(2, 1fr);
                }
            }

            @media (max-width: 768px) {
                .container {
                    flex-direction: column;
                }

                .section {
                    width: 100%;
                    position: static;
                    margin-bottom: 20px;
                }

                .products-grid {
                    grid-template-columns: 1fr;
                }
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
                <a href="index.jsp">Home</a> /
                <a href="shop.jsp">Shop</a>
            </div>
        </div>

        <div class="container">
            <div class="section">
                <div class="filter">
                    <h3>Product Category</h3>
                    <div class="option">
                        <input type="checkbox" id="iem">
                        <label for="iem">IEM</label>
                    </div>
                    <div class="option">
                        <input type="checkbox" id="mouse">
                        <label for="mouse">Mouse</label>
                    </div>
                    <div class="option">
                        <input type="checkbox" id="keyboard">
                        <label for="keyboard">Keyboard</label>
                    </div>
                </div>

                <div class="filter">
                    <h3>Price Range</h3>
                    <div class="range">
                        <input type="number" id="minPrice" placeholder="Min" min="0">
                        <span>to</span>
                        <input type="number" id="maxPrice" placeholder="Max" min="0">
                    </div>
                    <button class="apply">Apply</button>
                </div>

                <div class="filter">
                    <h3>Rating</h3>
                    <div class="star-rating" id="starContainer">
                        <i class="fa-regular fa-star star" data-value="1"></i>
                        <i class="fa-regular fa-star star" data-value="2"></i>
                        <i class="fa-regular fa-star star" data-value="3"></i>
                        <i class="fa-regular fa-star star" data-value="4"></i>
                        <i class="fa-regular fa-star star" data-value="5"></i>
                    </div>
                    <div class="p-rating">Click stars to filter</div>
                    <input type="hidden" id="selectedRating" value="0">
                    <button class="apply" style="margin-top: 10px;">Apply Rating</button>
                </div>
            </div>

            <div class="products-section">
                <div class="products-grid">
                    <div class="card">
                        <div class="image">
                            <img src="pic_products/iem/Aful Explorer 3.png">
                        </div>
                        <div class="name">Aful Explorer 1</div>
                        <div class="price">RM 199.00</div>
                        <div class="product-rating">
                            <i class="fa-regular fa-star"></i>
                            <i class="fa-regular fa-star"></i>
                            <i class="fa-regular fa-star"></i>
                            <i class="fa-regular fa-star"></i>
                            <i class="fa-regular fa-star"></i>
                        </div>
                        <button class="add-to-cart">Add to Cart</button>
                    </div>

                    <div class="card">
                        <div class="image">
                            <img src="pic_products/mouse/G pro hero 4.png">
                        </div>
                        <div class="name">Mouse</div>
                        <div class="price">RM 299.00</div>
                        <div class="product-rating">
                            <i class="fa-regular fa-star"></i>
                            <i class="fa-regular fa-star"></i>
                            <i class="fa-regular fa-star"></i>
                            <i class="fa-regular fa-star"></i>
                            <i class="fa-regular fa-star"></i>
                        </div>
                        <button class="add-to-cart">Add to Cart</button>
                    </div>

                    <div class="card">
                        <div class="image">
                            <img src="">
                        </div>
                        <div class="name">Keyboard</div>
                        <div class="price">RM 159.00</div>
                        <div class="product-rating">
                            <i class="fa-regular fa-star"></i>
                            <i class="fa-regular fa-star"></i>
                            <i class="fa-regular fa-star"></i>
                            <i class="fa-regular fa-star"></i>
                            <i class="fa-regular fa-star"></i>
                        </div>
                        <button class="add-to-cart">Add to Cart</button>
                    </div>
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
            });
        </script>
    </body>
    <footer>
        <%@include file="footer.jsp" %>
    </footer>
</html>
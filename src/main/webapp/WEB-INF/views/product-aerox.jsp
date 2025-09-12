
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="demorkmjava.dto.CartItemDto" %>
<%@ page import="demorkmjava.model.Cart" %>
<%@ page import="demorkmjava.model.Product" %>








    <!doctype html>
    <html class="no-js" lang="zxx">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Oswan - eCommerce HTML5 Template</title>
        <meta name="description" content="Live Preview Of Oswan eCommerce HTML5 Template">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- Favicon -->
        <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.png">

        <!-- all css here -->
        <link rel="stylesheet" href="assets/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/css/animate.css">
        <link rel="stylesheet" href="assets/css/owl.carousel.min.css">
        <link rel="stylesheet" href="assets/css/chosen.min.css">
        <link rel="stylesheet" href="assets/css/easyzoom.css">
        <link rel="stylesheet" href="assets/css/meanmenu.min.css">
        <link rel="stylesheet" href="assets/css/themify-icons.css">
        <link rel="stylesheet" href="assets/css/icofont.css">
        <link rel="stylesheet" href="assets/css/font-awesome.min.css">
        <link rel="stylesheet" href="assets/css/bundle.css">
        <link rel="stylesheet" href="assets/css/style.css">
        <link rel="stylesheet" href="assets/css/responsive.css">
        <script src="assets/js/vendor/modernizr-2.8.3.min.js"></script>
    </head>

    <body>
        <jsp:include page="header-w.jsp" />

        <div class="wrapper">

            <div class="breadcrumb-area pt-255 pb-170" style="background-image: url(assets/img/banner/banner-4.jpg)">
                <div class="container-fluid">
                    <div class="breadcrumb-content text-center">
                        <h2>Yamaha Aerox</h2>
                        <ul>
                            <li>
                                <a href="${pageContext.request.contextPath}/home">home</a>
                            </li>
                            <li>Yamaha Aerox </li>
                        </ul>
                    </div>
                </div>
            </div>

            <div class="product-details-area fluid-padding-3 ptb-130">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="product-details-img-content">
                                <div class="product-details-tab mr-40">
                                    <div class="product-details-large tab-content">
                                        <div class="tab-pane active" id="pro-details1">
                                            <div class="easyzoom easyzoom--overlay">
                                                <a href="assets/img/product-details/aerox-bl1.png">
                                                    <img src="assets/img/product-details/aerox-l1.png" alt="">
                                                </a>
                                            </div>
                                        </div>
                                        <div class="tab-pane" id="pro-details2">
                                            <div class="easyzoom easyzoom--overlay">
                                                <a href="assets/img/product-details/aerox-bl2.png">
                                                    <img src="assets/img/product-details/aerox-l2.png" alt="">
                                                </a>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="product-details-small nav mt-12 product-dec-slider owl-carousel">
                                        <a class="active product-link" data-product-id="1" href="#pro-details1">
                                            <img src="assets/img/product-details/aerox-s1.png" alt="product 1">
                                        </a>
                                        <a href="#pro-details2" data-product-id="2" class="product-link">
                                            <img src="assets/img/product-details/aerox-s2.png" alt="product 2">
                                        </a>
                                        <a href="#pro-details3" style="visibility: hidden;">
                                            <img src="assets/img/product-details/fzx.jpg" alt="">
                                        </a>
                                        <a href="#pro-details4" style="visibility: hidden;">
                                            <img src="assets/img/product-details/fzx.jpg" alt="">
                                        </a>

                                        <!--<a href="#pro-details5">
                                        <img src="assets/img/product-details/s3.jpg" alt="">
                                        </a>-->

                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="product-details-content">

                                <h2 id="product-name">
                                    ${product1.name}
                                </h2>

                                <div class="quick-view-rating">
                                    <i class="fa fa-star reting-color"></i>
                                    <i class="fa fa-star reting-color"></i>
                                    <i class="fa fa-star reting-color"></i>
                                    <i class="fa fa-star reting-color"></i>
                                    <i class="fa fa-star reting-color"></i>
                                    <span> ( 01 Customer Review )</span>
                                </div>
                                <div class="product-price">
                                    <span><span id="product-price">
                                            ${product1.price}
                                        </span> Lakhs</span>
                                </div>
                                <div class="product-overview">
                                    <h5 class="pd-sub-title">Product Overview</h5>
                                    <p>The Yamaha Aerox <span id="product-description">
                                            ${product1.description}
                                        </span>155 combines sporty design, advanced technology, and powerful
                                        performance in a sleek, agile scooter. Powered by a 155cc engine with Variable
                                        Valve
                                        Actuation (VVA), it offers an exhilarating ride with excellent fuel efficiency.
                                        Packed with features like Y-Connect, keyless ignition, and ABS, the Aerox 155 is
                                        built for both style and convenience.</p>
                                </div>

                                <form id="add-to-cart-form" data-product-id="${product1.id}"
                                    data-product-name="${product1.name}"
                                    data-product-price="${product1.price}">

                                    <div class="quickview-plus-minus">
                                        <div class="cart-plus-minus">
                                            <input type="text" value="1" name="qtybutton" class="cart-plus-minus-box"
                                                min="1" required>
                                        </div>
                                        <div class="quickview-btn-cart">
                                            <a class="btn-style cr-btn add-to-cart-button"><span>add to cart</span></a>
                                        </div>
                                        <div class="quickview-btn-wishlist">
                                            <a class="btn-hover cr-btn" href="#"><span><i
                                                        class="icofont icofont-heart-alt"></i></span></a>
                                        </div>
                                    </div>

                                </form>

                                <div class="product-share">
                                    <h5 class="pd-sub-title">Share</h5>
                                    <ul>
                                        <li>
                                            <a href="#"><i class="icofont icofont-social-facebook"></i></a>
                                        </li>
                                        <li>
                                            <a href="#"><i class="icofont icofont-social-twitter"></i></a>
                                        </li>
                                        <li>
                                            <a href="#"><i class="icofont icofont-social-pinterest"></i></a>
                                        </li>
                                        <li>
                                            <a href="#"> <i class="icofont icofont-social-instagram"></i></a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>

        <jsp:include page="footer.jsp" />

        <script>
            // Wait until the DOM is fully loaded
            document.addEventListener('DOMContentLoaded', function () {
                // Select the carousel element
                var $owlCarousel = $('.owl-carousel');

                // Check if the carousel exists
                if ($owlCarousel.length > 0) {
                    // Destroy the current Owl Carousel instance
                    $owlCarousel.owlCarousel('destroy');

                    // Optional: Reinitialize with desired settings (if needed)
                    $owlCarousel.owlCarousel({
                        loop: false, // Disable looping
                        margin: 12,
                        nav: true, // Show navigation
                        items: 4, // Adjust as per your layout
                        autoplay: false, // Disable autoplay
                    });

                    console.log('Carousel loop stopped or disabled.');
                } else {
                    console.warn('No Owl Carousel found on the page.');
                }
            });
        </script>



        <script>
            var product1 = {
                id: "${product1.id}",
                name: "${product1.name}",
                description: "${product1.description}",
                price: "${product1.price}",
                image: "${product1.image}"
            };

            var product2 = {
                id: "${product2.id}",
                name: "${product2.name}",
                description: "${product2.description}",
                price: "${product2.price}",
                image: "${product2.image}"
            };

            document.querySelectorAll('.product-link').forEach(item => {
                item.addEventListener('click', function (event) {
                    event.preventDefault();
                    var productId = this.getAttribute('data-product-id');

                    var form = document.getElementById('add-to-cart-form');
                    var selectedProduct = productId === "1" ? product1 : product2;

                    form.setAttribute('data-product-id', selectedProduct.id);
                    form.setAttribute('data-product-name', selectedProduct.name);
                    form.setAttribute('data-product-price', selectedProduct.price);

                    document.getElementById('product-name').innerText = selectedProduct.name;
                    document.getElementById('product-price').innerText = selectedProduct.price;
                    document.getElementById('product-description').innerText = selectedProduct.description;
                    document.getElementById('product-image').src = selectedProduct.image;
                });
            });
        </script>

        <script>
                    // Handle Add to Cart button click using AJAX
                    document.querySelectorAll('.add-to-cart-button').forEach(button => {
                        button.addEventListener('click', function () {
                            const form = this.closest('form');
                            const productId = form.getAttribute('data-product-id');
                            const productName = form.getAttribute('data-product-name');
                            const productPrice = form.getAttribute('data-product-price');
                            const quantity = form.querySelector('input[name="qtybutton"]').value;

                            // Create FormData object to send the data
                            const formData = new FormData();
                            formData.append('add_to_cart', true);
                            formData.append('productId', productId);
                            formData.append('quantity', quantity);

                         // Add user/session information

                         const userId = '${userId}'; // Dynamically set by the backend if the user is logged in
                         const sessionId = '${sessionId}'; // Dynamically set by the backend for guest users
                         console.log('Session ID:', sessionId);

                         if (userId) {
                             formData.append('userId', userId); // For logged-in users
                         }

                          console.log('Session ID:', sessionId);


                        // AJAX request to cart controller
                        const xhr = new XMLHttpRequest();
                           xhr.open('POST','/add', true); // Point to the Spring Boot endpoint


                            xhr.onload = function () {
                                console.log('Server Response:', xhr.responseText);  // Log the raw response text
                                if (xhr.status === 200) {
                                    try {
                                        const response = JSON.parse(xhr.responseText); // Try parsing the response as JSON
                                        if (response.status === 'success') {
                                            console.log('Item added to cart');
                                            document.getElementById('cart-message').innerHTML = `Added ${productName} (₹${productPrice}) to the cart.`;
                                        } else {
                                            console.error('Failed to add to cart');
                                            document.getElementById('cart-message').innerHTML = `Failed to add ${productName} to the cart.`;
                                        }
                                    } catch (e) {
                                        console.error('Error parsing JSON:', e);
                                        console.log('Response was:', xhr.responseText);  // Log the response again to see what it looks like
                                        document.getElementById('cart-message').innerHTML = `Error parsing server response.`;
                                    }
                                } else {
                                    console.error('Request failed with status: ' + xhr.status);
                                    document.getElementById('cart-message').innerHTML = `Error adding to cart.`;
                                }
                            };
                            xhr.send(formData);
                        });
                    });
        </script>



        <%--<script>
            // Create a JavaScript array with product details from the JSP array
            const products = [
                <%
                for (int i = 0; i < products.length; i++) {
                    out.print("{");
                    out.print("id: \"" + products[i][0] + "\",");
                    out.print("name: \"" + products[i][1] + "\",");
                    out.print("price: \"" + products[i][2] + "\",");
                    out.print("description: \"" + products[i][3] + "\",");
                    out.print("image: \"" + products[i][4] + "\"");
                    out.print("}");
                    if (i < products.length - 1) {
                        out.print(","); // Add a comma between objects
                    }
                }
                %>
            ];

            // JavaScript to handle content change dynamically when clicking an image
            document.querySelectorAll('.product-link').forEach(item => {
                item.addEventListener('click', function (event) {
                    event.preventDefault(); // Prevent default action
                    const productId = this.getAttribute('data-product-id'); // Get product ID from clicked image's data attribute
                    const product = products.find(p => p.id === productId); // Find product details by ID

                    if (product) {
                        // Update form data attributes
                        const form = document.getElementById('add-to-cart-form');
                        form.setAttribute('data-product-id', product.id);
                        form.setAttribute('data-product-name', product.name);
                        form.setAttribute('data-product-price', product.price);

                        // Update displayed product details
                        document.getElementById('product-name').innerText = product.name;
                        document.getElementById('product-price').innerText = product.price;
                        document.getElementById('product-description').innerText = product.description;
                        document.getElementById('product-image').src = product.image;
                    }
                });
            });
        </script>--%>
        <%--<script>
            // JavaScript to handle content change dynamically when clicking an image
            document.querySelectorAll('.product-link').forEach(item => {
                item.addEventListener('click', function (event) {
                    event.preventDefault(); // Prevent default action
                    var productId = this.getAttribute('data-product-id'); // Get product ID from clicked image's data attribute


                    var form = document.getElementById('add-to-cart-form');
                    // Check the clicked product and change content accordingly
                    if (productId == "1") {
                        form.setAttribute('data-product-id', '${product1.price}');
                        form.setAttribute('data-product-name', '${product1.price}');
                        form.setAttribute('data-product-price', '${product1.price}');

                        // Change content for row2 (this could be fetched from PHP dynamically in a real scenario)
                        document.getElementById('product-name').innerText = "${product1.price}"; // Change name to row2
                        document.getElementById('product-price').innerText = "${product1.price}";
                        document.getElementById('product-description').innerText = "${product1.price}"; // Change description to row2
                        document.getElementById('product-image').src = 'image2.jpg'; // Change image
                    } else if (productId == "2") {
                        form.setAttribute('data-product-id', '${product1.price}');
                        form.setAttribute('data-product-name', '${product1.price}');
                        form.setAttribute('data-product-price', '${product1.price}');

                        // Change content for row3 (again, this is a static example; in real life, it can be fetched dynamically)
                        document.getElementById('product-name').innerText = "${product1.price}"; // Example static change
                        document.getElementById('product-price').innerText = "${product1.price}";
                        document.getElementById('product-description').innerText = "${product1.price}"; // Example static change
                        document.getElementById('product-image').src = 'image3.jpg'; // Example static change
                    }
                });
            });
        </script>--%>















        <!-- all js here -->
        <script src="assets/js/vendor/jquery-1.12.0.min.js"></script>
        <script src="assets/js/popper.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>
        <script src="assets/js/isotope.pkgd.min.js"></script>
        <script src="assets/js/imagesloaded.pkgd.min.js"></script>
        <script src="assets/js/jquery.counterup.min.js"></script>
        <script src="assets/js/waypoints.min.js"></script>
        <script src="assets/js/ajax-mail.js"></script>
        <script src="assets/js/owl.carousel.min.js"></script>
        <script src="assets/js/plugins.js"></script>
        <script src="assets/js/main.js"></script>
    </body>

    <!-- Mirrored from htmldemo.net/tm/oswan/oswan/product-details.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 07 Sep 2024 12:44:46 GMT -->

    </html>
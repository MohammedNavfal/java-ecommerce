<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

    <!doctype html>
    <html class="no-js" lang="zxx">

    <!-- Mirrored from htmldemo.net/tm/oswan/oswan/product-details.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 07 Sep 2024 12:44:42 GMT -->

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
                        <h2>Yamaha R15S </h2>
                        <ul>
                            <li>
                                <a href="${pageContext.request.contextPath}/home">home</a>
                            </li>
                            <li>Yamaha R15S </li>
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
                                                <a href="assets/img/product-details/r15s-bl1.png">
                                                    <img src="assets/img/product-details/r15s-l1.png" alt="">
                                                </a>
                                            </div>
                                        </div>
                                        <div class="tab-pane" id="pro-details2">
                                            <div class="easyzoom easyzoom--overlay">
                                                <a href="assets/img/product-details/r15s-bl2.png">
                                                    <img src="assets/img/product-details/r15s-l2.png" alt="">
                                                </a>
                                            </div>
                                        </div>
                                        <!-- <div class="tab-pane" id="pro-details3">
                                        <div class="easyzoom easyzoom--overlay">
                                            <a href="assets/img/product-details/bl3.jpg">
                                                <img src="assets/img/product-details/l3.jpg" alt="">
                                            </a>
                                        </div>
                                    </div>
                                    <div class="tab-pane" id="pro-details4">
                                        <div class="easyzoom easyzoom--overlay">
                                            <a href="assets/img/product-details/bl4.jpg">
                                                <img src="assets/img/product-details/l4.jpg" alt="">
                                            </a>
                                        </div>
                                    </div>
                                    <div class="tab-pane" id="pro-details5">
                                        <div class="easyzoom easyzoom--overlay">
                                            <a href="assets/img/product-details/bl3.jpg">
                                                <img src="assets/img/product-details/l3.jpg" alt="">
                                            </a>
                                        </div>
                                    </div>-->
                                    </div>
                                    <div class="product-details-small nav mt-12 product-dec-slider owl-carousel">
                                        <a class="active product-link" data-product-id="38" href="#pro-details1">
                                            <img src="assets/img/product-details/r15s-s1.png" alt="product 1">
                                        </a>
                                        <a href="#pro-details2" data-product-id="39" class="product-link">
                                            <img src="assets/img/product-details/r15s-s2.png" alt="product 2">
                                        </a>
                                        <a href="#pro-details3" style="visibility: hidden;">
                                            <img src="assets/img/product-details/fzx.jpg" alt="">
                                        </a>
                                        <a href="#pro-details4" style="visibility: hidden;">
                                            <img src="assets/img/product-details/fzx.jpg" alt="">
                                        </a>
                                        <!-- <a href="#pro-details5">
                                        <img src="assets/img/product-details/s3.jpg" alt="">
                                    </a>-->
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="product-details-content">
                                <h2 id="product-name">
                                    <?= htmlspecialchars($row1['name']); ?>
                                </h2>
                                <div class="quick-view-rating">
                                    <i class="fa fa-star reting-color"></i>
                                    <i class="fa fa-star reting-color"></i>
                                    <i class="fa fa-star reting-color"></i>
                                    <i class="fa fa-star reting-color"></i>
                                    <i class="fa fa-star reting-color"></i>
                                    <i class="fa fa-star reting-color"></i>
                                    <span> ( 01 Customer Review )</span>
                                </div>
                                <div class="product-price">
                                    <span><span id="product-price">
                                            <?= htmlspecialchars($row1['price']); ?>
                                        </span> Lakhs</span>
                                </div>
                                <div class="product-overview">
                                    <h5 class="pd-sub-title">Product Overview</h5>
                                    <p>The Yamaha R15S <span id="product-description">
                                            <?= htmlspecialchars($row1['description']); ?>
                                        </span> is a dynamic and stylish sports bike that offers a thrilling riding
                                        experience with its 155cc VVA engine, delivering impressive performance and
                                        efficiency. Designed with a comfortable single-seat layout, it combines
                                        aggressive
                                        styling with practicality for both daily commuting and spirited rides. Equipped
                                        with
                                        advanced features like LED lighting, a digital instrument cluster, and refined
                                        suspension, the R15S offers exceptional handling and a smooth, exciting ride for
                                        riders who crave performance and style.</p>
                                </div>
                                <!--<div class="product-color">
                                <h5 class="pd-sub-title">Product color</h5>
                                <ul>
                                    <li class="red">b</li>
                                    <li class="pink">p</li>
                                    <li class="blue">b</li>
                                    <li class="sky2">b</li>
                                    <li class="green">y</li>
                                    <li class="purple2">g</li>
                                </ul>
                            </div>-->
                                <form id="add-to-cart-form" data-product-id="<?= htmlspecialchars($row1['id']); ?>"
                                    data-product-name="<?= htmlspecialchars($row1['name']); ?>"
                                    data-product-price="<?= htmlspecialchars($row1['price']); ?>">
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
                                <!-- <div class="product-categories">
                                <h5 class="pd-sub-title">Categories</h5>
                                <ul>
                                    <li>
                                        <a href="#">fashion ,</a>
                                    </li>
                                    <li>
                                        <a href="#">electronics ,</a>
                                    </li>
                                    <li>
                                        <a href="#">toys ,</a>
                                    </li>
                                    <li>
                                        <a href="#">food ,</a>
                                    </li>
                                    <li>
                                        <a href="#">jewellery </a>
                                    </li>
                                </ul>
                            </div>-->
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
            // JavaScript to handle content change dynamically when clicking an image
            document.querySelectorAll('.product-link').forEach(item => {
                item.addEventListener('click', function (event) {
                    event.preventDefault(); // Prevent default action
                    var productId = this.getAttribute('data-product-id'); // Get product ID from clicked image's data attribute


                    var form = document.getElementById('add-to-cart-form');
                    // Check the clicked product and change content accordingly
                    if (productId == "38") {
                        form.setAttribute('data-product-id', '<?= htmlspecialchars($row1['id']); ?>');
                        form.setAttribute('data-product-name', '<?= htmlspecialchars($row1['name']); ?>');
                        form.setAttribute('data-product-price', '<?= htmlspecialchars($row1['price']); ?>');

                        // Change content for row2 (this could be fetched from PHP dynamically in a real scenario)
                        document.getElementById('product-name').innerText = "<?= htmlspecialchars($row1['name']); ?>"; // Change name to row2
                        document.getElementById('product-price').innerText = "<?= htmlspecialchars($row1['price']); ?>";
                        document.getElementById('product-description').innerText = "<?= htmlspecialchars($row1['description']); ?>"; // Change description to row2

                    } else if (productId == "39") {
                        form.setAttribute('data-product-id', '<?= htmlspecialchars($row2['id']); ?>');
                        form.setAttribute('data-product-name', '<?= htmlspecialchars($row2['name']); ?>');
                        form.setAttribute('data-product-price', '<?= htmlspecialchars($row2['price']); ?>');

                        // Change content for row3 (again, this is a static example; in real life, it can be fetched dynamically)
                        document.getElementById('product-name').innerText = "<?= htmlspecialchars($row2['name']); ?>"; // Example static change
                        document.getElementById('product-price').innerText = "<?= htmlspecialchars($row2['price']); ?>";
                        document.getElementById('product-description').innerText = "<?= htmlspecialchars($row2['description']); ?>"; // Example static change

                    }
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
                    formData.append('product_id', productId);
                    formData.append('quantity', quantity);

                 // Add user/session information
                 <? php if ($user_id): ?>
                        formData.append('user_id', '<?= $user_id; ?>'); // For logged-in users
                <? php else: ?>
                    var sessionId = '<?= $session_id; ?>';
                    console.log('Session ID:', sessionId);
                    formData.append('session_id', '<?= $session_id; ?>'); // For guest users
                <? php endif; ?>

                // AJAX request to ${pageContext.request.contextPath}/cart
                const xhr = new XMLHttpRequest();
                    xhr.open('POST', '${pageContext.request.contextPath}/cart', true);

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
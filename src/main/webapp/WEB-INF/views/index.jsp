<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!doctype html>
    <html class="no-js" lang="zxx">


    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Home - royalkingmotors</title>
        <meta name="description" content="Live Preview Of Oswan eCommerce HTML5 Template">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- Favicon -->
        <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.png">

        <!--navfal-->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/icofont/2.0.0/icofont.min.css">

        <!-- all css here -->
        <link rel="stylesheet" href="assets/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/css/animate.css">
        <link rel="stylesheet" href="assets/css/owl.carousel.min.css">
        <link rel="stylesheet" href="assets/css/chosen.min.css">
        <link rel="stylesheet" href="assets/css/icofont.css">
        <link rel="stylesheet" href="assets/css/themify-icons.css">
        <link rel="stylesheet" href="assets/css/font-awesome.min.css">
        <link rel="stylesheet" href="assets/css/meanmenu.min.css">
        <link rel="stylesheet" href="assets/css/bundle.css">
        <link rel="stylesheet" href="assets/css/style.css">
        <link rel="stylesheet" href="assets/css/responsive.css">
        <script src="assets/js/vendor/modernizr-2.8.3.min.js"></script>

        <style>
            .main-menu .submenu li:hover {
                border-bottom: 1px red solid;
            }

            .main-menu ul ul {
                display: none;
                list-style: none;
                padding-left: 20px;
                /* Add indentation for submenus */
            }

            .main-menu li:hover>.submenu {
                display: block;
            }

            .main-menu ul {
                list-style: none;
                padding-left: 0;
                margin: 0;
            }

            .main-menu li {
                position: relative;
                /* Ensure submenus are positioned correctly */
            }

            .main-menu a {
                text-decoration: none;
                color: #333;

                display: block;
            }

            /* Optional: Style submenu items */
            .submenu a {
                color: #555;
                padding-left: 20px;
                /* Indent submenu items */
            }

            /* Optional: Add hover effects */


            .submenu a:hover {
                color: #f57c00;
                /* Change color on hover */
            }

            .container {
                position: relative;
                overflow: visible;
                /* Ensures the overflow from the overlay div is visible */
            }

            .row {
                z-index: 1;
            }

            .overlay-div-1 {
                position: absolute;
                /* Position it absolutely within the container */
                top: -46px;
                left: 0;
                width: 150px;
                /* Make it fill the container's width */
                height: 100px;
                /* Set the overlay height larger than the container */

                /* Semi-transparent green */
                z-index: 2;
                /* Ensure it appears above the background div */
                display: flex;
                /* Flexbox to center the image */
                justify-content: left;
                /* Horizontally center the image */
                align-items: center;
            }

            .overlay-div-1 img {
                max-width: 100%;
                /* Make sure the image is responsive */
                height: 150px;
                /* Maintain the aspect ratio */
            }

            .class-invert {

                max-width: 100%;

                /* Make sure the image is responsive */
                height: 150px;
                /* Maintain the aspect ratio */

            }

            .header-contact>a {
                position: relative;
                left: 83px;
            }


            @media (max-width: 767px) {

                /* Target mobile devices (screen width 768px or smaller) */
                .overlay-div-1 {
                    position: absolute;
                    /* Position it absolutely within the container */
                    top: -48px;
                    left: 13px;
                    width: 150px;
                    /* Make it fill the container's width */
                    height: 100px;
                    /* Set the overlay height larger than the container */

                    /* Semi-transparent green */
                    z-index: 2;
                    /* Ensure it appears above the background div */
                    display: flex;
                    /* Flexbox to center the image */
                    justify-content: left;
                    /* Horizontally center the image */
                    align-items: center;
                }

                .overlay-div-1 img {
                    max-width: 120px;
                    /* Make sure the image is responsive */
                    height: 120px;
                    position: relative;
                    top: 7px;
                    /* Maintain the aspect ratio */
                }

                .icon-cart {
                    position: relative;
                    left: 152px;
                }
            }
        </style>
    </head>

    <body>


        <!-- header and logo-->
        <div class="wrapper">
            <!-- header start -->
            <header>
                <div class="header-area transparent-bar ptb-55">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-2 col-md-4 col-4">
                                <div class="logo-small-device">
                                    <!--<a href="${pageContext.request.contextPath}/home"><img alt="" src="assets/img/logo/logo.png"></a>-->
                                </div>
                            </div>
                            <div class="col-lg-10 col-md-8 col-8">
                                <div class="header-contact-menu-wrapper pl-45">
                                    <div class="header-contact">
                                        <a href="register.php">
                                            <p>CLICK HERE TO REGISTER AND GET THE BEST DEAL AT OUR SHOWROOM!</p>
                                        </a>
                                    </div>
                                    <div class="menu-wrapper text-center">
                                        <button class="menu-toggle">
                                            <img class="s-open" alt="" src="assets/img/icon-img/menu.png">
                                            <img class="s-close" alt="" src="assets/img/icon-img/menu-close.png">
                                        </button>
                                        <div class="main-menu">
                                            <nav>
                                                <ul>
                                                    <li><a href="${pageContext.request.contextPath}/home">HOME</a>
                                                        <!--<ul class="submenu">
                                                        <li><a href="#">about us</a>
                                                            <!--<ul class="submenu">
                                                                <li><a href="${pageContext.request.contextPath}/about">about us</a></li>
                                                                <li><a href="cart.html">cart page</a></li>
                                                                <li><a href="checkout.html">checkout</a></li>
                                                                <li><a href="wishlist.html">wishlist</a></li>
                                                                <li><a href="login-register.html">login</a></li>
                                                                <li><a href="${pageContext.request.contextPath}/contact">contact</a></li>
                                                            </ul>--
                                                        </li>
                                                        <li><a href="cart.html">cart page</a></li>
                                                        <li><a href="checkout.html">checkout</a></li>
                                                        <li><a href="wishlist.html">wishlist</a></li>
                                                        <li><a href="login-register.html">login</a></li>
                                                        <li><a href="${pageContext.request.contextPath}/contact">contact</a></li>
                                                    </ul>-->
                                                    </li>
                                                    <li><a href="${pageContext.request.contextPath}/about">About us</a></li>
                                                    <li><a href="#">Products</a>
                                                        <ul>
                                                            <li><a href="${pageContext.request.contextPath}/aerox">Yamaha Aerox</a></li>
                                                            <li><a href="${pageContext.request.contextPath}/fz">Yamaha FZ</a></li>
                                                            <li><a href="${pageContext.request.contextPath}/fzs">Yamaha FZS</a></li>
                                                            <li><a href="${pageContext.request.contextPath}/fzx">Yamaha FZX</a></li>
                                                            <li><a href="${pageContext.request.contextPath}/mt03">Yamaha MT-03</a></li>
                                                            <li><a href="${pageContext.request.contextPath}/mt15">Yamaha MT-15</a></li>
                                                            <li><a href="${pageContext.request.contextPath}/r3">Yamaha R3</a></li>
                                                            <li><a href="${pageContext.request.contextPath}/r15">Yamaha R15</a></li>
                                                            <li><a href="${pageContext.request.contextPath}/r15m">Yamaha R15M</a></li>
                                                            <li><a href="${pageContext.request.contextPath}/r15s">Yamaha R15S</a></li>
                                                            <li><a href="${pageContext.request.contextPath}/rayzr">Yamaha RayZR</a></li>
                                                        </ul>
                                                    </li>
                                                    <li><a href="${pageContext.request.contextPath}/contact">Contact us</a>
                                                        <!--<ul>
                                                        <li><a href="${pageContext.request.contextPath}/about">about us</a></li>
                                                        <li><a href="cart.html">cart page</a></li>
                                                        <li><a href="checkout.html">checkout</a></li>
                                                        <li><a href="wishlist.html">wishlist</a></li>
                                                        <li><a href="login-register.html">login</a></li>
                                                        <li><a href="${pageContext.request.contextPath}/contact">contact</a></li>
                                                    </ul>-->
                                                    </li>
                                                    <!-- <li><a href="#">parts</a>
                                                    <ul>
                                                        <li><a href="${pageContext.request.contextPath}/about">about us</a></li>
                                                        <li><a href="cart.html">cart page</a></li>
                                                        <li><a href="checkout.html">checkout</a></li>
                                                        <li><a href="wishlist.html">wishlist</a></li>
                                                        <li><a href="login-register.html">login</a></li>
                                                        <li><a href="${pageContext.request.contextPath}/contact">contact</a></li>
                                                    </ul>
                                                </li>-->
                                                    <!-- <li class="active"><a href="${pageContext.request.contextPath}/about">motogp</a></li>
                                                <li><a href="#">events</a>
                                                    <ul>
                                                        <li><a href="${pageContext.request.contextPath}/about">about us</a></li>
                                                        <li><a href="cart.html">cart page</a></li>
                                                        <li><a href="checkout.html">checkout</a></li>
                                                        <li><a href="wishlist.html">wishlist</a></li>
                                                        <li><a href="login-register.html">login</a></li>
                                                        <li><a href="${pageContext.request.contextPath}/contact">contact</a></li>
                                                    </ul>
                                                </li>
                                                <li class="active"><a href="${pageContext.request.contextPath}/about">contact us</a></li>-->
                                                    <!-- <li><a href="shop.html">shop</a>
                                                    <ul class="mega-menu">
                                                        <li>
                                                            <ul>
                                                                <li class="mega-menu-title">shop grid</li>
                                                                <li><a href="shop-grid-2-col.html"> grid 2 column</a>
                                                                </li>
                                                                <li><a href="shop.html"> grid 3 column</a></li>
                                                                <li><a href="shop-grid-4-col.html"> grid 4 column</a>
                                                                </li>
                                                            </ul>
                                                        </li>
                                                        <li>
                                                            <ul>
                                                                <li class="mega-menu-title">shop list</li>
                                                                <li><a href="shop-list.html"> list 1 column</a></li>
                                                                <li><a href="shop-list-2-col.html"> list 2 column</a>
                                                                </li>
                                                                <li><a href="shop-list-box.html"> list box style</a>
                                                                </li>
                                                            </ul>
                                                        </li>
                                                        <li>
                                                            <ul>
                                                                <li class="mega-menu-title">product details</li>
                                                                <li><a href="product-details.html">tab style</a></li>
                                                                <li><a href="product-details-sticky.html">sticky
                                                                        style</a></li>
                                                                <li><a href="product-details-gallery.html">gallery
                                                                        style</a></li>
                                                                <li><a href="product-details-fixed-img.html">fixed image
                                                                        style</a></li>
                                                            </ul>
                                                        </li>
                                                        <li class="mega-menu-img">
                                                            <ul>
                                                                <li><a class="dot-none" href="shop.html"><img alt=""
                                                                            src="assets/img/banner/17.jpg"></a></li>
                                                            </ul>
                                                        </li>
                                                    </ul>
                                                </li>
                                                <li><a href="#">pages</a>
                                                    <ul>
                                                        <li><a href="${pageContext.request.contextPath}/about">about us</a></li>
                                                        <li><a href="cart.html">cart page</a></li>
                                                        <li><a href="checkout.html">checkout</a></li>
                                                        <li><a href="wishlist.html">wishlist</a></li>
                                                        <li><a href="login-register.html">login</a></li>
                                                        <li><a href="${pageContext.request.contextPath}/contact">contact</a></li>
                                                    </ul>
                                                </li>
                                                <li><a href="blog.html">blog</a>
                                                    <ul>
                                                        <li><a href="blog.html">blog page</a></li>
                                                        <li><a href="blog-sidebar.html">blog sidebar</a></li>
                                                        <li><a href="blog-sidebar-2.html">blog sidebar 2</a></li>
                                                        <li><a href="blog-details.html">blog details</a></li>
                                                    </ul>
                                                </li>
                                                <li><a href="${pageContext.request.contextPath}/contact">contact us</a></li>-->
                                                </ul>
                                            </nav>
                                        </div>
                                    </div>
                                </div>
                                <div class="header-cart cart-small-device">
                                    <a href="${pageContext.request.contextPath}/cart"><button class="icon-cart">
                                            <i class="ti-shopping-cart"></i>
                                            <span class="count-style">02</span>
                                            <span class="count-price-add">CART</span>
                                        </button></a>

                                    <!--<div class="shopping-cart-content">
                                    <ul>
                                        <li class="single-shopping-cart">
                                            <div class="shopping-cart-img">
                                                <a href="#"><img alt="" src="assets/img/cart/cart-1.jpg"></a>
                                            </div>
                                            <div class="shopping-cart-title">
                                                <h3><a href="#">Gloriori GSX 250 R </a></h3>
                                                <span>Price: $275</span>
                                                <span>Qty: 01</span>
                                            </div>
                                            <div class="shopping-cart-delete">
                                                <a href="#"><i class="icofont icofont-ui-delete"></i></a>
                                            </div>
                                        </li>
                                        <li class="single-shopping-cart">
                                            <div class="shopping-cart-img">
                                                <a href="#"><img alt="" src="assets/img/cart/cart-2.jpg"></a>
                                            </div>
                                            <div class="shopping-cart-title">
                                                <h3><a href="#">Demonissi Gori</a></h3>
                                                <span>Price: $275</span>
                                                <span class="qty">Qty: 01</span>
                                            </div>
                                            <div class="shopping-cart-delete">
                                                <a href="#"><i class="icofont icofont-ui-delete"></i></a>
                                            </div>
                                        </li>
                                        <li class="single-shopping-cart">
                                            <div class="shopping-cart-img">
                                                <a href="#"><img alt="" src="assets/img/cart/cart-3.jpg"></a>
                                            </div>
                                            <div class="shopping-cart-title">
                                                <h3><a href="#">Demonissi Gori</a></h3>
                                                <span>Price: $275</span>
                                                <span class="qty">Qty: 01</span>
                                            </div>
                                            <div class="shopping-cart-delete">
                                                <a href="#"><i class="icofont icofont-ui-delete"></i></a>
                                            </div>
                                        </li>
                                    </ul>
                                    <div class="shopping-cart-total">
                                        <h4>total: <span>$550.00</span></h4>
                                    </div>
                                    <div class="shopping-cart-btn">
                                        <a class="btn-style cr-btn" href="#">checkout</a>
                                    </div>
                                </div>-->
                                </div>
                            </div>
                            <div class="mobile-menu-area col-12">
                                <div class="mobile-menu">
                                    <nav id="mobile-menu-active">
                                        <ul class="menu-overflow">
                                            <li><a href="${pageContext.request.contextPath}/home">HOME</a></li>
                                            <li><a href="${pageContext.request.contextPath}/about">About us</a>
                                                <!--<ul>
                                                <li><a href="${pageContext.request.contextPath}/about">about us</a></li>
                                                <li><a href="cart.html">cart page</a></li>
                                                <li><a href="checkout.html">checkout</a></li>
                                                <li><a href="wishlist.html">wishlist</a></li>
                                                <li><a href="login-register.html">login</a></li>
                                                <li><a href="${pageContext.request.contextPath}/contact">contact</a></li>
                                            </ul>-->
                                            </li>
                                            <li><a href="#">Products</a>
                                                <ul>
                                                    <li><a href="${pageContext.request.contextPath}/aerox">Yamaha Aerox</a></li>
                                                    <li><a href="${pageContext.request.contextPath}/fz">Yamaha FZ</a></li>
                                                    <li><a href="${pageContext.request.contextPath}/fzs">Yamaha FZS</a></li>
                                                    <li><a href="${pageContext.request.contextPath}/fzx">Yamaha FZX</a></li>
                                                    <li><a href="${pageContext.request.contextPath}/mt03">Yamaha MT-03</a></li>
                                                    <li><a href="${pageContext.request.contextPath}/mt15">Yamaha MT-15</a></li>
                                                    <li><a href="${pageContext.request.contextPath}/r3">Yamaha R3</a></li>
                                                    <li><a href="${pageContext.request.contextPath}/r15">Yamaha R15</a></li>
                                                    <li><a href="${pageContext.request.contextPath}/r15m">Yamaha R15M</a></li>
                                                    <li><a href="${pageContext.request.contextPath}/r15s">Yamaha R15S</a></li>
                                                    <li><a href="${pageContext.request.contextPath}/rayzr">Yamaha RayZR</a></li>
                                                </ul>
                                            </li>
                                            <!-- <li><a href="#"></a>
                                            <ul>
                                                <li><a href="blog.html">blog page</a></li>
                                                <li><a href="blog-sidebar.html">blog sidebar</a></li>
                                                <li><a href="blog-sidebar-2.html">blog sidebar 2</a></li>
                                                <li><a href="blog-details.html">blog details</a></li>
                                            </ul>
                                        </li>-->
                                            <li><a href="${pageContext.request.contextPath}/contact"> Contact us</a></li>
                                        </ul>
                                    </nav>
                                </div>
                            </div>
                        </div>
                        <!---logo overlay royal yamaha logo any size-- navfal-->
                        <div class="overlay-div-1">
                            <a href="${pageContext.request.contextPath}/home">
                                <img src="assets/img/logo/rylogo1.png" alt="Overlay Image" class="logostick">
                            </a>

                        </div>
                    </div>
                    <div class="header-cart-wrapper">
                        <div class="header-cart">

                            <a href="${pageContext.request.contextPath}/cart">
                                <button class="icon-cart">
                                    <i class="ti-shopping-cart"></i>
                                    <span class="count-style">02</span>
                                    <span class="count-price-add">CART</span>
                                </button>
                            </a>
                            <!--<div class="shopping-cart-content">
                            <ul>
                                <li class="single-shopping-cart">
                                    <div class="shopping-cart-img">
                                        <a href="#"><img alt="" src="assets/img/cart/cart-1.jpg"></a>
                                    </div>
                                    <div class="shopping-cart-title">
                                        <h3><a href="#">Gloriori GSX 250 R </a></h3>
                                        <span>Price: $275</span>
                                        <span>Qty: 01</span>
                                    </div>
                                    <div class="shopping-cart-delete">
                                        <a href="#"><i class="icofont icofont-ui-delete"></i></a>
                                    </div>
                                </li>
                                <li class="single-shopping-cart">
                                    <div class="shopping-cart-img">
                                        <a href="#"><img alt="" src="assets/img/cart/cart-2.jpg"></a>
                                    </div>
                                    <div class="shopping-cart-title">
                                        <h3><a href="#">Demonissi Gori</a></h3>
                                        <span>Price: $275</span>
                                        <span class="qty">Qty: 01</span>
                                    </div>
                                    <div class="shopping-cart-delete">
                                        <a href="#"><i class="icofont icofont-ui-delete"></i></a>
                                    </div>
                                </li>
                                <li class="single-shopping-cart">
                                    <div class="shopping-cart-img">
                                        <a href="#"><img alt="" src="assets/img/cart/cart-3.jpg"></a>
                                    </div>
                                    <div class="shopping-cart-title">
                                        <h3><a href="#">Demonissi Gori</a></h3>
                                        <span>Price: $275</span>
                                        <span class="qty">Qty: 01</span>
                                    </div>
                                    <div class="shopping-cart-delete">
                                        <a href="#"><i class="icofont icofont-ui-delete"></i></a>
                                    </div>
                                </li>
                            </ul>
                            <div class="shopping-cart-total">
                                <h4>total: <span>$550.00</span></h4>
                            </div>
                            <div class="shopping-cart-btn">
                                <a class="btn-style cr-btn" href="#">checkout</a>
                            </div>
                        </div>
                    </div>-->
                        </div>
                    </div>
            </header>
        </div>




        <!--  slider page-->
        <div class="wrapper">
            <div class="slider-area">
                <div class="slider-active owl-carousel">
                    <div class="single-slider slider-1" style="background-image: url(assets/img/slider/slider-bg.jpg)">
                        <div class="container">
                            <div class="slider-content slider-animated-1">
                                <div class="slider-img text-center">
                                    <img class="animated" src="assets/img/slider/slider-3.png" alt="slider images">
                                </div>
                                <div class="slider-text-img">
                                    <h6 class="animated">BOOK YOUR BIKE INSTANTLY AND ENJOY DISCOUNT</h6>
                                    <img class="animated" src="assets/img/icon-img/bike.png" alt="slider images">
                                </div>
                                <h2 class="animated">ROYALYAMAHA</h2>
                            </div>
                        </div>
                    </div>
                    <div class="single-slider slider-1" style="background-image: url(assets/img/slider/slider-bg.jpg)">
                        <div class="container">
                            <div class="slider-content slider-animated-1">
                                <div class="slider-img text-center">
                                    <img class="animated" src="assets/img/slider/slider-2.png" alt="slider images">
                                </div>
                                <div class="slider-text-img">
                                    <h6 class="animated">BOOK YOUR BIKE INSTANTLY AND ENJOY DISCOUNT</h6>
                                    <img class="animated" src="assets/img/icon-img/bike.png" alt="slider images">
                                </div>
                                <h2 class="animated">MOTORCYCLE</h2>
                            </div>
                        </div>
                    </div>
                    <div class="single-slider slider-1" style="background-image: url(assets/img/slider/slider-bg.jpg)">
                        <div class="container">
                            <div class="slider-content slider-animated-1">
                                <div class="slider-img text-center">
                                    <img class="animated" src="assets/img/slider/slider-1-1.png" alt="slider images">
                                </div>
                                <div class="slider-text-img">
                                    <h6 class="animated">BOOK YOUR BIKE INSTANTLY AND ENJOY DISCOUNT</h6>
                                    <img class="animated" src="assets/img/icon-img/bike.png" alt="slider images">
                                </div>
                                <h2 class="animated">MOTORCYCLE</h2>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="slider-social">
                    <ul>
                        <li class="facebook"><a href="#"><i class="icofont icofont-social-facebook"></i></a></li>
                        <li class="twitter"><a href="#"><i class="icofont icofont-social-twitter"></i></a></li>
                        <li class="pinterest"><a href="#"><i class="icofont icofont-social-instagram"></i></a></li>

                    </ul>
                </div>
                <!--<div class="language-currency-wrapper">
                <div class="language-currency">
                    <div class="language">
                        <select class="select-header orderby">
                            <option value="">ENG</option>
                            <option value="">BANGLA </option>
                            <option value="">HINDI</option>
                        </select>
                    </div>
                    <div class="currency">
                        <select class="select-header orderby">
                            <option value="">$USD</option>
                            <option value="">US </option>
                            <option value="">EURO</option>
                        </select>
                    </div>
                </div>
            </div>-->
            </div>
        </div>
        <!--  about-->
        <div class="wrapper">
            <div class="overview-area pt-135">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-6 col-md-12">
                            <div class="overview-content">
                                <h1><span>ROYAL</span> KING MOTORS</h1>
                                <h2>LEADING <span>YAMAHA SHOWROOM</span></h2>
                                <p><span></span> your premier destination for
                                    high-performance Yamaha motorcycles in Salem. We offer a wide range of Yamaha bikes,
                                    from sport to cruiser models, backed by expert advice and exceptional customer
                                    service.
                                    Whether you're a first-time rider or an experienced enthusiast, we’re here to help
                                    you
                                    find the perfect bike. Our team is committed to providing reliable after-sales
                                    support
                                    and maintenance services to keep you on the road. Ride with confidence, ride with
                                    Royalking Yamaha! </p>
                                <div class="question-area">
                                    <h4>HAVE ANY QUESTION? </h4>
                                    <div class="question-contact">
                                        <div class="question-icon">
                                            <i class="icofont icofont-phone"></i>
                                        </div>
                                        <div class="question-content-number">
                                            <h6> 077087 26820</h6>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-12">
                            <div class="overview-img">
                                <img class="tilter" src="assets/img/banner/banner-1-f.png" alt="">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>




        <!--3 box-->
        <div class="wrapper">
            <div class="banner-area pt-135 pb-120">
                <div class="container">
                    <div class="row">
                        <div class="col-md-4 col-lg-4">
                            <div class="banner-wrapper mb-30">
                                <a href="#"><img src="assets/img/banner/banner-1.jpg" alt="image"></a>
                                <div class="banner-content">
                                    <h2>BUY NEW BIKE</h2>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 col-lg-4">
                            <div class="banner-wrapper mb-30">
                                <a href="#"><img src="assets/img/banner/banner-2.jpg" alt="image"></a>
                                <div class="banner-content">
                                    <h2>SELL YOUR BIKE</h2>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4 col-lg-4">
                            <div class="banner-wrapper mb-30">
                                <a href="#"><img src="assets/img/banner/banner-3.jpg" alt="image"></a>
                                <div class="banner-content">
                                    <h2>FIND SPARE PARTS</h2>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <!--choose bike-->
        <div class="wrapper">
            <div class="product-area pb-190">
                <div class="container">
                    <div class="section-title text-center mb-50">
                        <h2>CHOOSE YOUR BIKE</h2>
                        <!--<p><span>OSWAN</span> the most latgest bike store in the wold can serve you latest qulity of
                        motorcycle also you can sell here your motorcycle</p>-->
                    </div>
                    <!--<div class="product-tab-list text-center mb-80 nav product-menu-mrg" role="tablist">
                    <a class="active" href="#home1" data-bs-toggle="tab">
                        <h4>NEW BIKES </h4>
                    </a>
                    <a href="#home2" data-bs-toggle="tab">
                        <h4> USED BIKES </h4>
                    </a>
                </div>-->
                    <div class="tab-content jump">
                        <div class="tab-pane active" id="home1">
                            <div class="product-slider-active owl-carousel">
                                <div class="product-wrapper-bundle">
                                    <div class="product-wrapper">
                                        <div class="product-img">
                                            <a href="${pageContext.request.contextPath}/fzx">
                                                <img src="assets/img/product/bike-1-1-f.png" alt="">
                                            </a>
                                            <div class="product-item-dec">
                                                <ul>
                                                    <li>2024</li>
                                                    <li>MANUAL</li>
                                                    <li>PETROL</li>
                                                    <li>149 CC</li>
                                                </ul>
                                            </div>
                                            <div class="product-action">
                                                <!--<a class="action-plus-2" title="Add To Cart" href="#">
                                                <i class=" ti-shopping-cart"></i>
                                            </a>-->
                                                <!--<a class="action-cart-2" title="Wishlist" href="#">-->
                                                <!--<i class=" ti-heart"></i>-->
                                                <h4 style="font-weight:bold;">Yamaha FZ-X</h4>
                                                </a>
                                                <!--<a class="action-reload" title="Quick View" data-bs-toggle="modal"
                                                data-bs-target="#exampleModal" href="#">
                                                <i class=" ti-zoom-in"></i>
                                            </a>-->
                                            </div>
                                            <div class="product-content-wrapper">
                                                <div class="product-title-spreed">
                                                    <h4><a href="${pageContext.request.contextPath}/fzx">Yamaha FZ-X</a></h4>
                                                    <span>7250 RPM</span>
                                                </div>
                                                <div class="product-price">
                                                    <span>1.5 Lakhs</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="product-wrapper">
                                        <div class="product-img">
                                            <a href="${pageContext.request.contextPath}/r3">
                                                <img src="assets/img/product/bike-1-2.png" alt="">
                                            </a>
                                            <div class="product-item-dec">
                                                <ul>
                                                    <li>2024</li>
                                                    <li>MANUAL</li>
                                                    <li>PETROL</li>
                                                    <li>321 CC</li>
                                                </ul>
                                            </div>
                                            <div class="product-action">
                                                <!--<a class="action-plus-2" title="Add To Cart" href="#">
                                                <i class=" ti-shopping-cart"></i>
                                            </a>
                                            <a class="action-cart-2" title="Wishlist" href="#">
                                                <i class=" ti-heart"></i>-->
                                                <h4 style="font-weight:bold;">Yamaha R3</h4>
                                                <!--</a>
                                            <a class="action-reload" title="Quick View" data-bs-toggle="modal"
                                                data-bs-target="#exampleModal" href="#">
                                                <i class=" ti-zoom-in"></i>
                                            </a>-->
                                            </div>
                                            <div class="product-content-wrapper">
                                                <div class="product-title-spreed">
                                                    <h4><a href="${pageContext.request.contextPath}/r3">Yamaha R3</a></h4>
                                                    <span>10750 RPM</span>
                                                </div>
                                                <div class="product-price">
                                                    <span>5 Lakhs</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="product-wrapper-bundle">
                                    <div class="product-wrapper">
                                        <div class="product-img">
                                            <a href="${pageContext.request.contextPath}/r15">
                                                <img src="assets/img/product/bike-1-3.png" alt="">
                                            </a>
                                            <div class="product-item-dec">
                                                <ul>
                                                    <li>2021</li>
                                                    <li>MANUAL</li>
                                                    <li>PETROL</li>
                                                    <li>155 CC</li>
                                                </ul>
                                            </div>
                                            <div class="product-action">
                                                <!--<a class="action-plus-2" title="Add To Cart" href="#">
                                                <i class=" ti-shopping-cart"></i>
                                            </a>
                                            <a class="action-cart-2" title="Wishlist" href="#">
                                                <i class=" ti-heart"></i>-->
                                                <h4 style="font-weight:bold;">Yamaha R15</h4>
                                                <!--</a>
                                            <a class="action-reload" title="Quick View" data-bs-toggle="modal"
                                                data-bs-target="#exampleModal" href="#">
                                                <i class=" ti-zoom-in"></i>
                                            </a>-->
                                            </div>
                                            <div class="product-content-wrapper">
                                                <div class="product-title-spreed">
                                                    <h4><a href="${pageContext.request.contextPath}/r15">Yamaha R15 V4</a></h4>
                                                    <span>10000 RPM</span>
                                                </div>
                                                <div class="product-price">
                                                    <span>2 Lakhs</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="product-wrapper">
                                        <div class="product-img">
                                            <a href="${pageContext.request.contextPath}/mt15">
                                                <img src="assets/img/product/bike-1-4.png" alt="">
                                            </a>
                                            <div class="product-item-dec">
                                                <ul>
                                                    <li>2019</li>
                                                    <li>MANUAL</li>
                                                    <li>PETROL</li>
                                                    <li>155 CC</li>
                                                </ul>
                                            </div>
                                            <div class="product-action">
                                                <!--<a class="action-plus-2" title="Add To Cart" href="#">
                                                <i class=" ti-shopping-cart"></i>
                                            </a>
                                            <a class="action-cart-2" title="Wishlist" href="#">
                                                <i class=" ti-heart"></i>-->
                                                <h4 style="font-weight:bold;">Yamaha MT-15</h4>
                                                <!--</a>
                                            <a class="action-reload" title="Quick View" data-bs-toggle="modal"
                                                data-bs-target="#exampleModal" href="#">
                                                <i class=" ti-zoom-in"></i>
                                            </a>-->
                                            </div>
                                            <div class="product-content-wrapper">
                                                <div class="product-title-spreed">
                                                    <h4><a href="${pageContext.request.contextPath}/mt15">Yamaha MT15</a></h4>
                                                    <span>10000 RPM</span>
                                                </div>
                                                <div class="product-price">
                                                    <span>2 Lakhs</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="product-wrapper-bundle">
                                    <div class="product-wrapper">
                                        <div class="product-img">
                                            <a href="${pageContext.request.contextPath}/mt03">
                                                <img src="assets/img/product/bike-1-5.png" alt="">
                                            </a>
                                            <div class="product-item-dec">
                                                <ul>
                                                    <li>2023</li>
                                                    <li>MANUAL</li>
                                                    <li>PETROL</li>
                                                    <li>321 CC</li>
                                                </ul>
                                            </div>
                                            <div class="product-action">
                                                <!--<a class="action-plus-2" title="Add To Cart" href="#">
                                                <i class=" ti-shopping-cart"></i>
                                            </a>
                                            <a class="action-cart-2" title="Wishlist" href="#">
                                                <i class=" ti-heart"></i>-->
                                                <h4 style="font-weight:bold;">Yamaha MT-03</h4>
                                                <!--</a>
                                            <a class="action-reload" title="Quick View" data-bs-toggle="modal"
                                                data-bs-target="#exampleModal" href="#">
                                                <i class=" ti-zoom-in"></i>
                                            </a>-->
                                            </div>
                                            <div class="product-content-wrapper">
                                                <div class="product-title-spreed">
                                                    <h4><a href="${pageContext.request.contextPath}/mt03">Yamaha MT-03</a></h4>
                                                    <span>10750 RPM</span>
                                                </div>
                                                <div class="product-price">
                                                    <span>5 Lakhs</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="product-wrapper">
                                        <div class="product-img">
                                            <a href="${pageContext.request.contextPath}/fzs">
                                                <img src="assets/img/product/bike-1-6.png" alt="">
                                            </a>
                                            <div class="product-item-dec">
                                                <ul>
                                                    <li>2019</li>
                                                    <li>MANUAL</li>
                                                    <li>PETROL</li>
                                                    <li>149 CC</li>
                                                </ul>
                                            </div>
                                            <div class="product-action">
                                                <!--<a class="action-plus-2" title="Add To Cart" href="#">
                                                <i class=" ti-shopping-cart"></i>
                                            </a>
                                            <a class="action-cart-2" title="Wishlist" href="#">
                                                <i class=" ti-heart"></i>-->
                                                <h4 style="font-weight:bold;">Yamaha FZ-S</h4>
                                                <!--</a>
                                            <a class="action-reload" title="Quick View" data-bs-toggle="modal"
                                                data-bs-target="#exampleModal" href="#">
                                                <i class=" ti-zoom-in"></i>
                                            </a>-->
                                            </div>
                                            <div class="product-content-wrapper">
                                                <div class="product-title-spreed">
                                                    <h4><a href="${pageContext.request.contextPath}/fzs">Yamaha FZ-S</a></h4>
                                                    <span>7250 RPM</span>
                                                </div>
                                                <div class="product-price">
                                                    <span>1.5 Lakhs</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="product-wrapper-bundle">
                                    <div class="product-wrapper">
                                        <div class="product-img">
                                            <a href="${pageContext.request.contextPath}/fz">
                                                <img src="assets/img/product/bike-1-7.png" alt="">
                                            </a>
                                            <div class="product-item-dec">
                                                <ul>
                                                    <li>2008</li>
                                                    <li>MANUAL</li>
                                                    <li>PETROL</li>
                                                    <li>149 CC</li>
                                                </ul>
                                            </div>
                                            <div class="product-action">
                                                <!--<a class="action-plus-2" title="Add To Cart" href="#">
                                                <i class=" ti-shopping-cart"></i>
                                            </a>
                                            <a class="action-cart-2" title="Wishlist" href="#">
                                                <i class=" ti-heart"></i>-->
                                                <h4 style="font-weight:bold;">Yamaha FZ</h4>
                                                <!--</a>
                                            <a class="action-reload" title="Quick View" data-bs-toggle="modal"
                                                data-bs-target="#exampleModal" href="#">
                                                <i class=" ti-zoom-in"></i>
                                            </a>-->
                                            </div>
                                            <div class="product-content-wrapper">
                                                <div class="-title-spreed">
                                                    <h4><a href="${pageContext.request.contextPath}/fz">Yamaha FZ</a></h4>
                                                    <span>7250 RPM</span>
                                                </div>
                                                <div class="product-price">
                                                    <span>1.5 Lakhs</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="product-wrapper">
                                        <div class="product-img">
                                            <a href="${pageContext.request.contextPath}/aerox">
                                                <img src="assets/img/product/bike-1-8.png" alt="">
                                            </a>
                                            <div class="product-item-dec">
                                                <ul>
                                                    <li>2023</li>
                                                    <li>MANUAL</li>
                                                    <li>PETROL</li>
                                                    <li>155 CC</li>
                                                </ul>
                                            </div>
                                            <div class="product-action">
                                                <!--<a class="action-plus-2" title="Add To Cart" href="#">
                                                <i class=" ti-shopping-cart"></i>
                                            </a>
                                            <a class="action-cart-2" title="Wishlist" href="#">
                                                <i class=" ti-heart"></i>-->
                                                <h4 style="font-weight:bold;">Yamaha Aerox</h4>
                                                <!--</a>
                                            <a class="action-reload" title="Quick View" data-bs-toggle="modal"
                                                data-bs-target="#exampleModal" href="#">
                                                <i class=" ti-zoom-in"></i>
                                            </a>-->
                                            </div>
                                            <div class="product-content-wrapper">
                                                <div class="product-title-spreed">
                                                    <h4><a href="${pageContext.request.contextPath}/aerox">Yamaha Aerox</a></h4>
                                                    <span>8000 RPM</span>
                                                </div>
                                                <div class="product-price">
                                                    <span>1.5 Lakhs</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>


                                </div>
                            </div>
                        </div>
                        <div class="tab-pane" id="home2">
                            <div class="product-slider-active owl-carousel">
                                <div class="product-wrapper-bundle">
                                    <div class="product-wrapper mb-30">
                                        <div class="product-img">
                                            <a href="product-details.html">
                                                <img src="assets/img/product/bike-1-9.png" alt="">
                                            </a>
                                            <div class="product-item-dec">
                                                <ul>
                                                    <li>2018</li>
                                                    <li>MANUAL</li>
                                                    <li>PETROL</li>
                                                    <li>250 CC</li>
                                                </ul>
                                            </div>
                                            <div class="product-action">
                                                <a class="action-plus-2" title="Add To Cart" href="#">
                                                    <i class=" ti-shopping-cart"></i>
                                                </a>
                                                <a class="action-cart-2" title="Wishlist" href="#">
                                                    <i class=" ti-heart"></i>
                                                </a>
                                                <a class="action-reload" title="Quick View" data-bs-toggle="modal"
                                                    data-bs-target="#exampleModal" href="#">
                                                    <i class=" ti-zoom-in"></i>
                                                </a>
                                            </div>
                                            <div class="product-content-wrapper">
                                                <div class="product-title-spreed">
                                                    <h4><a href="product-details.html">Gloriori GSX 250 R</a></h4>
                                                    <span>6600 RPM</span>
                                                </div>
                                                <div class="product-price">
                                                    <span>$2549</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="product-wrapper mb-30">
                                        <div class="product-img">
                                            <a href="product-details.html">
                                                <img src="assets/img/product/product-5.jpg" alt="">
                                            </a>
                                            <div class="product-item-dec">
                                                <ul>
                                                    <li>2018</li>
                                                    <li>MANUAL</li>
                                                    <li>PETROL</li>
                                                    <li>480 CC</li>
                                                </ul>
                                            </div>
                                            <div class="product-action">
                                                <a class="action-plus-2" title="Add To Cart" href="#">
                                                    <i class=" ti-shopping-cart"></i>
                                                </a>
                                                <a class="action-cart-2" title="Wishlist" href="#">
                                                    <i class=" ti-heart"></i>
                                                </a>
                                                <a class="action-reload" title="Quick View" data-bs-toggle="modal"
                                                    data-bs-target="#exampleModal" href="#">
                                                    <i class=" ti-zoom-in"></i>
                                                </a>
                                            </div>
                                            <div class="product-content-wrapper">
                                                <div class="product-title-spreed">
                                                    <h4><a href="product-details.html">Demonissi Gori</a></h4>
                                                    <span>6700 RPM</span>
                                                </div>
                                                <div class="product-price">
                                                    <span>$2549</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="product-wrapper-bundle">
                                    <div class="product-wrapper mb-30">
                                        <div class="product-img">
                                            <a href="product-details.html">
                                                <img src="assets/img/product/product-4.jpg" alt="">
                                            </a>
                                            <div class="product-item-dec">
                                                <ul>
                                                    <li>2018</li>
                                                    <li>MANUAL</li>
                                                    <li>PETROL</li>
                                                    <li>200 CC</li>
                                                </ul>
                                            </div>
                                            <div class="product-action">
                                                <a class="action-plus-2" title="Add To Cart" href="#">
                                                    <i class=" ti-shopping-cart"></i>
                                                </a>
                                                <a class="action-cart-2" title="Wishlist" href="#">
                                                    <i class=" ti-heart"></i>
                                                </a>
                                                <a class="action-reload" title="Quick View" data-bs-toggle="modal"
                                                    data-bs-target="#exampleModal" href="#">
                                                    <i class=" ti-zoom-in"></i>
                                                </a>
                                            </div>
                                            <div class="product-content-wrapper">
                                                <div class="product-title-spreed">
                                                    <h4><a href="product-details.html">Klager GSX 250 R</a></h4>
                                                    <span>5500 RPM</span>
                                                </div>
                                                <div class="product-price">
                                                    <span>$2549</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="product-wrapper mb-30">
                                        <div class="product-img">
                                            <a href="product-details.html">
                                                <img src="assets/img/product/product-3.jpg" alt="">
                                            </a>
                                            <div class="product-item-dec">
                                                <ul>
                                                    <li>2018</li>
                                                    <li>MANUAL</li>
                                                    <li>PETROL</li>
                                                    <li>150 CC</li>
                                                </ul>
                                            </div>
                                            <div class="product-action">
                                                <a class="action-plus-2" title="Add To Cart" href="#">
                                                    <i class=" ti-shopping-cart"></i>
                                                </a>
                                                <a class="action-cart-2" title="Wishlist" href="#">
                                                    <i class=" ti-heart"></i>
                                                </a>
                                                <a class="action-reload" title="Quick View" data-bs-toggle="modal"
                                                    data-bs-target="#exampleModal" href="#">
                                                    <i class=" ti-zoom-in"></i>
                                                </a>
                                            </div>
                                            <div class="product-content-wrapper">
                                                <div class="product-title-spreed">
                                                    <h4><a href="product-details.html">Maxclon ZPE 54</a></h4>
                                                    <span>3300 RPM</span>
                                                </div>
                                                <div class="product-price">
                                                    <span>$2549</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="product-wrapper-bundle">
                                    <div class="product-wrapper mb-30">
                                        <div class="product-img">
                                            <a href="product-details.html">
                                                <img src="assets/img/product/product-2.jpg" alt="">
                                            </a>
                                            <div class="product-item-dec">
                                                <ul>
                                                    <li>2018</li>
                                                    <li>MANUAL</li>
                                                    <li>PETROL</li>
                                                    <li>150 CC</li>
                                                </ul>
                                            </div>
                                            <div class="product-action">
                                                <a class="action-plus-2" title="Add To Cart" href="#">
                                                    <i class=" ti-shopping-cart"></i>
                                                </a>
                                                <a class="action-cart-2" title="Wishlist" href="#">
                                                    <i class=" ti-heart"></i>
                                                </a>
                                                <a class="action-reload" title="Quick View" data-bs-toggle="modal"
                                                    data-bs-target="#exampleModal" href="#">
                                                    <i class=" ti-zoom-in"></i>
                                                </a>
                                            </div>
                                            <div class="product-content-wrapper">
                                                <div class="product-title-spreed">
                                                    <h4><a href="product-details.html">Matrio Max</a></h4>
                                                    <span>4600 RPM</span>
                                                </div>
                                                <div class="product-price">
                                                    <span>$2549</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="product-wrapper mb-30">
                                        <div class="product-img">
                                            <a href="product-details.html">
                                                <img src="assets/img/product/product-1.jpg" alt="">
                                            </a>
                                            <div class="product-item-dec">
                                                <ul>
                                                    <li>2018</li>
                                                    <li>MANUAL</li>
                                                    <li>PETROL</li>
                                                    <li>250 CC</li>
                                                </ul>
                                            </div>
                                            <div class="product-action">
                                                <a class="action-plus-2" title="Add To Cart" href="#">
                                                    <i class=" ti-shopping-cart"></i>
                                                </a>
                                                <a class="action-cart-2" title="Wishlist" href="#">
                                                    <i class=" ti-heart"></i>
                                                </a>
                                                <a class="action-reload" title="Quick View" data-bs-toggle="modal"
                                                    data-bs-target="#exampleModal" href="#">
                                                    <i class=" ti-zoom-in"></i>
                                                </a>
                                            </div>
                                            <div class="product-content-wrapper">
                                                <div class="product-title-spreed">
                                                    <h4><a href="product-details.html">Rigoniss Z 1000</a></h4>
                                                    <span>8000 RPM</span>
                                                </div>
                                                <div class="product-price">
                                                    <span>$2549</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="product-wrapper-bundle">
                                    <div class="product-wrapper mb-30">
                                        <div class="product-img">
                                            <a href="product-details.html">
                                                <img src="assets/img/product/product-2.jpg" alt="">
                                            </a>
                                            <div class="product-item-dec">
                                                <ul>
                                                    <li>2018</li>
                                                    <li>MANUAL</li>
                                                    <li>PETROL</li>
                                                    <li>250 CC</li>
                                                </ul>
                                            </div>
                                            <div class="product-action">
                                                <a class="action-plus-2" title="Add To Cart" href="#">
                                                    <i class=" ti-shopping-cart"></i>
                                                </a>
                                                <a class="action-cart-2" title="Wishlist" href="#">
                                                    <i class=" ti-heart"></i>
                                                </a>
                                                <a class="action-reload" title="Quick View" data-bs-toggle="modal"
                                                    data-bs-target="#exampleModal" href="#">
                                                    <i class=" ti-zoom-in"></i>
                                                </a>
                                            </div>
                                            <div class="product-content-wrapper">
                                                <div class="product-title-spreed">
                                                    <h4><a href="product-details.html">Klager GSX 250 R</a></h4>
                                                    <span>5500 RPM</span>
                                                </div>
                                                <div class="product-price">
                                                    <span>$2549</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="product-wrapper mb-30">
                                        <div class="product-img">
                                            <a href="product-details.html">
                                                <img src="assets/img/product/product-5.jpg" alt="">
                                            </a>
                                            <div class="product-item-dec">
                                                <ul>
                                                    <li>2018</li>
                                                    <li>MANUAL</li>
                                                    <li>PETROL</li>
                                                    <li>350 CC</li>
                                                </ul>
                                            </div>
                                            <div class="product-action">
                                                <a class="action-plus-2" title="Add To Cart" href="#">
                                                    <i class=" ti-shopping-cart"></i>
                                                </a>
                                                <a class="action-cart-2" title="Wishlist" href="#">
                                                    <i class=" ti-heart"></i>
                                                </a>
                                                <a class="action-reload" title="Quick View" data-bs-toggle="modal"
                                                    data-bs-target="#exampleModal" href="#">
                                                    <i class=" ti-zoom-in"></i>
                                                </a>
                                            </div>
                                            <div class="product-content-wrapper">
                                                <div class="product-title-spreed">
                                                    <h4><a href="product-details.html">Maxclon ZPE 54</a></h4>
                                                    <span>3300 RPM</span>
                                                </div>
                                                <div class="product-price">
                                                    <span>$2549</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>




        <!--discount-->
        <div class="wrapper">
            <div class="latest-product-area pt-205 pb-145 bg-img"
                style="background-image: url(assets/img/banner/banner-4.jpg)">
                <div class="container-fluid">
                    <div class="latest-product-slider owl-carousel">
                        <div class="single-latest-product slider-animated-2">
                            <div class="row">
                                <div class="col-lg-7 col-md-12 col-12">
                                    <div class="latest-product-img">
                                        <img class="animated" src="assets/img/banner/bike-dis.png" alt="image">
                                    </div>
                                </div>
                                <div class="col-lg-5 col-md-12 col-12">
                                    <div class="latest-product-content">
                                        <h2 class="animated">LATEST OFFER <br>FOR POPULAR BIKES</h2>
                                        <p class="animated"><span></span> Unlock unbeatable savings on top-quality
                                            bikes with up to 20% OFF! Plus, enjoy free shipping, exclusive accessories,
                                            and
                                            flexible payment options for a limited time only. </p>
                                        <div class="latest-price">
                                            <h3 class="animated">NOW AT <span>₹1250</span></h3>
                                            <span class="animated">35% DISCOUNT</span>
                                        </div>
                                        <div class="latext-btn">
                                            <a class="animated" href="register.php">REGISTER NOW</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="single-latest-product slider-animated-2">
                            <div class="row">
                                <div class="col-lg-7 col-col-12 col-12">
                                    <div class="latest-product-img">
                                        <img class="animated" src="assets/img/banner/bike-dis.png" alt="image">
                                    </div>
                                </div>
                                <div class="col-lg-5 col-col-12 col-12">
                                    <div class="latest-product-content">
                                        <h2 class="animated">LATEST OFFER <br>FOR POPULAR BIKES</h2>
                                        <p class="animated"><span></span> Unlock unbeatable savings on top-quality
                                            bikes with up to 20% OFF! Plus, enjoy free shipping, exclusive accessories,
                                            and
                                            flexible payment options for a limited time only. </p>
                                        <div class="latest-price">
                                            <h3 class="animated">NOW AT <span>₹1250</span></h3>
                                            <span class="animated">35% DISCOUNT</span>
                                        </div>
                                        <div class="latext-btn">
                                            <a class="animated" href="#">SELECT A BIKE</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>





        <!--accessories-->
        <div class="wrapper">
            <div class="accessories-area pt-152 pb-130">
                <div class="container-fluid">
                    <div class="section-title section-fluid text-center mb-60">
                        <h2>ACCESSORIES</h2>
                        <!--<p><span></span> Unlock unbeatable savings on top-quality
                        bikes with up to 20% OFF! Plus, enjoy free shipping, exclusive accessories, and
                        flexible payment options for a limited time only. </p>-->
                    </div>
                    <div class="accessories-wrapper">
                        <div class="product-accessories-active owl-carousel">
                            <div class="product-wrapper">
                                <div class="product-img">
                                    <a href="#">
                                        <img src="assets/img/product/product-7.jpg" alt="">
                                    </a>
                                    <div class="product-action">
                                        <a class="action-plus-2" title="Add To Cart" href="#">
                                            <i class=" ti-shopping-cart"></i>
                                        </a>
                                        <a class="action-cart-2" title="Wishlist" href="#">
                                            <i class=" ti-heart"></i>
                                        </a>
                                        <a class="action-reload" title="Quick View" data-bs-toggle="modal"
                                            data-bs-target="#exampleModal" href="#">
                                            <i class=" ti-zoom-in"></i>
                                        </a>
                                    </div>
                                    <div class="product-content-wrapper-2">
                                        <div class="product-title-price-2 text-center">
                                            <span>Price: ₹120</span>
                                            <h4><a href="product-details.html">Helmet</a></h4>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="product-wrapper">
                                <div class="product-img">
                                    <a href="product-details.html">
                                        <img src="assets/img/product/product-8.jpg" alt="">
                                    </a>
                                    <div class="product-action">
                                        <a class="action-plus-2" title="Add To Cart" href="#">
                                            <i class=" ti-shopping-cart"></i>
                                        </a>
                                        <a class="action-cart-2" title="Wishlist" href="#">
                                            <i class=" ti-heart"></i>
                                        </a>
                                        <a class="action-reload" title="Quick View" data-bs-toggle="modal"
                                            data-bs-target="#exampleModal" href="#">
                                            <i class=" ti-zoom-in"></i>
                                        </a>
                                    </div>
                                    <div class="product-content-wrapper-2">
                                        <div class="product-title-price-2 text-center">
                                            <span>Price: ₹180</span>
                                            <h4><a href="product-details.html">Jacket</a></h4>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="product-wrapper">
                                <div class="product-img">
                                    <a href="product-details.html">
                                        <img src="assets/img/product/product-9.jpg" alt="">
                                    </a>
                                    <div class="product-action">
                                        <a class="action-plus-2" title="Add To Cart" href="#">
                                            <i class=" ti-shopping-cart"></i>
                                        </a>
                                        <a class="action-cart-2" title="Wishlist" href="#">
                                            <i class=" ti-heart"></i>
                                        </a>
                                        <a class="action-reload" title="Quick View" data-bs-toggle="modal"
                                            data-bs-target="#exampleModal" href="#">
                                            <i class=" ti-zoom-in"></i>
                                        </a>
                                    </div>
                                    <div class="product-content-wrapper-2">
                                        <div class="product-title-price-2 text-center">
                                            <span>Price: ₹25</span>
                                            <h4><a href="product-details.html">Softy Glove</a></h4>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="product-wrapper">
                                <div class="product-img">
                                    <a href="product-details.html">
                                        <img src="assets/img/product/product-10.jpg" alt="">
                                    </a>
                                    <div class="product-action">
                                        <a class="action-plus-2" title="Add To Cart" href="#">
                                            <i class=" ti-shopping-cart"></i>
                                        </a>
                                        <a class="action-cart-2" title="Wishlist" href="#">
                                            <i class=" ti-heart"></i>
                                        </a>
                                        <a class="action-reload" title="Quick View" data-bs-toggle="modal"
                                            data-bs-target="#exampleModal" href="#">
                                            <i class=" ti-zoom-in"></i>
                                        </a>
                                    </div>
                                    <div class="product-content-wrapper-2">
                                        <div class="product-title-price-2 text-center">
                                            <span>Price: ₹140</span>
                                            <h4><a href="product-details.html">Boot</a></h4>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="product-wrapper">
                                <div class="product-img">
                                    <a href="product-details.html">
                                        <img src="assets/img/product/product-11.jpg" alt="">
                                    </a>
                                    <div class="product-action">
                                        <a class="action-plus-2" title="Add To Cart" href="#">
                                            <i class=" ti-shopping-cart"></i>
                                        </a>
                                        <a class="action-cart-2" title="Wishlist" href="#">
                                            <i class=" ti-heart"></i>
                                        </a>
                                        <a class="action-reload" title="Quick View" data-bs-toggle="modal"
                                            data-bs-target="#exampleModal" href="#">
                                            <i class=" ti-zoom-in"></i>
                                        </a>
                                    </div>
                                    <div class="product-content-wrapper-2">
                                        <div class="product-title-price-2 text-center">
                                            <span>Price: ₹150</span>
                                            <h4><a href="product-details.html">Boot</a></h4>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="product-wrapper">
                                <div class="product-img">
                                    <a href="product-details.html">
                                        <img src="assets/img/product/product-7.jpg" alt="">
                                    </a>
                                    <div class="product-action">
                                        <a class="action-plus-2" title="Add To Cart" href="#">
                                            <i class=" ti-shopping-cart"></i>
                                        </a>
                                        <a class="action-cart-2" title="Wishlist" href="#">
                                            <i class=" ti-heart"></i>
                                        </a>
                                        <a class="action-reload" title="Quick View" data-bs-toggle="modal"
                                            data-bs-target="#exampleModal" href="#">
                                            <i class=" ti-zoom-in"></i>
                                        </a>
                                    </div>
                                    <div class="product-content-wrapper-2">
                                        <div class="product-title-price-2 text-center">
                                            <span>Price: ₹150</span>
                                            <h4><a href="product-details.html">Helmet</a></h4>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="product-wrapper">
                                <div class="product-img">
                                    <a href="product-details.html">
                                        <img src="assets/img/product/product-8.jpg" alt="">
                                    </a>
                                    <div class="product-action">
                                        <a class="action-plus-2" title="Add To Cart" href="#">
                                            <i class=" ti-shopping-cart"></i>
                                        </a>
                                        <a class="action-cart-2" title="Wishlist" href="#">
                                            <i class=" ti-heart"></i>
                                        </a>
                                        <a class="action-reload" title="Quick View" data-bs-toggle="modal"
                                            data-bs-target="#exampleModal" href="#">
                                            <i class=" ti-zoom-in"></i>
                                        </a>
                                    </div>
                                    <div class="product-content-wrapper-2">
                                        <div class="product-title-price-2 text-center">
                                            <span>Price: ₹160</span>
                                            <h4><a href="product-details.html">Jacket</a></h4>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="product-wrapper">
                                <div class="product-img">
                                    <a href="product-details.html">
                                        <img src="assets/img/product/product-9.jpg" alt="">
                                    </a>
                                    <div class="product-action">
                                        <a class="action-plus-2" title="Add To Cart" href="#">
                                            <i class=" ti-shopping-cart"></i>
                                        </a>
                                        <a class="action-cart-2" title="Wishlist" href="#">
                                            <i class=" ti-heart"></i>
                                        </a>
                                        <a class="action-reload" title="Quick View" data-bs-toggle="modal"
                                            data-bs-target="#exampleModal" href="#">
                                            <i class=" ti-zoom-in"></i>
                                        </a>
                                    </div>
                                    <div class="product-content-wrapper-2">
                                        <div class="product-title-price-2 text-center">
                                            <span>Price: ₹120</span>
                                            <h4><a href="product-details.html">Helmet</a></h4>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>





        <!--client-->
        <div class="wrapper">
            <div class="testimonial-area">
                <div class="container">
                    <div class="section-title-2 section-title-position">
                        <h2>OUR CLIENTS REVIEW</h2>
                    </div>
                    <div class="testimonial-active owl-carousel">
                        <div class="single-testimonial">
                            <div class="row">
                                <div class="col-lg-5">
                                    <div class="testimonial-img pl-75">
                                        <img alt="image" src="assets/img/team/testimonial-1-1.png">
                                    </div>
                                </div>
                                <div class="col-lg-7">
                                    <div class="testimonial-content">
                                        <div class="testimonial-dec">
                                            <p><span></span> I’ve been riding my Yamaha bike for a few weeks now, and
                                                I’m
                                                beyond impressed! The performance is outstanding, with smooth handling
                                                and
                                                great fuel efficiency. The customer service was top-notch, making the
                                                entire
                                                purchase process seamless and enjoyable!</p>
                                        </div>
                                        <div class="name-designation">
                                            <h4>Ravi Kumar</h4>
                                            <span>Chennai</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="single-testimonial">
                            <div class="row">
                                <div class="col-lg-5 col-md-12 col-12">
                                    <div class="testimonial-img pl-75">
                                        <img alt="image" src="assets/img/team/testimonial-2.png">
                                    </div>
                                </div>
                                <div class="col-lg-7 col-md-12 col-12">
                                    <div class="testimonial-content">
                                        <div class="testimonial-dec">
                                            <p><span></span> I recently bought a Yamaha bike, and the experience was
                                                excellent! The staff were knowledgeable and made the process easy. The
                                                bike
                                                runs flawlessly, and I’m extremely satisfied with both the service and
                                                performance!</p>
                                        </div>
                                        <div class="name-designation">
                                            <h4>Arun Prakash</h4>
                                            <span>Salem</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>




        <!--blog post-->
        <div class="wrapper">
            <div class="blog-area pt-150 pb-110">
                <div class="container">
                    <div class="section-title text-center mb-60">
                        <h2>BLOG POST</h2>
                        <!-- <p><span>OSWAN</span> the most latgest bike store in the wold can serve you latest qulity of
                        motorcycle also you can sell here your motorcycle</p>-->
                    </div>
                    <div class="row">
                        <div class="col-lg-4 col-md-6">
                            <div class="blog-hm-wrapper mb-40">
                                <div class="blog-img">
                                    <a href="blog-details.html"><img src="assets/img/blog/blog-hm-1-1.png"
                                            alt="image"></a>
                                    <div class="blog-date">
                                        <h4>24 February, 2024</h4>
                                    </div>
                                    <div class="blog-hm-social">
                                        <ul>
                                            <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                            <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                            <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="blog-hm-content">
                                    <h3><a href="blog-details.html">Why Yamaha Bikes Are the Ultimate Choice for
                                            Riders</a>
                                    </h3>
                                    <p><span></span> Yamaha bikes combine cutting-edge technology, sleek design, and
                                        unmatched performance for riders who crave adventure and reliability. Whether
                                        you're
                                        commuting or exploring new terrains, Yamaha delivers a smooth, powerful ride
                                        every
                                        time. </p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6">
                            <div class="blog-hm-wrapper mb-40">
                                <div class="blog-img">
                                    <a href="blog-details.html"><img src="assets/img/blog/blog-hm-2-2.png"
                                            alt="image"></a>
                                    <div class="blog-date">
                                        <h4>22 February, 2024</h4>
                                    </div>
                                    <div class="blog-hm-social">
                                        <ul>
                                            <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                            <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                            <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="blog-hm-content">
                                    <h3><a href="blog-details.html">Experience the Power of Yamaha Bikes</a></h3>
                                    <p><span></span> With Yamaha’s legacy of innovation and precision engineering, every
                                        ride promises exhilarating performance, exceptional comfort, and style. Whether
                                        you're a city rider or a weekend adventurer, Yamaha bikes are built to take you
                                        further.</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-6">
                            <div class="blog-hm-wrapper mb-40">
                                <div class="blog-img">
                                    <a href="blog-details.html"><img src="assets/img/blog/blog-hm-3-3.png"
                                            alt="image"></a>
                                    <div class="blog-date">
                                        <h4>20 February, 2024</h4>
                                    </div>
                                    <div class="blog-hm-social">
                                        <ul>
                                            <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                            <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                            <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="blog-hm-content">
                                    <h3><a href="blog-details.html">Unleash the Ride of Your Life with Yamaha Bikes!</a>
                                    </h3>
                                    <p><span></span>Experience unbeatable power, style, and reliability with Yamaha
                                        bikes.
                                        Built for adventure, designed for comfort—your perfect ride awaits!</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>



        <jsp:include page="footer.jsp" />












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

    </html>
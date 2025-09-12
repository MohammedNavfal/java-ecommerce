<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <style>
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


        @media (max-width: 768px) {

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
                max-width: 100px;
                /* Make sure the image is responsive */
                height: 100px;
                /* Maintain the aspect ratio */
            }
        }
    </style>




    <div class="wrapper">
        <!-- header start -->
        <header>
            <div class="header-area transparent-bar ptb-55">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-4 col-md-4 col-4">
                            <div class="logo-small-device">
                                <!--<a href="index.html"><img alt="" src="assets/img/logo/logo.png"></a>-->
                            </div>
                        </div>
                        <div class="col-lg-8 col-md-8 col-8">
                            <div class="header-contact-menu-wrapper pl-45">
                                <div class="header-contact">
                                    <p>WANT TO TALK WITH US 077087 26820</p>
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
                                                            <ul>
                                                                <li><a href="about-us.html">about us</a></li>
                                                                <li><a href="cart.html">cart page</a></li>
                                                                <li><a href="checkout.html">checkout</a></li>
                                                                <li><a href="wishlist.html">wishlist</a></li>
                                                                <li><a href="login-register.html">login</a></li>
                                                                <li><a href="contact.html">contact</a></li>
                                                            </ul>
                                                        </li>
                                                        <li><a href="cart.html">cart page</a></li>
                                                        <li><a href="checkout.html">checkout</a></li>
                                                        <li><a href="wishlist.html">wishlist</a></li>
                                                        <li><a href="login-register.html">login</a></li>
                                                        <li><a href="contact.html">contact</a></li>
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
                                                        <li><a href="about-us.html">about us</a></li>
                                                        <li><a href="cart.html">cart page</a></li>
                                                        <li><a href="checkout.html">checkout</a></li>
                                                        <li><a href="wishlist.html">wishlist</a></li>
                                                        <li><a href="login-register.html">login</a></li>
                                                        <li><a href="contact.html">contact</a></li>
                                                    </ul>-->
                                                </li>
                                                <!--<li><a href="#">parts</a>
                                                    <ul>
                                                        <li><a href="about-us.html">about us</a></li>
                                                        <li><a href="cart.html">cart page</a></li>
                                                        <li><a href="checkout.html">checkout</a></li>
                                                        <li><a href="wishlist.html">wishlist</a></li>
                                                        <li><a href="login-register.html">login</a></li>
                                                        <li><a href="contact.html">contact</a></li>
                                                    </ul>
                                                </li>
                                                <li class="active"><a href="about-us.html">motogp</a></li>
                                                <li><a href="#">events</a>
                                                    <ul>
                                                        <li><a href="about-us.html">about us</a></li>
                                                        <li><a href="cart.html">cart page</a></li>
                                                        <li><a href="checkout.html">checkout</a></li>
                                                        <li><a href="wishlist.html">wishlist</a></li>
                                                        <li><a href="login-register.html">login</a></li>
                                                        <li><a href="contact.html">contact</a></li>
                                                    </ul>
                                                </li>
                                                <li class="active"><a href="about-us.html">contact us</a></li>
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
                                                        <li><a href="about-us.html">about us</a></li>
                                                        <li><a href="cart.html">cart page</a></li>
                                                        <li><a href="checkout.html">checkout</a></li>
                                                        <li><a href="wishlist.html">wishlist</a></li>
                                                        <li><a href="login-register.html">login</a></li>
                                                        <li><a href="contact.html">contact</a></li>
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
                                                <li><a href="contact.html">contact us</a></li>-->
                                            </ul>
                                        </nav>
                                    </div>
                                </div>
                            </div>
                            <div class="header-cart cart-small-device">
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
                                                <li><a href="about-us.html">about us</a></li>
                                                <li><a href="cart.html">cart page</a></li>
                                                <li><a href="checkout.html">checkout</a></li>
                                                <li><a href="wishlist.html">wishlist</a></li>
                                                <li><a href="login-register.html">login</a></li>
                                                <li><a href="contact.html">contact</a></li>
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
                                        <!--<li><a href="#">BLOG</a>
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
                            <img src="assets/img/logo/winh.png" alt="Overlay Image" class="logostick logostick-w">
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
                        </div>-->
                    </div>
                </div>
            </div>
        </header>
    </div>
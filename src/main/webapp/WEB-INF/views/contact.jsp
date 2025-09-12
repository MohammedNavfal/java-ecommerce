<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!doctype html>
    <html class="no-js" lang="zxx">


    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Contact us - royalkingmotors</title>
        <meta name="description" content="Live Preview Of Oswan eCommerce HTML5 Template">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- Favicon -->
        <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.png">

        <!-- all css here -->
        <link rel="stylesheet" href="assets/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/css/animate.css">
        <link rel="stylesheet" href="assets/css/owl.carousel.min.css">
        <link rel="stylesheet" href="assets/css/chosen.min.css">
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
                        <h2>Contact Us</h2>
                        <ul>
                            <li>
                                <a href="${pageContext.request.contextPath}/home">home</a>
                            </li>
                            <li>Contact Us</li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="contact-area pt-130">
                <div class="container">
                    <div class="contact-map">
                        <div class="mapouter">
                            <div class="gmap_canvas">
                                <!--<iframe id="gmap_canvas" style="width:100%; height:450px;"
                                src="https://maps.google.com/maps?q=121%20King%20St%2C%20Melbourne%20VIC%203000%2C%20Australia&amp;t=&amp;z=13&amp;ie=UTF8&amp;iwloc=&amp;output=embed"></iframe>-->
                                <iframe id="gmap_canvas" style="width:100%; height:450px;"
                                    src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d62481.67595753348!2d77.87266754863279!3d11.82793710000001!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bac019ce44bcde3%3A0x301bc7b2687fae6d!2sROYAL%20KING%20MOTOR%20%2CYamaha%20Showroom!5e0!3m2!1sen!2sin!4v1733241250835!5m2!1sen!2sin"
                                    style="border:0;" allowfullscreen="" loading="lazy"
                                    referrerpolicy="no-referrer-when-downgrade">
                                </iframe>

                                <a href="https://sites.google.com/view/maps-api-v2/mapv2"></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="all-info ptb-130">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="contact-info-wrapper">
                                    <h4 class="contact-title">INFORMATION</h4>
                                    <div class="communication-info">
                                        <div class="single-communication">
                                            <div class="communication-icon">
                                                <i class="ti-home" aria-hidden="true"></i>
                                            </div>
                                            <div class="communication-text">
                                                <h4>Address:</h4>
                                                <p>Salem Main Rd, near water tank, kolkaranur, Mecheri, Tamil Nadu
                                                    636453
                                                </p>
                                            </div>
                                        </div>
                                        <div class="single-communication">
                                            <div class="communication-icon">
                                                <i class="ti-mobile" aria-hidden="true"></i>
                                            </div>
                                            <div class="communication-text">
                                                <h4>Phone:</h4>
                                                <p>077087 26820</p>
                                            </div>
                                        </div>
                                        <div class="single-communication">
                                            <div class="communication-icon">
                                                <i class="ti-email" aria-hidden="true"></i>
                                            </div>
                                            <div class="communication-text">
                                                <h4>Email:</h4>
                                                <p><a href="#">royalkingmotors@gmail.com</a></p>
                                            </div>
                                        </div>
                                        <div class="single-communication">
                                            <div class="communication-icon">
                                                <i class="ti-world" aria-hidden="true"></i>
                                            </div>
                                            <div class="communication-text">
                                                <h4>Website:</h4>
                                                <p><a href="#">www.royalkingmotors.com</a></p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="contact-message-wrapper">
                                    <h4 class="contact-title">GET IN TOUCH</h4>
                                    <div class="contact-message">
                                        <form id="contact-form" action="https://whizthemes.com/nazmul/php/mail.php"
                                            method="post">
                                            <div class="row">
                                                <div class="col-lg-6">
                                                    <div class="contact-form-style mb-20">
                                                        <input name="name" placeholder="Full Name" type="text">
                                                    </div>
                                                </div>
                                                <div class="col-lg-6">
                                                    <div class="contact-form-style mb-20">
                                                        <input name="email" placeholder="Eail Address" type="email">
                                                    </div>
                                                </div>
                                                <div class="col-lg-12">
                                                    <div class="contact-form-style mb-20">
                                                        <input name="subject" placeholder="Subject" type="text">
                                                    </div>
                                                </div>
                                                <div class="col-lg-12">
                                                    <div class="contact-form-style">
                                                        <textarea name="message" placeholder="Massage"></textarea>
                                                        <button class="submit cr-btn btn-style" type="submit"><span>SEND
                                                                MASSAGE</span></button>
                                                    </div>
                                                </div>
                                            </div>
                                        </form>
                                        <p class="form-messege"></p>
                                    </div>
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

    <!-- Mirrored from htmldemo.net/tm/oswan/oswan/contact.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 07 Sep 2024 12:44:48 GMT -->

    </html>
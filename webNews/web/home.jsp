<%-- 
    Document   : home
    Created on : Jul 8, 2023, 4:32:35 PM
    Author     : kiemq
--%>

<%@page import="dal.UserDao"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="model.User"%>
<%@page import="java.util.List"%>
<%@page import="model.News"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html class="no-js" lang="zxx">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>News</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="manifest" href="site.webmanifest">
        <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">

        <link rel="stylesheet" href="assets/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/css/owl.carousel.min.css">
        <link rel="stylesheet" href="assets/css/slicknav.css">
        <link rel="stylesheet" href="assets/css/flaticon.css">
        <link rel="stylesheet" href="assets/css/progressbar_barfiller.css">
        <link rel="stylesheet" href="assets/css/gijgo.css">
        <link rel="stylesheet" href="assets/css/animate.min.css">
        <link rel="stylesheet" href="assets/css/animated-headline.css">
        <link rel="stylesheet" href="assets/css/magnific-popup.css">
        <link rel="stylesheet" href="assets/css/fontawesome-all.min.css">
        <link rel="stylesheet" href="assets/css/themify-icons.css">
        <link rel="stylesheet" href="assets/css/slick.css">
        <link rel="stylesheet" href="assets/css/nice-select.css">
        <link rel="stylesheet" href="assets/css/style.css">
        <link rel="stylesheet" href="style.css">    
    </head>
    <body class="full-wrapper">

        <div id="preloader-active">
            <div class="preloader d-flex align-items-center justify-content-center">
                <div class="preloader-inner position-relative">
                    <div class="preloader-circle"></div>
                    <div class="preloader-img pere-text">
                        vietnamxua
                    </div>
                </div>
            </div>
        </div>

        <header>

            <div class="header-area ">
                <div class="main-header header-sticky">
                    <div class="container-fluid">
                        <div class="menu-wrapper d-flex align-items-center justify-content-between">
                            <div class="header-left d-flex align-items-center">

                                <div class="logo">
                                    <a href="index.html">vietnamxua.net</a>
                                </div>

                                <div class="main-menu  d-none d-lg-block">
                                    <nav>
                                        <ul id="navigation">
                                            <li><a href="newslist">Home</a></li>
                                            <li><a href="about.html">About</a></li>
                                            <li><a href="newslist">Blog</a>
                                                <ul class="submenu">
                                                    <li><a href="news">Blog</a></li>
                                                    <li><a href="blog_details.html">Blog Details</a></li>
                                                </ul>
                                            </li>
                                            <li><a href="contact.html">Contact</a></li>
                                        </ul>
                                    </nav>
                                </div>
                            </div>
                            <div class="header-right1 d-flex align-items-center">

                                <div class="search d-none d-md-block">
                                    <ul class="d-flex align-items-center">
                                        <li class="mr-15">
                                            <c:if test="${sessionScope.account!=null}">
                                                <div class="card-stor">
                                                    <a href="logout">
                                                        <span>Logout</span>

                                                    </a>
                                                </div>
                                            </c:if>


                                        </li>
                                        <li>
                                            <div class="card-stor">
                                                <c:if test="${sessionScope.account==null}">
                                                    <a href="login.jsp">
                                                        <span>LOGIN</span>

                                                    </a>

                                                </c:if>
                                                <c:if test="${sessionScope.account!=null}">
                                                    <span>${sessionScope.account.fullname}</span>

                                                </c:if>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>

                            <div class="col-12">
                                <div class="mobile_menu d-block d-lg-none"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </header>

        <main>

            <div class="container-fluid">
                <div class="slider-area">

                    <div class="header-right2 d-flex align-items-center">


                        <div class="search d-block d-md-none">
                            <ul class="d-flex align-items-center">
                                <li>
                                    <div class="card-stor">
                                        <img src="assets/img/gallery/card.svg" alt="">
                                        <span>0</span>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>

                    <div class="slider-active dot-style">

                        <div class="single-slider slider-bg1 hero-overly slider-height d-flex align-items-center">
                            <div class="container">
                                <div class="row justify-content-center">
                                    <div class="col-xl-8 col-lg-9">

                                        <div class="hero__caption">
                                            <h1>vietnam<br>ancient<br>days</h1>
                                            <a href="#" class="btn">Read Now</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="single-slider slider-bg2 hero-overly slider-height d-flex align-items-center">
                            <div class="container">
                                <div class="row justify-content-center">
                                    <div class="col-xl-8 col-lg-9">

                                        <div class="hero__caption">
                                            <h1>news<br>everyday<br>always</h1>
                                            <a href="#" class="btn">Read Now</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="single-slider slider-bg3 hero-overly slider-height d-flex align-items-center">
                            <div class="container">
                                <div class="row justify-content-center">
                                    <div class="col-xl-8 col-lg-9">

                                        <div class="hero__caption">
                                            <h1>news<br>everyday<br>always</h1>
                                            <a href="#" class="btn">Read Now</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


            <div class="popular-items pt-50">
                <div class="container-fluid">
                    <div class="row">
                        <c:forEach var="o" items="${listC}">
                            <div class="col-lg-4 col-md-6 col-sm-6">
                                <div class="single-popular-items mb-50 text-center wow fadeInUp" data-wow-duration="1s" data-wow-delay=".1s">
                                    <div class="popular-img">
                                        <img src="${o.image}" alt="">
                                        <div class="img-cap">
                                            <span>${o.name}</span>
                                        </div>
                                        <div class="favorit-items">
                                            <a href="detail?id=${o.id}" class="btn">Read Now</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>

                    </div>
                </div>
            </div>





            <section class="collection section-bg2 section-padding30 section-over1 ml-15 mr-15 slider-bg2" >
                <div class="container-fluid"></div>
                <div class="row justify-content-center">
                    <div class="col-xl-7 col-lg-9">
                        <div class="single-question text-center">
                            <h2 class="wow fadeInUp" data-wow-duration="2s" data-wow-delay=".1s">${news.title}</h2>
                            <a href="#" class="btn" wow fadeInUp" data-wow-duration="2s" data-wow-delay=".4s">About Us</a>
                        </div>
                    </div>
                </div>
                </div>
            </section>


            <div class="popular-product pt-50">
                <div class="container-fluid">
                    <div class="row">
                        <c:forEach var="o" items="${top2}">
                            <div class="col-lg-6 col-md-6 col-sm-12">
                                <div class="single-product mb-50">
                                    <div class="location-img">
                                        <img src="${o.image}" alt="">
                                    </div>
                                    <div class="location-details">
                                        <p><a href="detail?id=${o.id}">${o.title}</a></p>
                                        <a href="detail?id=${o.id}" class="btn">Read More</a>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>


                    </div>
                </div>
            </div>


            <div class="categories-area section-padding40 gray-bg">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-3 col-md-6 col-sm-6">
                            <div class="single-cat mb-50 wow fadeInUp" data-wow-duration="1s" data-wow-delay=".2s">
                                <div class="cat-icon">
                                    <img src="assets/img/icon/services1.svg" alt="">
                                </div>
                                <div class="cat-cap">
                                    <h5>Fast & Free Delivery</h5>
                                    <p>Free delivery on all orders</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-6 col-sm-6">
                            <div class="single-cat mb-50 wow fadeInUp" data-wow-duration="1s" data-wow-delay=".2s">
                                <div class="cat-icon">
                                    <img src="assets/img/icon/services2.svg" alt="">
                                </div>
                                <div class="cat-cap">
                                    <h5>Fast & Free Delivery</h5>
                                    <p>Free delivery on all orders</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-6 col-sm-6">
                            <div class="single-cat mb-30 wow fadeInUp" data-wow-duration="1s" data-wow-delay=".4s">
                                <div class="cat-icon">
                                    <img src="assets/img/icon/services3.svg" alt="">
                                </div>
                                <div class="cat-cap">
                                    <h5>Fast & Free Delivery</h5>
                                    <p>Free delivery on all orders</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-3 col-md-6 col-sm-6">
                            <div class="single-cat wow fadeInUp" data-wow-duration="1s" data-wow-delay=".5s">
                                <div class="cat-icon">
                                    <img src="assets/img/icon/services4.svg" alt="">
                                </div>
                                <div class="cat-cap">
                                    <h5>Fast & Free Delivery</h5>
                                    <p>Free delivery on all orders</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </main>
        <footer>

            <div class="footer-area footer-padding">
                <div class="container-fluid ">
                    <div class="row d-flex justify-content-between">
                        <div class="col-xl-3 col-lg-3 col-md-8 col-sm-8">
                            <div class="single-footer-caption mb-50">
                                <div class="single-footer-caption mb-30">

                                    <div class="footer-logo mb-35">
                                        <a href="index.html"><img src="assets/img/logo/logo2_footer.png" alt=""></a>
                                    </div>
                                    <div class="footer-tittle">
                                        <div class="footer-pera">
                                            <p>Suspendisse varius enim in eros elementum tristique. Duis cursus, mi quis viverra ornare, eros dolor interdum nulla.</p>
                                        </div>
                                    </div>

                                    <div class="footer-social">
                                        <a href="#"><i class="fab fa-twitter"></i></a>
                                        <a href="https://bit.ly/sai4ull"><i class="fab fa-facebook-f"></i></a>
                                        <a href="#"><i class="fab fa-pinterest-p"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-2 col-lg-2 col-md-4 col-sm-4">
                            <div class="single-footer-caption mb-50">
                                <div class="footer-tittle">
                                    <h4>Quick links</h4>
                                    <ul>
                                        <li><a href="#">Image Licensin</a></li>
                                        <li><a href="#">Style Guide</a></li>
                                        <li><a href="#">Privacy Policy</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-2 col-lg-2 col-md-4 col-sm-4">
                            <div class="single-footer-caption mb-50">
                                <div class="footer-tittle">
                                    <h4>Shop Category</h4>
                                    <ul>
                                        <li><a href="#">Image Licensin</a></li>
                                        <li><a href="#">Style Guide</a></li>
                                        <li><a href="#">Privacy Policy</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-2 col-lg-2 col-md-4 col-sm-4">
                            <div class="single-footer-caption mb-50">
                                <div class="footer-tittle">
                                    <h4>Pertners</h4>
                                    <ul>
                                        <li><a href="#">Image Licensin</a></li>
                                        <li><a href="#">Style Guide</a></li>
                                        <li><a href="#">Privacy Policy</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-2 col-lg-3 col-md-4 col-sm-4">
                            <div class="single-footer-caption mb-50">
                                <div class="footer-tittle">
                                    <h4>Get in touch</h4>
                                    <ul>
                                        <li><a href="#">(89) 982-278 356</a></li>
                                        <li><a href="#"><span class="__cf_email__" data-cfemail="086c6d6567486b6764677a64616a266b6765">[email&#160;protected]</span></a></li>
                                        <li><a href="#">67/A, Colorlib, Green road, NYC</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="footer-bottom-area">
                <div class="container">
                    <div class="footer-border">
                        <div class="row d-flex align-items-center">
                            <div class="col-xl-12 ">
                                <div class="footer-copy-right text-center">
                                    <p>
                                        Copyright &copy;<script data-cfasync="false" src="/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script><script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </footer>

        <div class="search-model-box">
            <div class="h-100 d-flex align-items-center justify-content-center">
                <div class="search-close-btn">+</div>
                <form class="search-model-form">
                    <input type="text" id="search-input" placeholder="Searching key.....">
                </form>
            </div>
        </div>


        <div id="back-top">
            <a title="Go to Top" href="#"> <i class="fas fa-level-up-alt"></i></a>
        </div>


        <script src="./assets/js/vendor/modernizr-3.5.0.min.js"></script>
        <script src="./assets/js/vendor/jquery-1.12.4.min.js"></script>
        <script src="./assets/js/popper.min.js"></script>
        <script src="./assets/js/bootstrap.min.js"></script>

        <script src="./assets/js/owl.carousel.min.js"></script>
        <script src="./assets/js/slick.min.js"></script>
        <script src="./assets/js/jquery.slicknav.min.js"></script>

        <script src="./assets/js/wow.min.js"></script>
        <script src="./assets/js/animated.headline.js"></script>
        <script src="./assets/js/jquery.magnific-popup.js"></script>
        <script src="./assets/js/gijgo.min.js"></script>

        <script src="./assets/js/jquery.nice-select.min.js"></script>
        <script src="./assets/js/jquery.sticky.js"></script>
        <script src="./assets/js/jquery.barfiller.js"></script>

        <script src="./assets/js/jquery.counterup.min.js"></script>
        <script src="./assets/js/waypoints.min.js"></script>
        <script src="./assets/js/jquery.countdown.min.js"></script>
        <script src="./assets/js/hover-direction-snake.min.js"></script>

        <script src="./assets/js/contact.js"></script>
        <script src="./assets/js/jquery.form.js"></script>
        <script src="./assets/js/jquery.validate.min.js"></script>
        <script src="./assets/js/mail-script.js"></script>
        <script src="./assets/js/jquery.ajaxchimp.min.js"></script>

        <script src="./assets/js/plugins.js"></script>
        <script src="./assets/js/main.js"></script>

        <script async src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
        <script>
                                            window.dataLayer = window.dataLayer || [];
                                            function gtag() {
                                                dataLayer.push(arguments);
                                            }
                                            gtag('js', new Date());

                                            gtag('config', 'UA-23581568-13');
        </script>
        <script defer src="https://static.cloudflareinsights.com/beacon.min.js/v52afc6f149f6479b8c77fa569edb01181681764108816" integrity="sha512-jGCTpDpBAYDGNYR5ztKt4BQPGef1P0giN6ZGVUi835kFF88FOmmn8jBQWNgrNd8g/Yu421NdgWhwQoaOPFflDw==" data-cf-beacon='{"rayId":"7d3da0fcb81091a1","version":"2023.4.0","b":1,"token":"cd0b4b3a733644fc843ef0b185f98241","si":100}' crossorigin="anonymous"></script>
    </body>
</html>
<%-- 
    Document   : detail
    Created on : Jul 8, 2023, 11:24:08 PM
    Author     : kiemq
--%>
<%@page import="dal.UserDao"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="model.User"%>
<%@page import="java.util.List"%>
<%@page import="model.News"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="no-js" lang="zxx">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>News Detail</title>
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
                                            <li><a href="news">News</a>
                                                <ul class="submenu">
                                                    <li><a href="news">All News</a></li>
                                                    <li><a href="blog_details.html">News Details</a></li>
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

            <div class="page-notification page-notification2">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb justify-content-center">
                                    <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                                    <li class="breadcrumb-item"><a href="#">News Details</a></li>
                                </ol>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>


            <section class="blog_area single-post-area section-padding">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-8 posts-list">
                            <div class="single-post">
                                <div class="feature-img">
                                    <img class="img-fluid" src="${news.image}" alt="">
                                </div>
                                <div class="blog_details">
                                    <h2 style="color: #2d2d2d;">${news.title}
                                    </h2>
                                    <ul class="blog-info-link mt-3 mb-4">
                                        <li><a href="#"><i class="fa fa-user"></i>${news.category.name}</a></li>
                                        <li><a href="#"><i class="fa fa-comments"></i> ${count} Comments</a></li>
                                    </ul>
                                    <p class="excert">
                                        ${news.description}
                                    </p>
                                    <div class="quote-wrapper">
                                        <div class="quotes">
                                            ${news.shortDes}
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="blog-author">
                                <div class="media align-items-center">
                                    <img src="assets/img/blog/author.png" alt="">
                                    <div class="media-body">
                                        <a href="#">
                                            <h4>${news.user.fullname}</h4>
                                        </a>
                                        <p>Second divided from form fish beast made. Every of seas all gathered use saying you're, he
                                            our dominion twon Second divided from</p>
                                    </div>
                                </div>
                            </div>
                            <div class="comments-area">
                                <h4>${count} Comments</h4>
                                <c:forEach var="o" items="${list}">
                                    <div class="comment-list">
                                        <div class="single-comment justify-content-between d-flex">
                                            <div class="user justify-content-between d-flex">
                                                <div class="thumb">
                                                    <img src="assets/img/blog/comment_1.png" alt="">
                                                </div>
                                                <div class="desc">
                                                    <p class="comment">
                                                        ${o.comment}
                                                    </p>
                                                    <div class="d-flex justify-content-between">
                                                        <div class="d-flex align-items-center">
                                                            <h5>
                                                                <a href="#">${o.user.fullname}</a>
                                                            </h5>
                                                            <p class="date">${o.time} </p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </c:forEach>

                            </div>
                            <c:if test="${sessionScope.account!=null}">
                                <div class="infor-add container" style="display: none;">
                                    <p style="font-size: 15px; color: red;">You are reading as guest, <a href="login.jsp"> LOGIN or REGISTER</a>  if you want to leave a comment.</p>
                                </div>
                                <span class="bar1 container" style="display: none;"></span>          
                            </c:if>
                            <c:if test="${sessionScope.account==null}">
                                <div class="infor-add container">
                                    <p style="font-size: 15px; color: red;">You are reading as guest, <a href="login.jsp"> LOGIN or REGISTER</a>  if you want to leave a comment.</p>
                                </div>
                                <span class="bar1 container"></span>          
                            </c:if>
                            <c:if test="${sessionScope.account!=null}">
                                <div class="comment-form">
                                    <h4>Leave a Reply</h4>
                                    <form class="form-contact comment_form" action="comment" method="post" id="commentForm">
                                        <div class="row">
                                            <div class="col-12">
                                                <div class="form-group">
                                                    <textarea class="form-control w-100" name="comment" id="comment" cols="30" rows="9" placeholder="Write Comment"></textarea>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <button type="submit" class="button button-contactForm btn_1 boxed-btn">Post Comment</button>
                                        </div>
                                    </form>
                                </div>
                            </c:if>
                        </div>
                        <div class="col-lg-4">
                            <div class="blog_right_sidebar">
                                <form action="news" method="POST">
                                    <aside class="single_sidebar_widget search_widget">
                                        <div class="form-group">
                                            <div class="input-group mb-3">
                                                <input name="search" value="${search}" type="text" class="form-control" placeholder='Search Keyword' onfocus="this.placeholder = ''" onblur="this.placeholder = 'Search Keyword'">
                                            </div>
                                        </div>
                                    </aside>
                                    <aside class="single_sidebar_widget search_widget">
                                        <div class="form-group">
                                            <h4 class="widget_title" style="color: #2d2d2d;">From</h4>

                                            <div class="input-group mb-3">
                                                <input value="${from}" name="from" type="date" class="form-control" placeholder='From' onfocus="this.placeholder = ''" onblur="this.placeholder = 'From'">

                                            </div>
                                            <h4 class="widget_title" style="color: #2d2d2d;">To</h4>

                                            <div class="input-group mb-3">
                                                <input value="${to}" name="to" type="date" class="form-control" placeholder='To' onfocus="this.placeholder = ''" onblur="this.placeholder = 'To'">

                                            </div>
                                        </div>
                                    </aside>
                                    <aside class="single_sidebar_widget post_category_widget">
                                        <h4 class="widget_title" style="color: #2d2d2d;">Category</h4>
                                        <ul class="list cat-list">
                                            <c:forEach var="o" items="${listC}">
                                                <li>
                                                    <input hidden name="choices-single-default" value="${o.id}"> 
                                                    <a href="#" class="d-flex">
                                                        <p>${o.name}</p>
                                                    </a>
                                                </li>
                                            </c:forEach>


                                        </ul>
                                        <button class="button rounded-0 primary-bg text-white w-100 btn_1 boxed-btn" type="submit">Search</button>

                                    </aside>
                                </form>
                                <aside class="single_sidebar_widget popular_post_widget">
                                    <h3 class="widget_title" style="color: #2d2d2d;">Recent Post</h3>
                                    <c:forEach var="o" items="${list4}">
                                        <div class="media post_item">
                                            <img style="width: 15rem; height: 8rem;" src="${o.image}" alt="post">
                                            <div class="media-body">
                                                <a href="blog_details.html">
                                                    <h3 style="color: #2d2d2d;">${o.title}</h3>
                                                </a>
                                                <p>${o.timePost}</p>
                                            </div>
                                        </div>
                                    </c:forEach>
                                </aside>


                            </div>
                        </div>
                    </div>
                </div>
            </section>

        </main>
        <footer>

            <div class="footer-area footer-padding">
                <div class="container-fluid ">
                    <div class="row d-flex justify-content-between">
                        <div class="col-xl-3 col-lg-3 col-md-8 col-sm-8">
                            <div class="single-footer-caption mb-50">
                                <div class="single-footer-caption mb-30">

                                    <div class="footer-logo mb-35">
                                        <a href="index.html" style="color: white">vietnamxua.net</a>
                                    </div>
                                    <div class="footer-tittle">
                                        <div class="footer-pera">
                                            <p>The fragrance conveys the ancient beauty.</p>
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
                                        Copyright &copy;<script data-cfasync="false" src="/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script><script>document.write(new Date().getFullYear());</script> vietnamxua</a>
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
        <script defer src="https://static.cloudflareinsights.com/beacon.min.js/v52afc6f149f6479b8c77fa569edb01181681764108816" integrity="sha512-jGCTpDpBAYDGNYR5ztKt4BQPGef1P0giN6ZGVUi835kFF88FOmmn8jBQWNgrNd8g/Yu421NdgWhwQoaOPFflDw==" data-cf-beacon='{"rayId":"7d3da137cf5a91a1","version":"2023.4.0","b":1,"token":"cd0b4b3a733644fc843ef0b185f98241","si":100}' crossorigin="anonymous"></script>
    </body>
</html>

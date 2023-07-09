<%-- 
    Document   : CategoryAdmin
    Created on : Jul 10, 2023, 12:17:22 AM
    Author     : kiemq
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
        <meta name="description" content="POS - Bootstrap Admin Template">
        <meta name="keywords"
              content="admin, estimates, bootstrap, business, corporate, creative, invoice, html5, responsive, Projects">
        <meta name="author" content="Dreamguys - Bootstrap Admin Template">
        <meta name="robots" content="noindex, nofollow">
        <title>Category Admin</title>

        <link rel="shortcut icon" type="image/x-icon" href="adminassets/img/favicon.png">

        <link rel="stylesheet" href="adminassets/css/bootstrap.min.css">

        <link rel="stylesheet" href="adminassets/css/animate.css">

        <link rel="stylesheet" href="adminassets/plugins/select2/css/select2.min.css">

        <link rel="stylesheet" href="adminassets/css/dataTables.bootstrap4.min.css">

        <link rel="stylesheet" href="adminassets/plugins/fontawesome/css/fontawesome.min.css">
        <link rel="stylesheet" href="adminassets/plugins/fontawesome/css/all.min.css">

        <link rel="stylesheet" href="adminassets/css/style.css">
        <link rel="stylesheet" href="adminStyle.css">
    </head>

    <body>
        <div id="global-loader">
            <div class="whirly-loader"> </div>
        </div>

        <div class="main-wrapper">

            <div class="header">
                <div class="header-left active">
                    <a href="home.jsp" class="logo">
                        <h3>vietnamxua.com</h3>
                    </a>
                    <a href="index.html" class="logo-small">
                        <img src="adminassets/img/logo-small.png" alt="">
                    </a>
                </div>
                <ul class="nav user-menu">
                    <li class="nav-item dropdown has-arrow main-drop">
                        <a href="javascript:void(0);" class="dropdown-toggle nav-link userset" data-bs-toggle="dropdown">
                            <span class="user-img"><img src="adminassets/img/profiles/avator1.jpg" alt="">
                                <span class="status online"></span></span>
                        </a>
                        <div class="dropdown-menu menu-drop-user">
                            <div class="profilename">
                                <div class="profileset">
                                    <span class="user-img"><img src="adminassets/img/profiles/avator1.jpg" alt="">
                                        <span class="status online"></span></span>
                                    <div class="profilesets">
                                        <h6>Kiem Quang</h6>
                                        <h5>Admin</h5>
                                    </div>
                                </div>
                                <hr class="m-0">
                                <a class="dropdown-item" href="profile.html"> <i class="me-2" data-feather="user"></i> My
                                    Profile</a>
                                <hr class="m-0">
                                <a class="dropdown-item logout pb-0" href="home.jsp"><img
                                        src="adminassets/img/icons/log-out.svg" class="me-2" alt="img">Logout</a>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>


            <div class="sidebar" id="sidebar">
                <div class="sidebar-inner slimscroll">
                    <div id="sidebar-menu" class="sidebar-menu">
                        <ul>
                            <li class="submenu">
                                <a href="javascript:void(0);"><img src="adminassets/img/icons/product.svg" alt="img"><span>
                                        Edit</span> <span class="menu-arrow"></span></a>
                                <ul>
                                    <li><a href="admin" >News List</a></li>
                                    <li><a href="AdminCategory" class="active">Category List</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>

            <div class="page-wrapper">
                <div class="content">
                    <div class="page-header">
                        <div class="page-title">
                            <h4>Category List</h4>
                            <h6>Manage Categories</h6>
                        </div>
                        <div class="page-btn">
                            <a href="createCategory" class="btn btn-added"><img src="adminassets/img/icons/plus.svg" alt="img"
                                                                                 class="me-1">Add New Category</a>
                        </div>
                    </div>

                    <div class="card">
                        <div class="card-body">
                            <div class="table-top">
                                <div class="search-set">
                                    <div class="search-path">
                                        <a class="btn btn-filter" id="filter_search">
                                            <img src="adminassets/img/icons/filter.svg" alt="img">
                                            <span><img src="adminassets/img/icons/closes.svg" alt="img"></span>
                                        </a>
                                    </div>
                                    <div class="search-input">
                                        <a class="btn btn-searchset"><img src="adminassets/img/icons/search-white.svg"
                                                                          alt="img"></a>
                                    </div>
                                </div>
                            </div>



                            <div class="table-responsive">
                                <table class="table  datanew">
                                    <thead>
                                        <tr>
                                            <th>Product Name</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach var="o" items="${listC}">
                                            <tr>
                                          
                                                <td class="productimgname">
                                                    <a href="javascript:void(0);" class="product-img">
                                                        <img src="${o.image}" alt="product">
                                                    </a>
                                                    <a href="javascript:void(0);">${o.name}</a>
                                                </td>
                                                <td>
                                                    <a class="me-3" href="updateCategory?idd=${o.id}">
                                                        <img src="adminassets/img/icons/edit.svg" alt="img">
                                                    </a>
                                                    <a class="confirm-text" href="deleteCategory?idd=${o.id}">
                                                        <img src="adminassets/img/icons/delete.svg" alt="img">
                                                    </a>
                                                </td>
                                            </tr>
                                        </c:forEach>


                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>


        <script src="adminassets/js/jquery-3.6.0.min.js"></script>

        <script src="adminassets/js/feather.min.js"></script>

        <script src="adminassets/js/jquery.slimscroll.min.js"></script>

        <script src="adminassets/js/jquery.dataTables.min.js"></script>
        <script src="adminassets/js/dataTables.bootstrap4.min.js"></script>

        <script src="adminassets/js/bootstrap.bundle.min.js"></script>

        <script src="adminassets/plugins/select2/js/select2.min.js"></script>

        <script src="adminassets/plugins/sweetalert/sweetalert2.all.min.js"></script>
        <script src="adminassets/plugins/sweetalert/sweetalerts.min.js"></script>

        <script src="adminassets/js/script.js"></script>
    </body>

</html>

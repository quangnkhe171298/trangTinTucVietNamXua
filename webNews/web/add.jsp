<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
        <meta name="description" content="POS - Bootstrap Admin Template">
        <meta name="keywords" content="admin, estimates, bootstrap, business, corporate, creative, invoice, html5, responsive, Projects">
        <meta name="author" content="Dreamguys - Bootstrap Admin Template">
        <meta name="robots" content="noindex, nofollow">
        <title>News Admin</title>

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
                    <a href="index.html" class="logo">
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
                                    <li><a href="admin" class="active">News List</a></li>
                                    <li><a href="AdminCategory">Category List</a></li>
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
                            <h4>News Add</h4>
                            <h6>Create new news</h6>
                        </div>
                    </div>
                    <form action="addNew" method="POST">   
                        <div class="card">
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-lg-3 col-sm-6 col-12">
                                        <div class="form-group">
                                            <label>Title</label>
                                            <input name="title" type="text">
                                        </div>
                                    </div>
                                    <div class="col-lg-3 col-sm-6 col-12">
                                        <div class="form-group">
                                            <label>Category</label>
                                            <select name="category" class="select">
                                                <option>Choose Category</option>
                                                <c:forEach var="o" items="${listC}">
                                                    <option value="${o.id}">${o.name}</option>

                                                </c:forEach>

                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-lg-3 col-sm-6 col-12">
                                        <div class="form-group">
                                            <label>Image</label>
                                            <input name="image"type="text">
                                        </div>
                                    </div>
                                    <div class="col-lg-3 col-sm-6 col-12">
                                        <div class="form-group">
                                            <label>Description</label>
                                            <input name="description" type="text">
                                        </div>
                                    </div>
                                    <div class="col-lg-3 col-sm-6 col-12">
                                        <div class="form-group">
                                            <label>Shortdes</label>
                                            <input name="shortdes" type="text">
                                        </div>
                                    </div>
                                    <div class="col-lg-12">
                                        <a href="javascript:void(0);" class="btn btn-submit me-2"> <input type="submit"></a>
                                        <a href="productlist.html" class="btn btn-cancel">Cancel</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form> 
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
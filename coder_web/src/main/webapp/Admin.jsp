<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="au theme template">
    <meta name="author" content="Hau Nguyen">
    <meta name="keywords" content="au theme template">

    <!-- Title Page-->
    <title>Coder Store</title>

    <!-- Fontfaces CSS-->
    <link href="CoderAdmin/css/font-face.css" rel="stylesheet" media="all">
    <link href="CoderAdmin/vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <link href="CoderAdmin/vendor/font-awesome-5/css/fontawesome-all.min.css" rel="stylesheet" media="all">
    <link href="CoderAdmin/vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">

    <!-- Bootstrap CSS-->
    <link href="CoderAdmin/vendor/bootstrap-4.1/bootstrap.min.css" rel="stylesheet" media="all">

    <!-- Vendor CSS-->
    <link href="CoderAdmin/vendor/animsition/animsition.min.css" rel="stylesheet" media="all">
    <link href="CoderAdmin/vendor/bootstrap-progressbar/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet" media="all">
    <link href="CoderAdmin/vendor/wow/animate.css" rel="stylesheet" media="all">
    <link href="CoderAdmin/vendor/css-hamburgers/hamburgers.min.css" rel="stylesheet" media="all">
    <link href="CoderAdmin/vendor/slick/slick.css" rel="stylesheet" media="all">
    <link href="CoderAdmin/vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="CoderAdmin/vendor/perfect-scrollbar/perfect-scrollbar.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="CoderAdmin/css/theme.css" rel="stylesheet" media="all">

</head>

<body class="animsition">
    <div class="page-wrapper">
        <!-- HEADER MOBILE-->
        <header class="header-mobile d-block d-lg-none">
            <div class="header-mobile__bar">
                <div class="container-fluid">
                    <div class="header-mobile-inner">
                        <a class="logo" href="index.html">
                            <img src="CoderAdmin/images/icon/logo-mini.png" alt="CoderAdmin" />
                        </a>
                        <button class="hamburger hamburger--slider" type="button">
                            <span class="hamburger-box">
                                <span class="hamburger-inner"></span>
                            </span>
                        </button>
                    </div>
                </div>
            </div>
            <nav class="navbar-mobile">
                <div class="container-fluid">
                    <ul class="navbar-mobile__list list-unstyled">
                        <li>
                            <a href="AdminPage">
                                <i class="fas fa-tachometer-alt"></i>Dashboard</a>
                        </li> 
                        
                    </ul>
                </div>
            </nav>
        </header>
        <!-- END HEADER MOBILE-->

        <!-- MENU SIDEBAR-->
        <aside class="menu-sidebar d-none d-lg-block">
            <div class="logo">
                <a href="Home.jsp">
                    <img src="CoderAdmin/images/icon/logo-mini.png" alt="Cool Admin" />
                </a>
            </div>
            <div class="menu-sidebar__content js-scrollbar1">
                <nav class="navbar-sidebar">
                    <ul class="list-unstyled navbar__list">

                        <li>
                            <a href="AdminPage">
                                <i class="fas fa-tachometer-alt"></i>Dashboard</a>
                        </li> 
                        
                             

                    </ul>
                </nav>
            </div>
        </aside>
        <!-- END MENU SIDEBAR-->

        <!-- PAGE CONTAINER-->
        <div class="page-container">
            <!-- HEADER DESKTOP-->
            <header class="header-desktop">
                <div class="section__content section__content--p30">
                    <div class="container-fluid">
                        <div class="header-wrap">
                            <div class="header-button">
                                <div class="account-wrap">
                                    <div class="account-item clearfix js-item-menu">
                                        <div class="image">
                                            <img src="CoderAdmin/images/icon/logo-mini.png" alt="Coder Admin" />
                                        </div>
                                        <div class="content">
                                            <a class="js-acc-btn" href="#">Coder Admin</a>
                                        </div>
                                        <div class="account-dropdown js-dropdown">
                                            <div class="info clearfix">
                                                <div class="image">
                                                    <a href="#">
                                                        <img src="CoderAdmin/images/icon/logo-mini.png" alt="Coder Admin" />
                                                    </a>
                                                </div>
                                                <div class="content">
                                                    <h5 class="name">
                                                        <a href="#">Coder Admin</a>
                                                    </h5>
                                                    <span class="email">${sessionScope.phoness}</span>
                                                </div>
                                            </div>
                                            <div class="account-dropdown__body">
                                                <!-- <div class="account-dropdown__item">
                                                    <a href="ViewAccount" class="acc">
                                                        <i class="zmdi zmdi-account"></i>View all accounts</a>
                                                </div> -->
                                                
                                            </div>
                                            <div class="account-dropdown__footer">
                                                <a href="logout">
                                                    <i class="zmdi zmdi-power"></i>Logout</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </header>
            <!-- HEADER DESKTOP-->

            <!-- MAIN CONTENT-->
            <div class="main-content">
                <div class="section__content section__content--p30">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="overview-wrap">
                                    <h2 class="title-1">overview</h2>
                                    <button class="au-btn au-btn-icon au-btn--blue">
                                        <i class="zmdi zmdi-plus"></i>add item</button>
                                </div>
                            </div>
                        </div>
                                    <!-- chỗ này là phần trên -->
                        <div class="row m-t-25">
                            <div class="col-sm-6 col-lg-3">
                                <div class="overview-item overview-item--c1">
                                    <div class="overview__inner">
                                        <div class="overview-box clearfix">
                                            <div class="icon">
                                                <i class="zmdi zmdi-account-o"></i>
                                            </div>
                                            <div class="text">
                                                <h2>${RegisterMember}</h2>
                                                <span>Registered Member</span>
                                            </div>
                                        </div>
                                        <div class="overview-chart">
                                            <canvas id="widgetChart1"></canvas>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6 col-lg-3">
                                <div class="overview-item overview-item--c2">
                                    <div class="overview__inner">
                                        <div class="overview-box clearfix">
                                            <div class="icon">
                                                <i class="zmdi zmdi-shopping-cart"></i>
                                            </div>
                                            <div class="text">
                                                <h2>${productSoild}</h2>
                                                <span>Items Solid</span>
                                            </div>
                                        </div>
                                        <div class="overview-chart">
                                            <canvas id="widgetChart2"></canvas>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6 col-lg-3">
                                <div class="overview-item overview-item--c3">
                                    <div class="overview__inner">
                                        <div class="overview-box clearfix">
                                            <div class="icon">
                                                <i class="zmdi zmdi-calendar-note"></i>
                                            </div>
                                            <div class="text">
                                                <h2>${MonthRevenue}</h2>
                                                <span>This month's revenue</span>
                                            </div>
                                        </div>
                                        <div class="overview-chart">
                                            <canvas id="widgetChart3"></canvas>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    <!-- chỗ này là phần bảng -->

                    
                    
                        <div class="row">
                            <div class="col-lg-9">
                                <h2 class="title-1 m-b-25">Earnings By Items</h2>
                                <div class="table-responsive table--no-card m-b-40">
                                    <table class="table table-borderless table-striped table-earning">
                                        <thead>
                                            <tr>
                                                <th>date</th>
                                                <th>order ID</th>
                                                <th>name</th>
                                                <th class="text-right">price</th>
                                                <th class="text-right">quantity</th>
                                                <th class="text-right">total</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach items="${earningByProduct}" var="listOfP" begin="0" end="9">
                                                <tr>
                                                  <c:forEach items="${listOfP}" var="p" >
                                                    <td>${p}</td>
                                                  </c:forEach>
                                                </tr>
                                              </c:forEach> 

                                            
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <!-- chỗ này là top người mua nhiều nhâts -->
                            <div class="col-lg-3">
                                <h2 class="title-1 m-b-25">VIP</h2>
                                <div class="au-card au-card--bg-blue au-card-top-countries m-b-40">
                                    <div class="au-card-inner">
                                        <div class="table-responsive">
                                            <table class="table table-top-countries">
                                                <tbody>
                                                    <c:forEach items="${listVIP}" var="vip" begin="0" end="8">
                                                        <tr>
                                                            <td>${vip[0]}</td>
                                                            <td>${vip[1]}$</td>  
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
                </div>
            </div>
            <div  style=" height: 50vh; display: flex; justify-content: center; align-items: center; text-align: center; " >
                <div  style="box-sizing: border-box; border: 1px solid; border-radius: 10px; ">
                    <h2>All Account</h2>
                    <div>
                        <table class="table table-borderless table-striped table-earning">
                            <tr>
                                <th>Account</th>
                                <th>Type</th>
                                <th>Edit</th>
                            </tr>
                            <c:forEach items="${listAccount}" var="a">
                                <form action="manage" method="get">

                                    <tr>
                                        <td class="text-right">${a.acc}</td>
                                        <input type="text" value="${a.acc}" name="acc" hidden>
                                        <td class="text-right">
                                            <select name="FixType" >
                                                <option value="admin" ${a.type == "admin" ? "Selected" : "" }>Admin</option>
                                                <option value="staff" ${a.type == "staff" ? "Selected" : "" }>Staff</option>
                                                <option value="cus" ${a.type == "cus" ? "Selected" : "" }>Customer</option>
                                            </select>
                                        </td>
                                        <td class="text-right">
                                            <button class="btn btn-primary" type="submit" name="btn" value="Update">Update</button>
                                            <button class="btn btn-primary" type="submit" name="btn" value="Delete">Delete</button>                                        </td>
                                    </tr>
                                </form>
                            </c:forEach>
                        </table>
                        
                    </div>
                </div>
            </div>

            
            <!-- END MAIN CONTENT-->
            <!-- END PAGE CONTAINER-->
        </div>

        

    </div>

    <!-- Jquery JS-->
    <script src="CoderAdmin/vendor/jquery-3.2.1.min.js"></script>
    <!-- Bootstrap JS-->
    <script src="CoderAdmin/vendor/bootstrap-4.1/popper.min.js"></script>
    <script src="CoderAdmin/vendor/bootstrap-4.1/bootstrap.min.js"></script>
    <!-- Vendor JS       -->
    <script src="CoderAdmin/vendor/slick/slick.min.js">
    </script>
    <script src="CoderAdmin/vendor/wow/wow.min.js"></script>
    <script src="CoderAdmin/vendor/animsition/animsition.min.js"></script>
    <script src="CoderAdmin/vendor/bootstrap-progressbar/bootstrap-progressbar.min.js">
    </script>
    <script src="CoderAdmin/vendor/counter-up/jquery.waypoints.min.js"></script>
    <script src="CoderAdmin/vendor/counter-up/jquery.counterup.min.js">
    </script>
    <script src="CoderAdmin/vendor/circle-progress/circle-progress.min.js"></script>
    <script src="CoderAdmin/vendor/perfect-scrollbar/perfect-scrollbar.js"></script>
    <script src="CoderAdmin/vendor/chartjs/Chart.bundle.min.js"></script>
    <script src="CoderAdmin/vendor/select2/select2.min.js">
    </script>

    <!-- Main JS-->
    <script src="CoderAdmin/js/main.js"></script>
    


</body>

</html>
<!-- end document-->

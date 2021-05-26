<?php

include_once 'session.php';

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta name="description" content="Vali is a responsive and free admin theme built with Bootstrap 4, SASS and PUG.js. It's fully customizable and modular.">
    <!-- Twitter meta-->
    <meta property="twitter:card" content="summary_large_image">
    <meta property="twitter:site" content="@pratikborsadiya">
    <meta property="twitter:creator" content="@pratikborsadiya">
    <!-- Open Graph Meta-->
    <meta property="og:type" content="website">
    <meta property="og:site_name" content="Vali Admin">
    <meta property="og:title" content="Vali - Free Bootstrap 4 admin theme">
    <meta property="og:url" content="http://pratikborsadiya.in/blog/vali-admin">
    <meta property="og:image" content="http://pratikborsadiya.in/blog/vali-admin/hero-social.png">
    <meta property="og:description" content="Vali is a responsive and free admin theme built with Bootstrap 4, SASS and PUG.js. It's fully customizable and modular.">
    <title>Thi sát hạch lái xe</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Main CSS-->
    <link rel="stylesheet" type="text/css" href="css/main.css">
    <!-- Font-icon css-->
    <link rel="stylesheet" href="font-awesome-4.7.0/css/font-awesome.min.css">
    <link rel="icon" type="image/png" href="icon/icon.png" />
</head>

<body class="app sidebar-mini rtl">
    <!-- Navbar-->
    <header class="app-header"><a class="app-header__logo" href="index.php">Thi lý thuyết lái xe</a>
        <!-- Sidebar toggle button-->
        <a class="app-sidebar__toggle" href="#" data-toggle="sidebar" aria-label="Hide Sidebar"></a>
        <!-- Navbar Right Menu-->
        <ul class="app-nav">
                <!--

                    <!-- User Menu-->
                    <li class="dropdown">
                        <a class="app-nav__item" href="#" data-toggle="dropdown" aria-label="Open Profile Menu"><img class="fa fa-user" src="icon\boy.png" width="24px" alt="User Image">
                            <?php 
                            if (isset($_SESSION['username']) && $_SESSION['username']){
                               echo $_SESSION['username'];}

                               ?>
                           </a>
                           <ul class="dropdown-menu settings-menu dropdown-menu-right">
                            <!-- <li><a class="dropdown-item" href=""><i class="fa fa-cog fa-lg"></i> Cài đặt</a></li>-->
                            <li><a class="dropdown-item" href="doimk.php"><i class="fa fa-user fa-lg"></i> Đổi mật khẩu</a></li>
                            <li><a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal"><i class="fa fa-sign-out fa-lg"></i> Đăng xuất</a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </header>
            <!-- Sidebar menu-->
            <div class="app-sidebar__overlay" data-toggle="sidebar"></div>
            <aside class="app-sidebar">
                <div class="app-sidebar__user"><img class="app-sidebar__user-avatar" src="img\a.png" width="60px" alt="User Image">
                    <div>
                        <p class="app-sidebar__user-name">An toàn</p>
                        <p class="app-sidebar__user-designation">Là trên hết</p>
                    </div>
                </div>
                <ul class="app-menu">
                    <li class="menu" id="TrangChu" onclick="bamVaoTrangChu();"><a class="app-menu__item active" href="#"><i class="app-menu__icon fa fa-dashboard"></i><span class="app-menu__label">Trang chủ</span></a></li>
                    <li class="treeview"><a class="app-menu__item" href="#" data-toggle="treeview"><i class="app-menu__icon fa fa-laptop"></i><span class="app-menu__label">Ôn tập</span><i class="treeview-indicator fa fa-angle-right"></i></a>
                        <ul class="treeview-menu">
                            <li class="menu con" id="OnTap_TimKiem" onclick="bamVaoHuongDanThi();"><a class="treeview-item" href="#"><i class="icon fa fa-circle-o"></i> Hướng dẫn thi</a></li>
                            <li class="menu con" id="OnTap_LyThuyet" onclick="bamVaoXemCauHoi();"><a class="treeview-item" href="#"><i class="icon fa fa-circle-o"></i> 150 câu hỏi</a></li>

                        </ul>
                    </li>
                    <li class="treeview"><a class="app-menu__item" href="#" data-toggle="treeview"><i class="app-menu__icon fa fa-edit"></i><span class="app-menu__label">Thi thử lý thuyết</span><i class="treeview-indicator fa fa-angle-right"></i></a>
                        <ul class="treeview-menu">

                            <li><a class="treeview-item" href="Thi.php"><i class="icon fa fa-circle-o"></i> Đề 1</a></li>
                            <li><a class="treeview-item" href="Thi2.php"><i class="icon fa fa-circle-o"></i> Đề 2</a></li>
                            <li><a class="treeview-item" href="Thi3.php"><i class="icon fa fa-circle-o"></i> Đề 3</a></li>
                            <li><a class="treeview-item" href="Thi4.php"><i class="icon fa fa-circle-o"></i> Đề ngẫu nhiên</a></li>
                        </ul>
                    </li>

                    <li class="menu" id="HuongDan" onclick="bamVaoHuongDan();"><a class="app-menu__item" href="#"><i class="app-menu__icon fa fa-file-text"></i><span class="app-menu__label">Hướng dẫn</span></a></li>
                    <!--  <li class="menu" id="XemCauHoi" onclick="bamVaoXemCauHoi1();"><a class="app-menu__item" href="#"><i class="app-menu__icon fa fa-file-text"></i><span class="app-menu__label">Xem câu hỏi</span></a></li>-->
                </ul>
            </aside>
            <!-- Logout Modal-->
            <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">Đăng xuất</h5>
                            <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">×</span>
                            </button>
                        </div>
                        <div class="modal-body">Bạn có muốn đăng xuất hay không?</div>
                        <div class="modal-footer">
                            <button class="btn btn-secondary" type="button" data-dismiss="modal">Không</button>
                            <a class="btn btn-primary" href="logout.php">Có</a>
                        </div>
                    </div>
                </div>
            </div>

            <main class="app-content">
                <div class="app-title">
                    <div class="header">
                        <h1 id="TieuDe"><b> Thi thử bằng lái xe A1</b></h1>
                    </div>
                    <ul class="app-breadcrumb breadcrumb">
                        <li class="breadcrumb-item"><i class="fa fa-home fa-lg"></i></li>
                        <!--<li class="breadcrumb-item"><a href="#">Documentation</a></li>-->
                    </ul>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="tile">

                            <div id="NoiDung">

                            </div>
                        </div>

                    </div>
                </div>

            </main>
        <!-- setting
		<script>

			$(document).ready(function(e) {
                $("#menu_top ul li ").hover(function(e) {
                  $(this).find("ul:first").slideDown(500);  
                },function(e){
					$(this).find("ul:first").hide(300);  
					});
            });
        </script>
    -->
    <!-- Essential javascripts for application to work-->
    <script src="js/jquery-3.2.1.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/main.js"></script>
    <script src="Js/index.js"></script>
    <script src="Js/hieuUng.js"></script>
    <!-- The javascript plugin to display page loading on top-->
    <script src="js/plugins/pace.min.js"></script>
    <!-- Page specific javascripts-->
    <script type="text/javascript" src="js/plugins/bootstrap-notify.min.js"></script>
    <script type="text/javascript" src="js/plugins/sweetalert.min.js"></script>
    <script type="text/javascript">
        $('#demoNotify').click(function() {
            $.notify({
                title: "Update Complete : ",
                message: "Something cool is just updated!",
                icon: 'fa fa-check'
            }, {
                type: "info"
            });
        });
        $('#demoSwal').click(function() {
            swal({
                title: "Are you sure?",
                text: "You will not be able to recover this imaginary file!",
                type: "warning",
                showCancelButton: true,
                confirmButtonText: "Yes, delete it!",
                cancelButtonText: "No, cancel plx!",
                closeOnConfirm: false,
                closeOnCancel: false
            }, function(isConfirm) {
                if (isConfirm) {
                    swal("Deleted!", "Your imaginary file has been deleted.", "success");
                } else {
                    swal("Cancelled", "Your imaginary file is safe :)", "error");
                }
            });
        });
    </script>
    <!-- Page specific javascripts-->
    <script type="text/javascript" src="js/plugins/chart.js"></script>
    <script type="text/javascript">
            // Login Page Flipbox control
            $('.login-content [data-toggle="flip"]').click(function() {
                $('.login-box').toggleClass('flipped');
                return false;
            });
        </script>

        <script type="text/javascript">
            var data = {
                labels: ["January", "February", "March", "April", "May"],
                datasets: [{
                    label: "My First dataset",
                    fillColor: "rgba(220,220,220,0.2)",
                    strokeColor: "rgba(220,220,220,1)",
                    pointColor: "rgba(220,220,220,1)",
                    pointStrokeColor: "#fff",
                    pointHighlightFill: "#fff",
                    pointHighlightStroke: "rgba(220,220,220,1)",
                    data: [65, 59, 80, 81, 56]
                }, {
                    label: "My Second dataset",
                    fillColor: "rgba(151,187,205,0.2)",
                    strokeColor: "rgba(151,187,205,1)",
                    pointColor: "rgba(151,187,205,1)",
                    pointStrokeColor: "#fff",
                    pointHighlightFill: "#fff",
                    pointHighlightStroke: "rgba(151,187,205,1)",
                    data: [28, 48, 40, 19, 86]
                }]
            };
            var pdata = [{
                value: 300,
                color: "#F7464A",
                highlight: "#FF5A5E",
                label: "Red"
            }, {
                value: 50,
                color: "#46BFBD",
                highlight: "#5AD3D1",
                label: "Green"
            }, {
                value: 100,
                color: "#FDB45C",
                highlight: "#FFC870",
                label: "Yellow"
            }]

            var ctxl = $("#lineChartDemo").get(0).getContext("2d");
            var lineChart = new Chart(ctxl).Line(data);

            var ctxb = $("#barChartDemo").get(0).getContext("2d");
            var barChart = new Chart(ctxb).Bar(data);

            var ctxr = $("#radarChartDemo").get(0).getContext("2d");
            var radarChart = new Chart(ctxr).Radar(data);

            var ctxpo = $("#polarChartDemo").get(0).getContext("2d");
            var polarChart = new Chart(ctxpo).PolarArea(pdata);

            var ctxp = $("#pieChartDemo").get(0).getContext("2d");
            var pieChart = new Chart(ctxp).Pie(pdata);

            var ctxd = $("#doughnutChartDemo").get(0).getContext("2d");
            var doughnutChart = new Chart(ctxd).Doughnut(pdata);
        </script>
        <!-- Google analytics script-->
        <script type="text/javascript">
            if (document.location.hostname == 'pratikborsadiya.in') {
                (function(i, s, o, g, r, a, m) {
                    i['GoogleAnalyticsObject'] = r;
                    i[r] = i[r] || function() {
                        (i[r].q = i[r].q || []).push(arguments)
                    }, i[r].l = 1 * new Date();
                    a = s.createElement(o),
                    m = s.getElementsByTagName(o)[0];
                    a.async = 1;
                    a.src = g;
                    m.parentNode.insertBefore(a, m)
                })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');
                ga('create', 'UA-72504830-1', 'auto');
                ga('send', 'pageview');
            }
        </script>
    </body>

    </html>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template">
    <meta name="author" content="GeeksLabs">
    <meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
    <link rel="shortcut icon" href="img/favicon.png">


    <title><g:layoutTitle default="Mac Financial"/></title>

    <!-- Bootstrap CSS -->
    <link href="${resource(dir: 'css', file:'bootstrap.min.css')}" rel="stylesheet">

    <!-- bootstrap theme -->
    <link href="${resource(dir: 'css',file: 'bootstrap-theme.css')}" rel="stylesheet">
    <!--external css-->
    <!-- font icon -->
    <link href="${resource(dir: 'css',file: 'elegant-icons-style.css')}" rel="stylesheet" />
    <link href="${resource(dir: 'css',file: 'font-awesome.min.css')}" rel="stylesheet" />
    <!-- full calendar css-->
    <link href="${resource(dir: 'assets/fullcalendar/fullcalendar',file: 'bootstrap-fullcalendar.css')}" rel="stylesheet" />
    <link href="${resource(dir: 'assets/fullcalendar/fullcalendar',file: 'fullcalendar.css')}fullcalendar.css" rel="stylesheet" />
    <!-- easy pie chart-->
    <link href="${resource(dir: 'assets/jquery-easy-pie-chart',file: 'jquery.easy-pie-chart.css')}" rel="stylesheet" type="text/css" media="screen"/>
    <!-- owl carousel -->
    <link rel="stylesheet" href="${resource(dir: 'css',file: 'owl.carousel.css')}" type="text/css">
    <link href="${resource(dir: 'css',file: 'jquery-jvectormap-1.2.2.css')}" rel="stylesheet">
    <!-- Custom styles -->
    <link rel="stylesheet" href="${resource(dir: 'css',file: 'fullcalendar.css')}">
    <link href="${resource(dir: 'css',file: 'widgets.css')}" rel="stylesheet">
    <link href="${resource(dir: 'css',file: 'style.css')}" rel="stylesheet">
    <link href="${resource(dir: 'css',file: 'style-responsive.css')}" rel="stylesheet" />
    <link href="${resource(dir: 'css',file: 'xcharts.min.css')}" rel=" stylesheet">
    <link href="${resource(dir: 'css',file: 'jquery-ui-1.10.4.min.css')}" rel="stylesheet">
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 -->
    <!--[if lt IE 9]>
      <script src="${resource(dir: 'js',file: 'html5shiv.js')}"></script>
      <script src="${resource(dir: 'js',file: 'respond.min.js')}"></script>
      <script src="${resource(dir: 'js',file: 'js/lte-ie7.js')}"></script>
    <![endif]-->
    <g:layoutHead/>
</head>

<body>
<!-- container section start -->
<section id="container" class="">


    <header class="header dark-bg">
        <div class="toggle-nav">
            <div class="icon-reorder tooltips" data-original-title="Toggle Navigation" data-placement="bottom"></div>
        </div>

        <!--logo start-->
        <g:link uri="/" class="logo">Mac <span class="lite">Financial</span></g:link>
        <!--logo end-->

        %{--<div class="nav search-row" id="top_menu">--}%
            %{--<!--  search form start -->--}%
            %{--<ul class="nav top-menu">--}%
                %{--<li>--}%
                    %{--<form class="navbar-form">--}%
                        %{--<input class="form-control" placeholder="Search" type="text">--}%
                    %{--</form>--}%
                %{--</li>--}%
            %{--</ul>--}%
            %{--<!--  search form end -->--}%
        %{--</div>--}%

        <div class="top-nav notification-row">
            <!-- notificatoin dropdown start-->
            <ul class="nav pull-right top-menu">

                <!-- task notificatoin start -->
                <li id="task_notificatoin_bar" class="dropdown">
                    <g:link data-toggle="dropdown" class="dropdown-toggle" href="#">
                        <span class="icon-task-l">
                            <span class="badge bg-important">6</span>
                        </span>
                    </g:link>
                    <ul class="dropdown-menu extended tasks-bar">
                        <div class="notify-arrow notify-arrow-blue"></div>
                        <li>
                            <p class="blue">You have 6 pending letter</p>
                        </li>
                        <li>
                            <a href="#">
                                <div class="task-info">
                                    <div class="desc">Design PSD </div>
                                    <div class="percent">90%</div>
                                </div>
                                <div class="progress progress-striped">
                                    <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="90" aria-valuemin="0" aria-valuemax="100" style="width: 90%">
                                        <span class="sr-only">90% Complete (success)</span>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <div class="task-info">
                                    <div class="desc">
                                        Project 1
                                    </div>
                                    <div class="percent">30%</div>
                                </div>
                                <div class="progress progress-striped">
                                    <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="30" aria-valuemin="0" aria-valuemax="100" style="width: 30%">
                                        <span class="sr-only">30% Complete (warning)</span>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <div class="task-info">
                                    <div class="desc">Digital Marketing</div>
                                    <div class="percent">80%</div>
                                </div>
                                <div class="progress progress-striped">
                                    <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
                                        <span class="sr-only">80% Complete</span>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <div class="task-info">
                                    <div class="desc">Logo Designing</div>
                                    <div class="percent">78%</div>
                                </div>
                                <div class="progress progress-striped">
                                    <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="78" aria-valuemin="0" aria-valuemax="100" style="width: 78%">
                                        <span class="sr-only">78% Complete (danger)</span>
                                    </div>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <div class="task-info">
                                    <div class="desc">Mobile App</div>
                                    <div class="percent">50%</div>
                                </div>
                                <div class="progress progress-striped active">
                                    <div class="progress-bar"  role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100" style="width: 50%">
                                        <span class="sr-only">50% Complete</span>
                                    </div>
                                </div>

                            </a>
                        </li>
                        <li class="external">
                            <a href="#">See All Tasks</a>
                        </li>
                    </ul>
                </li>
                <!-- task notificatoin end -->
                <!-- inbox notificatoin start-->
                <li id="mail_notificatoin_bar" class="dropdown">
                    <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                        <i class="icon-envelope-l"></i>
                        <span class="badge bg-important">5</span>
                    </a>
                    <ul class="dropdown-menu extended inbox">
                        <div class="notify-arrow notify-arrow-blue"></div>
                        <li>
                            <p class="blue">You have 5 new messages</p>
                        </li>
                        <li>
                            <a href="#">
                                <span class="photo"><img alt="avatar" src="${resource(dir: 'img', file: 'avatar-mini.jpg')}"></span>
                                <span class="subject">
                                    <span class="from">Greg  Martin</span>
                                    <span class="time">1 min</span>
                                </span>
                                <span class="message">
                                    I really like this admin panel.
                                </span>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <span class="photo"><img alt="avatar" src="${resource(dir: 'img', file: 'avatar-mini2.jpg')}"></span>
                                <span class="subject">
                                    <span class="from">Bob   Mckenzie</span>
                                    <span class="time">5 mins</span>
                                </span>
                                <span class="message">
                                    Hi, What is next project plan?
                                </span>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <span class="photo"><img alt="avatar" src="${resource(dir: 'img', file: 'avatar-mini2.jpg')}"></span>
                                <span class="subject">
                                    <span class="from">Phillip   Park</span>
                                    <span class="time">2 hrs</span>
                                </span>
                                <span class="message">
                                    I am like to buy this Admin Template.
                                </span>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <span class="photo"><img alt="avatar" src="${resource(dir: 'img', file: 'avatar-mini4.jpg')}"></span>
                                <span class="subject">
                                    <span class="from">Ray   Munoz</span>
                                    <span class="time">1 day</span>
                                </span>
                                <span class="message">
                                    Icon fonts are great.
                                </span>
                            </a>
                        </li>
                        <li>
                            <a href="#">See all messages</a>
                        </li>
                    </ul>
                </li>
                <!-- inbox notificatoin end -->
                <!-- alert notification start-->
                %{--<li id="alert_notificatoin_bar" class="dropdown">--}%
                    %{--<a data-toggle="dropdown" class="dropdown-toggle" href="#">--}%

                        %{--<i class="icon-bell-l"></i>--}%
                        %{--<span class="badge bg-important">7</span>--}%
                    %{--</a>--}%
                    %{--<ul class="dropdown-menu extended notification">--}%
                        %{--<div class="notify-arrow notify-arrow-blue"></div>--}%
                        %{--<li>--}%
                            %{--<p class="blue">You have 4 new notifications</p>--}%
                        %{--</li>--}%
                        %{--<li>--}%
                            %{--<a href="#">--}%
                                %{--<span class="label label-primary"><i class="icon_profile"></i></span>--}%
                                %{--Friend Request--}%
                                %{--<span class="small italic pull-right">5 mins</span>--}%
                            %{--</a>--}%
                        %{--</li>--}%
                        %{--<li>--}%
                            %{--<a href="#">--}%
                                %{--<span class="label label-warning"><i class="icon_pin"></i></span>--}%
                                %{--John location.--}%
                                %{--<span class="small italic pull-right">50 mins</span>--}%
                            %{--</a>--}%
                        %{--</li>--}%
                        %{--<li>--}%
                            %{--<a href="#">--}%
                                %{--<span class="label label-danger"><i class="icon_book_alt"></i></span>--}%
                                %{--Project 3 Completed.--}%
                                %{--<span class="small italic pull-right">1 hr</span>--}%
                            %{--</a>--}%
                        %{--</li>--}%
                        %{--<li>--}%
                            %{--<a href="#">--}%
                                %{--<span class="label label-success"><i class="icon_like"></i></span>--}%
                                %{--Mick appreciated your work.--}%
                                %{--<span class="small italic pull-right"> Today</span>--}%
                            %{--</a>--}%
                        %{--</li>--}%
                        %{--<li>--}%
                            %{--<a href="#">See all notifications</a>--}%
                        %{--</li>--}%
                    %{--</ul>--}%
                %{--</li>--}%
                <!-- alert notification end-->
                <!-- user login dropdown start-->
                <li class="dropdown">
                    <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                        %{--<span class="profile-ava">--}%
                            %{--<img alt="" src="${resource(dir: 'img', file: 'avatar1_small.png')}">--}%
                        %{--</span>--}%
                        <span class="username"><sec:username/></span>
                        <b class="caret"></b>
                    </a>
                    <ul class="dropdown-menu extended logout">
                        <div class="log-arrow-up"></div>
                        <li class="eborder-top">
                            <a href="#"><i class="icon_profile"></i> My Profile</a>
                        </li>
                        <li>
                            <a href="#"><i class="icon_mail_alt"></i> My Inbox</a>
                        </li>
                        <li>
                            <a href="#"><i class="icon_clock_alt"></i> Timeline</a>
                        </li>
                        <li>
                            <a href="#"><i class="icon_chat_alt"></i> Chats</a>
                        </li>
                        <li>
                            <a href="login.html"><i class="icon_key_alt"></i> Log Out</a>
                        </li>
                        <li>
                            <a href="documentation.html"><i class="icon_key_alt"></i> Documentation</a>
                        </li>
                        <li>
                            <a href="documentation.html"><i class="icon_key_alt"></i> Documentation</a>
                        </li>
                    </ul>
                </li>
                <!-- user login dropdown end -->
            </ul>
            <!-- notificatoin dropdown end-->
        </div>
    </header>
    <!--header end-->

    <!--sidebar start-->
    <aside>
        <div id="sidebar"  class="nav-collapse ">
            <!-- sidebar menu start-->
            <ul class="sidebar-menu">
                <li class="active">
                    <g:link uri="/">
                        <i class="icon_house_alt"></i>
                        <span>Dashboard</span>
                    </g:link>
                </li>
                <li class="sub-menu">
                    <a href="javascript:;" class="">
                        <i class="icon_document_alt"></i>
                        <span>Forms</span>
                        <span class="menu-arrow arrow_carrot-right"></span>
                    </a>
                    <ul class="sub">
                        <li><g:link uri="/form_component">Form Elements</g:link></li>
                        <li><g:link class="" uri="/form_validation">Form Validation</g:link></li>
                    </ul>
                </li>
                <li class="sub-menu">
                    <a href="javascript:;" class="">
                        <i class="icon_desktop"></i>
                        <span>UI Fitures</span>
                        <span class="menu-arrow arrow_carrot-right"></span>
                    </a>
                    <ul class="sub">
                        <li><g:link class="" uri="/general">Elements</g:link></li>
                        <li><g:link class="" uri="/buttons">Buttons</g:link></li>
                        <li><g:link class="" uri="/grids">Grids</g:link></li>
                    </ul>
                </li>
                <li>
                    <g:link class="" uri="/widgets">
                        <i class="icon_genius"></i>
                        <span>Widgets</span>
                    </g:link>
                </li>
                <li>
                    <g:link class="" uri="/chart">
                        <i class="icon_piechart"></i>
                        <span>Charts</span>
                    </g:link>

                </li>

                <li class="sub-menu">
                    <a href="javascript:;" class="">
                        <i class="icon_table"></i>
                        <span>Tables</span>
                        <span class="menu-arrow arrow_carrot-right"></span>
                    </a>
                    <ul class="sub">
                        <li><g:link class="" uri="/basic_table">Basic Table</g:link></li>
                    </ul>
                </li>

                <li class="sub-menu">
                    <a href="javascript:;" class="">
                        <i class="icon_documents_alt"></i>
                        <span>Pages</span>
                        <span class="menu-arrow arrow_carrot-right"></span>
                    </a>
                    <ul class="sub">
                        <li><g:link class="" uri="/profile">Profile</g:link></li>
                        <li><g:link class="" uri="/login"><span>Login Page</span></g:link></li>
                        <li><g:link class="" uri="/blank">Blank Page</g:link></li>
                        <li><g:link class="" uri="/404">404 Error Ping</g:link></li>
                    </ul>
                </li>
                <li class="sub-menu">
                    <a href="javascript:;" class="">
                        <span>Admin</span>
                        <span class="menu-arrow arrow_carrot-right"></span>
                    </a>
                    <ul class="sub">
                        <li><g:link class="" uri="/admin">Admin Home</g:link></li>
                        <li><g:link class="" controller="adminMainCategory">Main Category Home</g:link></li>
                        <li><g:link class="" controller="adminCategory">Category Home</g:link></li>
                        <li><g:link class="" controller="adminImportFormat">Bank Home</g:link></li>
                        <li><g:link class="" controller="adminAccount">Account Home</g:link></li>
                        <li><g:link class="" controller="adminAccountType">Account Type Home</g:link></li>
                    </ul>
                </li>


            </ul>
            <!-- sidebar menu end-->
        </div>
    </aside>
    <!--sidebar end-->

    <g:layoutBody/>
</section>
<!-- container section start -->

<!-- javascripts -->
<script src="${resource(dir: 'js', file:'jquery.js')}"></script>
<script src="${resource(dir: 'js', file:'jquery-ui-1.10.4.min.js')}"></script>
<script src="${resource(dir: 'js', file:'jquery-1.8.3.min.js')}"></script>
<script type="text/javascript" src="${resource(dir: 'js', file:'jquery-ui-1.9.2.custom.min.js')}"></script>
<script src="${resource(dir: 'js', file:'bootstrap.min.js')}"></script>
<script src="${resource(dir: 'js', file:'jquery.scrollTo.min.js')}"></script>
<script src="${resource(dir: 'js', file:'jquery.nicescroll.js')}" type="text/javascript"></script>
<script src="${resource(dir: 'assets/jquery-knob/js', file:'jquery.knob.js')}"></script>
<script src="${resource(dir: 'js', file:'jquery.sparkline.js')}" type="text/javascript"></script>
<script src="${resource(dir: 'assets/jquery-easy-pie-chart', file:'jquery.easy-pie-chart.js')}"></script>
<script src="${resource(dir: 'js', file:'owl.carousel.js')}" ></script>
<script src="${resource(dir: 'js', file:'fullcalendar.min.js')}"></script> <!-- Full Google Calendar - Calendar -->
<script src="${resource(dir: 'assets/fullcalendar/fullcalendar', file:'fullcalendar.js')}"></script>
<script src="${resource(dir: 'js', file:'calendar-custom.js')}"></script>
<script src="${resource(dir: 'js', file:'jquery.rateit.min.js')}"></script>
<script src="${resource(dir: 'js', file:'jquery.customSelect.min.js')}" ></script>
<script src="${resource(dir: 'assets/chart-master/', file:'Chart.js')}"></script>
<script src="${resource(dir: 'js', file:'scripts.js')}"></script>
<script src="${resource(dir: 'js', file:'sparkline-chart.js')}"></script>
<script src="${resource(dir: 'js', file:'easy-pie-chart.js')}"></script>
<script src="${resource(dir: 'js', file:'jquery-jvectormap-1.2.2.min.js')}"></script>
<script src="${resource(dir: 'js', file:'jquery-jvectormap-world-mill-en.js')}"></script>
<script src="${resource(dir: 'js', file:'xcharts.min.js')}"></script>
<script src="${resource(dir: 'js', file:'jquery.autosize.min.js')}"></script>
<script src="${resource(dir: 'js', file:'jquery.placeholder.min.js')}"></script>
<script src="${resource(dir: 'js', file:'gdp-data.js')}"></script>
<script src="${resource(dir: 'js', file:'morris.min.js')}"></script>
<script src="${resource(dir: 'js', file:'sparklines.js')}"></script>
<script src="${resource(dir: 'js', file:'charts.js')}"></script>
<script src="${resource(dir: 'js', file:'jquery.slimscroll.min.js')}"></script>
<script>

    //knob
    $(function() {
        $(".knob").knob({
            'draw' : function () {
                $(this.i).val(this.cv + '%')
            }
        })
    });

    //carousel
    $(document).ready(function() {
        $("#owl-slider").owlCarousel({
            navigation : true,
            slideSpeed : 300,
            paginationSpeed : 400,
            singleItem : true

        });
    });

    //custom select box

    $(function(){
        $('select.styled').customSelect();
    });

    /* ---------- Map ---------- */
    $(function(){
        $('#map').vectorMap({
            map: 'world_mill_en',
            series: {
                regions: [{
                    values: gdpData,
                    scale: ['#000', '#000'],
                    normalizeFunction: 'polynomial'
                }]
            },
            backgroundColor: '#eef3f7',
            onLabelShow: function(e, el, code){
                el.html(el.html()+' (GDP - '+gdpData[code]+')');
            }
        });
    });



</script>

</body>
</html>

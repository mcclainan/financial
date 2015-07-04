<%--
  Created by IntelliJ IDEA.
  User: tony
  Date: 6/9/15
  Time: 12:05 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="org.macsuite.financial.tracking.Transaction" %>
<html>
<head>
    <title></title>
</head>

<body>
<!--main content start-->
<section id="main-content">
    <section class="wrapper">
        <!--overview start-->
        <div class="row">
            <div class="col-lg-12">
                <h3 class="page-header"><i class="fa fa-laptop"></i> Dashboard</h3>
                <ol class="breadcrumb">
                    <li><i class="fa fa-home"></i><g:link uri="/">Home</g:link></li>
                    <li><i class="fa fa-laptop"></i>Dashboard</li>
                </ol>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-6">
                <section class="panel">
                    <header class="panel-heading dashboard-heading">
                        Most Recent Trasactions
                    </header>
                    <div class="panel-body">
                        <table class="table table-hover">
                            <thead>
                            <tr>
                                <td><g:message code="transaction.date.label"/></td>
                                <td><g:message code="transaction.location.label"/></td>
                                <td><g:message code="transaction.amount.label"/></td>
                                <th><g:message code="category"/></th>
                                <th><g:message code="account"/></th>
                            </tr>
                            </thead>
                            <tbody>
                            <g:each in="${mostRecentTransactions}" var="transaction">
                                <tr>
                                    <td><g:formatDate date="${transaction.date}" format="MMM dd"/></td>
                                    <td>${transaction.location}</td>
                                    <td><g:formatNumber number="${transaction.amount}" type="currency" currencyCode="USD"/></td>
                                    <td>${transaction.category}</td>
                                    <td>${transaction.account}</td>
                                </tr>
                            </g:each>
                            </tbody>
                        </table>
                    </div>
                </section>
            </div>
            <div class="col-lg-6">
                <section class="panel">
                    <div class="panel-body">
                        col-lg-6
                    </div>
                </section>
            </div>
        </div>
        <g:render template="templates/calendar"/>
        <div class="row">

            <div class="col-lg-9 col-md-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h2><i class="fa fa-flag-o red"></i><strong>Registered Users</strong></h2>
                        <div class="panel-actions">
                            <a href="index.html#" class="btn-setting"><i class="fa fa-rotate-right"></i></a>
                            <a href="index.html#" class="btn-minimize"><i class="fa fa-chevron-up"></i></a>
                            <a href="index.html#" class="btn-close"><i class="fa fa-times"></i></a>
                        </div>
                    </div>
                    <div class="panel-body">
                        <table class="table bootstrap-datatable countries">
                            <thead>
                            <tr>
                                <th></th>
                                <th>Country</th>
                                <th>Users</th>
                                <th>Online</th>
                                <th>Performance</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td><img src="../../../web-app/img/Germany.png" style="height:18px; margin-top:-2px;"></td>
                                <td>Germany</td>
                                <td>2563</td>
                                <td>1025</td>
                                <td>
                                    <div class="progress thin">
                                        <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="73" aria-valuemin="0" aria-valuemax="100" style="width: 73%">
                                        </div>
                                        <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="27" aria-valuemin="0" aria-valuemax="100" style="width: 27%">
                                        </div>
                                    </div>
                                    <span class="sr-only">73%</span>
                                </td>
                            </tr>
                            <tr>
                                <td><img src="../../../web-app/img/India.png" style="height:18px; margin-top:-2px;"></td>
                                <td>India</td>
                                <td>3652</td>
                                <td>2563</td>
                                <td>
                                    <div class="progress thin">
                                        <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="57" aria-valuemin="0" aria-valuemax="100" style="width: 57%">
                                        </div>
                                        <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="43" aria-valuemin="0" aria-valuemax="100" style="width: 43%">
                                        </div>
                                    </div>
                                    <span class="sr-only">57%</span>
                                </td>
                            </tr>
                            <tr>
                                <td><img src="../../../web-app/img/Spain.png" style="height:18px; margin-top:-2px;"></td>
                                <td>Spain</td>
                                <td>562</td>
                                <td>452</td>
                                <td>
                                    <div class="progress thin">
                                        <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="93" aria-valuemin="0" aria-valuemax="100" style="width: 93%">
                                        </div>
                                        <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="7" aria-valuemin="0" aria-valuemax="100" style="width: 7%">
                                        </div>
                                    </div>
                                    <span class="sr-only">93%</span>
                                </td>
                            </tr>
                            <tr>
                                <td><img src="../../../web-app/img/India.png" style="height:18px; margin-top:-2px;"></td>
                                <td>Russia</td>
                                <td>1258</td>
                                <td>958</td>
                                <td>
                                    <div class="progress thin">
                                        <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 20%">
                                        </div>
                                        <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
                                        </div>
                                    </div>
                                    <span class="sr-only">20%</span>
                                </td>
                            </tr>
                            <tr>
                                <td><img src="../../../web-app/img/Spain.png" style="height:18px; margin-top:-2px;"></td>
                                <td>USA</td>
                                <td>4856</td>
                                <td>3621</td>
                                <td>
                                    <div class="progress thin">
                                        <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 20%">
                                        </div>
                                        <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
                                        </div>
                                    </div>
                                    <span class="sr-only">20%</span>
                                </td>
                            </tr>
                            <tr>
                                <td><img src="../../../web-app/img/Germany.png" style="height:18px; margin-top:-2px;"></td>
                                <td>Brazil</td>
                                <td>265</td>
                                <td>102</td>
                                <td>
                                    <div class="progress thin">
                                        <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 20%">
                                        </div>
                                        <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
                                        </div>
                                    </div>
                                    <span class="sr-only">20%</span>
                                </td>
                            </tr>
                            <tr>
                                <td><img src="../../../web-app/img/Germany.png" style="height:18px; margin-top:-2px;"></td>
                                <td>Coloumbia</td>
                                <td>265</td>
                                <td>102</td>
                                <td>
                                    <div class="progress thin">
                                        <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 20%">
                                        </div>
                                        <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
                                        </div>
                                    </div>
                                    <span class="sr-only">20%</span>
                                </td>
                            </tr>
                            <tr>
                                <td><img src="../../../web-app/img/Germany.png" style="height:18px; margin-top:-2px;"></td>
                                <td>France</td>
                                <td>265</td>
                                <td>102</td>
                                <td>
                                    <div class="progress thin">
                                        <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 20%">
                                        </div>
                                        <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
                                        </div>
                                    </div>
                                    <span class="sr-only">20%</span>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>

                </div>

            </div><!--/col-->
            <div class="col-md-3">

                <div class="social-box facebook">
                    <i class="fa fa-facebook"></i>
                    <ul>
                        <li>
                            <strong>256k</strong>
                            <span>friends</span>
                        </li>
                        <li>
                            <strong>359</strong>
                            <span>feeds</span>
                        </li>
                    </ul>
                </div><!--/social-box-->
            </div>
            <div class="col-md-3">

                <div class="social-box google-plus">
                    <i class="fa fa-google-plus"></i>
                    <ul>
                        <li>
                            <strong>962</strong>
                            <span>followers</span>
                        </li>
                        <li>
                            <strong>256</strong>
                            <span>circles</span>
                        </li>
                    </ul>
                </div><!--/social-box-->

            </div><!--/col-->
            <div class="col-md-3">

                <div class="social-box twitter">
                    <i class="fa fa-twitter"></i>
                    <ul>
                        <li>
                            <strong>1562k</strong>
                            <span>followers</span>
                        </li>
                        <li>
                            <strong>2562</strong>
                            <span>tweets</span>
                        </li>
                    </ul>
                </div><!--/social-box-->

            </div><!--/col-->

        </div>



        <!-- statics end -->




        <!-- project team & activity start -->
        <div class="row">
            <div class="col-md-4 portlets">
                <!-- Widget -->
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <div class="pull-left">Message</div>
                        <div class="widget-icons pull-right">
                            <a href="#" class="wminimize"><i class="fa fa-chevron-up"></i></a>
                            <a href="#" class="wclose"><i class="fa fa-times"></i></a>
                        </div>
                        <div class="clearfix"></div>
                    </div>

                    <div class="panel-body">
                        <!-- Widget content -->
                        <div class="padd sscroll">

                            <ul class="chats">

                                <!-- Chat by us. Use the class "by-me". -->
                                <li class="by-me">
                                    <!-- Use the class "pull-left" in avatar -->
                                    <div class="avatar pull-left">
                                        <img src="../../../web-app/img/user.jpg" alt=""/>
                                    </div>

                                    <div class="chat-content">
                                        <!-- In meta area, first include "name" and then "time" -->
                                        <div class="chat-meta">John Smith <span class="pull-right">3 hours ago</span></div>
                                        Vivamus diam elit diam, consectetur dapibus adipiscing elit.
                                        <div class="clearfix"></div>
                                    </div>
                                </li>

                                <!-- Chat by other. Use the class "by-other". -->
                                <li class="by-other">
                                    <!-- Use the class "pull-right" in avatar -->
                                    <div class="avatar pull-right">
                                        <img src="../../../web-app/img/user22.png" alt=""/>
                                    </div>

                                    <div class="chat-content">
                                        <!-- In the chat meta, first include "time" then "name" -->
                                        <div class="chat-meta">3 hours ago <span class="pull-right">Jenifer Smith</span></div>
                                        Vivamus diam elit diam, consectetur fconsectetur dapibus adipiscing elit.
                                        <div class="clearfix"></div>
                                    </div>
                                </li>

                                <li class="by-me">
                                    <div class="avatar pull-left">
                                        <img src="../../../web-app/img/user.jpg" alt=""/>
                                    </div>

                                    <div class="chat-content">
                                        <div class="chat-meta">John Smith <span class="pull-right">4 hours ago</span></div>
                                        Vivamus diam elit diam, consectetur fermentum sed dapibus eget, Vivamus consectetur dapibus adipiscing elit.
                                        <div class="clearfix"></div>
                                    </div>
                                </li>

                                <li class="by-other">
                                    <!-- Use the class "pull-right" in avatar -->
                                    <div class="avatar pull-right">
                                        <img src="../../../web-app/img/user22.png" alt=""/>
                                    </div>

                                    <div class="chat-content">
                                        <!-- In the chat meta, first include "time" then "name" -->
                                        <div class="chat-meta">3 hours ago <span class="pull-right">Jenifer Smith</span></div>
                                        Vivamus diam elit diam, consectetur fermentum sed dapibus eget, Vivamus consectetur dapibus adipiscing elit.
                                        <div class="clearfix"></div>
                                    </div>
                                </li>

                            </ul>

                        </div>
                        <!-- Widget footer -->
                        <div class="widget-foot">

                            <form class="form-inline">
                                <div class="form-group">
                                    <input type="text" class="form-control" placeholder="Type your message here...">
                                </div>
                                <button type="submit" class="btn btn-info">Send</button>
                            </form>


                        </div>
                    </div>
                    <div class="col-md-6 portlets">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <div class="pull-left">Quick Post</div>
                                <div class="widget-icons pull-right">
                                    <a href="#" class="wminimize"><i class="fa fa-chevron-up"></i></a>
                                    <a href="#" class="wclose"><i class="fa fa-times"></i></a>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="panel-body">
                                <div class="padd">

                                    <div class="form quick-post">
                                        <!-- Edit profile form (not working)-->
                                        <form class="form-horizontal">
                                            <!-- Title -->
                                            <div class="form-group">
                                                <label class="control-label col-lg-2" for="title">Title</label>
                                                <div class="col-lg-10">
                                                    <input type="text" class="form-control" id="title">
                                                </div>
                                            </div>
                                            <!-- Content -->
                                            <div class="form-group">
                                                <label class="control-label col-lg-2" for="content">Content</label>
                                                <div class="col-lg-10">
                                                    <textarea class="form-control" id="content"></textarea>
                                                </div>
                                            </div>
                                            <!-- Cateogry -->
                                            <div class="form-group">
                                                <label class="control-label col-lg-2">Category</label>
                                                <div class="col-lg-10">
                                                    <select class="form-control">
                                                        <option value="">- Choose Cateogry -</option>
                                                        <option value="1">General</option>
                                                        <option value="2">News</option>
                                                        <option value="3">Media</option>
                                                        <option value="4">Funny</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <!-- Tags -->
                                            <div class="form-group">
                                                <label class="control-label col-lg-2" for="tags">Tags</label>
                                                <div class="col-lg-10">
                                                    <input type="text" class="form-control" id="tags">
                                                </div>
                                            </div>

                                            <!-- Buttons -->
                                            <div class="form-group">
                                                <!-- Buttons -->
                                                <div class="col-lg-offset-2 col-lg-9">
                                                    <button type="submit" class="btn btn-primary">Publish</button>
                                                    <button type="submit" class="btn btn-danger">Save Draft</button>
                                                    <button type="reset" class="btn btn-default">Reset</button>
                                                </div>
                                            </div>
                                        </form>
                                    </div>


                                </div>
                                <div class="widget-foot">
                                    <!-- Footer goes here -->
                                </div>
                            </div>
                        </div>

                    </div>

                </div>
            </div>


        </div><br><br>


        <!-- project team & activity end -->

    </section>
</section>
<!--main content end-->

</body>
</html>
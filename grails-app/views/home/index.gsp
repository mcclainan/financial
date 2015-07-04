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
                <div class="panel">
                    <div class="panel-heading dashboard-heading">
                        Cumulative Expense Tracking
                    </div>
                    <div class="panel-body">
                        <table class="table bootstrap-datatable countries">
                            <thead>
                            <tr>
                                <th>Category</th>
                                <th>Spent</th>
                                <th>Budgeted</th>
                                <th>Performance</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
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
            </div>
        </div>
        <g:render template="templates/calendar"/>


        <!-- project team & activity end -->

    </section>
</section>
<!--main content end-->

</body>
</html>
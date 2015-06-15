<%--
  Created by IntelliJ IDEA.
  User: tony
  Date: 6/9/15
  Time: 12:07 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="org.macsuite.financial.banking.Account" %>
<html>
<head>
    <title><g:message code="adminBank.index.title" default="Admin -Bank List"/></title>
</head>

<body>
<!--main content start-->
<section id="main-content">
    <section class="wrapper">
        <div class="row">
            <div class="col-lg-12">
                <h3 class="page-header"><i class="fa fa fa-cog"></i><g:message code="adminBank.show.heading" default="Showing Bank" args="[bankInstance]"/> </h3>
                <ol class="breadcrumb">
                    <li><i class="fa fa-home"></i><g:link uri="/"><g:message code="index.title" default="Home"/></g:link></li>
                    <li><i class="fa fa-home"></i><g:link controller="adminHome"><g:message code="adminHome.index.heading"/></g:link></li>
                    <li><i class="fa fa-cog"></i><g:link action="index"><g:message code="adminBank.index.heading" default="MainCategory"/></g:link></li>
                    <li><i class="fa fa-cog"></i><g:message code="adminBank.show.subheading" default="Show"/></li>
                </ol>
            </div>
        </div>
        <!-- page start-->
        <g:render template="/templates/notificationBlock"/>
        <div class="row">

            <div class="col-lg-4">
                <section class="panel">
                    <div class="panel-body">
                        <div class="row-fluid">
                            <p><span><strong>ID</strong></span>: ${bankInstance.id} </p>
                        </div>
                        <div class="row-fluid">
                            <p><span><strong><g:message code="bank.active.label"/></strong></span>: ${bankInstance.active?'Yes':'No'} </p>
                        </div>
                        <div class="row-fluid">
                            <p><span><strong><g:message code="bank.dateColumn.label"/></strong></span>: ${bankInstance.dateColumn} </p>
                        </div>
                        <div class="row-fluid">
                            <p><span><strong><g:message code="bank.descriptionColumn.label"/></strong></span>: ${bankInstance.descriptionColumn} </p>
                        </div>
                        <g:if test="${bankInstance.amountColumn}">
                            <div class="row-fluid">
                                <p><span><strong><g:message code="bank.amountColumn.label"/></strong></span>: ${bankInstance.amountColumn} </p>
                            </div>
                        </g:if>
                        <g:if test="${bankInstance.hasMultipleAmountColumns}">
                            <div class="row-fluid">
                                <p><span><strong><g:message code="bank.hasMultipleAmountColumns.label"/></strong></span>: ${bankInstance.hasMultipleAmountColumns} </p>
                            </div>
                        </g:if>
                        <g:if test="${bankInstance.creditColumn}">
                            <div class="row-fluid">
                                <p><span><strong><g:message code="bank.creditColumn.label"/></strong></span>: ${bankInstance.creditColumn} </p>
                            </div>
                        </g:if>
                        <g:if test="${bankInstance.debitColumn}">
                            <div class="row-fluid">
                                <p><span><strong><g:message code="bank.debitColumn.label"/></strong></span>: ${bankInstance.debitColumn} </p>
                            </div>
                        </g:if>
                        <div class="row-fluid">
                            <p><span><strong><g:message code="bank.hasHeading.label"/></strong></span>: ${bankInstance.hasHeading?'Yes':'No'} </p>
                        </div>


                        <div class="col-lg-offset-2 col-lg-10">
                            <g:link action="edit" class="btn btn-primary btn-lg" id="${bankInstance.id}">Edit</g:link>
                        </div>
                    </div>
                </section>
            </div>
            <div class="col-lg-4">
                <section class="panel">
                    <div class="panel-body">
                        <header class="panel-heading">
                            ${bankInstance.name} <g:message code="bank.accounts.label"/>
                        </header>
                        <table class="table table-condensed">
                            <thead>
                            <tr>
                                <th>ID</th>
                                <th><g:message code="account.title.label"/></th>
                                <th><g:message code="account.balance.label"/></th>
                                <th><g:message code="account.type.label"/></th>
                                <th><g:message code="account.liquid.label"/></th>
                            </tr>
                            </thead>
                            <tbody>
                                <g:each in="${bankInstance.accounts}" var="account">
                                    <tr>
                                        <td>${account.id}</td>
                                        <td>
                                            <g:link controller="adminCategory" action="show" id="${account.id}">
                                                ${account.title}
                                            </g:link>
                                        </td>
                                        <td><g:formatNumber number="${account.balance}" type="currency" currencyCode="USD"/></td>
                                        <td>${account.type}</td>
                                        <td>${account.liquid}</td>
                                    </tr>
                                </g:each>
                            </tbody>
                        </table>
                    </div>
                </section>
            </div>
            <div class="col-lg-4">
                <section class="panel">
                    <div class="panel-body">
                        <header class="panel-heading">
                            New <g:message code="account"/>
                        </header>
                        <div class="panel-body">
                            <g:form controller="adminAccount" action="save">
                                <div class="form-group">
                                    <label for="title"><g:message code="account.title.label"/><span class="required">*</span></label>
                                    <g:textField name="title" class="form-control" placeholder="Enter Name" required="required" value="${command?.title}"/>
                                </div>
                                <div class="form-group">
                                    <label for="type"><g:message code="account.type.label"/><span class="required">*</span></label>
                                    <g:select from="${Account.findAllByActive(true)}" name="type"
                                              class="form-control m-bot15" optionValue="type" optionKey="id"
                                              value="${command?.type?.id}"/>
                                </div>
                                <div class="form-group">
                                    <label for="balance"><g:message code="account.balance.label"/></label>
                                    <g:field name="balance" type="number" step="any" class="form-control" cols="4" value="${command?.balance}"/>
                                </div>
                                <div class="col-lg-10">
                                    <div class="checkbox">
                                        <label>
                                            <g:checkBox name="liquid" checked="${command?.liquid}"/>
                                            This account will move cash around. Such as purchases as opposed to interest costs.
                                        </label>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-lg-10">
                                        <g:hiddenField name="bank" value="${bankInstance}"/>
                                        <g:submitButton name="Save" class="btn-lg btn-primary"/>
                                    </div>
                                </div>
                            </g:form>

                        </div>
                    </div>
                </section>
            </div>
        </div>
        <!-- page end-->
    </section>
</section>
<!--main content end-->

</body>
</html>
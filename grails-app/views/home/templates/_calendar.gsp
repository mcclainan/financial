<%@ page import="org.macsuite.financial.planning.PlannedTransaction" %>
<div class="row" id="cal">
    <div class="col-lg-2"></div>
    <div class="col-lg-8">
        <section class="panel">
            <header class="panel-heading text-center dashboard-heading">
                Cash Flow Calendar<br/>
                <g:formatDate date="${calendarDate}" format="MMMM yyyy"/><br/>
                <g:if test="${calendarDate.clearTime()!=new Date().clearTime()}">
                    <g:remoteLink class="btn btn-primary" action="displayCalendar" update="cal" params="['switch':'prev','month':calendarDate.getAt(Calendar.MONTH),'year':calendarDate.getAt(Calendar.YEAR)]">${raw('<')}</g:remoteLink>
                </g:if>
                <g:remoteLink class="btn btn-primary" action="displayCalendar" update="cal" params="['switch':'next','month':calendarDate.getAt(Calendar.MONTH),'year':calendarDate.getAt(Calendar.YEAR)]">${raw('>')}</g:remoteLink>
                <br/><br/>
            </header>
            <div class="panel-body">
                <table class="table table-responsive table-bordered">
                    <thead>
                        <tr>
                            <th>Sunday</th>
                            <th>Monday</th>
                            <th>Tuesday</th>
                            <th>Wednesday</th>
                            <th>Thursday</th>
                            <th>Friday</th>
                            <th>Saturday</th>
                        </tr>
                    </thead>
                    <tbody>
                        <g:set var="i" value="${1}"/>
                        <g:each in="${beanList}" var="bean" status="i">
                            <g:if test="${bean.dayOfWeek == 1 || i==0}">
                                <tr>
                                    <td>
                                        ${bean.day}<br/>
                                        ${bean.income}<br/>
                                        ${bean.expense}<br/>
                                        ${bean.remainder}<br>
                                    </td>
                            </g:if>
                            <g:elseif test="${bean.dayOfWeek !=7}">
                                    <td>
                                        ${bean.day}<br/>
                                        ${bean.income}<br/>
                                        ${bean.expense}<br/>
                                        ${bean.remainder}<br>
                                    </td>
                            </g:elseif>
                            <g:else>
                                    <td>
                                        ${bean.day}<br/>
                                        ${bean.income}<br/>
                                        ${bean.expense}<br/>
                                        ${bean.remainder}<br>
                                    </td>
                                <tr>
                            </g:else>
                        </g:each>
                    </tbody>
                </table>
            </div>
        </section>
    </div>
    <div class="col-lg-2"></div>
</div>
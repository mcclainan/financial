package org.macsuite.financial

import grails.plugin.springsecurity.annotation.Secured
import org.macsuite.financial.planning.PlannedTransaction
import org.macsuite.financial.tracking.Transaction

@Secured(['IS_AUTHENTICATED_ANONYMOUSLY'])
class HomeController {
    def index() {

        [mostRecentTransactions:Transaction.findAllByAutoDisplay(true,[max:10]),beanList:PlannedTransaction.calendar(new Date()),calendarDate:new Date()]
    }

    def displayCalendar(){
        Integer month = params.month.toInteger()
        Integer year = params.year.toInteger()
        Calendar calendar = new GregorianCalendar(year,month,1)
        if(params.switch=='prev'){
            calendar.add(Calendar.MONTH,-1)
        }else{
            calendar.add(Calendar.MONTH,1)
        }

        render template: 'templates/calendar', model: [beanList:PlannedTransaction.calendar(calendar.time),calendarDate:calendar.time]
    }
}

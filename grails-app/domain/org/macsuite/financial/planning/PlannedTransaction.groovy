package org.macsuite.financial.planning

import org.macsuite.financial.banking.Account
import org.macsuite.financial.beans.CashFlowCalendarBean
import org.macsuite.financial.category.Category
import org.macsuite.financial.tracking.Transaction

class PlannedTransaction implements Serializable{
    Date       date
    BigDecimal amount
    Boolean    rolling = false

    static belongsTo = [category:Category]


    static constraints = {
        date blank:false
        amount blank:false
        rolling blank:false
    }

    static budget(Integer year, Integer month,String type){
        StringBuffer query = new StringBuffer()
        Date date = new Date()
        Calendar calendar = new GregorianCalendar(year?:date.getAt(Calendar.YEAR),month?:date.getAt(Calendar.MONTH),1)
        Date startDate = calendar.getTime()
        calendar.set(Calendar.DAY_OF_MONTH,calendar.getActualMaximum(Calendar.DAY_OF_MONTH))
        Date endDate = calendar.getTime()
        query.append("select c.mainCategory, p.category,sum(p.amount)")
        query.append("from PlannedTransaction p, Category c ")
        query.append("where c.type = :type ")
        query.append("and p.category = c.id ")
        query.append("and p.date between :startDate and :endDate ")
        query.append("group by c.mainCategory,p.category ")
        query.append("order by c.mainCategory,p.category ")
        return executeQuery(query.toString(),[type:type,startDate:startDate,endDate:endDate])
    }

    static calendar(){
        return calendar(null)
    }

    static calendar(Date startDate){
        StringBuffer query = new StringBuffer()
        Date date = new Date()
        if(!startDate || startDate<date){
            startDate = date
        }
        Calendar endCalendar=new GregorianCalendar(startDate.getAt(Calendar.YEAR),startDate.getAt(Calendar.MONTH),startDate.getAt(Calendar.DAY_OF_MONTH))
        endCalendar.set(Calendar.DAY_OF_MONTH,endCalendar.getActualMaximum(Calendar.DAY_OF_MONTH))
        query.append("select p.date, sum(p.amount) ")
        query.append("from PlannedTransaction p, Category c ")
        query.append("where p.date >= :date ")
        query.append("and p.category = c.id ")
        query.append("and c.type = 'I' ")
        query.append("and p.date between :startDate and :endDate ")
        query.append("group by p.date ")
        query.append("order by p.date")
        def income = executeQuery(query.toString(),[date:date-1,startDate: startDate, endDate: endCalendar.getTime()])
        query = new StringBuffer()
        query.append("select p.date, sum(p.amount) ")
        query.append("from PlannedTransaction p, Category c ")
        query.append("where p.date >= :date ")
        query.append("and p.category = c.id ")
        query.append("and c.type = 'E' ")
        query.append("and p.date between :startDate and :endDate ")
        query.append("group by p.date ")
        query.append("order by p.date")
        def expense =  executeQuery(query.toString(),[date:date-1,startDate: startDate,endDate: endCalendar.getTime()])
        List<CashFlowCalendarBean> cashFlowCalendarBeanList = []
        Calendar calendar = new GregorianCalendar(startDate.getAt(Calendar.YEAR),startDate.getAt(Calendar.MONTH),startDate.getAt(Calendar.DAY_OF_MONTH))
        BigDecimal total = Account.cashTotal.get()
        for(int i=1;i<calendar.get(Calendar.DAY_OF_WEEK);i++){
            cashFlowCalendarBeanList<<new CashFlowCalendarBean()
        }
        int breaker = 0
        while(income.size()>0 || expense.size()>0){
            Date currentDate = calendar.getTime()
            CashFlowCalendarBean cashFlowCalendarBean = new CashFlowCalendarBean()
            if(expense.size()>0 && expense[0][0]==currentDate){
                BigDecimal amount = new BigDecimal("${expense[0][1]}")
                cashFlowCalendarBean.expense = amount
                total = total.subtract(amount)
                expense.remove(0)
            }
            if(income.size()>0 && income[0][0]==currentDate){
                BigDecimal amount = new BigDecimal("${income[0][1]}")
                cashFlowCalendarBean.income = amount
                total = total.add(amount)
                income.remove(0)
            }
            if(!cashFlowCalendarBean.income && !cashFlowCalendarBean.expense){
                println "No match date:${currentDate} expenses left:${expense.size()} income left:${income.size()}"
                if(breaker>10){return null}
                breaker+1
            }
            cashFlowCalendarBean.date=startDate
            cashFlowCalendarBean.day = currentDate.getAt(Calendar.DAY_OF_MONTH)
            cashFlowCalendarBean.dayOfWeek = currentDate.getAt(Calendar.DAY_OF_WEEK)
            cashFlowCalendarBean.remainder = total
            cashFlowCalendarBeanList<<cashFlowCalendarBean
            calendar.add(Calendar.DAY_OF_MONTH,1)

        }
        cashFlowCalendarBeanList.each {
            println it
        }
        return cashFlowCalendarBeanList
    }

    static namedQueries = {
        listByCategoryAndDate{catId,start,end->
            category{
                eq('id',catId)
            }
            between('date',start,end)
        }
    }

    static mapping = {
        sort('date')
    }

    String toString(){
        "${category} on ${date.format('MM/dd/yyyy')}"
    }
}

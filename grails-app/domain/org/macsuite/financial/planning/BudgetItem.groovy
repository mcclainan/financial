package org.macsuite.financial.planning

import org.macsuite.financial.category.Category
import org.macsuite.financial.tracking.Transaction

class BudgetItem {
    Integer    year
    Integer    month
    Boolean    required = false
    BigDecimal amount

    static transients = ['amount']

    static belongsTo = [category:Category]

    static hasMany = [plannedTransactions:PlannedTransaction, transactions:Transaction]

    static constraints = {
        year blank:false
        month blank:false
        category unique: ['year','month']
    }

    BigDecimal getAmount(){
        if(plannedTransactions?.size() > 0){
            BigDecimal total = new BigDecimal('0')
            plannedTransactions.each {pt->
                total = total.add(pt.amount)
            }
            total.setScale(2,BigDecimal.ROUND_HALF_DOWN)
            return total
        }
        new BigDecimal('0').setScale(2,BigDecimal.ROUND_HALF_DOWN)
    }
}

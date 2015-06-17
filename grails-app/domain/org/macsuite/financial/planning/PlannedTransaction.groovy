package org.macsuite.financial.planning

import org.macsuite.financial.category.Category
import org.macsuite.financial.tracking.Transaction

class PlannedTransaction {
    Date       date
    BigDecimal amount
    Boolean    rolling = false

    static belongsTo = [budgetItem:BudgetItem,category:Category]


    static constraints = {
        date blank:false
        amount blank:false
        rolling blank:false
    }
}

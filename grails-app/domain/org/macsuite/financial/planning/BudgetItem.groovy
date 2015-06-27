package org.macsuite.financial.planning

import org.macsuite.financial.category.Category
import org.macsuite.financial.tracking.Transaction

class BudgetItem implements Serializable{
    Integer    year
    Integer    month
    Boolean    required = false
    BigDecimal amount

    static transients = ['amount']

    static belongsTo = [category:Category]


    static constraints = {
        year blank:false
        month blank:false
        category unique: ['year','month']
    }
}

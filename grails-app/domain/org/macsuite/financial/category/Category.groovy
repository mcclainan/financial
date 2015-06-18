package org.macsuite.financial.category

import org.macsuite.financial.planning.BudgetItem
import org.macsuite.financial.planning.PlannedTransaction
import org.macsuite.financial.tracking.Transaction

class Category implements Serializable{
    String name
    String description
    Boolean cash
    String type
    Boolean active = true
    Boolean displayOnMobile = true
    Boolean cumulative = false

    static belongsTo = [mainCategory:MainCategory]

    static hasMany = [transactions:Transaction, budgetItems:BudgetItem, plannedTransactions:PlannedTransaction]

    static constraints = {
        name blank: false, unique: ['mainCategory']
        description nullable: true, blank: true
        active blank:false
        displayOnMobile blank:false
        type(nullable: false, blank: false, size:1..1, inList:["I", "E"])
        cumulative nullable:true, blank:true
        cash(nullable: false, blank: false)
    }

    public String toString(){
        name
    }
}

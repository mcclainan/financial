package org.macsuite.financial.tracking

import org.macsuite.financial.User
import org.macsuite.financial.banking.Account
import org.macsuite.financial.banking.BankRecord
import org.macsuite.financial.category.Category
import org.macsuite.financial.planning.BudgetItem
import org.macsuite.financial.planning.PlannedTransaction


class Transaction {
    Date       date
    Date       dateCreated
    Date       lastUpdated
    String     location
    String     description
    BigDecimal amount
    Boolean    autoDisplay = true
    User       user
    Long       userId

    static transients = ['user']

    static belongsTo = [category:Category,account:Account]

    static hasOne = [budgetItem:BudgetItem,plannedTransaction:PlannedTransaction, comboGroup:TransactionComboGroup, bankRecord:BankRecord]

    static constraints = {
        date        blank:false
        dateCreated blank:true,nullable: true
        lastUpdated blank:true,nullable: true
        location    blank:false
        description blank:true
        amount blank:false
        autoDisplay nullable: true
        userId nullable: true
        budgetItem nullable: true
        plannedTransaction nullable: true
        comboGroup nullable: true
        bankRecord nullable: true
    }

    public String toString(){
        amount.setScale(2,BigDecimal.ROUND_HALF_DOWN)
        "${amount} at ${location} on ${date.format('MM/dd/yyyy')}"
    }

    User getUser(){
        if(!user){
            user = User.get(userId)
        }
        return user
    }
}

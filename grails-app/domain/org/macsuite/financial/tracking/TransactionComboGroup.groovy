package org.macsuite.financial.tracking

class TransactionComboGroup {
    static hasMany = [transactions:Transaction]
    static constraints = {
    }
}

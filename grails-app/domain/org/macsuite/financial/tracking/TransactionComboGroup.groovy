package org.macsuite.financial.tracking

class TransactionComboGroup {
    String type
    String date
    static hasMany = [transactions:Transaction]
    static constraints = {
        type blank: false, inList: ['combo','transfer','paycheck','cashBack']
    }
}

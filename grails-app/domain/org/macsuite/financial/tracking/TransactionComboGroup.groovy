package org.macsuite.financial.tracking

class TransactionComboGroup implements Serializable{
    String type
    String date
    static hasMany = [transactions:Transaction]
    static constraints = {
        type blank: false, inList: ['combo','transfer','paycheck','cashBack']
    }
}

package org.macsuite.financial.tracking

import org.macsuite.financial.banking.Account

class TransactionComboGroup implements Serializable{
    String type
    String date
    Account account
    BigDecimal total

    static transients = ['total']
    static hasMany = [transactions:Transaction]
    static constraints = {
        type blank: false, inList: ['combo','transfer','paycheck','cashBack']
    }

    def getTotal(){
        if(!total){
            total = new BigDecimal('0')
            transactions*.amount.each {amount->
                total = total.plus(amount)
            }
        }
    }
}

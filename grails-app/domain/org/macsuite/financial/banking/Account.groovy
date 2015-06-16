package org.macsuite.financial.banking

import org.macsuite.financial.netWorth.AccountingBaseItem
import org.macsuite.financial.tracking.Transaction

class Account {

    String title
    BigDecimal balance
    Boolean liquid = true
    Boolean active = true

    static belongsTo = [importFormat:ImportFormat,type:AccountType]

    static hasOne = [accountingBaseItem:AccountingBaseItem]

    static hasMany = [transactions:Transaction, bankRecords:BankRecord]

    static constraints = {
        title blank: false
        balance nullable: true
        liquid nullable: false
        active nullable: false
        accountingBaseItem nullable: true
    }

    BigDecimal getBalance(){
        accountingBaseItem?.balance?:balance
    }

    void setBalance(BigDecimal balance){
        if(accountingBaseItem){
            accountingBaseItem.balance=balance
        }else{
            this.balance = balance
        }
    }

    def beforeInsert(){
        accountingBaseItem?.save()
    }

    String toString(){
        title
    }
}
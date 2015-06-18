package org.macsuite.financial.netWorth

class ValueChangeEvent implements Serializable{
    Date date
    BigDecimal amount
    String type
    static hasOne = [accountingBaseItem:AccountingBaseItem]
    static constraints = {
        date blank:false
        amount blank:false
        type blank: false, inList: ['appreciation','depreciation']
    }

}

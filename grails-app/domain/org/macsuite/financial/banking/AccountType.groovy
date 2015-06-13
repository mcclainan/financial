package org.macsuite.financial.banking

class AccountType {
    String type
    String resourceType
    Boolean active = true
    static hasMany = [accounts:Account]
    static constraints = {
        resourceType blank: false, inList: ['cash','credit','benefits','other']
    }
}

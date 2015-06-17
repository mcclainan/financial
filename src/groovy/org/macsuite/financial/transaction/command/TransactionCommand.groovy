package org.macsuite.financial.transaction.command

import grails.validation.Validateable
import org.macsuite.financial.banking.Account
import org.macsuite.financial.category.Category
import org.macsuite.financial.tracking.Transaction

/**
 * Created by tony on 6/16/15.
 */
@Validateable
class TransactionCommand {
    Long id
    Date       date
    String     location
    String     description
    BigDecimal amount
    Category   category
    Account    account

    static constraints={
        id nullable: true
        date blank:false
        location blank: false
        description nullable: true, blank: true
        amount blank:false, min:new BigDecimal('0'), scale: 2
        category nullable: false
        account nullable: false
    }

    TransactionCommand (){}

    TransactionCommand(Transaction transaction){
        id=transaction.id
        date=transaction.date
        location=transaction.location
        description=transaction.description
        amount=transaction.amount
        category=transaction.category
        account=transaction.account
    }

    Transaction bind(Transaction transaction){
        transaction.date=date
        transaction.location=location
        transaction.description=description
        transaction.amount=amount
        transaction.category=category
        transaction.account=account
        return transaction
    }
}

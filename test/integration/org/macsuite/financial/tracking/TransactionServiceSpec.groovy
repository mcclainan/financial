package org.macsuite.financial.tracking

import grails.test.mixin.TestFor
import org.macsuite.financial.banking.Account
import org.macsuite.financial.category.Category
import org.macsuite.financial.transaction.command.TransactionCommand
import spock.lang.*

/**
 *
 */
@TestFor(TransactionService)
class TransactionServiceSpec extends Specification {

    def setup() {

    }

    def cleanup() {
    }

    void "save records a new transaction in the database with all the values of the command"() {
        TransactionCommand command = new TransactionCommand(category: Category.findByName('Nic Pay'),
                                                            account: Account.findByTitle('Deposit'),
                                                            location: 'na',
                                                            date: new Date(),
                                                            amount: new BigDecimal('2000.00'))
        when:
        service.save(command)
        def transaction = Transaction.findByLocation('na')

        then:
        transaction
        transaction.category==command.category
        transaction.account==command.account
        transaction.location==command.location
        transaction.date==command.date
        transaction.amount.compareTo(command.amount)==0
    }

    void "save adjusts the account properly"() {
        TransactionCommand command = new TransactionCommand(category: Category.findByName('Nic Pay'),
                                                            account: Account.findByTitle('Deposit'),
                                                            location: 'na',
                                                            date: new Date(),
                                                            amount: new BigDecimal('2000.00'))
        when:
        service.save(command)
        def account = Account.findByTitle('Deposit')

        then:
        account.balance.compareTo(new BigDecimal('3000.00'))==0
    }

    void "update saves the transaction in the database with all the values of the command"() {

        TransactionCommand command = new TransactionCommand(Transaction.findByLocation('Walmart'))
        command.amount = new BigDecimal('10')
        when:
        service.update(command)
        def transaction = Transaction.findByLocation('Walmart')

        then:
        transaction
        transaction.category==command.category
        transaction.account==command.account
        transaction.location==command.location
        transaction.date==command.date
        transaction.amount.compareTo(command.amount)==0
    }

    void "update adjusts the account properly expense"() {
        TransactionCommand command = new TransactionCommand(Transaction.findByLocation('Walmart'))
        command.amount = new BigDecimal('10')
        when:
        service.update(command)
        def account = Account.findByTitle('Spending')

        then:
        account.balance.compareTo(new BigDecimal('60.00'))==0
    }

    void "update adjusts the account properly income"() {
        TransactionCommand command = new TransactionCommand(Transaction.findByLocation('Client'))
        command.amount = new BigDecimal('10')
        when:
        service.update(command)
        def account = Account.findByTitle('Spending')

        then:
        account.balance.compareTo(new BigDecimal('40.00'))==0
    }
}

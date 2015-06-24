package org.macsuite.financial.tracking

import grails.transaction.Transactional
import org.macsuite.financial.transaction.command.TransactionComboCommand
import org.macsuite.financial.transaction.command.TransactionCommand

@Transactional
class TransactionComboService {
    TransactionService transactionService
    def saveTransactions(TransactionComboGroup comboGroup,List<TransactionComboCommand> commandList){
        comboGroup.save(flush: true)
        commandList.each{command->
            println"Saving transaction ${command.category}:${command.amount}"
            transactionService.save(new TransactionCommand(comboGroup,command))
        }
    }

    def delete(TransactionComboGroup group){
        group.transactions.each {transaction->
            transactionService.delete(transaction)
        }
        group.transactions.clear()
        group.delete(flush: true)
    }
}

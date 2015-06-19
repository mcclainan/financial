package org.macsuite.financial.tracking

import grails.transaction.Transactional
import org.macsuite.financial.transaction.command.TransactionComboGroupCommand
import org.macsuite.financial.transaction.command.TransactionCommand

@Transactional
class TransactionComboService {
    TransactionService transactionService
    def saveTransactions(TransactionComboGroup comboGroup,List<TransactionCommand> commandList){
        comboGroup.save(flush: true)
        commandList.each{command->
            command.comboGroup=comboGroup
            transactionService.save(command)
        }
    }
}

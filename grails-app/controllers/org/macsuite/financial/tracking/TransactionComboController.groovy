package org.macsuite.financial.tracking

import org.macsuite.financial.transaction.command.TransactionComboGroupCommand
import org.macsuite.financial.transaction.command.TransactionCommand

class TransactionComboController {

    TransactionComboService transactionComboService

    def index() {
        params.max
        [transactionList:Transaction.comboTransactions.list(params),transactionCount:Transaction.comboTransactions.count()]
    }

    def create(TransactionComboGroupCommand command){
        if(command.hasErrors()){
            params.max
            render view:'index',model:[command:command,transactionList:Transaction.comboTransactions.list(params),transactionCount:Transaction.comboTransactions.count()]
            return
        }
        session.comboGroup = command.spawn()
        session.pendingTransactions = []
        [total: command.total]
    }

    def addTransaction(TransactionCommand command){
        if (command.hasErrors()){
            render view: 'create',model: [command: commmand]
            return
        }
        BigDecimal total = new BigDecimal('0')
        session.pendingTransactions*.amount.each{amount->
            total = total.add(amount)
        }
        BigDecimal difference = session.comboGoup.total.subtract(total)
        Boolean done
        if(difference.doubleValue() < 0.0){
            commmand.amount = commmand.amount.add(difference)
            done = true
        }else if(difference.compareTo(new BigDecimal('0'))){
            done = true
        }
        session.pendingTransactions<<commmand
        render view:'create', model:[done:done,total:difference]
    }

    def removeTransaction(){
        Integer index = params.id.toInteger()
        session.pendingTransactions.remove(index)
        BigDecimal total = new BigDecimal('0')
        session.pendingTransactions*.amount.each{amount->
            total = total.add(amount)
        }
        BigDecimal difference = session.comboGoup.total.subtract(total)
        render view:'create', model:[total:difference]
    }

    def save(){
        transactionComboService.saveTransactions(session.comboGoup, session.pandingTransacions)
    }
}

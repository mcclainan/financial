package org.macsuite.financial.tracking

import grails.plugin.springsecurity.annotation.Secured
import org.macsuite.financial.exception.AppException
import org.macsuite.financial.transaction.command.TransactionCommand

@Secured(['IS_AUTHENTICATED_FULLY'])
class TransactionSingleController {

    TransactionService transactionService

    def index(){
        params.max = 10
        [transactionList:Transaction.singleTransactions.list(params),transactionCount:Transaction.singleTransactions.count()]
    }

    def save(TransactionCommand command){
        if(command.hasErrors()){
            params.max=10
            render view: 'index', model: [command:command,transactionList:Transaction.singleTransactions.list(params),transactionCount:Transaction.singleTransactions.count()]
            return
        }
        try{
            transactionService.save(command)
            flash.notif = [
                status:'success',
                content:message(code: 'transactionSingle.save.success')
            ]
            redirect action: 'index'
        }catch (AppException e){
            def msg=[
                    status:'danger',
                    content:e.message
            ]
            log.error(e.message)
            params.max=10
            render view: 'index', model: [command:command,msg:msg,transactionList:Transaction.singleTransactions.list(params),transactionCount:Transaction.singleTransactions.count()]
        }
        catch (Throwable t){
            def msg=[
                    status:'danger',
                    content:message(code:'transaction.default.save.error')
            ]
            log.error(t.message)
            params.max=10
            render view: 'index', model: [command:command,msg:msg,transactionList:Transaction.singleTransactions.list(params),transactionCount:Transaction.singleTransactions.count()]
        }
    }

    def edit(){
        Transaction transaction = Transaction.get(params.id)
        if(!transaction){
            flash.notif = [
                    status: 'warn',
                    content: message(code: 'myDefault.not.found.message', args: [message(code: 'transaction'),params.id])
            ]
            redirect action: 'index'
            return
        }
        TransactionCommand command = new TransactionCommand(transaction)
        [command: command]
    }

    def update(TransactionCommand command){
        if(command.hasErrors()){
            params.max=10
            render view: 'index', model: [command:command]
            return
        }
        try{
            transactionService.update(command)
            flash.notif = [
                    status:'success',
                    content:message(code: 'transactionSingle.update.success')
            ]
            redirect action: 'edit', id: command.id
        }
        catch (AppException e){
            def msg=[
                    status:'danger',
                    content:e.message
            ]
            log.error(e.message)
            params.max=10
            render view: 'index', model: [command:command,msg:msg,transactionList:Transaction.singleTransactions.list(params),transactionCount:Transaction.singleTransactions.count()]
        }
        catch (Throwable t){
            def msg=[
                    status:'danger',
                    content:message(code:'transaction.default.save.error')
            ]
            log.error(t.message)
            params.max=10
            render view: 'index', model: [command:command,msg:msg,transactionList:Transaction.singleTransactions.list(params),transactionCount:Transaction.singleTransactions.count()]
        }
    }

    def delete(){
        Transaction transaction = Transaction.get(params.id)
        if(!transaction){
            flash.notif = [
                    status: 'warn',
                    content: message(code: 'myDefault.not.found.message', args: [message(code: 'transaction'),params.id])
            ]
            redirect action: 'index'
            return
        }

        try{
            transactionService.delete(transaction)
            flash.notif = [
                    status:'success',
                    content:message(code: 'transactionSingle.delete.success')
            ]
            redirect action: 'index'
        }
        catch (AppException e){
            def msg=[
                    status:'danger',
                    content:e.message
            ]
            log.error(e.message)
            params.max=10
            render view: 'index', model: [command:command,msg:msg,transactionList:Transaction.singleTransactions.list(params),transactionCount:Transaction.singleTransactions.count()]
        }
        catch (Throwable t){
            def msg=[
                    status:'danger',
                    content:message(code:'transaction.default.save.error')
            ]
            log.error(t.message)
            params.max=10
            render view: 'index', model: [command:command,msg:msg,transactionList:Transaction.singleTransactions.list(params),transactionCount:Transaction.singleTransactions.count()]
        }
    }
}

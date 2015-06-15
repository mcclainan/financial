package org.macsuite.financial.admin

import org.macsuite.financial.banking.AccountType
import org.macsuite.financial.command.AccountTypeCommand

class AdminAccountTypeController {

    def index() {
        params.max=10
        [bankList:AccountType.list(params),bankCount:AccountType.count()]
    }

    def show(){
        AccountType bank = AccountType.get(params.id)
        if(!bank){
            flash.notif = [
                    status:'danger',
                    contnent:flash.message = message(code: 'error.not.found', args:['Account Type',params.id])
            ]
            redirect(action: "index")
            return
        }

        [bankInstance:bank]
    }

    def save(AccountTypeCommand command){
        if(command.hasErrors()){
            params.max=10
            render view: 'index', model: [command:command,bankList:AccountType.list(params),bankCount:AccountType.count()]
            return
        }
        AccountType bank = command.bind(new AccountType())
        bank.save(failOnError: true)
        flash.notif = [
                status: 'success',
                content: message(code:'myDefault.create.message', args: ['Account Type'])
        ]
        redirect action: 'show', id: bank.id
    }

    def edit(){
        AccountType bank = AccountType.get(params.id)
        if(!bank){
            redirect(action: 'show', id:params.id.toLong())
            return
        }
        [command:bank]
    }

    def update(AccountTypeCommand command){
        if(command.hasErrors()){
            render(view: 'edit',model:[command:command])
            return
        }
        AccountType bank = command.bind(AccountType.get(command.id))
        bank.save(flush: true)
        redirect(action: 'show', id: bank.id)
    }

    def delete(){
        AccountType bank = AccountType.get(params.id)
        if(!bank){
            redirect(action: 'show', id:params.id.toLong())
            return
        }
        bank.active = false
        bank.save()

    }
}

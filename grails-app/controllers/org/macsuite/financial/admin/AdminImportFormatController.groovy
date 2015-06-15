package org.macsuite.financial.admin

import grails.plugin.springsecurity.annotation.Secured
import org.macsuite.financial.banking.ImportFormat
import org.macsuite.financial.command.BankCommand

@Secured(['ROLE_ADMIN'])
class AdminImportFormatController {
    def index() {
        params.max=10
        [bankList:ImportFormat.list(params),bankCount:ImportFormat.count()]
    }

    def show(){
        ImportFormat bank = ImportFormat.get(params.id)
        if(!bank){
            flash.notif = [
                    status:'danger',
                    contnent:flash.message = message(code: 'error.not.found', args:['Main Category',params.id])
            ]
            redirect(action: "index")
            return
        }

        [bankInstance:bank]
    }

    def save(BankCommand command){
        if(command.hasErrors()){
            params.max=10
            render view: 'index', model: [command:command,bankList:ImportFormat.list(params),bankCount:ImportFormat.count()]
            return
        }
        ImportFormat bank = command.bind(new ImportFormat())
        bank.save(failOnError: true)
        flash.notif = [
                status: 'success',
                content: message(code:'myDefault.create.message', args: ['Main Category'])
        ]
        redirect action: 'show', id: bank.id
    }

    def edit(){
        ImportFormat bank = ImportFormat.get(params.id)
        if(!bank){
            redirect(action: 'show', id:params.id.toLong())
            return
        }
        [command:bank]
    }

    def update(BankCommand command){
        if(command.hasErrors()){
            render(view: 'edit',model:[command:command])
            return
        }
        ImportFormat bank = command.bind(ImportFormat.get(command.id))
        bank.save(flush: true)
        redirect(action: 'show', id: bank.id)
    }

    def delete(){
        ImportFormat bank = ImportFormat.get(params.id)
        if(!bank){
            redirect(action: 'show', id:params.id.toLong())
            return
        }
        bank.active = false
        bank.save()

    }
}

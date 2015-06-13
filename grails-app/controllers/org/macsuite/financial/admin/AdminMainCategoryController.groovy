package org.macsuite.financial.admin

import grails.plugin.springsecurity.annotation.Secured
import org.macsuite.financial.category.MainCategory
import org.macsuite.financial.command.MainCategoryCommand
import sun.applet.Main

@Secured(['ROLE_ADMIN'])
class AdminMainCategoryController {

    def index() {
        params.max=10
        [mainCategoryList:MainCategory.list(params),mainCategoryCount:MainCategory.count()]
    }

    def show(){
        MainCategory mainCategory = MainCategory.get(params.id)
        if(!mainCategory){
            flash.notif = [
                    status:'danger',
                    contnent:flash.message = message(code: 'error.not.found', args:['Main Category',params.id])
            ]
            redirect(action: "index")
            return
        }

        [mainCategoryInstance:mainCategory]
    }

    def save(MainCategoryCommand command){
        if(command.hasErrors()){
            params.max=10
            render view: 'index', model: [command:command,mainCategoryList:MainCategory.list(params),mainCategoryCount:MainCategory.count()]
            return
        }
        MainCategory mainCategory = command.bind(new MainCategory())
        mainCategory.save(failOnError: true)
        flash.notif = [
                status: 'success',
                content: message(code:'myDefault.create.message', args: ['Main Category'])
        ]
        redirect action: 'show', id: mainCategory.id
    }

    def edit(){
        MainCategory mainCategory = MainCategory.get(params.id)
        if(!mainCategory){
            redirect(action: 'show', id:params.id.toLong())
            return
        }
        [command:mainCategory]
    }

    def update(MainCategoryCommand command){
        if(command.hasErrors()){
            render(view: 'edit',model:[command:command])
            return
        }
        MainCategory mainCategory = MainCategory.get(command.id)
        command.bind(mainCategory).save(failOnError: true)
        redirect(action: 'show', id: mainCategory.id)
    }

    def delete(){
        MainCategory mainCategory = MainCategory.get(params.id)
        if(!mainCategory){
            redirect(action: 'show', id:params.id.toLong())
            return
        }
        mainCategory.active = false
        mainCategory.save()

    }
}

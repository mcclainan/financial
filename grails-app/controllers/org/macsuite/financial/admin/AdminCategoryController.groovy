package org.macsuite.financial.admin

import grails.plugin.springsecurity.annotation.Secured
import org.macsuite.financial.category.Category

@Secured(['ROLE_ADMIN'])
class AdminCategoryController {

    def index(){
        params.max=10
        [categoryList:Category.list(params),categoryCount:Category.count()]
    }

    def show(){}
    def search(){}
    def create(){}
    def save(){}
    def edit(){}
    def update(){}
    def delete(){}
}

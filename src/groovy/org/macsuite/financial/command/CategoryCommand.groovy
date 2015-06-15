package org.macsuite.financial.command

import grails.validation.Validateable
import org.macsuite.financial.category.Category

/**
 * Created by tony on 6/12/15.
 */
@Validateable
class CategoryCommand {
    Long    id
    String  name
    String  description
    Boolean cash
    String  type
    Boolean active
    Boolean displayOnMobile
    Boolean cumulative

    static constraints = {
        id nullable: true
        name blank:false
        description nullable: true
        type nullable: false
    }

    CategoryCommand (){}

    CategoryCommand(Category category){
        id=category.id
        name=category.name
        description=category.description
        cash=category.cash
        type=category.type
        active=category.active
        displayOnMobile=category.displayOnMobile
        cumulative=category.cumulative
    }

    Category bind(Category category){
        category.id=id
        category.name=name
        category.description=description
        category.cash=cash
        category.type=type
        category.active=active
        category.displayOnMobile=displayOnMobile
        category.cumulative=cumulative
        return category
    }
}

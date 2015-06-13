package org.macsuite.financial.command

import grails.validation.Validateable

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
}

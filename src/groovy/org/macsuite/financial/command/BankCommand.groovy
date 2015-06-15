package org.macsuite.financial.command

import grails.validation.Validateable
import org.macsuite.financial.banking.ImportFormat

/**
 * Created by tony on 6/12/15.
 */
@Validateable
class BankCommand {
    Long    id
    String  name
    Integer dateColumn
    Integer descriptionColumn
    Integer amountColumn
    Integer debitColumn
    Integer creditColumn
    Boolean active = true
    Boolean hasMultipleAmountColumns = false
    Boolean hasHeading = false

    static constraints = {
        id nullable:true,blank:true
        name nullable:false,blank:false
        dateColumn nullable:false,blank:false
        descriptionColumn nullable:false,blank:fals
        amountColumn nullable:true,blank:true, validator:{v,o->if(!v && !o.hasMultipleAmountColumns){return 'nullable'}}
        debitColumn nullable:true,blank:true, validator:{v,o->if(!v && o.hasMultipleAmountColumns){return 'nullable'}}
        creditColumn nullable:true,blank:true, validator:{v,o->if(!v && o.hasMultipleAmountColumns){return 'nullable'}}
        active nullable:true,blank:true
        hasMultipleAmountColumns nullable:true,blank:true, validator:{v,o->if(v && o.hasMultipleAmountColumns){return 'illegalSelection'}}
        hasHeading nullable:true,blank:true
    }
    BankCommand(){}
    BankCommand(ImportFormat bank){
        id=bank.id
        name=bank.name
        dateColumn=bank.dateColumn
        descriptionColumn=bank.descriptionColumn
        amountColumn=bank.amountColumn
        debitColumn=bank.debitColumn
        creditColumn=bank.creditColumn
        active=bank.active
        hasMultipleAmountColumns=bank.hasMultipleAmountColumns
        hasHeading=bank.hasHeading
    }

    ImportFormat bind(ImportFormat bank){
        bank.name=name
        bank.dateColumn=dateColumn
        bank.descriptionColumn=descriptionColumn
        bank.amountColumn=amountColumn
        bank.debitColumn=debitColumn
        bank.creditColumn=creditColumn
        bank.active=active
        bank.hasMultipleAmountColumns=hasMultipleAmountColumns
        bank.hasHeading=hasHeading
        return bank
    }
}

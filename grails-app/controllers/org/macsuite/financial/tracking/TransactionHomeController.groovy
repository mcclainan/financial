package org.macsuite.financial.tracking

import grails.plugin.springsecurity.annotation.Secured

@Secured(['IS_AUTHENTICATED_FULLY'])
class TransactionHomeController {

    def index() {
        [singleList:Transaction.singleTransactions.list(max:5)]
    }
}
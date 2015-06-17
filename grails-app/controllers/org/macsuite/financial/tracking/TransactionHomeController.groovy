package org.macsuite.financial.tracking

class TransactionHomeController {

    def index() {
        [singleList:Transaction.singleTransactions().list(max:5)]
    }
}

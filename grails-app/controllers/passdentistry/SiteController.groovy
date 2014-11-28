package passdentistry

import grails.transaction.Transactional

@Transactional(readOnly = true)
class SiteController {

    def index() {
        def categories = Category.list()
        println categories
        [categories: categories]
    }
}

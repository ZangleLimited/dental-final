package passdentistry

import grails.transaction.Transactional

@Transactional(readOnly = true)
class SiteController {

    def index() {
        [categories: Category.list()]
    }
}

package passdentistry

import grails.transaction.Transactional

@Transactional(readOnly = true)
class SiteController {

    def index() {
        [categories: Category.list()]
    }

    def test() {
        [categories: Category.list()]
    }

    def takeTest() {
        [categories: Category.list()]
    }

    private def generateExam(){

    }
}

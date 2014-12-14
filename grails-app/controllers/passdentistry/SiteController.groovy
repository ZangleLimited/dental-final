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
        def questions = Question.executeQuery('from Question order by rand()', [max: 10])
        respond questions, model: [categories: Category.list(), questionInstanceCount: questions.size()]
    }

}

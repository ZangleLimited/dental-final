package passdentistry

import grails.transaction.Transactional

@Transactional(readOnly = true)
class SiteController {

    private static final int QUESTIONS_IN_TEST = 10

    def index() {
        [categories: Category.list()]
    }

    def test() {
        [categories: Category.list()]
    }

    def startTest() {
        def currentQuestion
        session.questions = Question.executeQuery('from Question order by rand()', [max: QUESTIONS_IN_TEST])
        session.questionIndex = 0
        render view: "question", model: questionModel()
    }

    def questionModel() {
        [categories: Category.list(), question: session.questions[session.questionIndex]]
    }

    def nextQuestion(){
        def questionsIndex = session.questionIndex++

        if(questionsIndex >= QUESTIONS_IN_TEST - 1){
            return render(view: "testResults", model: [questions: session.questions, categories: Category.list()])
        }

        render view: "question", model: questionModel()
    }

    def testResults(){
        [questions: session.questions, categories: Category.list()]
    }

}

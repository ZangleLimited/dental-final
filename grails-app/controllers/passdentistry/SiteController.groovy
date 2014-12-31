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
        session.questions = Question.executeQuery('from Question order by rand()', [max: QUESTIONS_IN_TEST])
        session.questionIndex = 0
        session.answeredQuestions = [:]
        render view: "question", model: questionModel()
    }

    def nextQuestion() {
        storeAnswersInSession()

        def questionsIndex = session.questionIndex++
        if (questionsIndex >= QUESTIONS_IN_TEST - 1) {
            return render(view: "testResults", model: [results: computeResults(), categories: Category.list()])
        }
        render view: "question", model: questionModel()
    }

    private def computeResults() {
        def results = []
        session.questions.each {
            results << new Result(question: it, isPass: isPass(it))
        }
        results
    }

    private def storeAnswersInSession() {
        def answers = [:]
        def question = session.questions[session.questionIndex]
        question.answers.each {
            answers.put(it.id, params."${it.id}")
        }
        session.answeredQuestions.put(question.id, answers)
    }

    private def isPass(question) {
        def answered = session.answeredQuestions.get(question.id)
        question.answers.each {
            if (it.isCorrect && !answered.get(it.id) || !it.isCorrect && answered.get(it.id)) {
                return false
            }
        }
        true
    }

    private def questionModel() {
        def question = session.questions[session.questionIndex]
        def correctAnswers = 0
        question.answers.each { if (it.isCorrect) correctAnswers++ }
        [categories: Category.list(), question: question, correctAnswers: correctAnswers]
    }

    private class Result {
        def question
        def isPass
    }

}

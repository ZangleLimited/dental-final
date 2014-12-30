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
        storeAnswers()

        def questionsIndex = session.questionIndex++
        if (questionsIndex >= QUESTIONS_IN_TEST - 1) {
            println "{session.answeredQuestions} = ${session.answeredQuestions}"

            def results = []
            session.questions.each {
                results << new Result(question: it, isPass: isPass(it))
            }

            return render(view: "testResults", model: [results: results, categories: Category.list()])
        }
        render view: "question", model: questionModel()
    }

    def storeAnswers() {
        def answers = [:]
        def question = session.questions[session.questionIndex]
        question.answers.each {
            answers.put(it.id, params."${it.id}")
        }
        session.answeredQuestions.put(question.id, answers)
    }

    def isPass(question) {
        def passed = true
        def id = question.id
        println "id = $id"
        println "session.answeredQuestions = ${session.answeredQuestions}"
        def answered = session.answeredQuestions.get(id)
        println "answered = $answered"
        question.answers.each {
            if (it.isCorrect && !answered.get(it.id)) {
                passed = false
            }
            if (!it.isCorrect && answered.get(it.id)) {
                passed = false
            }
        }
        passed
    }

    class Result {
        def question
        def isPass
    }

    def questionModel() {
        def question = session.questions[session.questionIndex]
        def correctAnswers = 0
        question.answers.each { if (it.isCorrect) correctAnswers++ }
        [categories: Category.list(), question: question, correctAnswers: correctAnswers]
    }

}

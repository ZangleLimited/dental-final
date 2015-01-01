package passdentistry

import grails.transaction.Transactional

@Transactional(readOnly = true)
class SiteController {

    private static final int QUESTIONS_IN_TEST = 10

    def index() {
        [categories: categories()]
    }

    def test() {
        [categories: categories()]
    }

    def startTest() {
        def category = params.category
        session.questions = Question.executeQuery('from Question where category.name = ? order by rand()', [category], [max: QUESTIONS_IN_TEST])
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
        def passed = true
        def answered = session.answeredQuestions.get(question.id)
        question.answers.each {
            if (it.isCorrect && !answered.get(it.id) || !it.isCorrect && answered.get(it.id)) {
                passed = false
            }
        }
        passed
    }

    private def questionModel() {
        def question = session.questions[session.questionIndex]
        def correctAnswers = 0
        question.answers.each { if (it.isCorrect) correctAnswers++ }
        [categories: categories(), question: question, correctAnswers: correctAnswers]
    }

    private List<Category> categories() {
        Category.executeQuery('from Category where questions.size >= ?', [QUESTIONS_IN_TEST])
    }

    private class Result {
        def question
        def isPass
    }

}

package passdentistry

class Answer {

    static mapping = {
        question lazy: false
    }

    static constraints = {
        isCorrect blank: false
        answer blank: false
    }

    static belongsTo = [question: Question]

    String answer
    Boolean isCorrect
}

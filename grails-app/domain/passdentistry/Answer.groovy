package passdentistry

class Answer {

    static constraints = {
        isCorrect blank: false
        answer blank: false
    }

    String answer
    Boolean isCorrect
}

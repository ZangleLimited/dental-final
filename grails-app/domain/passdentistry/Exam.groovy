package passdentistry

class Exam {

    static constraints = {
        title blank: false
    }

    static hasMany = [questions: Question]
    String title
}

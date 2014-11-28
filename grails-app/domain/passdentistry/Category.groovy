package passdentistry

class Category {

    static constraints = {
        name blank: false
    }

    static hasMany = [questions: Question, exams: Exam]

    String name
}

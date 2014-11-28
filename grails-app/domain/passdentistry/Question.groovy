package passdentistry

class Question {

    static constraints = {
        question blank: false
    }

    static hasMany = [answers: Answer]
    static belongsTo = [category: Category]
    String question
}

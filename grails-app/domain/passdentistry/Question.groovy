package passdentistry

class Question {

    static mapping = {
        question type: 'text'
    }

    static constraints = {
        question blank: false
    }

    static hasMany = [answers: Answer]
    static belongsTo = [category: Category]

    String question
}

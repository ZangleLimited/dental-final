package passdentistry

class Question {

    static mapping = {
        question type: 'text'
        answers lazy: false
        category lazy: false
    }

    static constraints = {
        question blank: false
    }

    static hasMany = [answers: Answer]
    static belongsTo = [category: Category]

    String question

    @Override
    String toString(){
        question
    }
}

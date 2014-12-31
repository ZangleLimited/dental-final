package passdentistry

class Category {

    static constraints = {
        name blank: false, unique: true
    }

    static hasMany = [questions: Question, exams: Exam]

    String name

    @Override
    String toString(){
        name
    }

}

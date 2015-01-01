package passdentistry

class Result {

    int numberOfQuestions
    int numberOfPasses
    Date taken

    static constraints = {
        numberOfQuestions blank: false
        numberOfPasses blank: false
        taken blank: false
    }

    static belongsTo = [category: Category]

}
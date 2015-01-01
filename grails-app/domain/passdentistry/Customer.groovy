package passdentistry

class Customer {

    String email
    String password

    @Override
    String toString() { email }

    static constraints = {
        email email: true, unique: true , blank: false
        password blank: false, password: true
    }

    static hasMany = [results: Result]

}